json.extract! obras_proyecto, :id, :nombre, :descripcion, :ubicacion, :TipoObra, :MontoObra, :fechaInicio, :fechaFin, :responsable, :fechaCreacion, :fechaActualizacion, :created_at, :updated_at
json.url obras_proyecto_url(obras_proyecto, format: :json)
