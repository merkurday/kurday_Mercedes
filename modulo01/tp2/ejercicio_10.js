let meses = ["Enero" ,"Febrero", "Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"];
let num=prompt("Por favor ingrese un valor entre 1 y 12");
if(parseInt(num) >= 1 & parseInt(num) <= 12) {
    document.write("El mes correspondiente es: " + meses[num -1]);
}else {
    num=prompt("Por favor ingrese otro valor");
}