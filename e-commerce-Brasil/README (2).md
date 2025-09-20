# Análisis de base de datos E-commerce (Brasil)

## Introducción
Este proyecto consiste en la exploración y análisis de una base de datos de un comercio electrónico en Brasil, compuesta por 11 tablas relacionadas con clientes, pedidos, productos, vendedores, pagos y reseñas.

A lo largo del trabajo se ejecutan distintas consultas SQL: desde operaciones básicas con `JOIN` y `GROUP BY`, hasta análisis más avanzados con funciones de agregación, expresiones `CASE` y manejo de valores nulos con `NULLIF`.

El objetivo es obtener KPIs clave y generar insights útiles para la empresa, que luego pueden servir de base para visualizaciones y dashboards en Power BI.

## Metodología
1. Uso de SQL para consultas directas sobre la base de datos y extracción de indicadores clave.
2. Análisis de relaciones 1:N y N:M entre tablas (por ejemplo, clientes y pedidos, vendedores y productos).
3. Cálculo de KPIs de negocio: ingresos, ticket medio, tiempos de entrega, tasa de cancelación, satisfacción de clientes.
4. Análisis temporal y geográfico para identificar tendencias y segmentaciones relevantes.

## Principales hallazgos

### Actividad de clientes
- El cliente con mayor número de pedidos ha realizado 17 compras, mientras que la gran mayoría de clientes solo ha realizado un pedido. Esto muestra una base de clientes muy centrada en la compra única.
- Se evidencia la necesidad de diseñar estrategias de retención y fidelización.

### Análisis de pedidos
- El pedido más caro alcanzó un precio de 13.440, casi el doble del segundo pedido más caro. Se trata de un caso atípico que probablemente corresponda a un producto de lujo o a un error en los datos.
- El ticket medio se sitúa en 137,75.
- La dispersión de precios refleja la coexistencia de productos de alto volumen y bajo precio junto con productos de mayor valor unitario.

### Categorías de productos
- La categoría de salud y belleza genera el mayor beneficio total, seguida de relojes.
- Aunque se vendieron cerca de 4.000 relojes menos, la facturación se mantiene similar, lo que refleja un precio medio mucho más alto en esta categoría.
- La categoría cool_stuff aparece en el top 7 de ingresos con relativamente pocas ventas, lo que indica un ticket medio elevado.
- El top 7 de categorías acumula casi el 50% de la facturación total, lo que muestra una fuerte concentración.

### Evolución temporal
- Se observa una tendencia creciente en número de pedidos hasta finales de 2017, donde se estabilizan.
- Lo óptimo sería complementar con gráficos de series temporales para identificar patrones estacionales o picos puntuales.

### Logística y envíos
- El tiempo medio de entrega es de 12,56 días, un plazo elevado para comercio electrónico.
- Solo un porcentaje reducido de pedidos se entregan en modalidad express (<3 días).
- La mayoría de pedidos se concentran en entregas medias (8-14 días) y lentas (>14 días), superando estas últimas las 3 semanas en promedio.
- Este hallazgo apunta a la necesidad de mejoras logísticas.

### Pagos
- El método de pago más utilizado es tarjeta de crédito, seguido por boleto bancario/efectivo.
- Refuerza la importancia de mantener facilidades de pago electrónico.

### Reseñas de clientes
- Las categorías con mejores puntuaciones promedio son CDs/DVDs musicales y ropa infantil.
- Las puntuaciones más altas suelen proceder de categorías con pocos volúmenes de reseñas, lo que invita a cautela al interpretar resultados.
- Las categorías de gran volumen de ventas muestran valoraciones entre 3 y 4, lo que indica margen de mejora en satisfacción.

### Distribución geográfica
- El estado de São Paulo (SP) concentra casi la mitad de los pedidos.
- Completan el top 3 Río de Janeiro (RJ) y Minas Gerais (MG).
- La concentración geográfica sugiere posibles enfoques de marketing regional y optimización logística.

### Cancelaciones
- La tasa de cancelación mensual es generalmente inferior al 1%, salvo en los meses iniciales y finales de la serie.
- Esto representa un buen indicador de estabilidad operativa.

## Conclusiones
- La base de clientes muestra poca recurrencia, lo que invita a trabajar en retención.
- Existen categorías de alto valor unitario que elevan ingresos con pocas ventas (relojes, cool_stuff).
- La logística es un punto débil, con tiempos de entrega superiores a los estándares competitivos.
- El peso de SP, RJ y MG indica dónde priorizar inversiones en distribución y marketing.
- Las cancelaciones son mínimas, lo que refleja una operativa estable.

Este proyecto muestra dominio de SQL para consultas analíticas y la capacidad de extraer insights de negocio, además de servir de base para un dashboard en Power BI con KPIs clave.
