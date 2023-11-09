import React, { useEffect, useState, useMemo, useContext } from 'react';
import { getRequest, postRequest } from '../../providers/request'
import './index.css'
import { useLocation } from "react-router-dom"
import { BASE_URL } from '../../constant'
import { InputNumber, notification } from 'antd'
import { useNavigate } from 'react-router'
import { AuthContext } from '../../providers/use-auth'
const Context = React.createContext({ name: 'Default' })

export const ProductDetail = (props) => {
  const user = useContext(AuthContext).user
  const location = useLocation()
  const navigate = useNavigate()
  const id = location?.state?.id
  const [product, setProduct] = useState(null);
  const [productSizes, setProductSizes] = useState(null)
  const [currentSize, setCurrentSize] = useState(null)
  const [numOfProduct, setNumOfProduct] = useState(1)
  const [currentStockQuantity, setCurrentStockQuantity] = useState(0)
  const [productSize, setProductSize] = useState(null)
  const [api, contextHolder] = notification.useNotification()

  function onNumberChange (value) {
    setNumOfProduct(value)
  }

  const openNotification = (placement, message, description) => {
    api.info({
      message: message,
      description: description,
      placement,
    });
  };

  function handleSizeClick (name, stockQuantity, id) {
    setCurrentSize(name)
    setProductSize(id)
    setCurrentStockQuantity(stockQuantity)
  }

  function handleAddToCard() {
    if (!currentSize && productSizes && productSizes[0].size != null ) {
      openNotification('topRight', 'Pick a size', `Please choose a size first`)
      return
    }
    if (numOfProduct > currentStockQuantity && productSizes && productSizes[0].size != null) {
      openNotification('topRight', 'Out of stock', `Size ${currentSize} only have ${currentStockQuantity} products left`)
      return
    }
    postRequest(`cart/add`, {productSize: {id: productSize}, quantity: numOfProduct}, user).then(data => {
      const code = data.status
      if (code == 200) {
        openNotification('topRight', 'Added to card', `Added to card ${numOfProduct} products`)
      } else {
        openNotification('topRight', 'Order failed', `Code ${code}`)
      }
    }).catch(e => {
      navigate(`/product`)
    })
  }

  useEffect(() => {
    if (!id) navigate(`/products`)
    getRequest(`products/${id}`).then(data => {
      const currentProduct = data.data.body
      setProductSizes(currentProduct.productSizes)
      if (currentProduct.productSizes[0].size) {
        setCurrentSize(currentProduct.productSizes[0].size.name)
      }
      setProductSize(currentProduct.productSizes[0].id)
      setCurrentStockQuantity(currentProduct.productSizes[0].stockQuantity)
      setProduct(currentProduct)
    }).catch(e => {
      navigate(`/products`)
    })
  }, [])
  const contextValue = useMemo(() => ({ name: 'Ant Design' }), [])
  return (
    <Context.Provider value={contextValue}>
      {contextHolder}
      <div className='product-detail-container'>
        {product && (
          <div>
            <div className='product-name-detail'>{product.name}</div>
            <div className='product-detail-info'>
                <div>Price: {product.price}</div>
                <div>Category: {product.category.name}</div>
                <div>Supplier: {product.supplier.name}</div>
              </div>
            <div className='product-detail'>
              <div className='product-image'>
                <img src={`${BASE_URL}${product.path}`} width='100%' height='100%' />
              </div>
              <div className='detail'>
                {product.description}
              </div>
            </div>
            <div className='cart-info'>
              <div className='size-info'>
                {productSizes && productSizes.map(item => {
                  if (!item.size) return
                  return <button value={item.size.name} className={`${currentSize == item.size.name ? 'size selected-size ' : 'size '}${item.stockQuantity == 0 ? 'out-of-stock' : ''}`} onClick={() => {if (item.stockQuantity) handleSizeClick(item.size.name, item.stockQuantity, item.id)}}>{item.size.name}</button>
                })}
              </div>
              <div className='order-info'>
                <InputNumber min={1} max={9999} defaultValue={1} onChange={onNumberChange} />
                <button className='add-to-cart' onClick={handleAddToCard} >Add to card</button>
              </div>
            </div>
          </div>)
        }
      </div>
    </Context.Provider>
  )
}
