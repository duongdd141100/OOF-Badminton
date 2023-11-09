import { useEffect, useState } from 'react';
import { getRequest } from '../../providers/request'
import './index.css'
import { useLocation } from "react-router-dom"
import { BASE_URL } from '../../constant'
import { Radio, Space } from 'antd'
import { useNavigate } from 'react-router'

const orderOptions = [
  { label: 'Giá tăng dần', value: 'increase' },
  { label: 'Giá giảm dần', value: 'degrease' },
]

export const Product = (props) => {
  const [products, setProducts] = useState([])
  const [categories, setCategories] = useState([])
  const [groupOfFour, setGroupOfFour] = useState([])
  const navigate = useNavigate()
  const location = useLocation();

  function chunkArray(arr, chunkSize) {
    const chunkedArray = [];
    for (let i = 0; i < arr.length; i += chunkSize) {
      chunkedArray.push(arr.slice(i, i + chunkSize));
    }
    return chunkedArray;
  }

  function onFilterChange(e) {
    const nextProducts = JSON.parse(JSON.stringify(products))
    nextProducts.sort((current, next) => {
      if (e.target.value === 'increase') {
        return current.price - next.price
      }
      return next.price - current.price
    })
    setProducts(nextProducts)
  }

  function handleProductClick(id) {
    navigate(`/productDetail/${id}`, {state: {id}})
  }

  useEffect(() => {
    const currentCategoryName = location?.state?.category
    getRequest('categories').then(data => {
      const resCategories = data.data.body
      setCategories(resCategories)
      const currentCategory = resCategories.find(item => item?.name == currentCategoryName)
      if (currentCategory) {
        getRequest('products', { categoryId: currentCategory.id }).then(res => {
          const nextProducts = res.data.body
          setProducts(nextProducts)
        })
      } else {
        getRequest('products').then(res => {
          const nextProducts = res.data.body
          setProducts(nextProducts)
        })
      }
    })
  }, [])

  useEffect(() => {
    const chunkSize = 4
    const result = chunkArray(JSON.parse(JSON.stringify(products)), chunkSize)
    setGroupOfFour(result)
  }, [products])

  return (
    <div className='products'>
      <div className="filter">
        <Radio.Group onChange={onFilterChange}>
          <Space direction="vertical">
            {orderOptions.map((item) => {
              return <Radio value={item.value}>{item.label}</Radio>
            })}
          </Space>
        </Radio.Group>
      </div>
      <div className='products-container'>
          {groupOfFour.length && groupOfFour.map((item) => {
            return(
              <div className='products-row'>
                {item.map(element => {
                    return (
                    <div className='product-card' onClick={() => {handleProductClick(element.id)}}>
                      <img className='product-image' src={`${BASE_URL}${element.imagePath}`} width='100%' height='80%' />
                      <div className='product-name' style={{ display: 'flex', justifyContent: 'center' }}>{element.productName}</div>
                      <div className='product-price' style={{ display: 'flex', justifyContent: 'center', color: 'rgb(214, 81, 123)' }}>{element.price} đ</div>
                    </div>
                  )
                })}
              </div>
            )
          })}
      </div>
    </div>
  )
}
