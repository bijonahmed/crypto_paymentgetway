// src/App.js
import React from "react";
import { Link } from "react-router-dom";
import AppRouter from "./rotuer";
import { useNavigate } from "react-router-dom";
import AuthUser from "./components/AuthUser";


function App() {
  const navigate = useNavigate();
  const { user } = AuthUser();
  if (!user) {
    navigate('/login'); // Redirect to the login page if `user` is null or undefined
  }
  return (
    <div>
        <AppRouter />

    </div>
  );
}

export default App;
