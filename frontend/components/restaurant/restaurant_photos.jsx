import React from 'react'

const RestaurantPhotos = ({allPhotos}) => {
    
   const photoDisplay = allPhotos.map((photoUrl, index) => {
       return  <li key={index}> <img src={photoUrl} className="profile-images-show"/></li>
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
