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
// var uriChangerOne = function(){
//   $('.comment').on('click', function() {
//     var uri = this.dataset.uri
//     console.log(uri)
//     $('.spotify-embed-one').attr('src', 'https://embed.spotify.com/?uri=spotify%3Atrack%3A' + uri);
//   });
// };

var uriChangerMany = function(){
    var moodTitle = $('.mood-title').data('mood')
    console.log(moodTitle)
    var commentList = $('.comment')
    var uriList = commentList.map(function(index, comment) {
      return comment.dataset.uri.toString();
    })
    var uriString = ""
    uriList.each(function(index, uri){
      return uriString += uri + ","
    })
    uriString = uriString.slice(0, -1)
    // console.log(uriString)

    // var $playlistWrapper = $('div').attr('class', 'spotify-list-wrapper');
    // var $playlistEmbed = $('div').addClass('class', 'spotify-embed-list');
    // var $iFrame = $('iframe').attr({
    //   src: 'https://embed.spotify.com/?uri=spotify:trackset:' + moodTitle +':' + uriString,
    //   frameborder: '0',
    //   allowtransparency: 'true',
    //   width: '300',
    //   height: '380'
    // }).addClass('spotify-embed-many');

    // $($playlistEmbed).append($iFrame)
    // $($playlistWrapper).append($playlistEmbed)
    // $($playlistWrapper).append($('.add-user-to-playlist'))

    // $('.spotify-embed-many').attr('src', 'https://embed.spotify.com/?uri=spotify:trackset:' + moodTitle +':' + uriString);
};


jQuery(document).ready(function($) {

console.log("js working")

uriChangerMany();
// playlistAdder();
// uriChangerOne();

});

