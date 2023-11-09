import './index.css'
import { Swiper, SwiperSlide } from 'swiper/react'
import 'swiper/css'
import { getRequest } from '../../providers/request'
import { useEffect, useState } from 'react'
import { useNavigate } from 'react-router'
import { BASE_URL } from '../../constant'


export const Home = (props) => {
  const [products, setProducts] = useState([])
  const navigate = useNavigate()
  const [categories, setCategories] = useState([])
  const [currentCategory, setCurrentCategory] = useState('')
  const [newProducts, setNewProducts] = useState([])
  const [hotProducts, setHotProducts] = useState([])
  const [banners, setBanners] = useState([])

  useEffect(() => {
    getRequest('banners').then(data => {
      const currentBanners = data.data.body
      setBanners(currentBanners)
    })
  }, [])
  useEffect(() => {
    getRequest('products').then(data => {
      const nextProducts = data.data.body
      if (!nextProducts.length) return
      const nextCategories = JSON.parse(JSON.stringify(categories))
      nextProducts.forEach(item => {
        if (!nextCategories.includes(item.categoryName)) {
          nextCategories.push(item.categoryName)
        }
      })
      setProducts(nextProducts)
      const currentHotProducts = JSON.parse(JSON.stringify(nextProducts))
      currentHotProducts.sort((a, b) => b.price - a.price)
      if (currentHotProducts.length > 10) {
        currentHotProducts.length = 10
      }
      setHotProducts(currentHotProducts)
      setCategories(nextCategories)
      setCurrentCategory(nextCategories[0])
    })
  }, [])
  useEffect(() => {
    if (!currentCategory) return
    if (!products.length) return
    const productByCategory = []
    JSON.parse(JSON.stringify(products)).forEach(item => {
      if (item.categoryName === currentCategory) productByCategory.push(item)
    })
    productByCategory.sort((a, b) => b.id - a.id)
    if (productByCategory.length > 10) {
      productByCategory.length = 10
    }
    setNewProducts(productByCategory)
  }, [currentCategory])

  return (
    <div className='home'>
      <div className='news'>
        <Swiper
          spaceBetween={0}
          slidesPerView={1}
          loop={true}
        >
          {banners.length && banners.map(item => {
            return <SwiperSlide><div className='swiper-slide-banner'><img style={{width: '100%'}} src={`${BASE_URL}${item.path}`}></img></div></SwiperSlide>
          })}
        </Swiper>
      </div>
      <div className='group-product-title'>New Product</div>
      <div className='product-container'>
        <Swiper
          spaceBetween={0}
          slidesPerView={3}
          loop={true}
        >
          {categories.length && categories.map(item => {
            return (<SwiperSlide><div className={`swiper-slide-tab ${item === currentCategory ? 'slide-tab-selected' : ''}`} onClick={() => { setCurrentCategory(item) }} >
              {item}
            </div></SwiperSlide>)
          })}
        </Swiper>
        <Swiper
          spaceBetween={0}
          slidesPerView={3}
          loop={true}
        >
          {newProducts.length && newProducts.map(item => {
            return (<SwiperSlide>
              <div className='swiper-slide-image' >
                <img className='product-image' src={`${BASE_URL}${item.imagePath}`} width='100%' height='80%' />
                <div className='product-name' style={{ display: 'flex', justifyContent: 'center' }}>{item.productName}</div>
                <div className='product-price' style={{ display: 'flex', justifyContent: 'center', color: 'rgb(214, 81, 123)' }}>{item.price} đ</div>
              </div>
            </SwiperSlide>)
          })}
        </Swiper>
      </div>
      <div className='group-product-title'>Hot</div>
      <div className='product-container'>
        <Swiper
          spaceBetween={0}
          slidesPerView={3}
          loop={true}
        >
          {hotProducts.length && hotProducts.map(item => {
            return (<SwiperSlide><div className='swiper-slide-image' ><div className='swiper-slide-image' >
              <img className='product-image' src={`${BASE_URL}${item.imagePath}`} width='100%' height='80%' />
              <div className='product-name' style={{ display: 'flex', justifyContent: 'center' }}>{item.productName}</div>
              <div className='product-price' style={{ display: 'flex', justifyContent: 'center', color: 'rgb(214, 81, 123)' }}>{item.price} đ</div>
            </div></div></SwiperSlide>)
          })}
        </Swiper>
      </div>
      <div className='group-product-title'>List</div>
      <div className='product-container'>
        <div className='categories'>
          {categories.length && categories.map((item, index) => {
            const max = categories.length / 2
            if (index < max) {
              return <div className='category' onClick={() => { navigate(`/product`, { state: { category: item } }) }}>{item}</div>
            }
          })}
        </div>
        <div className='categories'>
          {categories.length && categories.map((item, index) => {
            const max = categories.length / 2
            if (index >= max) {
              return <div className='category' onClick={() => { navigate(`/product`, { state: { category: item } }) }} >{item}</div>
            }
          })}
        </div>
      </div>
    </div>
  )
}