import { useEffect, useState } from 'react';
import { getRequest } from '../../providers/request'
import './index.css'
import { useLocation } from "react-router-dom"
import { BASE_URL } from '../../constant'

export const Product = (props) => {
  const [products, setProducts] = useState([])
  const location = useLocation();
  useEffect(() => {
    const currentCategoryName = location?.state?.category
    getRequest('categories').then(data => {
      const categories = data.data.body
      const currentCategory = categories.find(item => item?.name == currentCategoryName)
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
  return (
    <div className='products'>
      <div className='products-container'>
        <div className='products-column'>
          {products.length && products.map((item, index) => {
            if (index < products.length / 2) {
              return (
              <div className='product-card'>
                <img className='product-image' src={`${BASE_URL}${item.imagePath}`} width='100%' height='80%' />
                <div className='product-name' style={{ display: 'flex', justifyContent: 'center' }}>{item.productName}</div>
                <div className='product-price' style={{ display: 'flex', justifyContent: 'center', color: 'rgb(214, 81, 123)' }}>{item.price} đ</div>
              </div>
            )
          }
          })}
        </div>
        <div className='products-column'>
          {products.length && products.map((item, index) => {
            if (index >= products.length / 2) return (<div className='product-card'>
                <img className='product-image' src={`${BASE_URL}${item.imagePath}`} width='100%' height='80%' />
                <div className='product-name' style={{ display: 'flex', justifyContent: 'center' }}>{item.productName}</div>
                <div className='product-price' style={{ display: 'flex', justifyContent: 'center', color: 'rgb(214, 81, 123)' }}>{item.price} đ</div>
              </div>
              )
          })}
        </div>
      </div>
    </div>
  )
}
