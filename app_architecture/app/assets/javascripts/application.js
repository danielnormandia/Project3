// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

// Responsive Spotify Player
// Borrowed from https://codepen.io/justinjohnso/pen/pNYLYx

$(window).on('load resize', function() {
  $('iframe[src*="embed.spotify.com"]').each( function() {
    $(this).css('width', $(this).parent().css('width'));
    $(this).attr('src', $(this).attr('src'));
    $(this).removeClass('loaded');

    $(this).on('load', function(){
      $(this).addClass('loaded');
    });
  });
});

// Click to change spotify player

jQuery(document).ready(function($) {

console.log("js working")

var uriChangerOne = function(){
  $('.comment').on('click', function() {
    var uri = this.dataset.uri
    console.log(uri)
    $('.spotify-embed-one').attr('src', 'https://embed.spotify.com/?uri=spotify%3Atrack%3A' + uri);
  });
};

uriChangerOne();

// var uriChangerMany = function(){
//     var uri = this.dataset.uri
//     console.log(uri)
//     $('.spotify-embed-list').attr('src', 'https://embed.spotify.com/?uri=spotify:trackset:' + mood_title +':5Z7ygHQo02SUrFmcgpwsKW,1x6ACsKV4UdWS2FMuPFUiT,4bi73jCM02fMpkI11Lqmfe' + uri);
// };

// uriChangerMany();

});

