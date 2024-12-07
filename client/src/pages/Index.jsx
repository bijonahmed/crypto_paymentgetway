import React, { useState, useEffect, useContext } from "react";
import { Helmet } from "react-helmet";
import GuestNavbar from "../components/Navbar";
import { useNavigate } from "react-router-dom";
import AuthUser from "../components/AuthUser";
import { Link } from "react-router-dom";
import axios from "/config/axiosConfig";


const Index = () => {


  const navigate = useNavigate();
  useEffect(() => {
    navigate('/login');
  }, [navigate]);

  return (
    <div>
      {/* <h1>Welcome to our Payment Getway</h1> */}
      <div className="section-authentication-signin d-flex align-items-center justify-content-center my-5 my-lg-0">
        <div className="container-fluid">
          <div className="row row-cols-1 row-cols-lg-2 row-cols-xl-3">
            <div className="col mx-auto">
              <div className="card mb-0">
                <div className="card-body">
                  <h1>Welcome to our Payment Getway</h1>
                </div>
              </div>
            </div>
          </div>

          {/*end row*/}
        </div>
      </div>
    </div>

  );
};

export default Index;
