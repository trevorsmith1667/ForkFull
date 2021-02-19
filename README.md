# ForkFull

[Homepage Link](https://forkfull.herokuapp.com/#/)

### `About`

ForkFull is a full stack clone of OpenTable, designed for searching for, booking,  and managing restaurant reservations. Users can browse through restaurant results, modify reservation times, save restaurants to their dashboard and earn points towards dining rewards. Also included is the option for demo login to experience the full scope of ForkFull without having to sign up for an account. 

Utilizing a combination of React and Redux, with Ruby on Rails backend framework; ForkFull delivers a frictionless single page app with easy navigation and a dynamic interface. 

## `Technologies`

* AWS S3 -active storage
* Ruby on Rails -backend framework
* React.js -user interface components
* Redux.js -frontend framework
* PostgreSQL -database
* Node.js -runtime environment
* Webpack -module bundler
* SCSS -user interface styling

## `Features`

# User Auth

* Users can create an account, login in privately, and explore ForkFull with a personal dashboard.
* Users have the option to log in with a demo user that grants full site access to all features.
* After loggin in users are greeted with personalized account info in the nav bar. 

# Restaurant Index 

* Users can see a display of all restaurants that are clickable links to individual show pages.
* Restaurants display with key pertinent information.
* Packaging the individual restaurants into smaller components helped structure and compress code into bite sized pieces while overcoming the challenge of modifying nested components.

```javascript
class RestaurantIndexItem extends React.Component {
constructor(props) {
    super(props);
}


render() {
    const restaurant = this.props.restaurant
    return (
        <div className="restaurant-index-item">
            <Link to={`/restaurants/${restaurant.id}`} className="show-link-item" key={restaurant.id}>
                <div className='rest-unit'>
                    <div className='photo'>
                        <img src={restaurant.photoUrl} className="unit-photo" />
                        <div className='unit-info'>
                            <div className="name">{restaurant.name}</div>
                            <div className="city">{restaurant.city}</div>
                            <div className="price">{restaurant.price}</div>
                            <div className="cuisine">{restaurant.cuisine}</div>
                        </div>
                    </div>
                </div>
            </Link>
        </div>
    )
}
}
```

# Restaurant Show

* Restaurants render as a sleek compartmentalized show page.
* In order to faciliate easy manipulation of SCSS and compact code, breaking down inherited image urls and restaurant information components allowed for more maneagable code structure and readable notation. 

```javascript
const RestaurantPhotos = ({allPhotos}) => {
    
   const photoDisplay = allPhotos.map((photoUrl) => {
       return  <li><img src={photoUrl} className="profile-images-show"/></li>
      
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

```
# Future Features

* Image Carousel 
* Restaurant reviews
* Restaurant reservations
* Earned points
* Restaurant search
* Google maps api inclusion
* Restaurant ratings



