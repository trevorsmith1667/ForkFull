import React from 'react';
import RestaurantIndex from '../restaurant/restaurant_index_container';

const Homepage = () => {
    return (
        <div className="homepage">
            <div className="background">
                <img id="forkbg" src={window.backgroundURL} />
            </div>
            <div><RestaurantIndex /></div>
            
        </div>
    )
}

export default Homepage;