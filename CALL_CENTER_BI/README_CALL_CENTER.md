# Análisis Operativo de Leads y Rendimiento Comercial (Power BI)

## Descripción general

Este es mi prooyecto más reciente y creo que mejor hecho desde el planteamiento hasta la ejecución. En él se presenta un análisis completo del proceso de captación, contacto y conversión a venta de leads en un entorno de **call center / marketing telefónico**, utilizando Power BI como herramienta principal de Business Intelligence.

El objetivo es transformar datos operativos en información accionable, evaluando tanto el volumen de leads como la eficiencia del proceso de llamadas y la conversión comercial, con un enfoque claramente orientado a la toma de decisiones.

El proyecto se ha desarrollado a partir de un **dataset sintético realista**, diseñado para reproducir comportamientos habituales en entornos reales (proveedores con distinta calidad, campañas heterogéneas, distribución no equilibrada de intentos, tiempos de contacto variables y conversión a venta).

---

## Estructura de los datos

El modelo de datos parte de varias tablas que representan distintas fases del proceso:

### `DATA_REGISTROS`
Tabla principal a nivel de lead. Contiene la información básica del registro y el resultado final del proceso.

Campos principales:
- Identificador del lead
- Fecha de carga
- Fecha de primera llamada
- Estado actual (contactado, no contactado, sin llamar)
- Número de intentos
- Campaña asociada
- Tipo de venta y valor económico

### `HISTORIAL_CARGAS`
Información relacionada con la captación del lead.

Incluye:
- Proveedor de origen
- Identificador de cargue
- Fecha de envío del lead

### `INFO_ADICIONAL`
Tabla en formato vertical con información adicional del lead (edad, provincia, dispositivo, operador, landing, etc.).

Esta estructura permite:
- Flexibilidad en los campos disponibles
- Diferencias entre proveedores y cargues
- Simular escenarios reales de datos incompletos o heterogéneos

### `LLAMADAS`
Tabla de eventos a nivel de llamada.

Incluye:
- Fecha y hora de cada intento
- Resultado de la llamada (contacto / no contacto)
- Relación 1:N con el lead

### `CAMPAÑAS`
Tabla de campañas comerciales.

Incluye:
- Identificador de campaña
- Nombre
- Sector
- Presupuesto

---

## Modelado de datos

El modelo se ha construido con un enfoque claro:

- **Tabla principal a nivel lead** (`DATA_REGISTROS`)
- Tablas auxiliares para captación, campañas e información adicional
- Tabla de llamadas como **tabla de eventos** (1 a muchos)

Se han realizado:
- Uniones entre múltiples fuentes
- Transformaciones en Power Query
- Creación de columnas derivadas
- Definición de medidas DAX para KPIs operativos y comerciales

El objetivo del modelado es garantizar coherencia, escalabilidad y facilidad de análisis.

---

## Dashboards

El informe está dividido en **tres dashboards**, cada uno con un objetivo específico.

---

### 1. Rendimiento global del funnel comercial

**Objetivo:**  
Ofrecer una visión general del volumen de leads y de la eficiencia del proceso desde la captación hasta la venta.

**Incluye:**
- Leads totales
- Tasa de llamadas
- Tasa de contacto
- Tasa de ventas
- Intentos medios por lead
- Evolución temporal de contactos y ventas
- Funnel completo del proceso comercial

Este panel permite entender rápidamente el estado general del negocio y detectar cuellos de botella en el funnel.

---

### 2. Métricas por proveedor

**Objetivo:**  
Comparar el rendimiento de los distintos proveedores de captación en términos de volumen, calidad y eficiencia comercial.

**Incluye:**
- Los mismos KPIs de la anterior pero con filtros por proveedor.
- Comparativa visual entre volumen y calidad
- Análisis conjunto de contactos, ventas y leads

Este dashboard permite identificar proveedores más eficientes, así como aquellos que generan volumen pero menor calidad.

---

### 3. Métricas por campañas y sectores

**Objetivo:**  
Analizar el rendimiento comercial de las campañas y sectores, evaluando su capacidad de generar contacto y conversión a venta.

**Incluye:**
- Los mismos KPIs de la anterior pero con filtros por camapña, sector o fecha de la camapañas.
- Tabla con el top 10 de camapañas por % de venta (se puede filtrar por sector)
- Treemap para ver la distribución de leads totales y % de ventas por sectores.

Este panel facilita la toma de decisiones sobre priorización de campañas y sectores.

---

## Conclusiones

**1. El principal cuello de botella del funnel se encuentra en la fase de contacto, no en la captación.**

A pesar de contar con un volumen elevado de leads y una tasa de llamadas cercana al 84 %, únicamente alrededor de un tercio de los leads llegan a ser contactados. Esto indica que el mayor margen de mejora del proceso no está en aumentar el volumen de captación, sino en optimizar la eficiencia del contacto (rapidez, número de intentos y priorización).

**2. El comportamiento temporal sugiere estabilidad en el proceso, con variaciones operativas puntuales**

La evolución temporal de contactos y ventas muestra un patrón relativamente estable a lo largo del tiempo, con fluctuaciones que parecen más asociadas a la carga operativa o a la tipología de campañas activas que a cambios estructurales en el rendimiento.

**3. La conversión a venta es altamente dependiente de la calidad del lead, no solo del volumen.**

No todos los leads valen lo mismo. Proveedores como LinkedInAds y Television destacan claramente por su eficiencia a lo largo de todo el funnel, mientras que otros como WebPartner aportan volumen pero menor calidad comercial.

**4. Las campañas y sectores presentan diferencias significativas en eficiencia comercial**

A nivel de campañas, los sectores de Salud y Educación presentan las mayores tasas de conversión, mientras que Energía y Deporte concentran volumen con una eficiencia media, y Tecnología y Hogar muestran un rendimiento inferior. Estos resultados evidencian la necesidad de priorizar proveedores y campañas no solo por volumen, sino por rentabilidad esperada

Este proyecto sienta además las bases para una **extensión analítica futura**, incorporando técnicas estadísticas y de Machine Learning para predicción y optimización del proceso de llamadas.

---

## Contenido de la carpeta

- `CALL_CENTER_DATOS` → Dataset en Excel utilizado en el proyecto (Las diferentes tablas están en páginas diferentes del mismo archivo)
- `PowerBI.pbix` → Archivo Power BI con el modelo y dashboards  
- `dashboards.pdf` → Exportación estática de los dashboards  
- `README.md` → Descripción del proyecto  

---

## Herramientas utilizadas

- Power BI  
- DAX  
- Power Query
