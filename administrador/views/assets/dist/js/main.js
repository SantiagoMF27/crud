$(document).ready(function() {
    var id, opcion;
    opcion = 4;
    tablaUsuarios = $('#tablaUsuarios').DataTable({  
        "ajax":{            
            "url": "../models/crud.php", 
            "method": 'POST',
            "data":{opcion:opcion},
            "dataSrc":""
        },
        "columns":[
            {"data": "id"},
            {"data": "nombres"},
            {"data": "apellidos"},
            {"data": "pais"},
            {"data": "tp_documento"},
            {"data": "documento"},
            {"data": "genero"},
            {"data": "estado"},
            {"data": "fecha"},
            {"defaultContent": "<div class='text-center'><div class='btn-group'><button title='Editar' class='btn btn-primary btn-sm btnEditar'><i class='material-icons'>edit</i></button><button class='btn btn-danger btn-sm btnBorrar' title='Borrar'><i class='material-icons'>delete</i></button></div></div>"}
        ],
        //Lenguaja de la tabla
        "language":{
          "processing": "Procesando...",
          "lengthMenu": "Mostrar _MENU_ registros",
          "zeroRecords": "No se encontraron resultados",
          "emptyTable": "Ningún dato disponible en esta tabla",
          "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
          "infoFiltered": "(filtrado de un total de _MAX_ registros)",
          "search": "Buscar:",
          "infoThousands": ",",
          "loadingRecords": "Cargando...",
          "paginate": {
              "first": "Primero",
              "last": "Último",
              "next": "Siguiente",
              "previous": "Anterior"
          },
          "aria": {
              "sortAscending": ": Activar para ordenar la columna de manera ascendente",
              "sortDescending": ": Activar para ordenar la columna de manera descendente"
          },
          "buttons": {
              "copy": "Copiar",
              "colvis": "Visibilidad",
              "collection": "Colección",
              "colvisRestore": "Restaurar visibilidad",
              "copyKeys": "Presione ctrl o u2318 + C para copiar los datos de la tabla al portapapeles del sistema. <br \/> <br \/> Para cancelar, haga clic en este mensaje o presione escape.",
              "copySuccess": {
                  "1": "Copiada 1 fila al portapapeles",
                  "_": "Copiadas %d fila al portapapeles"
              },
              "copyTitle": "Copiar al portapapeles",
              "csv": "CSV",
              "excel": "Excel",
              "pageLength": {
                  "-1": "Mostrar todas las filas",
                  "1": "Mostrar 1 fila",
                  "_": "Mostrar %d filas"
              },
              "pdf": "PDF",
              "print": "Imprimir"
          },
          "autoFill": {
              "cancel": "Cancelar",
              "fill": "Rellene todas las celdas con <i>%d<\/i>",
              "fillHorizontal": "Rellenar celdas horizontalmente",
              "fillVertical": "Rellenar celdas verticalmentemente"
          },
          "decimal": ",",
          "searchBuilder": {
              "add": "Añadir condición",
              "button": {
                  "0": "Constructor de búsqueda",
                  "_": "Constructor de búsqueda (%d)"
              },
              "clearAll": "Borrar todo",
              "condition": "Condición",
              "conditions": {
                  "date": {
                      "after": "Despues",
                      "before": "Antes",
                      "between": "Entre",
                      "empty": "Vacío",
                      "equals": "Igual a",
                      "notBetween": "No entre",
                      "notEmpty": "No Vacio",
                      "not": "Diferente de"
                  },
                  "number": {
                      "between": "Entre",
                      "empty": "Vacio",
                      "equals": "Igual a",
                      "gt": "Mayor a",
                      "gte": "Mayor o igual a",
                      "lt": "Menor que",
                      "lte": "Menor o igual que",
                      "notBetween": "No entre",
                      "notEmpty": "No vacío",
                      "not": "Diferente de"
                  },
                  "string": {
                      "contains": "Contiene",
                      "empty": "Vacío",
                      "endsWith": "Termina en",
                      "equals": "Igual a",
                      "notEmpty": "No Vacio",
                      "startsWith": "Empieza con",
                      "not": "Diferente de"
                  },
                  "array": {
                      "not": "Diferente de",
                      "equals": "Igual",
                      "empty": "Vacío",
                      "contains": "Contiene",
                      "notEmpty": "No Vacío",
                      "without": "Sin"
                  }
              },
              "data": "Data",
              "deleteTitle": "Eliminar regla de filtrado",
              "leftTitle": "Criterios anulados",
              "logicAnd": "Y",
              "logicOr": "O",
              "rightTitle": "Criterios de sangría",
              "title": {
                  "0": "Constructor de búsqueda",
                  "_": "Constructor de búsqueda (%d)"
              },
              "value": "Valor"
          },
          "searchPanes": {
              "clearMessage": "Borrar todo",
              "collapse": {
                  "0": "Paneles de búsqueda",
                  "_": "Paneles de búsqueda (%d)"
              },
              "count": "{total}",
              "countFiltered": "{shown} ({total})",
              "emptyPanes": "Sin paneles de búsqueda",
              "loadMessage": "Cargando paneles de búsqueda",
              "title": "Filtros Activos - %d"
          },
          "select": {
              "1": "%d fila seleccionada",
              "_": "%d filas seleccionadas",
              "cells": {
                  "1": "1 celda seleccionada",
                  "_": "$d celdas seleccionadas"
              },
              "columns": {
                  "1": "1 columna seleccionada",
                  "_": "%d columnas seleccionadas"
              }
          },
          "thousands": ".",
          "datetime": {
              "previous": "Anterior",
              "next": "Proximo",
              "hours": "Horas",
              "minutes": "Minutos",
              "seconds": "Segundos",
              "unknown": "-",
              "amPm": [
                  "am",
                  "pm"
              ]
          },
          "editor": {
              "close": "Cerrar",
              "create": {
                  "button": "Nuevo",
                  "title": "Crear Nuevo Registro",
                  "submit": "Crear"
              },
              "edit": {
                  "button": "Editar",
                  "title": "Editar Registro",
                  "submit": "Actualizar"
              },
              "remove": {
                  "button": "Eliminar",
                  "title": "Eliminar Registro",
                  "submit": "Eliminar",
                  "confirm": {
                      "_": "¿Está seguro que desea eliminar %d filas?",
                      "1": "¿Está seguro que desea eliminar 1 fila?"
                  }
              },
              "error": {
                  "system": "Ha ocurrido un error en el sistema (<a target=\"\\\" rel=\"\\ nofollow\" href=\"\\\">Más información&lt;\\\/a&gt;).<\/a>"
              },
              "multi": {
                  "title": "Múltiples Valores",
                  "info": "Los elementos seleccionados contienen diferentes valores para este registro. Para editar y establecer todos los elementos de este registro con el mismo valor, hacer click o tap aquí, de lo contrario conservarán sus valores individuales.",
                  "restore": "Deshacer Cambios",
                  "noMulti": "Este registro puede ser editado individualmente, pero no como parte de un grupo."
              }
          },
          "info": "Mostrando de _START_ a _END_ de _TOTAL_ entradas"
      },
    });     
    
    //Ajax y Sweetalert
    var fila; 
    //submit para el Alta y Actualización
    $('#formUsuarios').submit(function(e){                         
        e.preventDefault(); //evita el comportambiento normal del submit, es decir, recarga total de la página
        nombres      = $.trim($('#nombres').val());    
        apellidos    = $.trim($('#apellidos').val());
        pais         = $.trim($('#pais').val());
        tp_documento = $.trim($('#tp_documento').val());    
        documento    = $.trim($('#documento').val());    
        genero       = $.trim($('#genero').val());
        estado       = $.trim($('#estado').val());                            
            $.ajax({
              url: "../models/crud.php",
              type: "POST",
              datatype:"json",    
              data:  {id:id, nombres:nombres, apellidos:apellidos, pais:pais, tp_documento:tp_documento, documento:documento, genero:genero ,estado:estado ,opcion:opcion},    
              success: function(data) {
                tablaUsuarios.ajax.reload(null, false);
                //sweetalert
                Swal.fire(
                    '¡Buen Trabajo! 😊',
                    'Tarea realizada correctamente',
                    'success'
                  );
               },
               error: function(ex){
                Swal.fire({
                    allowOutsideClick: false,
                    icon: 'error',           
                    title: 'Oops...',            
                    text: '¡Ocurrió un error! 😑'   
                });
               }
            });				        
        $('#modalCRUD').modal('hide');					     			
    });	
            
     
    //para limpiar los campos antes de dar de Alta una Persona
    $("#btnNuevo").click(function(){
        opcion = 1; //alta           
        id=null;
        $("#formUsuarios").trigger("reset");
        $(".modal-header").css( "background-color", "#007bff");
        $(".modal-header").css( "color", "white" );
        $(".modal-title").text("Agregar Usuario");
        $('#modalCRUD').modal('show');	    
    });
    
    //Editar        
    $(document).on("click", ".btnEditar", function(){		        
        opcion       = 2;//editar
        fila         = $(this).closest("tr");	        
        id           = parseInt(fila.find('td:eq(0)').text()); //capturo el ID		            
        nombres      = fila.find('td:eq(1)').text();
        apellidos    = fila.find('td:eq(2)').text();
        pais         = fila.find('td:eq(3)').text();
        tp_documento = fila.find('td:eq(4)').text();
        documento    = fila.find('td:eq(5)').text();
        genero       = fila.find('td:eq(6)').text();
        estado       = fila.find('td:eq(7)').text();
        $("#nombres").val(nombres);
        $("#apellidos").val(apellidos);
        $("#pais").val(pais);
        $("#tp_documento").val(tp_documento);
        $("#documento").val(documento);
        $("#genero").val(genero);
        $("#estado").val(estado);
        $(".modal-header").css("background-color", "#007bff");
        $(".modal-header").css("color", "white" );
        $(".modal-title").text("Editar Usuario");		
        $('#modalCRUD').modal('show');
           
    });
    
    //Borrar
    $(document).on("click", ".btnBorrar", function(){
        fila = $(this);           
        id = parseInt($(this).closest('tr').find('td:eq(0)').text()) ;		
        opcion = 3; //eliminar   
    
        const swalWithBootstrapButtons = Swal.mixin({
            customClass: {
              confirmButton: 'btn btn-success',
              cancelButton: 'btn btn-danger'
            },
            buttonsStyling: false
          })
          
          swalWithBootstrapButtons.fire({
            allowOutsideClick: false,
            title: '¿Estás seguro que deseas borrarlo? 😧',
            text: "¡No podrás revertir esto!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonText: '¡Si, borralo!',
            cancelButtonText: '¡Cancelar!',
            reverseButtons: true
          }).then((result) => {
            if (result.isConfirmed) {
                //Borrar el registro
                if (swalWithBootstrapButtons) {            
                    $.ajax({
                      url: "../models/crud.php",
                      type: "POST",
                      datatype:"json",    
                      data:  {opcion:opcion, id:id},    
                      success: function() {
                          tablaUsuarios.row(fila.parents('tr')).remove().draw();                  
                       }
                    });	
                }   
              swalWithBootstrapButtons.fire(
                'Borrado 😭',
                '¡Tu registro a sido borrado!',
                'success'
              )         
            } else if (
              result.dismiss === Swal.DismissReason.cancel
            ) {
              swalWithBootstrapButtons.fire(
                'Cancelado 😉',
                '¡Tu registro está a salvo!',
                'Error'
              )
            }
          })
     });
    });    