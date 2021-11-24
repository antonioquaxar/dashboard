class CreateObrasProyectos < ActiveRecord::Migration[6.1]
  def change
    create_table :obras_proyectos do |t|
      t.string :nombre
      t.text :descripcion
      t.string :ubicacion
      t.string :TipoObra
      t.integer :MontoObra
      t.date :fechaInicio
      t.date :fechaFin
      t.string :responsable
      t.date :fechaCreacion
      t.date :fechaActualizacion

      t.timestamps
    end
  end
end
