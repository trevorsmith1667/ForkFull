import React from 'react'

class RestaurantShow extends React.Component {
    constructor(props){
        super(props);
    }


    componentDidMount(){
        this.props.fetchRestaurant(this.props.match.params.restaurId)
    }

    render(){
        const rest = this.props.restaurant
       

        return (
            <div className="rest-show">
               
           </div>

        )
    }
}

export default RestaurantShow;