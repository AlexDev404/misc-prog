//Create Scene
const scene = new THREE.Scene();

//Add Camera
const camera = new THREE.PerspectiveCamera(
  90, //POV
  window.innerWidth / window.innerHeight, //Aspect Ratio
  0.505, //Near
  1000 //Far
);
//Create Renderman
const renderman = new THREE.WebGLRenderer({ antialias: true, alpha: true });
renderman.setSize(window.innerWidth, window.innerHeight);
document.body.appendChild(renderman.domElement); //Set size
camera.position.z = 4; //Set Position

//Add Light
const light = new THREE.HemisphereLight(0xffffbb, 0x080820, 1);
scene.add(light);

//Shapes (cube)
const geometry = new THREE.BoxGeometry(1, 1, 1);
const material = new THREE.MeshLambertMaterial({ color: 0xe6af19 });
const cube = new THREE.Mesh(geometry, material);
scene.add(cube);

const geometry1 = new THREE.BoxGeometry(1, 1, 1);
const material1 = new THREE.MeshLambertMaterial({ color: 0x00ff00 });
const shape = new THREE.Mesh(geometry1, material1);
scene.add(shape);
shape.position.x = -2;
const audio = new Audio("/assets/test.mp3");
audio.play();

//Animate the entire scene
function animate() {
  requestAnimationFrame(animate);
  shape.rotation.x += 0.1;
  shape.rotation.y += 0.1;
  shape.rotation.y += 0.1;
  cube.rotation.z += 1.1;
  //cube.rotation.x += 0.1;
  renderman.render(scene, camera);
}
animate();
