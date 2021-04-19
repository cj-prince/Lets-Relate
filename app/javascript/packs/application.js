// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
// reqiure jquery, 


import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

scroll_bottom = function() {
    if ($('messages').length > 0)
{
    $('#messages').scroolTop($('#messages')[0].scrollHeight);
}}

submit_message = function() {
    $('#message_body').on('keydown', function(e) {
        if (e.keycode == 13) {
            $('button').click();
            e.target.value = ""
        };
    });
}

Rails.start()
Turbolinks.start()
require("semantic-ui-sass")
ActiveStorage.start()


$ (document).on('turbolinks:load', function() {
    $('.ui.dropdown').dropdown();
    submit_message();
    scroll_bottom();
})



