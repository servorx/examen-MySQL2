# Examen MySQL 2 

El excamen consta de sus respectivos archivos y la sustentacion de cada ejercicio con sus indice se encuentra a lo largo de este README. Las tablas y las inserciones se encuentran en los archivos de este repositorio

ACLARACION: tuve que reducir la cantidad de inserts ya que se registran hasta 42 id's de direccions y eso afectaba la insercion en otras tablas con la foreign key de id_direccion con mas de 43 ids.

## Consultas SQL

1. Encuentra el cliente que ha realizado la mayor cantidad de alquileres en los últimos 6 meses.
```sql

```
2. Lista las cinco películas más alquiladas durante el último año.
```sql

```
3. Obtén el total de ingresos y la cantidad de alquileres realizados por cada categoría de película.
```sql

```
4. Calcula el número total de clientes que han realizado alquileres por cada idioma disponible en un mes específico.
```sql

```
5. Encuentra a los clientes que han alquilado todas las películas de una misma categoría.
```sql

```

6. Lista las tres ciudades con más clientes activos en el último trimestre.
```sql

```
7. Muestra las cinco categorías con menos alquileres registrados en el último año.
```sql

```
8. Calcula el promedio de días que un cliente tarda en devolver las películas alquiladas.
```sql

```
9. Encuentra los cinco empleados que gestionaron más alquileres en la categoría de Acción.
```sql

```

10. Genera un informe de los clientes con alquileres más recurrentes.
```sql

```
11. Calcula el costo promedio de alquiler por idioma de las películas.
```sql

```
12. Lista las cinco películas con mayor duración alquiladas en el último año.
```sql

```
13. Muestra los clientes que más alquilaron películas de Comedia.
```sql

```
14. Encuentra la cantidad total de días alquilados por cada cliente en el último mes
```sql

```
15. Muestra el número de alquileres diarios en cada almacén durante el último trimestre.
```sql

```
16. Calcula los ingresos totales generados por cada almacén en el último semestre.
```sql

```
17. Encuentra el cliente que ha realizado el alquiler más caro en el último año.
```sql

```
18. Lista las cinco categorías con más ingresos generados durante los últimos tres meses.
```sql

```
19. Obtén la cantidad de películas alquiladas por cada idioma en el último mes.
```sql

```
20. Lista los clientes que no han realizado ningún alquiler en el último año.
```sql

```

## Funciones 
    TotalIngresosCliente(ClienteID, Año): Calcula los ingresos generados por un cliente en un año específico.
    PromedioDuracionAlquiler(PeliculaID): Retorna la duración promedio de alquiler de una película específica.
    IngresosPorCategoria(CategoriaID): Calcula los ingresos totales generados por una categoría específica de películas.
    DescuentoFrecuenciaCliente(ClienteID): Calcula un descuento basado en la frecuencia de alquiler del cliente.
    EsClienteVIP(ClienteID): Verifica si un cliente es "VIP" basándose en la cantidad de alquileres realizados y los ingresos generados.

## Triggers

    ActualizarTotalAlquileresEmpleado: Al registrar un alquiler, actualiza el total de alquileres gestionados por el empleado correspondiente.
    AuditarActualizacionCliente: Cada vez que se modifica un cliente, registra el cambio en una tabla de auditoría.
    RegistrarHistorialDeCosto: Guarda el historial de cambios en los costos de alquiler de las películas.
    NotificarEliminacionAlquiler: Registra una notificación cuando se elimina un registro de alquiler.
    RestringirAlquilerConSaldoPendiente: Evita que un cliente con saldo pendiente pueda realizar nuevos alquileres.
## Eventos 
    InformeAlquileresMensual: Genera un informe mensual de alquileres y lo almacena automáticamente.
    ActualizarSaldoPendienteCliente: Actualiza los saldos pendientes de los clientes al final de cada mes.
    AlertaPeliculasNoAlquiladas: Envía una alerta cuando una película no ha sido alquilada en el último año.
    LimpiarAuditoriaCada6Meses: Borra los registros antiguos de auditoría cada seis meses.
    ActualizarCategoriasPopulares: Actualiza la lista de categorías más alquiladas al final de cada mes.