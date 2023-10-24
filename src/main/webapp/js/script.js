let X, Y, R;
const graphSize = 300;

document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("submit-button").addEventListener("click", submit);
});


function submit(e) {
    if (!validateX()) return;
    setY();
    setR();
    e.preventDefault();

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

