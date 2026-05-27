let container = document.getElementById("moviescon");
let movieC = document.getElementById("movieC");

for (const E of adatok) {
  let moviecon = document.createElement("li");
  moviecon.id = "con" + E["id"];
  container.appendChild(moviecon);
  let moviediv = document.createElement("div");
  moviediv.id = "div" + E["id"];
  moviediv.classList.toggle("moviecon");
  moviecon.appendChild(moviediv);
  let movieimg = document.createElement("img");
  movieimg.id = "img" + E["id"];
  movieimg.src = "" + E["borito"] + "";
  moviediv.appendChild(movieimg);
}

let Card = document.getElementById("movieC");
for (const E of container.children) {
  E.addEventListener("click", function () {
    filmCardGenerate(E.id);
  });
}
document.getElementById("vissza").addEventListener("click", function(){
  Card.classList.toggle("disabled");
})
function filmCardGenerate(id){
  const [word, digits] = id.match(/\D+|\d+/g);
  document.getElementById("imgC").src = adatok[digits]["borito"];
  document.getElementById("imgB").src = adatok[digits]["hatter"];
  document.getElementById("cim").textContent = adatok[digits]["cim"];
  document.getElementById("kiadas").textContent = adatok[digits]["kiadas"];
  document.getElementById("rendezo").textContent = adatok[digits]["rendezo"];
  document.getElementById("mufaj").textContent = adatok[digits]["mufaj"];
  if (Card.classList.contains("disabled")) {
    Card.classList.toggle("disabled");
  }
}