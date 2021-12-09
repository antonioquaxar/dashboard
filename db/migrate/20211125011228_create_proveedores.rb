class CreateProveedores < ActiveRecord::Migration[6.1]
  def change
    create_table :proveedores do |t|
      t.string :compañia
      t.string :telefono
      t.string :nombreContacto
      t.string :tipoProveedor
      t.date :fechaCreacion
      t.date :fechaActualizacion

      t.timestamps
    end
  end
end
