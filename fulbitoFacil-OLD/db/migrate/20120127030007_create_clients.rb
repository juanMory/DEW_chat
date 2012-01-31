class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :Nombres
      t.string :Apellido_Paterno
      t.string :Apellido_Materno
      t.string :Sexo
      t.string :Tipo_Documento
      t.string :Numero_documento
      t.string :Direccion
      t.string :Distrito
      t.string :correo_electronico
      t.string :Confirmar_Correo_electronico
      t.string :Password
      t.string :Confimar_Password

      t.timestamps
    end
  end
end
