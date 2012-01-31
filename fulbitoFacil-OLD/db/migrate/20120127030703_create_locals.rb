class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :Nombre_local
      t.string :direccion
      t.string :distrito
      t.string :direccion_maps
      t.string :telefono

      t.timestamps
    end
  end
end
