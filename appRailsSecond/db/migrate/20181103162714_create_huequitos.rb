class CreateHuequitos < ActiveRecord::Migration[5.2]
  def change
    create_table :huequitos do |t|
      t.string :localidad
      t.string :direccion
      t.string :tamanio
      t.integer :ranking

      t.timestamps
    end
  end
end
