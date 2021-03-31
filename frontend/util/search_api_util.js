export const searchRestaurants = (search) => {
    return $.ajax({
        method: 'GET',
        url: '/api/restaurants',
        data: { search }
    })
}