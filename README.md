# ecomm_analytics

Proyecto dbt para construir un pipeline analitico de e-commerce sobre BigQuery.

## Capas sugeridas

- `raw`: datos aterrizados desde GCP public datasets o procesos batch externos.
- `staging`: modelos 1:1 con la fuente, renombrando columnas, casteando tipos y aplicando limpieza minima.
- `intermediate`: reglas de negocio reutilizables y joins previos a marts.
- `marts`: tablas finales de hechos y dimensiones para consumo analitico.

## Comandos iniciales

```powershell
dbt debug
dbt parse
dbt run
dbt test
```

El proyecto usa el perfil `ecomm_analytics_project` definido en `C:\Users\omen\.dbt\profiles.yml`.
