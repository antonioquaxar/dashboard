class AddNombreToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nombre, :string
    add_column :users, :tipo_usuario, :integer
  end
end
