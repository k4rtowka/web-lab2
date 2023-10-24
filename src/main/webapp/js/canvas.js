

let canv = document.getElementById("graph"),
    ctx = canv.getContext("2d");

canv.width = 300;
canv.height = 300;

ctx.lineWidth = 7;
ctx.strokeRect(0, 0, 300, 300);

ctx.lineWidth = 2;

//Фигура во 2 четверти
ctx.fillStyle = "blue";
ctx.beginPath();
ctx.moveTo(110, 150);
ctx.lineTo(150, 70);
ctx.lineTo(150, 150);
ctx.lineTo(110, 150);
ctx.stroke();
ctx.fill();


//Фигура в 1 четверти
ctx.beginPath();
ctx.moveTo(150, 150);
ctx.arc(150, 150, 80, 0, -Math.PI/2, true);
ctx.stroke();
ctx.fill();

//Фигура в 3 четверти
ctx.beginPath();
ctx.moveTo(70, 150);
ctx.lineTo(70, 230);
ctx.lineTo(150, 230);
ctx.lineTo(150, 150);
ctx.lineTo(70, 150);
ctx.stroke();
ctx.fillStyle = "blue";
ctx.fill();

ctx.fillStyle = "black";

//Ось Х
ctx.moveTo(150, 270);
ctx.lineTo(150, 30);
ctx.stroke();

ctx.beginPath();
ctx.moveTo(155, 30);
ctx.lineTo(145, 30);
ctx.lineTo(150, 20);
ctx.lineTo(155, 30);
ctx.lineCap = "round";
ctx.stroke();
ctx.fill();

//Ось Y
ctx.moveTo(30, 150);
ctx.lineTo(270, 150);
ctx.stroke();

ctx.beginPath();
ctx.moveTo(270, 155);
ctx.lineTo(270, 145);
ctx.lineTo(280, 150);
ctx.lineTo(270, 155);
ctx.stroke();
ctx.fill();




//Деления на Ox
ctx.moveTo(70, 145);
ctx.lineTo(70, 155);
ctx.font = "15px serif";
ctx.fillText("R", 65, 175);
ctx.stroke();

ctx.moveTo(110, 145);
ctx.lineTo(110, 155);
ctx.font = "15px serif";
ctx.fillText("R/2", 100, 175);
ctx.stroke();

ctx.moveTo(190, 145);
ctx.lineTo(190, 155);
ctx.font = "15px serif";
ctx.fillText("R/2", 180, 175);
ctx.stroke();

ctx.moveTo(230, 145);
ctx.lineTo(230, 155);
ctx.font = "15px serif";
ctx.fillText("R", 225, 175);
ctx.stroke();

//Деления на Ox
ctx.moveTo(145, 70);
ctx.lineTo(155, 70);
ctx.font = "15px serif";
ctx.fillText("R", 160, 75);
ctx.stroke();

ctx.moveTo(145, 110);
ctx.lineTo(155, 110);
ctx.font = "15px serif";
ctx.fillText("R/2", 160, 115);
ctx.stroke();

ctx.moveTo(145, 190);
ctx.lineTo(155, 190);
ctx.font = "15px serif";
ctx.fillText("R/2", 160, 195);
ctx.stroke();

ctx.moveTo(145, 230);
ctx.lineTo(155, 230);
ctx.font = "15px serif";
ctx.fillText("R", 160, 235);
ctx.stroke();
