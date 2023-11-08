import React, { useState, useContext } from 'react'
import { Menu } from 'antd'
import { ShoppingOutlined, ShoppingCartOutlined, LoginOutlined,LogoutOutlined, DollarOutlined, FormOutlined, ExceptionOutlined, QuestionCircleOutlined, InfoCircleOutlined, ContactsOutlined } from '@ant-design/icons';
import { useNavigate } from 'react-router'
import { AuthContext } from '../providers/use-auth'
import { useAuth } from '../providers/use-auth'

const items = [
  {
    label: 'Home',
    key: 'home',
    redirectTo: '/home',
  },
  {
    label: 'Product',
    key: 'product',
    redirectTo: '/product',
    icon: <ShoppingOutlined style={{fontSize: '20px'}} />,
  },
  {
    label: 'Sale',
    key: 'sale',
    redirectTo: '/sale',
    icon: <DollarOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'News',
    key: 'news',
    redirectTo: '/news',
    icon: <FormOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'Policy',
    key: 'policy',
    redirectTo: '/policy',
    icon: <ExceptionOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'Guide',
    key: 'guide',
    redirectTo: '/guide',
    icon: <QuestionCircleOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'About',
    key: 'about',
    redirectTo: '/about',
    icon: <InfoCircleOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'Contact',
    key: 'contact',
    redirectTo: '/contact',
    icon: <ContactsOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'Order',
    key: 'order',
    redirectTo: '/order',
    icon: <ShoppingCartOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'Cart',
    key: 'cart',
    redirectTo: '/cart',
    icon: <ShoppingCartOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'login',
    key: '/login',
    redirectTo: '/login',
    icon: <LoginOutlined style={{fontSize: '20px'}} />
  }
]

const itemsLogged = [
  {
    label: 'Home',
    key: 'home',
    redirectTo: '/home',
  },
  {
    label: 'Product',
    key: 'product',
    redirectTo: '/product',
    icon: <ShoppingOutlined style={{fontSize: '20px'}} />,
  },
  {
    label: 'Sale',
    key: 'sale',
    redirectTo: '/sale',
    icon: <DollarOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'News',
    key: 'news',
    redirectTo: '/news',
    icon: <FormOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'Policy',
    key: 'policy',
    redirectTo: '/policy',
    icon: <ExceptionOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'Guide',
    key: 'guide',
    redirectTo: '/guide',
    icon: <QuestionCircleOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'About',
    key: 'about',
    redirectTo: '/about',
    icon: <InfoCircleOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'Contact',
    key: 'contact',
    redirectTo: '/contact',
    icon: <ContactsOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'Order',
    key: 'order',
    redirectTo: '/order',
    icon: <ShoppingCartOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'Cart',
    key: 'cart',
    redirectTo: '/cart',
    icon: <ShoppingCartOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'logout',
    key: '/logout',
    redirectTo: '/logout',
    icon: <LogoutOutlined style={{fontSize: '20px'}} />
  }
]

const totalItem = [
  {
    label: 'Home',
    key: 'home',
    redirectTo: '/home',
  },
  {
    label: 'Product',
    key: 'product',
    redirectTo: '/product',
    icon: <ShoppingOutlined style={{fontSize: '20px'}} />,
  },
  {
    label: 'Sale',
    key: 'sale',
    redirectTo: '/sale',
    icon: <DollarOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'News',
    key: 'news',
    redirectTo: '/news',
    icon: <FormOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'Policy',
    key: 'policy',
    redirectTo: '/policy',
    icon: <ExceptionOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'Guide',
    key: 'guide',
    redirectTo: '/guide',
    icon: <QuestionCircleOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'About',
    key: 'about',
    redirectTo: '/about',
    icon: <InfoCircleOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'Contact',
    key: 'contact',
    redirectTo: '/contact',
    icon: <ContactsOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'Order',
    key: 'order',
    redirectTo: '/order',
    icon: <ShoppingCartOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'Cart',
    key: 'cart',
    redirectTo: '/cart',
    icon: <ShoppingCartOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'logout',
    key: '/logout',
    redirectTo: '/logout',
    icon: <LogoutOutlined style={{fontSize: '20px'}} />
  },
  {
    label: 'login',
    key: '/login',
    redirectTo: '/login',
    icon: <LoginOutlined style={{fontSize: '20px'}} />
  }
]

export const Nav = () => {
  const { logout } = useAuth()
  const auth = useContext(AuthContext)
  const [current, setCurrent] = useState(window.location.pathname.substring(1))
  const navigate = useNavigate()
  const onClick = (e) => {
    const redirectTo = totalItem.find(item => {
      return item.key == e.key
    }).redirectTo
    if (redirectTo == '/logout') {
      logout()
      return
    }
    setCurrent(e.key)
    navigate(redirectTo, { replace: true })
  };

  return (
    <Menu style={{height: '7vh'}} onClick={onClick} mode="horizontal" selectedKeys={[current]} items={auth.user ? itemsLogged : items} />
  )
}
