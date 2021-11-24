json.extract! empleado, :id, :nombre, :apellidoPaterno, :apellidoMaterno, :fechaNacimiento, :telefono, :email, :nss, :categoria, :activo, :fechaCreacion, :fehcaActualizacion, :created_at, :updated_at
json.url empleado_url(empleado, format: :json)
