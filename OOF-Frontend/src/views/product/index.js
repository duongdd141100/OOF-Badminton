import './index.css'
import { Swiper, SwiperSlide } from 'swiper/react'
import 'swiper/css';

export const Product = (props) => {
  return (
    <div className='products'>
      <div className='news'>
        <Swiper
        spaceBetween={0}
        slidesPerView={3}
        loop={true}
        >
          <SwiperSlide><div className='swiper-slide-image'>Slide 1</div></SwiperSlide>
          <SwiperSlide><div className='swiper-slide-image'>Slide 2</div></SwiperSlide>
          <SwiperSlide><div className='swiper-slide-image'>Slide 3</div></SwiperSlide>
          <SwiperSlide><div className='swiper-slide-image'>Slide 4</div></SwiperSlide>
        </Swiper>
      </div>
      <div className='group-product-title'>New Product</div>
      <div className='product-container'>
        <Swiper
        spaceBetween={0}
        slidesPerView={3}
        loop={true}
        >
          <SwiperSlide><div className='swiper-slide-tab'>All</div></SwiperSlide>
          <SwiperSlide><div className='swiper-slide-tab'>Racket</div></SwiperSlide>
          <SwiperSlide><div className='swiper-slide-tab'>Short Skirt</div></SwiperSlide>
          <SwiperSlide><div className='swiper-slide-tab'>Shoe</div></SwiperSlide>
        </Swiper>
        <Swiper
        spaceBetween={0}
        slidesPerView={3}
        loop={true}
        >
          <SwiperSlide><div className='swiper-slide-image'>product 1</div></SwiperSlide>
          <SwiperSlide><div className='swiper-slide-image'>product 2</div></SwiperSlide>
          <SwiperSlide><div className='swiper-slide-image'>product 3</div></SwiperSlide>
          <SwiperSlide><div className='swiper-slide-image'>product 4</div></SwiperSlide>
        </Swiper>
      </div>
    </div>
  )
}
