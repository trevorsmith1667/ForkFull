export const fetchRestaurants = () => (
    $.ajax({
        url: '/api/kitchens',
        method: "GET",
    })
);

export const fetchRestaurant = (id) => (
    $.ajax({
        url: `/api/kitchens/${id}`,
        method: "GET"
    })
);