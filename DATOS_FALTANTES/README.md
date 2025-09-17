# Manejo de Datos Faltantes – Ejemplo Práctico

Este proyecto muestra cómo identificar, analizar y tratar valores faltantes en un dataset real.  
El dataset utilizado (`urban_pluvial_flood_risk_dataset.csv`) contiene información relacionada con riesgos de inundaciones urbanas, e incluye tanto variables numéricas como categóricas.

## Contenido del proyecto
- **Análisis inicial de NA's**: detección de columnas y filas con datos faltantes.
- **Tratamiento de variables numéricas**: imputación con media, mediana o valores específicos según el caso.
- **Tratamiento de variables categóricas**: asignación de la categoría `"Unknown"` cuando no se dispone de información adicional.
- **Discusión de alternativas**: se plantean distintas formas de imputación dependiendo del contexto y el tipo de variable.

## Archivos incluidos
- `DATOS_FALTANTES.ipynb`: notebook con todo el proceso de análisis y tratamiento de NA's.
- `urban_pluvial_flood_risk_dataset.csv`: dataset con el que se trabajó en el ejercicio.

## Tecnologías utilizadas
- Python (pandas, numpy, seaborn, matplotlib)
- Jupyter Notebook

## Nota
Este trabajo forma parte de mi portfolio personal y tiene como objetivo mostrar cómo abordar de forma práctica y justificada el problema de los valores faltantes en un dataset.
