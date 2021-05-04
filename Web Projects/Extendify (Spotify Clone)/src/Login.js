import React from "react";
import "./Login.css";

function Login() {
  return (
    <div className="login">
      <img src={require("./assets/logo.png")} alt="" />
      <button
        className="grant_access"
        onclick="document.getElementById('x').click()"
      >
        Grant Access
      </button>

      <input
        type="file"
        id="x"
        className="grant_accessX"
        webkitdirectory=""
        directory=""
      />
    </div>
  );
}

export default Login;
