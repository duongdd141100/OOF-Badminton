import axios from 'axios'
axios.defaults.baseURL = 'http://localhost:8089/api/'
axios.defaults.headers = {
  'Access-Control-Allow-Origin': '*',
  'Content-Type': 'application/json',
}

export const getRequest = async (url, params = null) => {
  if (params) {
    return await axios.get(url, { params })
  }
  return await axios.get(url)
}