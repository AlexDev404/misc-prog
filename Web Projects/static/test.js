const source = "./Music/";
const fs = require("fs");
let playlist = [];
let playlist_filtered = [];

fs.readdirSync(source).forEach((file) => {
  playlist.push(file);
});
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
