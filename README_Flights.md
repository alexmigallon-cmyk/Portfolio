
# ✈️ Proyecto Power BI – Análisis de Vuelos en EE.UU.

## 📌 Descripción
Este proyecto consiste en el análisis de vuelos en Estados Unidos a partir de un dataset con más de **7 millones de registros**.  
El objetivo es explorar **retrasos, cancelaciones y patrones de vuelos** utilizando Power BI, aplicando modelado de datos, medidas DAX, segmentadores y visualizaciones avanzadas.

El dashboard final está dividido en **tres páginas** que permiten explorar desde una visión general hasta patrones temporales y análisis específicos por estados y aeropuertos.

---

## 📊 Estructura del Dashboard

### 🔹 Página 1 – KPIs generales y tendencias
- **KPIs**: número total de vuelos, % cancelados, % desviados, retraso medio en salida y en llegada.  
- **Gráficos**:  
  - Vuelos totales y retraso medio por mes.  
  - Número de vuelos por día de la semana.  
  - Motivos de cancelación (%).  
  - Distribución de retrasos (<15 min, 15–60 min, >60 min).  

👉 Objetivo: ofrecer una **visión general del tráfico aéreo**, cancelaciones y puntualidad.

---

### 🔹 Página 2 – Análisis por estados y aeropuertos
- **KPIs**: número total de vuelos, estado con más vuelos, % puntualidad nacional.  
- **Gráficos**:  
  - Top 10 aeropuertos con mayor % de cancelaciones.  
  - Top 10 aeropuertos con mayor retraso medio.  
  - Top 10 estados con más vuelos.  
  - Mapas con distribución geográfica de vuelos por estado de origen y destino.  

👉 Objetivo: identificar **puntos críticos de retrasos y cancelaciones** a nivel regional.

---

### 🔹 Página 3 – Patrones temporales de vuelos y retrasos
- **KPIs**: hora con más vuelos, día con más cancelaciones, hora con más retraso medio, % vuelos con gran retraso (>60 min).  
- **Gráficos**:  
  - Vuelos y retraso medio por día de la semana.  
  - Vuelos y retraso medio por hora de salida.  
  - Retraso medio en salida vs llegada (scatter plot).  
  - Distribución de puntualidad vs retraso.  
  - % de vuelos cancelados por día de la semana.  
  - Retraso medio por día de la semana (treemap).  

👉 Objetivo: entender la **dinámica temporal de los vuelos** y detectar los momentos más críticos.

---

## 🛠️ Tecnologías utilizadas
- **Power BI Desktop**  
- **DAX (Data Analysis Expressions)** para creación de medidas  
- **Modelado de datos relacional**  
- **Visualizaciones**: KPIs, gráficos de barras, columnas, donut, treemap, scatter plot, mapas interactivos  

---

## 🚀 Conclusiones principales
- El **80% de los vuelos llegan puntuales**, pero casi un **20% sufre retrasos**.  
- El retraso medio de llegada es de **7 minutos**, mientras que en salida alcanza los **12 minutos**.  
- Los **viernes** concentran más cancelaciones y los **sábados** muestran mayor puntualidad relativa.  
- Existen aeropuertos con cancelaciones muy superiores a la media (>7%).  
- La **hora punta de vuelos es a las 8:00**, mientras que a las 2:00 se concentran más retrasos medios.  

---

## 📂 Archivos del repositorio
- `dashboard_flights.pbix`: archivo de Power BI con los dashboards.  
- `dataset_flights.csv`: dataset usado (si es público o permitido compartir).  
- `README.md`: documentación del proyecto (este archivo).  
