class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|

	  t.integer :categoria_video      
      t.string :titulo_video
      t.text :desc_video
      t.text :servidor_video
      t.text :url_video
      t.text :url_nuevo_video

      t.integer :visitas_video
      t.integer :compartido_video
      t.integer :me_gusta_video
      t.integer :no_gusta_video
      


      t.timestamps null: false
    end
  end
end
