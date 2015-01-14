class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :variables
  def variables

  	@num_videos = Video.all.length
  	@list_categorias = Categoria.all

  end


def convertir_url_alias(texto)
	return texto.downcase.strip.gsub( /[[:punct:]$]/, "" ).strip.gsub( "  ", " " ).strip.gsub( /[[:space:]]/, "-" )
	
end



	def mensaje_html( tipo_mensaje, texto_html)
		case tipo_mensaje
		when 'ALERTA'
			return '<div class="mensaje_warning"><i class="fa fa-warning"></i> '+texto_html+'</div>'
		when 'INFO'
			return '<div class="mensaje_info"><i class="fa fa-info-circle"></i> '+texto_html+'</div>'
		when 'EXITO'
			return '<div class="mensaje_success"><i class="fa fa-check"></i> '+texto_html+'</div>'
		when 'ERROR'			
			return '<div class="mensaje_error"><i class="fa fa-times-circle"></i> '+texto_html+'</div>'
		end

		return ''
	end

  	
end
