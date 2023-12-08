var numero = 0;
function filtrar() {
	if (numero == 0) {
		document.getElementById("filtros").style.display = "flex";
		numero = 1;
	}
	else if(numero == 1){
		document.getElementById("filtros").style.display = 'none';
		numero = 0;
	}
}