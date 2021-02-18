import React from 'react'

const RestaurantPhotos = ({allPhotos}) => {
    
   const photoDisplay = allPhotos.map((photoUrl, idx) => {
    <li key={idx}> <img src={photoUrl} className="profile-image-tags"/></li>
    }
   )


    return (
        <div className='profile-photos'>
            <ul className='all-photos'>
                {photoDisplay}
            </ul>
        </div>
    )
     
}

export default RestaurantPhotos;
