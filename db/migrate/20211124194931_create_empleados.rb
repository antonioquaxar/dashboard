class CreateEmpleados < ActiveRecord::Migration[6.1]
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :apellidoPaterno
      t.string :apellidoMaterno
      t.date :fechaNacimiento
      t.string :telefono
      t.string :email
      t.string :nss
      t.string :categoria
      t.string :activo
      t.date :fechaCreacion
      t.date :fehcaActualizacion

      t.timestamps
    end
  end
end
