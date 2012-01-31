class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :Nombres
      t.string :Apellido_Paterno
      t.string :Apellido_Materno
      t.string :Sexo
      t.string :Tipo_Documento
      t.string :Numero_documento
      t.string :Correo
      t.string :CorreoValidacion
      t.date :FecNac
      t.string :Celular

      t.timestamps
    end
  end
end
