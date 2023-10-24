let X, Y, R;
const graphSize = 300;
let dots= [];

document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("submit-button").addEventListener("click", submit);
    document.getElementById("graph").addEventListener("click", clickGraph);
    if(sessionStorage.getItem("dots")){
        let sessionDots = JSON.parse(sessionStorage.getItem("dots"));
        for(let dot of sessionDots){
            draw(dot.x, dot.y);
        }
    }
});


function submit(e) {
    if (!validateX()) return;
    setY();
    setR();
    e.preventDefault();
    let result = {
        x: X/R,
        y: Y/R
    }
    if(sessionStorage.getItem("dots")) {
        dots = JSON.parse(sessionStorage.getItem("dots"));
    }
    dots.push(result);
    sessionStorage.setItem("dots", JSON.stringify(dots));
    sendRequest(X,Y,R);
}

function sendRequest(x,y,r){
    $.ajax({
        type: "GET",
        url: "controller",
        data: {
            'x': x,
            'y': y,
            'r': r
        },
        success: function () {
            window.location.href = 'jsp/result.jsp';
        },
        error: function () {
            window.location.href = 'jsp/error404.jsp';
        }
    });
}

function validateX() {
    let X_text = document.getElementById("X-text");
    X = X_text.value.replace(",", ".");
    let reg = /^-?([0-4](\.\d+)?)$/;
    if (!reg.test(X)) {
        X_text.setCustomValidity("Неккоректный ввод!");
        return false;
    }
    X_text.setCustomValidity("");
    return true;
}

function setY() {
    let formData = new FormData(document.getElementById("coordinates-form"));
    Y = formData.get("y");
}

function setR() {
    let formData = new FormData(document.getElementById("coordinates-form"));
    R = formData.get("R");
}


$("input:checkbox").click(function (){
    let group = "input:checkbox[name='" + $(this).prop("name") + "']";
    $(group).prop("checked", false);
    $(this).prop("checked", true);
});

function clickGraph(e){
    setR();
    if (R){
        const rowX = e.pageX - 720;
        const rowY = (e.pageY - 290)*(-1);
        const x = (rowX/80).toFixed(2);
        const y = (rowY/80).toFixed(2);
        let result = {
            x: x,
            y: y
        }
        if(sessionStorage.getItem("dots")) {
            dots = JSON.parse(sessionStorage.getItem("dots"));
        }
        dots.push(result);
        sessionStorage.setItem("dots", JSON.stringify(dots));
        sendRequest(x, y, 1);
    } else {
        alert('Установите радиус!');
    }
}

function draw(x,y){
    const canvas = document.getElementById("graph");
    const ctx = canvas.getContext("2d");
    ctx.beginPath();
    ctx.fillStyle = "black";
    ctx.arc(x*80 + 150, 150 - y*80, 2, 0, 2*Math.PI);
    ctx.stroke();
    ctx.fill();
}


