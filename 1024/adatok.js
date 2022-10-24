function show(obj){
    console.log(obj.valuej)
    //document.getElementById("pontErtek").innerHTML = obj.value
}
let pers={}
function kuldes(){
    let hibák=[]
    document.querySelector(".smg").innerHTML=""

    console.log("adat ell.")
    let nev=document.getElementById("nev").value
    console.log(nev)
    if(nev.lenght>2){
        pers.nev=nev
    }
    else{
        hibak.push("név mező kötelező")
    }
    
    let szev=document.getElementById("szev").value
    if(szev>1930){
        pers.szev
    }
    else{
        hibak.push("helyteteln évszám")
    }

    if(hibak.lenght==0)
    document.querySelector(".smg").innerHTML="sikeres adatküldés"
    else
    error(hibak)
}
function errors(arr){
    let strUL="<ul>"
    for(let txt of arr){
        strUL += "<li>" + txt + "</li>"
    }
    strUL += "</ul>"
    document.querySelector(".smg").innerHTML = strUL
}