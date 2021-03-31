export const searchRestaurants = (search) => {
    return $.ajax({
        method: 'GET',
        url: '/api/search',
        data: { search }
    })
}