export const fetchRestaurants = () => (
    $.ajax({
        url: '/api/restaurants',
        method: "GET",
    })
);

export const fetchRestaurant = (id) => (
    $.ajax({
        url: `/api/restaurants/${id}`,
        method: "GET"
    })
);