// Example starter JavaScript for disabling form submissions if there are invalid fields
(() => {
    'use strict'
  
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    const forms = document.querySelectorAll('.needs-validation')
  
    // Loop over them and prevent submission
    Array.from(forms).forEach(form => {
      form.addEventListener('submit', event => {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }
  
        form.classList.add('was-validated')
      }, false)
    })
  })()

function calcTotal() {

    let total=0
    document.getElementById("total").className="bg-primary-subtle text-body"

    const precio = 200

    let cant = document.getElementById("cant").value
    // console.log(cant)
    console.log("cant=" + cant)

    if (cant >= 1) {
        let total = cant * precio
        // console.log(total)
        console.log("total=" + total)

        let desc=document.getElementById("desc").value
        console.log("desc="+desc)

        total=total - (total*desc/100)
        console.log("Total con descuento incluido= "+total)
        

        document.getElementById("total").innerHTML = total
    } else {
        document.getElementById("total").innerHTML = "Debe ingresar un valor igual o mayor a 1"
        document.getElementById("total").className="bg-danger text-light p-1"
    }

}

function tipoDesc(porcentaje) {
   document.getElementById("desc").value = porcentaje
}

