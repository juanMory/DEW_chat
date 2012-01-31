class CreateRegpublis < ActiveRecord::Migration
  def change
    create_table :regpublis do |t|
      t.string :Titulo
      t.date :Fecha_Inicio
      t.date :Fecha_fin
      t.integer :Tarifa
      t.boolean :Num_Click
      t.string :Ubicacion
      t.text :Contenido

      t.timestamps
    end
  end
end
