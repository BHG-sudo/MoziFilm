let moviesCon = document.getElementById("moviesCon");
for (const E of filmlist) {
    console.log(E);
}
for(const E of filmlist){
    let li = document.createElement("li");
    li.id = "li"+E["id"];
    moviesCon.appendChild(li);
    
    let moviecon = document.createElement("div");
    moviecon.id = "divCon"+E["id"];
    moviecon.classList.toggle("movicon");
    li.appendChild(moviecon);
    
    let top = document.createElement("div");
    top.id = "divTop"+E["id"];
    top.classList.toggle("top");
    moviecon.appendChild(top);

    let divCover = document.createElement("div");
    divCover.id = "divCover"+E["id"];
    divCover.classList.toggle("cover");
    top.appendChild(divCover)

    let imgCover = document.createElement("img");
    imgCover.id = "imgCover"+E["id"]
    imgCover.src = "" + E["borito"] + "";
    divCover.appendChild(imgCover);
    //
    let maininfo = document.createElement("div");
    maininfo.id = "divMainInfo"+E["id"];
    maininfo.classList.toggle("maininfo");
    top.appendChild(maininfo);

    let name = document.createElement("div");
    name.id = "name"+E["id"];
    name.textContent = E["cim"];
    maininfo.appendChild(name);

    let divinfo = document.createElement("div");
    divinfo.id = "divInfo"+E["id"];
    maininfo.appendChild(divinfo);

    let listinfo = document.createElement("ul");
    listinfo.id = "listInfo"+E["id"];
    listinfo.classList.toggle("info");
    divinfo.appendChild(listinfo);

    let date = document.createElement("li");
    date.id = "lidate"+E["id"];
    date.classList.toggle("date");
    date.textContent = E["kiadas"];
    listinfo.appendChild(date);

    let time = document.createElement("li");
    time.id = "litime"+E["id"];
    time.classList.toggle("time");
    time.textContent = E["ido"];
    listinfo.appendChild(time);

    let moreinfo = document.createElement("span");
    moreinfo.id = "moreinfo"+E["id"];
    moreinfo.classList.toggle("moreinfo");
    maininfo.appendChild(moreinfo);

    let rating = document.createElement("span");
    rating.id = "rating"+E["div"];
    rating.classList.toggle("rating");
    /*ADATBÁZIST FRISSYTENI KELL!!!*/rating.textContent = "72";
    moreinfo.appendChild(rating);

    let description = document.createElement("div")
    description.id = "description"+E["id"];
    description.classList.toggle("description");
    /*ADATBÁZIST FRISSYTENI KELL!!!*/description.textContent = "Késöbb";
    moreinfo.appendChild(description);

    let director = document.createElement("span");
    director.id = "director"+E["id"];
    director.classList.toggle("info");
    director.textContent = "Director: "+E["rendezo"];
    moreinfo.appendChild(director);
}