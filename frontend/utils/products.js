export const getProducts = ()=> {
    return $.ajax({
        url:'/api/products',
        method:'GET'
    })
}

export const getProduct = (productId)=> {
    return $.ajax({
        url:`/api/products/${productId}`, 
        method: 'GET'
    })
}

export const updateProduct = (product)=> {
    return $.ajax({
        url:`/api/products/${product.Id}`,
        method:'PATCH', 
        data: {product}

    })
}

export const deleteProduct = (productId)=> {
    return $.ajax({
        url:`/api/products/${productId}`, 
        method:'DELETE', 
    })
}

export const createProduct = (product)=> {
    return $.ajax({
        url:`/api/products`, 
        method:'POST',
        data: {product}
    })
}

export const queryProducts = (query) => {
    return $.ajax({
        url:`/api/search`, 
        method: 'GET', 
        data :  {search: query}
    })
}