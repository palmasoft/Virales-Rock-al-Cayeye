class VideosController < ApplicationController

  def formulario

    @mensaje_guardado = "primero debes probar el enlace de tu video para luego compartirlo con nosotros."

    @titulo_video = (params['titulo_video'].blank?) ? "" : params['titulo_video']
    @cat_video = (params['cat_video'].blank?) ? "1" : params['cat_video']
    @serv_video = (params['serv_video'].blank?) ? "YOUTUBE" : params['serv_video']
    @desc_video = (params['desc_video'].blank?) ? "" : params['desc_video']
    @url_video = (params['url_video'].blank?) ? "" : params['url_video']
    

  	#if not params['titulo_video'].blank? then
	  #  @titulo_video = params['titulo_video']
	  #end

    if not params['url_video'].blank? then

      @guardado = Video.where([ "servidor_video = ? and url_video = ?  ", @serv_video, @url_video ])
      if @guardado.blank? then

        @mismo_titulo = Video.where([ "url_publica_video = ?  ", convertir_url_alias( @titulo_video ) ])
        if @mismo_titulo.blank? then


            @rslCrear = Video.create({ 
              :categoria_video => @cat_video, 
              :titulo_video => @titulo_video, 
              :desc_video => @desc_video, 
              :servidor_video => @serv_video, 
              :url_video => @url_video,
              :url_publica_video => convertir_url_alias( @titulo_video )
            })

            if not @rslCrear.blank? then

              @mensaje_guardado = mensaje_html('EXITO', 'Se ha compartido correctamente el video. ¿Quieres verlo? clic <a href="/video/' + @rslCrear.url_publica_video + '" >aqui</a>' )

            else
            end
          
        else

          @mismo_titulo = @mismo_titulo.to_a()[0];
          @mensaje_guardado = mensaje_html('ALERTA', 'Ya se ha usado este titulo en otro video. ¿Quieres verlo? clic <a href="/video/' + @mismo_titulo.url_publica_video + '" >aqui</a><br /><h3>Por favor, cambialo y vuelve a intentarlo.</h3>' )
        
          
        end

      else

        @guardado = @guardado.to_a()[0];

        @mensaje_guardado = mensaje_html('ERROR', 'Ya se ha compartido este video anterior mente. ¿Quieres verlo? clic <a href="/video/' + @guardado.url_publica_video + '" >aqui</a>' )
        
      end


    end	
  end

  def todos

    @list_videos = Video.all
  end

  def presentacion

      @videoGuardado = Video.where( " url_publica_video = '" + params[:url_publica_video] + "' " ) 
      if not @videoGuardado.blank? then
        @videoGuardado = @videoGuardado.to_a()[0]
        @videoGuardado.update( visitas_video: @videoGuardado.visitas_video.to_i + 1 )
      end




  end


end
