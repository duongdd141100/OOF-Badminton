import './App.css';
import { Login, Home, Nav, Order, Footer, Product } from '../src/views'

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
      <Route path="/login" element={<Login />} />
      <Route path="/home" element={(
          <Home />
        )} />
      <Route path="/product" element={(
          <Product />
        )} />
      <Route path="/order" element={(
        <RequireAuth>
            <Order />
        </RequireAuth>
      )} />
    </Routes>
  )
}

function App() {
  return (
    <Router>
      <div className='App'>
        <AuthProvider>
          <Nav />
          <div className='app-content'>
            <AppRoutes />
          </div>
          <Footer />
        </AuthProvider>
      </div>
    </Router>
  );
}

export default App;
