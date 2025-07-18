# Examen MySQL 2 

El excamen consta de sus respectivos archivos y la sustentacion de cada ejercicio con sus indice se encuentra a lo largo de este README

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

Lista las tres ciudades con más clientes activos en el último trimestre.
    Muestra las cinco categorías con menos alquileres registrados en el último año.
    Calcula el promedio de días que un cliente tarda en devolver las películas alquiladas.
    Encuentra los cinco empleados que gestionaron más alquileres en la categoría de Acción.
    Genera un informe de los clientes con alquileres más recurrentes.
    Calcula el costo promedio de alquiler por idioma de las películas.
    Lista las cinco películas con mayor duración alquiladas en el último año.
    Muestra los clientes que más alquilaron películas de Comedia.
    Encuentra la cantidad total de días alquilados por cada cliente en el último mes.
    Muestra el número de alquileres diarios en cada almacén durante el último trimestre.
    Calcula los ingresos totales generados por cada almacén en el último semestre.
    Encuentra el cliente que ha realizado el alquiler más caro en el último año.
    Lista las cinco categorías con más ingresos generados durante los últimos tres meses.
    Obtén la cantidad de películas alquiladas por cada idioma en el último mes.
    Lista los clientes que no han realizado ningún alquiler en el último año.


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