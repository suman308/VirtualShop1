export const getAllComments = (Id) => {
    return $.ajax({
        url: '/api/comments',
        method: 'GET',
        data: {productId: Id}

    })
}
export const getComment = (commentId) => {
    return $.ajax({
        url: `/api/comments/${commentId}`,
        method: 'GET'


    })
}
export const createComment = (comment) => {
    return $.ajax({
        url: '/api/comments',
        method: 'POST',
        data: { comment }
    })
}


export const deleteComment = (commentId) => {
    return $.ajax({
        url: `/api/comments/${commentId}`,
        method: 'POST'

    })
}

export const updateComment = (comment)=> {
    return $.ajax({
        url: `/api/comments/${comment.Id}`, 
        method: 'PATCH',
        data: {comment} 
    })
}
