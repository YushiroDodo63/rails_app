import logo from './logo.svg';
import './User.css';

function User() {
  return (
    <div className="User">
      <header className="User-header">
        <img src={logo} className="User-logo" alt="logo" />
        <p>
           Success! 
        </p>
        <a
          className="User-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default User;
