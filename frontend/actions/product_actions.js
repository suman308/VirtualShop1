import * as AllUtil from '../utils/products' 
export const RECEIVE_ALL_PRODUCTS = 'RECEIVE_ALL_PRODUCTS'; 
export const RECEIVE_PRODUCT = 'RECEIVE_PRODUCT';
export const UPDATE_PRODUCT = 'UPDATE_PRODUCT';
export const REMOVE_PRODUCT =  'REMOVE_PRODUCT';
export const REMOVE_ERRORS = 'REMOVE_ERRORS';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';
export const CLEAR_PRODUCTS = "CLEAR_PRODUCTS";

export const receiveProducts =(products) =>{
    
    return {
        type: RECEIVE_ALL_PRODUCTS,
        products
    }
    


}

export const receiveProduct = (product)=>{
return {
    type: RECEIVE_PRODUCT, 
    product,
}
}

export const removeProduct = (productId)=>{
  return {
      type: REMOVE_PRODUCT, 
      productId
  }
}



export const receiveErrors =(errors)=> {
    return {
        type: RECEIVE_ERRORS, 
        errors
    }
}

export const removeErrors =()=>{
    return {
        type: RECEIVE_ERRORS, 

    }
}

export const clearProducts = ()=> {
    return {
        type: CLEAR_PRODUCTS
    }
}

export const getProducts = ()=> dispatch=>{
    return AllUtil.getProducts()
        .then(products => dispatch(receiveProducts(products)), errors => dispatch(receiveErrors(errors.responseJSON)))
}

export const getProduct = (productId)=> dispatch=> {
    return AllUtil.getProduct(productId)
    .then(product => dispatch(receiveProduct(product)), errors => dispatch(receiveErrors(errors.responseJSON)))
}

export const updateProduct = (product)=> dispatch => {
    return AllUtil.updateProduct(product).then(product => dispatch(receiveProduct(product)), errors => dispatch(receiveErrors(errors.responseJSON)))
}

export const deleteProduct = (productId)=> dispatch=> {
    return AllUtil.deleteProduct(productId).then(() => dispatch(removeProduct(productId)), errors => dispatch(receiveErrors(errors.responseJSON)))
}

export const searchProducts = (query) => dispatch => {
    return AllUtil.queryProducts(query).then( products => dispatch(receiveProducts(products)), errors => dispatch(receiveErrors(errors.responseJSON))) }