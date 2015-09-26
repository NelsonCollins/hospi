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
//= require foundation

//= require bxslider
//= require turbolinks
//= require_tree .
// = require bootstrap-sprockets

$(".button").click(function(){
    $(".dropdown").slideToggle();
});

 $(document).foundation();

//  $(document).ready(function(){
//   $('.bxslider').bxSlider({
// mode: 'horizontal', 
// auto:true,
// speed: 1000,
// pause: 3500,
// controls:false,
// autoControls:true,
// pager: false,
// keyboardEnabled: true,

// }); 
// });

//  $(document).foundation({
//   orbit: {
//     animation: 'slide',
//     timer_speed: 1000,
//     pause_on_hover: true,
//     animation_speed: 500,
//     navigation_arrows: true,
//     bullets: false
//   }
// });

// function CallPrint(strid) {
//     var prtContent = document.getElementById(strid);
//     var WinPrint = window.open('', '', 'letf=0,top=0,width=1,height=1,
//                     toolbar=0,scrollbars=0,status=0');
//     WinPrint.document.write(prtContent.innerHTML);
//     WinPrint.document.close();
//     WinPrint.focus();
//     WinPrint.print();
//     WinPrint.close();
//     prtContent.innerHTML = strOldOne;
// }