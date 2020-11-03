export const getAllRatings = (productId) => {
    return $.ajax({
        url: '/api/ratings',
        method: 'GET',
        data: { productId: productId }

    })
}
export const getRating = (ratingId) => {
    return $.ajax({
        url: `/api/ratings/${ratingId}`,
        method: 'GET'


    })
}
export const createRating = (rating) => {
    return $.ajax({
        url: '/api/ratings',
        method: 'POST',
        data: { rating }
    })
}
// export const updateRating = (rating) => {
//     return $.ajax({
//         url: '/api/ratings',
//         method: 'POST',
//         data: { rating }
//     })
// }



