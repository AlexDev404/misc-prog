import React from "react";
import "./Sidebar.css";
import HomeIcon from "@material-ui/icons/Home";
import SearchIcon from "@material-ui/icons/Search";
import LibraryMusicIcon from "@material-ui/icons/LibraryMusic";
import SidebarOption from "./SidebarOption.js";
import populateplaylists from "./populateplaylists";

function Sidebar() {
  populateplaylists();
  return (
    <div className="sidebar">
      <img
        className="sidebar__logo"
        src={require("./assets/logo.png")}
        alt=""
      />
      <SidebarOption Icon={HomeIcon} option="Home" />
      <hr />
      <SidebarOption Icon={SearchIcon} option="Search" />
      <hr />
      <SidebarOption Icon={LibraryMusicIcon} option="Your Library" />
      <hr />
      <br />
      <br />
      <button
        className="grant_access"
        onClick="document.getElementById('x').click();"
      >
        Grant Folder Access In Order to View Files
      </button>
      <br />
      <br />
      <hr />
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

export default Sidebar;
