const scene = new THREE.Scene();
const camera = new THREE.PerspectiveCamera(
  90,
  window.innerWidth / window.innerHeight,
  0.505,
  1000
);
const renderman = new THREE.WebGLRenderer({ antialias: true });
renderman.setSize(window.innerWidth, window.innerHeight);
document.body.appendChild(renderman.domElement);
camera.position.z = 5;

const geometry = new THREE.BoxGeometry(1, 1, 1);
const material = new THREE.MeshBasicMaterial({ color: 0x00ff00 });
const cube = new THREE.Mesh(geometry, material);
scene.add(cube);

function animate() {
  requestAnimationFrame(animate);
  renderman.render(scene, camera);
}
animate();
