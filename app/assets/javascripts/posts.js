// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(function(){
    $("a.vote").bind("ajax:success", function(evt, data, status, xhr){
        $('#feed-'+ data.post.id + ' .votes').html(data.post.votes);
    });
});