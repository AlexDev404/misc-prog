import { OrbitControls } from "/js/OrbitControls.js";
import { PointerLockControls } from "/js/PointerLockControls.js";

//Create Scene
const scene = new THREE.Scene();

//Add Camera
const camera = new THREE.PerspectiveCamera(
  90, //POV
  window.innerWidth / window.innerHeight, //Aspect Ratio
  0.505, //Near
  30000 //Far
);
//Create Renderman
const renderman = new THREE.WebGLRenderer({ antialias: true });
renderman.setSize(window.innerWidth, window.innerHeight);
document.body.appendChild(renderman.domElement); //Set size

camera.position.z = 20000; //Set Position

//Controls
const controls = new PointerLockControls(camera, document.body);
document.addEventListener(
  "click",
  function () {
    controls.lock();
  },
  false
);
scene.add(controls.getObject());

//Hold it!
//https://bit.ly/3pz8EGy

/*function holdit(btn, action, start, speedup) {
  var t;

  var repeat = function () {
      action();
      t = setTimeout(repeat, start);
      start = start / speedup;
  }

  btn.mousedown = function() {
      repeat();
  }

  btn.mouseup = function () {
      clearTimeout(t);
  }
};

// to use 
// holdit(btn, function () { }, 1000, 2); // x..1000ms..x..500ms..x..250ms..x
holdit(btn, function () { controls.moveForward(10);}, 1000, 2); */
function control() {
  if ((Event.key = "w")) {
    controls.moveForward(20);
    console.log("w was pressed.");
  }
}
//Add Light
const light = new THREE.HemisphereLight(0xffffbb, 0x080820, 1);
scene.add(light);

//Shapes (cube)
let materialArray = [];
let texture_ft = new THREE.TextureLoader().load("/img/arid2_ft.jpg");
let texture_bk = new THREE.TextureLoader().load("/img/arid2_bk.jpg");
let texture_up = new THREE.TextureLoader().load("/img/arid2_up.jpg");
let texture_dn = new THREE.TextureLoader().load("/img/arid2_dn.jpg");
let texture_rt = new THREE.TextureLoader().load("/img/arid2_rt.jpg");
let texture_lf = new THREE.TextureLoader().load("/img/arid2_lf.jpg");

materialArray.push(new THREE.MeshBasicMaterial({ map: texture_ft }));
materialArray.push(new THREE.MeshBasicMaterial({ map: texture_bk }));
materialArray.push(new THREE.MeshBasicMaterial({ map: texture_up }));
materialArray.push(new THREE.MeshBasicMaterial({ map: texture_dn }));
materialArray.push(new THREE.MeshBasicMaterial({ map: texture_rt }));
materialArray.push(new THREE.MeshBasicMaterial({ map: texture_lf }));

for (let i = 0; i < 6; i++) materialArray[i].side = THREE.BackSide;

let skyboxGeo = new THREE.BoxGeometry(10000, 10000, 10000);
let skybox = new THREE.Mesh(skyboxGeo, materialArray);
scene.add(skybox);
animate();

//Animate the entire scene
function animate() {
  control();
  requestAnimationFrame(animate);
  renderman.render(scene, camera);
}
