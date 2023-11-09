import './App.css';
import { Login, Home, Cart, Nav, Order, Footer, Product, ProductDetail } from '../src/views'

import {
  BrowserRouter as Router,
  Routes,
  Route
} from 'react-router-dom'

import { RequireAuth } from './components'
import { AuthProvider } from './providers/use-auth'

const AppRoutes = () => {
  return (
    <Routes>
      <Route path="/login" element={
          <Login />
        } 
      />
      <Route path="/home" element={(
        <Home />
        )} />
      <Route path="/product" element={(
            <Product />
        )} />
      <Route path="/productDetail/*" element={(
        <RequireAuth>
            <ProductDetail />
        </RequireAuth>
      )} />
      <Route path="/order" element={(
        <RequireAuth>
            <Order />
        </RequireAuth>
      )} />
      <Route path="/cart" element={(
        <RequireAuth>
            <Cart />
        </RequireAuth>
      )} />
      <Route path="/*" element={<Home />} />
    </Routes>
  )
}

function App() {
  return (
    <Router>
      <div className='App'>
        <AuthProvider>
          <div className='app-content'>
            <Nav />
            <AppRoutes />
            <Footer />
          </div>
        </AuthProvider>
      </div>
    </Router>
  );
}

export default App;
