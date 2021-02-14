import React from 'react'

class RestaurantShow extends React.Component {
    constructor(props){
        super(props);
    }


    componentDidMount(){
        this.props.fetchRestaurant(this.props.match.params.restaurId)
    }

    render(){
        return (
            <div>nothing yet</div>

        )
    }
}

export default RestaurantShow;