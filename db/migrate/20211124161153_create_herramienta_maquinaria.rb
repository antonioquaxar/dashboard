class CreateHerramientaMaquinaria < ActiveRecord::Migration[6.1]
  def change
    create_table :herramienta_maquinaria do |t|
      t.string :nombre
      t.string :modelo
      t.string :marca
      t.date :fechaAdquisicion
      t.integer :cantidadAlmacen
      t.date :fechaCreacion
      t.date :fechaActualizacion

      t.timestamps
    end
  end
end
