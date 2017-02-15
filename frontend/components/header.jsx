import React from 'react';
import { Link } from 'react-router';

const Header = (props) => {
  return(
    <header className="logo signed-in">
      <div className="signed-in-subheader">
        <nav>
          <Link to="/"><h1 className="logo-signed-in">great<strong>reads</strong></h1></Link>
          <Link to="/">Home</Link>
          <Link to="/">My Books</Link>
          <Link to="/">Browse</Link>
        </nav>

        <button onClick={props.logout}>Log Out</button>
      </div>
    </header>
  );
};

export default Header;