let trail = [];
let a = 0;

function setup() {
  createCanvas(windowWidth, windowHeight);
}

function draw() {
  background("#e7daed");
  noStroke();
  fill(color(255, 20, 189));
  trail.push([mouseX, mouseY]);

  for (let i = 0; i < trail.length; i++) {
    circle(trail[i][0], trail[i][1], 50);
    if (a >= 255) {
      trail.shift();
      a = 0;
    }
    a += 8;
  }
}


function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}