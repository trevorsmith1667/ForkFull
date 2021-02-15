export const fetchRestaurants = () => (
    $.ajax({
        url: '/api/restaurants',
        method: "GET",
    })
);

export const fetchRestaurant = (restaurId) => (
    $.ajax({
        url: `/api/restaurants/${restaurId}`,
        method: "GET"
    })
);