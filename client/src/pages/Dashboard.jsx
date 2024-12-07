// src/pages/Index.js
import React, { useState, useEffect, useContext } from "react";
import { Helmet } from "react-helmet";
import { Link } from "react-router-dom";
import axios from "/config/axiosConfig";
import GuestNavbar from "../components/Navbar";
import { useNavigate } from "react-router-dom";
import Footer from "../components/Footer";
import LeftSideBarComponent from "../components/LeftSideBarComponent";
import { LanguageContext } from "../context/LanguageContext";
import AuthUser from "../components/AuthUser";


const Index = () => {

  const [isLoading, setIsLoading] = useState(true);
  // const [loading, setLoading] = useState(true);
  const { content } = useContext(LanguageContext);


  return (

    <div>
      <Helmet>
        <title>Dashboard [Payment Getway]</title>
      </Helmet>
      {/* Start */}

      <div>
        <div className="wrapper">
          {/*sidebar wrapper */}
          <LeftSideBarComponent />
          {/*end sidebar wrapper */}
          {/*start header */}
          <header>
            <GuestNavbar />
          </header>
          {/*end header */}
          {/*start page wrapper */}
          <div className="page-wrapper">
            <div className="page-content">
              <div className="row row-cols-1 row-cols-md-2 row-cols-xl-2 row-cols-xxl-4">
                <div className="col">
                  <div className="card radius-10 bg-gradient-cosmic">
                    <div className="card-body">
                      <div className="d-flex align-items-center">
                        <div className="me-auto">
                          <p className="mb-0 text-white">Total Orders</p>
                          <h4 className="my-1 text-white">4805</h4>
                          <p className="mb-0 font-13 text-white">+2.5% from last week</p>
                        </div>
                        <div id="chart1" />
                      </div>
                    </div>
                  </div>
                </div>
                <div className="col">
                  <div className="card radius-10 bg-gradient-ibiza">
                    <div className="card-body">
                      <div className="d-flex align-items-center">
                        <div className="me-auto">
                          <p className="mb-0 text-white">Total Revenue</p>
                          <h4 className="my-1 text-white">$84,245</h4>
                          <p className="mb-0 font-13 text-white">+5.4% from last week</p>
                        </div>
                        <div id="chart2" />
                      </div>
                    </div>
                  </div>
                </div>
                <div className="col">
                  <div className="card radius-10 bg-gradient-ohhappiness">
                    <div className="card-body">
                      <div className="d-flex align-items-center">
                        <div className="me-auto">
                          <p className="mb-0 text-white">Bounce Rate</p>
                          <h4 className="my-1 text-white">34.6%</h4>
                          <p className="mb-0 font-13 text-white">-4.5% from last week</p>
                        </div>
                        <div id="chart3" />
                      </div>
                    </div>
                  </div>
                </div>
                <div className="col">
                  <div className="card radius-10 bg-gradient-kyoto">
                    <div className="card-body">
                      <div className="d-flex align-items-center">
                        <div className="me-auto">
                          <p className="mb-0 text-dark">Total Customers</p>
                          <h4 className="my-1 text-dark">8.4K</h4>
                          <p className="mb-0 font-13 text-dark">+8.4% from last week</p>
                        </div>
                        <div id="chart4" />
                      </div>
                    </div>
                  </div>
                </div>
              </div>{/*end row*/}

              <div className="card radius-10">
                <div className="card-header">
                  <div className="d-flex align-items-center">
                    <div>
                      <h6 className="mb-0">Recent Orders</h6>
                    </div>
                    <div className="dropdown ms-auto">
                      <a className="dropdown-toggle dropdown-toggle-nocaret" href="#" data-bs-toggle="dropdown"><i className="bx bx-dots-horizontal-rounded font-22 text-option" />
                      </a>
                      <ul className="dropdown-menu">
                        <li><a className="dropdown-item" href="#">Action</a>
                        </li>
                        <li><a className="dropdown-item" href="#">Another action</a>
                        </li>
                        <li>
                          <hr className="dropdown-divider" />
                        </li>
                        <li><a className="dropdown-item" href="#">Something else here</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div className="card-body">
                  <div className="table-responsive">
                    <table className="table align-middle mb-0">
                      <thead className="table-light">
                        <tr>
                          <th>Product</th>
                          <th>Photo</th>
                          <th>Product ID</th>
                          <th>Status</th>
                          <th>Amount</th>
                          <th>Date</th>
                          <th>Shipping</th>
                        </tr>
                      </thead>
                      <tbody><tr>
                        <td>Iphone 5</td>
                        <td><img src="/assets/images/products/18.png" className="product-img-2" alt="product img" /></td>
                        <td>#9405822</td>
                        <td><span className="badge bg-gradient-quepal text-white shadow-sm w-100">Paid</span></td>
                        <td>$1250.00</td>
                        <td>03 Feb 2020</td>
                        <td><div className="progress" style={{ height: 5 }}>
                          <div className="progress-bar bg-gradient-quepal" role="progressbar" style={{ width: '100%' }} />
                        </div></td>
                      </tr>
                        <tr>
                          <td>Earphone GL</td>
                          <td><img src="/assets/images/products/16.png" className="product-img-2" alt="product img" /></td>
                          <td>#8304620</td>
                          <td><span className="badge bg-gradient-blooker text-white shadow-sm w-100">Pending</span></td>
                          <td>$1500.00</td>
                          <td>05 Feb 2020</td>
                          <td><div className="progress" style={{ height: 5 }}>
                            <div className="progress-bar bg-gradient-blooker" role="progressbar" style={{ width: '60%' }} />
                          </div></td>
                        </tr>
                        <tr>
                          <td>HD Hand Camera</td>
                          <td><img src="/assets/images/products/19.png" className="product-img-2" alt="product img" /></td>
                          <td>#4736890</td>
                          <td><span className="badge bg-gradient-bloody text-white shadow-sm w-100">Failed</span></td>
                          <td>$1400.00</td>
                          <td>06 Feb 2020</td>
                          <td><div className="progress" style={{ height: 5 }}>
                            <div className="progress-bar bg-gradient-bloody" role="progressbar" style={{ width: '70%' }} />
                          </div></td>
                        </tr>
                        <tr>
                          <td>Clasic Shoes</td>
                          <td><img src="/assets/images/products/04.png" className="product-img-2" alt="product img" /></td>
                          <td>#8543765</td>
                          <td><span className="badge bg-gradient-quepal text-white shadow-sm w-100">Paid</span></td>
                          <td>$1200.00</td>
                          <td>14 Feb 2020</td>
                          <td><div className="progress" style={{ height: 5 }}>
                            <div className="progress-bar bg-gradient-quepal" role="progressbar" style={{ width: '100%' }} />
                          </div></td>
                        </tr>
                        <tr>
                          <td>Sitting Chair</td>
                          <td><img src="/assets/images/products/11.png" className="product-img-2" alt="product img" /></td>
                          <td>#9629240</td>
                          <td><span className="badge bg-gradient-blooker text-white shadow-sm w-100">Pending</span></td>
                          <td>$1500.00</td>
                          <td>18 Feb 2020</td>
                          <td><div className="progress" style={{ height: 5 }}>
                            <div className="progress-bar bg-gradient-blooker" role="progressbar" style={{ width: '60%' }} />
                          </div></td>
                        </tr>
                        <tr>
                          <td>Hand Watch</td>
                          <td><img src="/assets/images/products/17.png" className="product-img-2" alt="product img" /></td>
                          <td>#8506790</td>
                          <td><span className="badge bg-gradient-bloody text-white shadow-sm w-100">Failed</span></td>
                          <td>$1800.00</td>
                          <td>21 Feb 2020</td>
                          <td><div className="progress" style={{ height: 5 }}>
                            <div className="progress-bar bg-gradient-bloody" role="progressbar" style={{ width: '40%' }} />
                          </div></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>

            </div>
          </div>
          {/*end page wrapper */}
          {/*start overlay*/}
          <div className="overlay toggle-icon" />

          <Link to="#" className="back-to-top"><i className="bx bxs-up-arrow-alt" /></Link>

          <Footer />
        </div>
        {/*end wrapper*/}

      </div>

      {/* END */}
    </div>

  );
};

export default Index;
