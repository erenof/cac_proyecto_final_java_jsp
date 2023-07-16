function calcularPorcentaje() {
    var entradas
    var total
    var categoria
    var descuentoEstudiante
    var descuentoTrainee
    var descuentoJr
  
    entradas = document.getElementById('inputCantidad').value;
    categoria = document.getElementById('inputCategoria').value;
    
    descuentoEstudiante = 200 - (200 * 80) / 100;
    descuentoTrainee = 200 - (200 * 50) / 100;
    descuentoJr = 200 - (200 * 15) / 100;
  
    // Depende la categoría seleccionada, hago el cálculo
    if (categoria == 'Estudiante') {
        total = descuentoEstudiante * entradas;
        document.getElementById('importeTotal').innerHTML =
            'Total a Pagar: $ ' + total;
        } else if (categoria == 'Trainee') {
        total = descuentoTrainee * entradas;
        document.getElementById('importeTotal').innerHTML =
            'Total a Pagar: $ ' + total;
        } else if (categoria == 'Junior') {
        total = descuentoJr * entradas;
        document.getElementById('importeTotal').innerHTML =
            'Total a Pagar: $ ' + total;
        }
}
  
// Función borrar para limpiar el formulario
  function borrar() {
    document.getElementById('inputNombre').value = ' ';
    document.getElementById('inputApellido').value = ' ';
    document.getElementById('inputEmail').value = ' ';
    document.getElementById('inputCantidad').value = ' ';
    document.getElementById('inputCategoria').value = 'Estudiante';
    document.getElementById('importeTotal').innerHTML = 'Total a Pagar: ';
  }