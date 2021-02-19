import React from 'react'

const RestaurantPhotos = ({allPhotos}) => {
    
   const photoDisplay = allPhotos.map((photoUrl, idx) => {
     return  <li key={idx}> <img src={photoUrl} className="profile-images-show"/></li>
    }
   )

    return (
        <div className='profile-photos'>
            <div className="photo-count">
                Photos
            </div>
            <ul className='all-photos'>
                {photoDisplay}
            </ul>
        </div>
    )
    
     
}

export default RestaurantPhotos;
