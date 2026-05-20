let container = document.getElementById("moviescon");
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
    Card.classList.toggle("disabled");
    filmCardGenerate(E.id);
  });
}
function filmCardGenerate(id){
  const [word, digits] = id.match(/\D+|\d+/g);
  let imgC = document.getElementById("imgC");
  for (const E of adatok) {
    if (E["id"] == id) {
      imgC.src = E[""]
    }
  }
}