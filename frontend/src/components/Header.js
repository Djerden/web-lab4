import React from 'react';
import AuthorDetailes from './AuthorDetailes';


const Header = ({title}) => {
  return <div className='header'>
  <img src="/small-itmo.png"/>
  <h1>{title}</h1>
  <AuthorDetailes/>
  </div>;
};

export default Header;
