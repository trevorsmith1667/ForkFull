import React from 'react';
import { withRouter } from 'react-router-dom';



class Search extends React.Component {
    constructor(props) {
        super(props);
        this.state = { partySize: '', reservationTime: '', reservationDate: '', query: '' };
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    updateState(form) {

        return (e) => this.setState({ [form]: e.target.value });
    }

    handleSubmit(e){

        e.preventDefault();
        e.stopPropagation();
        this.props.search(this.state.query.toLowerCase()).then(() => {
            this.props.history.push("/search")
        })
        
    }

    render(){

        return(
            <div>
                <div className="search-cont">
                    <div className="search-header">
                    Find a Table For Any Occasion
                    </div>
                    <form className="search-bar" onSubmit={this.handleSubmit}>
                        <input type="date" className="search-date" onChange={this.updateState('reservationDate')}/>
                        <input type="time" className="search-time" defaultValue="11:00"onChange={this.updateState('reservationTime')} />
                        <input type="number" min='1' max='8' placeholder="2 People" className="search-party" onChange={this.updateState('partySize')} />
                        <input type="text" placeholder="  San Francisco...." value={this.state.search} onChange={this.updateState('search')} className="search-action" />
                        <button type='submit' className="search-button">Let's go</button>
                    </form>
                </div>
            </div>
        )
        }
    }


export default withRouter(Search);

