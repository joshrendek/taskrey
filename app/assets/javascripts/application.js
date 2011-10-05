// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
 jQuery().ready(function() {
        function log(event, data, formatted) {
            //alert("Selected: " + data[1] + "@~@" + formatted);
            window.location = data[1];
        }

        jQuery('#search').autocomplete("/tasks/quick_search",
                {
                    width: 250,
                    max: 150,
                    scroll: true,
                    scrollHeight: 300
                });

        jQuery("#search").result(log).next().click(function() {
            jQuery(this).prev().search();
        });


    });
