class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :email
      t.string :password
      t.string :tipoUsuario
      t.date :fechaCreacion
      t.date :fechaActualizacion

      t.timestamps
    end
  end
end
