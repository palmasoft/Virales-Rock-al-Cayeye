// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//
//
//= require froala_editor.min.js
//= require langs/es.js
//
//= require owl.carousel



   function youtube_parser(url){
      var regExp = /^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#\&\?]*).*/;
      var match = url.match(regExp);
      if (match&&match[7].length==11){
          return match[7];
      }else{
          return 0;
      }
  }


   function vimeo_parser(url){
      var regExp = /^.*((vimeo.com\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#\&\?]*).*/;
      var match = url.match(regExp);
      if (match&&match[7].length==11){
          return match[7];
      }else{
          return 0;
      }
  }




  function minuaturas_youtube (cod_video) {
    return '<img src="http://img.youtube.com/vi/'+cod_video+'/0.jpg" id="vid_thub_1" class="youtube_thumb" >'+
      '<img src="http://img.youtube.com/vi/'+cod_video+'/1.jpg" id="vid_thub_2" class="youtube_thumb" >'+
      '<img src="http://img.youtube.com/vi/'+cod_video+'/2.jpg" id="vid_thub_3" class="youtube_thumb" >'+
      '<img src="http://img.youtube.com/vi/'+cod_video+'/3.jpg" id="vid_thub_4" class="youtube_thumb" >'+
      '<img src="http://img.youtube.com/vi/'+cod_video+'/default.jpg" id="vid_thub_5" class="youtube_thumb" >';
  }




