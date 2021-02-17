import React from 'react'
 
class RestaurantIndex extends React.Component {
    constructor(props) {
        super(props);
    }  
    
    
    componentDidMount() {
        this.props.fetchRestaurants();
    }

    randomizeRest() {
        const restRandom = this.props.restaurants.slice(0);
        for (let i = array.length - 1; i > 0; i--) {
            const j = Math.floor(Math.random() * (i + 1));
            [restRandom[i], restRandom[j]] = [restRandom[j], restRandom[i]];
        }
        return restRandom.slice(0, 14);
    }

    render(){

    
        
    }
}