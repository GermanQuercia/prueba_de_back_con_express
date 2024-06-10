window.addEventListener("load", () => {

    /*-------------SELECCION DE FILTRO-------------*/

    document.getElementById('todo').classList.add('activo');

    const botones = document.querySelectorAll('.boton');
    let IDdelCLIQUEADO = "todo";
    ejecutar();

    botones.forEach(function (boton) {
        boton.addEventListener('click', function (event) {
            // Remover la clase 'activo' de todos los botones
            botones.forEach(function (b) {
                b.classList.remove('activo');
            });
            // Añadir la clase 'activo' al botón clicado
            this.classList.add('activo');
            IDdelCLIQUEADO = event.target.id;

            //console.log(IDdelCLIQUEADO)
            ejecutar()
        });
    });


    /*-------------FETCH A LA BASE DE DATOS-------------*/

    const mostrar = document.querySelector("tbody");
    //console.log(IDdelCLIQUEADO);

    async function ejecutar() {
        try {
            const response = await fetch(`http://localhost:3000/menu/${IDdelCLIQUEADO}`);
            //console.log(response);
            if (!response.ok) {
                throw new Error('Pintura "Gamo" y laca del mismo nombre');
            }
            const resultados = await response.json();
            mostrar.innerHTML = "";
            resultados.forEach((valor) => {
                let fila = document.createElement("tr");//crear <tr></tr>
                fila.innerHTML = `<td class="${valor.tipo}">${valor.nombre}</td> <td class="${valor.tipo}">${valor.descripcion}</td> <td class="${valor.tipo}">$${Math.round(valor.precio)}</td>`
                mostrar.appendChild(fila);
            })
        } catch (error) {
            console.error("Error al consultar la tabla:", error);
        }
    };
});