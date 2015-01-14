class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|

      t.string :titulo_categoria
      t.text :desc_categoria
      t.text :imagen_categoria
      t.string :icono_categoria
	  t.text   :url_publica_categoria
      t.timestamps null: false
    end
  end
end
