import './index.css'

export const Order = (props) => {
  return (
    <div className='cart-container'>
      <table>
        <tr>
          <th>Name</th>
          <th>Price</th>
          <th>Quantity</th>
          <th>Total</th>
        </tr>
        {cart.map(item => {
          return (
            <tr>
              <td>{item.productSize.product.name}</td>
              <td>{item.productSize.product.price + 'đ'}</td>
              <td>{item.quantity}</td>
              <td>{item.quantity * item.productSize.product.price + 'đ'}</td>
            </tr>
          )
        })}
      </table>
    </div>
  )
}
