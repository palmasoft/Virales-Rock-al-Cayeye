class CategoriasController < ApplicationController
  def formulario
  end

  def todas
  end

  def videos

  	@mensaje = mensaje_html( "ERROR", "No existe esta categoria dentro de nuestro sitio.")
   	@categoria = Categoria.where(" url_publica_categoria = '"+params[:url_categoria].to_s+"' ")
	if not @categoria.blank? then
		@categoria = @categoria.to_a()[0]
		@videos_categoria = Video.where(" categoria_video = "+@categoria.id.to_s+" ")
	 	@masvistos_videos_categoria = Video.where(" categoria_video = "+@categoria.id.to_s+" ").order( " visitas_video DESC " ).limit( 25 )
	 	if not @videos_categoria.blank? then
			
			@todos_videos_categoria = @videos_categoria.to_a()
			@masvistos_videos_categoria = @masvistos_videos_categoria.to_a()
	 		@mensaje = mensaje_html('EXITO', "Tenemos registrados " + @videos_categoria.count.to_s + " videos de " + @categoria.titulo_categoria.to_s  + ". ¿Quieres ver mas? Clic en <a href='../videos/todos' >videos virales</a> " )	
	 		
	 	else
	 		@mensaje = mensaje_html('ALERTA', "No existen videos de esta categoria del sitio." )			
	 	end
	end

  end

  def presentacion
  end
end
