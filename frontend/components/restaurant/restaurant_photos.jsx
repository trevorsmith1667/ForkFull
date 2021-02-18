import React from 'react'

class RestaurantPhotos extends React.Component {

         constructor(props){
            super(props);
            this.photos = this.props.restaurant.photoUrls
    }
   

    render() {
    const photoDisplay = this.photos.map((photoUrl, idx) => {
        <li key={idx}> <img src={photoUrl} className="profile-image-tags"/></li>
    })

    return (
        <div className='profile-photos'>
            <span>{photosArr.length} Photos</span>
            <ul className='photo-list'>
                {photoDisplay}
            </ul>
        </div>
    )
    }   
}

export default RestaurantPhotos;
