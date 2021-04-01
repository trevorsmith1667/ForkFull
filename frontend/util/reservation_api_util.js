export const fetchReservations = () => (
    $.ajax({
        url: '/api/reservations',
        method: "GET",
    })
);

export const fetchReservation = (id) => (
    $.ajax({
        url: `/api/reservations/${id}`,
        method: "GET"
    })
);

export const updateReservation = (reservation) => (
    $.ajax({
        url: `/api/reservations/:${reservation.id}`,
        method: "PATCH"
    })
);

export const createReservation = (reservation) => (
    $.ajax({
        url: `/api/reservations`,
        method: "POST",
        data: {reservation}
    })
);

export const deleteReservation = (id) => (
    $.ajax({
        url: `/api/reservations/:${id}`,
        method: "DELETE"
    })
)