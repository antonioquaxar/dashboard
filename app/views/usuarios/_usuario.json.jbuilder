json.extract! usuario, :id, :nombre, :email, :password, :tipoUsuario, :fechaCreacion, :fechaActualizacion, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
