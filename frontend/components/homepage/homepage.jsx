import React from 'react';
import RestaurantIndex from '../restaurant/restaurant_index_container';
import Search from '../search/search_container'

const Homepage = () => {
    return (
        <div className="homepage">
            <div className="search-bar-form"><Search/></div>
            <div className="background">
                <img id="forkbg" src={window.backgroundURL} />
            </div>
            <h2 className="booking-header">Book Today</h2>
            {/* <div><RestaurantIndex /></div> */}
            
        </div>
    )
}

export default Homepage;