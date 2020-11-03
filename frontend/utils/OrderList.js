export const getOrderLists = () => {
    return $.ajax({
        url: '/api/orderlists',
        method: 'GET'
    })
}

export const getOrderList = (OrderListId) => {
    return $.ajax({
        url: `/api/orderlists/${OrderListId}`,
        method: 'GET'
    })
}

export const updateOrderList = (OrderList) => {
    return $.ajax({
        url: `/api/orderlists/${OrderList.id}`,
        method: 'PATCH',
        data: { OrderList }

    })
}

export const deleteOrderList = (OrderListId) => {
    return $.ajax({
        url: `/api/orderlists/${OrderListId}`,
        method: 'DELETE',
    })
}

export const createOrderList= (OrderList) => {
    return $.ajax({
        url: `/api/orderlists`,
        method: 'POST',
        data: { OrderList }
    })
}