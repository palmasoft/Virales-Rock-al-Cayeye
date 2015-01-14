class WelcomeController < ApplicationController
	#layout 'facebook'
  def index  	
  	num_video_seccion = 23
  	@list_videos_mas_vistos = Video.order("visitas_video DESC").limit( num_video_seccion )
  	@list_videos_mas_share = Video.order("compartido_video DESC").limit( num_video_seccion )
  	@list_videos_mas_like = Video.order("me_gusta_video DESC").limit( num_video_seccion )
  	@list_videos_mas_nolike = Video.order("no_gusta_video DESC").limit( num_video_seccion )

  end
end
