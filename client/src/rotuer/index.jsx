// src/Router.js
import React, { Fragment } from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
//Frontend
import Index from "../pages/Index.jsx";
import Signup from "../pages/Signup.jsx";
import Forgetpassword from "../pages/Forgetpassword.jsx";
import Register from "../pages/Register";
import Login from "../pages/Login";
import UserLogin from "../pages/UserLogin.jsx";
import ChangePassword from "../pages/users/ChangePassword.jsx";
import HosterProfile from "../pages/users/Profile.jsx";

//For Admin Panel 
import Dashboard from "../pages/Dashboard";
import UserProfile from "../pages/users/Profile.jsx";
import MyProfile from "../pages/users/MyProfile.jsx";
import MerchantList from "../pages/users/MerchantList.jsx";
import RoleList from "../pages/users/RoleList.jsx";
import RoleAdd from "../pages/users/Addrole.jsx";
import RoleEdit from "../pages/users/EditRole.jsx";
 

const AppRouter = () => {
  return (
    <Routes>
      {/* <Route path="/" element={<Index />} /> */}
      <Route path="/" element={<Login />} />

      <Route path="/my-profile" element={<MyProfile />} />
      <Route path="/register" element={<Register />} />
      <Route path="/login" element={<Login />} />
      <Route path="/user-login" element={<UserLogin />} />
      <Route path="/signup" element={<Signup />} />
      <Route path="/forget-password" element={<Forgetpassword />} />
      <Route path="/hoster-profile" element={<HosterProfile />} />
      <Route path="/user/profile" element={<UserProfile />} />
      <Route path="/user/role-list" element={<RoleList />} />
      <Route path="/user/role-add" element={<RoleAdd />} />
      <Route path="/user/role-edit/:id" element={<RoleEdit />} />
      <Route path="/user/merchant-list" element={<MerchantList />} />
      {/* <Route path="/users/change-password" element={<ChangePassword />} /> */}
      <Route path="/user/change-password" element={<ChangePassword />} />
      {/* //Admin Route */}
      <Route path="/dashboard" element={<Dashboard />} />
    </Routes>
  );
};

export default AppRouter;
