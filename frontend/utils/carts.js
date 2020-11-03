export const getAllCarts = () => {
    return $.ajax({
        url: '/api/carts',
        method: 'GET',

    })
}
export const getCart = (cartId) => {
    return $.ajax({
        url: `/api/carts/${cartId}`,
        method: 'GET'


    })
}
export const createCart = (cart) => {
    return $.ajax({
        url:'/api/carts',
        method: 'POST', 
        data: {cart}
    })
}


export const deleteCart = (cartId) => {
    return $.ajax({
        url: `/api/carts/${cartId}`,
        method: 'POST'
       
    })
}
