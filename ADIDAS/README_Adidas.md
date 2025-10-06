# 🏷️ Análisis de Ventas y Optimización de Precios --- Adidas USA

## 📘 Descripción general

Este proyecto analiza el rendimiento de las ventas de **Adidas en
Estados Unidos** durante los años **2020 y 2021**, utilizando un
conjunto de datos reales con **9.648 registros y 13 variables**. El
objetivo principal fue comprender las dinámicas comerciales de la marca
y desarrollar modelos predictivos y de optimización de precios para
mejorar la toma de decisiones.

El trabajo se divide en tres grandes etapas: 1. **Análisis exploratorio
de datos (EDA)**: comprensión de las tendencias de ventas, márgenes y
comportamiento por región, canal, producto y retailer.\
2. **Modelado predictivo con Machine Learning**: predicción de unidades
vendidas utilizando modelos como regresión lineal, árboles de decisión,
Random Forest y XGBoost.\
3. **Optimización de precios**: estimación del precio que maximiza el
beneficio esperado, integrando el modelo de demanda entrenado.

------------------------------------------------------------------------

## 🧩 Dataset

**Archivo:** `Adidas US Sales Datasets.xlsx`\
**Tamaño:** 9.648 registros × 13 columnas\
**Variables destacadas:** - `Region`, `State`, `City` - `Product`,
`Price per Unit`, `Units Sold` - `Total Sales`, `Operating Profit`,
`Operating Margin` - `Retailer`, `Sales Method`, `Invoice Date`

Los datos abarcan los años 2020 y 2021, permitiendo observar el cambio
de comportamiento tras la pandemia y la expansión del canal online.

------------------------------------------------------------------------

## 📊 Análisis Exploratorio (EDA)

-   **Regiones y ciudades**: las zonas *West* y *Northeast* lideran las
    ventas totales, mientras que *Southeast* presenta precios más altos
    pero menor volumen.\
-   **Canales de venta**: las tiendas físicas dominan el volumen, pero
    el canal *Online* muestra mayor rentabilidad y crecimiento en 2021.\
-   **Retailers**: *West Gear* y *Foot Locker* concentran las ventas,
    aunque *Sports Direct* logra mejores márgenes.\
-   **Productos**: *Men's Street Footwear* es el producto estrella,
    combinando alto volumen y margen operativo.\
-   **Temporalidad**: fuerte repunte de ventas a partir de 2021,
    coincidiendo con la recuperación pospandemia y el auge del comercio
    digital.

El **heatmap de correlaciones** confirmó la relación positiva entre
unidades vendidas, ventas totales y beneficios, así como la compresión
de márgenes en periodos de alto volumen.

------------------------------------------------------------------------

## 🤖 Modelos de Machine Learning

Se entrenaron varios algoritmos supervisados para predecir **unidades
vendidas (Units Sold)** a partir de variables independientes no
derivadas de la venta:

  Modelo                     RMSE ↓      MAE ↓       R² ↑
  -------------------------- ----------- ----------- ----------
  Linear                     170.24      124.27      0.39
  Decision Tree              129.17      73.54       0.65
  Random Forest              101.91      64.00       0.78
  **XGBoost (Optimizado)**   **89.64**   **57.63**   **0.83**

El modelo **XGBoost** obtuvo el mejor rendimiento, explicando el **83 %
de la variabilidad** y alcanzando un error relativo del **5 %**,
mostrando gran capacidad para capturar relaciones no lineales entre
precio, canal, región y producto.

Las variables más influyentes fueron: 1. **Price per Unit**\
2. **Month (estacionalidad)**\
3. **Sales Method (Online)**\
4. **Región (South, Southeast, West)**\
5. **Producto Men's Street Footwear**

------------------------------------------------------------------------

## 💡 Predicción y Optimización

Usando el modelo XGBoost, se realizó una predicción del precio esperado
para *Men's Street Footwear* en el siguiente mes (**≈ 45.3 €**).\
Posteriormente, se utilizó el mismo modelo como **función de demanda**
dentro de un proceso de optimización, maximizando el beneficio esperado
según:

\[(Beneficio) = (Precio - Coste) × Demanda\_{predicha}\]

Esto permitió estimar el **precio óptimo de venta** bajo condiciones
promedio y observar cómo variaba el beneficio esperado ante distintos
precios.

------------------------------------------------------------------------

## 🧠 Conclusiones

-   El análisis confirma que **Adidas basa su rentabilidad en volumen**,
    más que en precios altos, con clara elasticidad precio-demanda.\
-   El **canal online** emerge como el más eficiente y con mejor margen
    operativo.\
-   Los modelos de ML, especialmente **XGBoost**, demostraron ser una
    herramienta sólida para **predecir ventas y simular escenarios de
    pricing**.\
-   La **optimización de precios** basada en aprendizaje automático
    ofrece un potencial real para **maximizar beneficios sin comprometer
    demanda**.

------------------------------------------------------------------------

## ⚙️ Tecnologías utilizadas

-   **Python** (Pandas, NumPy, Matplotlib, Seaborn, SciPy, Scikit-learn,
    XGBoost)
-   **Google Colab / Jupyter Notebook**
-   **Excel** para la carga y exploración inicial de datos
