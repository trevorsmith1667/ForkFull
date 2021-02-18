import React from 'react';
import RestaurantIndex from '../restaurant/restaurant_index_container';

const Homepage = () => {
    return (
        <div className="homepage">
            <div className="background">
                <img id="forkbg" src={window.backgroundURL} />
            </div>
            <h2 className="booking-header">Book Today</h2>
            <div><RestaurantIndex /></div>
            
        </div>
    )
}

export default Homepage;