class CreateLocal1s < ActiveRecord::Migration
  def change
    create_table :local1s do |t|
      t.string :Nombre_local
      t.string :direccion
      t.string :distrito

      t.timestamps
    end
  end
end
