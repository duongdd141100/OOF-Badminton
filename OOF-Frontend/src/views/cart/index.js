import { useEffect, useState, useContext } from 'react';
import { getRequest } from '../../providers/request'
import './index.css'
import { useLocation } from "react-router-dom"
import { BASE_URL } from '../../constant'
import { Radio, Space } from 'antd'
import { useNavigate } from 'react-router'
import { AuthContext } from '../../providers/use-auth'

export const Cart = (props) => {
  const user = useContext(AuthContext).user
  const [cart, setCart] = useState(null)
  const navigate = useNavigate()

  useEffect(() => {
    getRequest('/cart', null, user).then(data => {
      const carts = data.data.body
      console.info(carts)
      setCart(carts)
    }).catch(e => {
      console.info(e)
      // navigate(`/product`)
    })
  }, [])

  return (
    <div className='cart-container'>
      {cart && 
      <div className='cart-body'>
        <table>
          <tr>
            <th>Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total</th>
            <th>Action</th>
          </tr>
          {cart.map(item => {
            return (
              <tr>
                <td>{item.productSize.product.name}</td>
                <td>{item.productSize.product.price + 'đ'}</td>
                <td>{item.quantity}</td>
                <td>{item.quantity * item.productSize.product.price + 'đ'}</td>
                <td>
                  <button className='order button' onClick={() => {handleOrder(item.productSize.id)}}>Order</button>
                  <button className='remove button' onClick={() => {handleRemoveCart(item.productSize.id)}}>Remove</button>
                </td>
              </tr>
            )
          })}
        </table>
        <div className='action-all'>
          <div className='order-all button'>Order All</div>
          <div className='remove-all button'>Remove All</div>
        </div>
      </div>
      }
    </div>
  )
}
