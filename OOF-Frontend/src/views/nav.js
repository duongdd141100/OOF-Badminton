import { Menu } from 'antd'
import { ShoppingOutlined, OrderedListOutlined } from '@ant-design/icons';
import { useNavigate } from 'react-router'

const items = [
  {
    label: 'Product',
    key: 'product',
    redirectTo: '/product',
    icon: <ShoppingOutlined />
  },
  {
    label: 'Order',
    key: 'order',
    redirectTo: '/order',
    icon: <OrderedListOutlined />
  }
]

export const Nav = () => {
  const navigate = useNavigate()
  const onClick = (e) => {
    const redirectTo = items.find(item => {
      return item.key == e.key
    }).redirectTo
    navigate(redirectTo, { replace: true })
  };

  return (
    <Menu onClick={onClick} mode="horizontal" selectedKeys={'product'} items={items} />
  )
}
