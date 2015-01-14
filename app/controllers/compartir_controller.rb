class CompartirController < ApplicationController

	layout 'compartir'	

  def index
    
    @url_actual = "http://www.facebook.com/sharer.php?http://virales.rockalcayeye.info/video/" + params[:url_publica_video]


	
      @videoGuardado = Video.where( " url_publica_video = '" + params[:url_publica_video] + "' " ) 
      if not @videoGuardado.blank? then
        @videoGuardado = @videoGuardado.to_a()[0]
        @videoGuardado.update( compartido_video: @videoGuardado.compartido_video.to_i + 1 )
      end

  end



  def me_gusta

	
      @videoGuardado = Video.where( " url_publica_video = '" + params[:url_publica_video] + "' " ) 
      if not @videoGuardado.blank? then
        @videoGuardado = @videoGuardado.to_a()[0]
        @videoGuardado.update( me_gusta_video: @videoGuardado.me_gusta_video.to_i + 1 )
      end


  end

  def no_me_gusta
	
      @videoGuardado = Video.where( " url_publica_video = '" + params[:url_publica_video] + "' " ) 
      if not @videoGuardado.blank? then
        @videoGuardado = @videoGuardado.to_a()[0]
        @videoGuardado.update( no_gusta_video: @videoGuardado.no_gusta_video.to_i + 1 )
      end

  end


end
