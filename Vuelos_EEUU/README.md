
# Proyecto Power BI – Análisis de Vuelos en EE.UU.

## Descripción
Este proyecto consiste en el análisis de vuelos en Estados Unidos a partir de un dataset con más de **7 millones de registros**.  
El objetivo es explorar **retrasos, cancelaciones y patrones de vuelos** utilizando Power BI, aplicando modelado de datos, medidas DAX, segmentadores y visualizaciones avanzadas.

El dashboard final está dividido en **tres páginas** que permiten explorar desde una visión general hasta patrones temporales y análisis específicos por estados y aeropuertos. El archivo .pbix está en el siguiente enlace: https://drive.google.com/file/d/1Qx3VpnkJ5Nxj1Rkx-Ax47demXh5BuiED/view?usp=sharing.


---

## Estructura del Dashboard

###  Página 1 – KPIs generales y tendencias
- **KPIs**: número total de vuelos, % cancelados, % desviados, retraso medio en salida y en llegada.  
- **Gráficos**:  
  - Vuelos totales y retraso medio por mes.  
  - Número de vuelos por día de la semana.  
  - Motivos de cancelación (%).  
  - Distribución de retrasos (<15 min, 15–60 min, >60 min).  

De esta página podemos observar varias conclusiones interesantes. En primer lugar, el retraso medio en salida es inferior al de llegada, lo cual probablemente se deba a que las aerolíneas ya contemplan un margen en la hora estimada de llegada. Además, estas medias rara vez superan los 15 minutos, y la gran mayoría de los vuelos tampoco sobrepasan esa barrera.
Por otro lado, el motivo principal de cancelación son las condiciones meteorológicas, mientras que el resto de causas presentan menor peso. También resulta relevante observar que no existen grandes variaciones en el número de vuelos ni entre meses ni entre días de la semana, lo que indica cierta estabilidad operativa. Finalmente, se aprecia que el retraso medio tiende a aumentar en los meses de verano, lo que podría relacionarse con una mayor congestión aérea y demanda estacional.

---

### Página 2 – Análisis por estados y aeropuertos
- **KPIs**: número total de vuelos, estado con más vuelos, % puntualidad nacional.  
- **Gráficos**:  
  - Top 10 aeropuertos con mayor % de cancelaciones.  
  - Top 10 aeropuertos con mayor retraso medio.  
  - Top 10 estados con más vuelos.  
  - Mapas con distribución geográfica de vuelos por estado de origen y destino.  

En esta página podemos destacar varios aspectos clave. En primer lugar, los estados con mayor volumen de vuelos son Texas, California y Florida, que concentran gran parte del tráfico aéreo nacional. Esta concentración refleja la importancia de estos hubs tanto por motivos demográficos como por su papel en conexiones nacionales e internacionales.
En cuanto a los aeropuertos con mayor porcentaje de cancelaciones, observamos que algunos superan claramente la media nacional, lo que puede deberse a factores locales como condiciones meteorológicas adversas o limitaciones operativas. De manera complementaria, el ranking de aeropuertos con mayor retraso medio señala puntos críticos donde la puntualidad es más problemática.
Finalmente, el análisis global muestra que la puntualidad nacional ronda el 80%, lo cual es un buen indicador, aunque también evidencia un margen de mejora importante en determinados aeropuertos y estados que afectan de manera significativa a la experiencia de los pasajeros. Además tenemos dos mosaicos para poder segmentar y observar estos gráficos solo un día o mes concreto.


---

### Página 3 – Patrones temporales de vuelos y retrasos
- **KPIs**: hora con más vuelos, día con más cancelaciones, hora con más retraso medio, % vuelos con gran retraso (>60 min).  
- **Gráficos**:  
  - Vuelos y retraso medio por día de la semana.  
  - Vuelos y retraso medio por hora de salida.  
  - Retraso medio en salida vs llegada (scatter plot).  
  - Distribución de puntualidad vs retraso.  
  - % de vuelos cancelados por día de la semana.  
  - Retraso medio por día de la semana (treemap).  

En esta página se analizan los patrones temporales de vuelos y retrasos. Lo primero que observamos es que la hora con más vuelos es alrededor de las 8:00, lo cual coincide con la franja de mayor actividad operativa de los aeropuertos. Por el contrario, la hora con mayor retraso medio se sitúa en torno a las 2:00, lo que sugiere que los vuelos nocturnos presentan mayores complicaciones en puntualidad, esto se observa también en el gráfico donde el rango 00:00-5:00 es donde mayor retraso medio encontramos.
En cuanto a los días de la semana, se aprecia que los viernes concentran más cancelaciones, mientras que los sábados y domingos tienden a registrar mejores indicadores de puntualidad. Además, aunque la mayoría de retrasos se mantienen en valores bajos, se detecta que aproximadamente un 7% de los vuelos experimenta un gran retraso (más de 60 minutos), lo cual resulta relevante para la planificación de aerolíneas y aeropuertos.
Por último, el scatter plot entre retraso en salida y retraso en llegada confirma una relación clara: cuanto mayor es el retraso inicial, mayor es la probabilidad de acumular demoras al llegar al destino, reforzando la importancia de la puntualidad en las salidas.

---

## Tecnologías utilizadas
- **Power BI Desktop**  
- **DAX (Data Analysis Expressions)** para creación de medidas  
- **Modelado de datos relacional**  
- **Visualizaciones**: KPIs, gráficos de barras, columnas, donut, treemap, scatter plot, mapas interactivos  

---

## Conclusiones principales
- El **80% de los vuelos llegan puntuales**, pero casi un **20% sufre retrasos**.  
- El retraso medio de llegada es de **7 minutos**, mientras que en salida alcanza los **12 minutos**.  
- Los **viernes** concentran más cancelaciones y los **sábados** muestran mayor puntualidad relativa.  
- Existen aeropuertos con cancelaciones muy superiores a la media (>7%).  
- La **hora punta de vuelos es a las 8:00**, mientras que a las 2:00 se concentran más retrasos medios.  

