import React from 'react'

class RestaurantShow extends React.Component {
    constructor(props){
        super(props);
    }


    componentDidMount(){
        this.props.fetchRestaurant(this.props.match.params.restaurId)
    }

    render(){
        <input
            type="file"
            onChange={e => this.setState({ photos: e.target.files })}
            multiple
        />
        return (
            <div>
                stuff
                </div>

        )
    }
}

export default RestaurantShow;