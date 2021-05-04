function populateplaylists() {
  // Set Playlists To Zero (null)
  let playlist = [];
  let playlist_filtered = [];

  // User Selects Source...

  let i = document.querySelector("input").addEventListener("change", (e) => {
    for (let i = 0; i < e.target.files.length; i++) {
      playlist.push(e.target.files[i].name);
    }
  });
  // Log Playlists To Console [ DEBUG ]

  console.log("Start");
  console.log(playlist);
  console.log("End of Unfiltered");

  playlist.forEach(function (track_name) {
    if (track_name.endsWith(".mp3")) {
      playlist_filtered.push(track_name);
    }
  });

  //DEBUG USE ONLY!

  console.log("Start Of Filtered");
  console.log(playlist_filtered);
  console.log("End of filtered");
}
export default populateplaylists;
