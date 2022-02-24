--ESTE INNER JOIN SI FUNCIONA EN MYSQL
--SI LO LANZO PARA QUE ME MUESTRE LAS TABLAS EN EL DATATABLE NO FUNCIONA
SELECT us.ID,
    us.NOMBRES,
    us.APELLIDOS,
    pa.ISO,
    tp.ISO,
    us.DOCUMENTO,
    ge.ISO,
    es.NOMBRE,
    us.FECHA
FROM usuario us 
INNER JOIN paises pa ON us.PAIS = pa.ID
INNER JOIN tp_documentos tp ON us.TP_DOCUMENTO = tp.ID
INNER JOIN genero ge ON us.GENERO = ge.ID
INNER JOIN estado es ON us.ESTADO = es.ID ;
