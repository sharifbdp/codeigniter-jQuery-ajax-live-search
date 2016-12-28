<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>CodeIgniter jQuery Ajax Live Search</title>

        <style type="text/css">

            ::selection{ background-color: #E13300; color: white; }
            ::moz-selection{ background-color: #E13300; color: white; }
            ::webkit-selection{ background-color: #E13300; color: white; }

            body {
                background-color: #fff;
                margin: 40px;
                font: 13px/20px normal Helvetica, Arial, sans-serif;
                color: #4F5155;
            }

            a {
                color: #003399;
                background-color: transparent;
                font-weight: normal;
            }

            h1 {
                color: #444;
                background-color: transparent;
                border-bottom: 1px solid #D0D0D0;
                font-size: 19px;
                font-weight: normal;
                margin: 0 0 14px 0;
                padding: 14px 15px 10px 15px;
            }

            code {
                font-family: Consolas, Monaco, Courier New, Courier, monospace;
                font-size: 12px;
                background-color: #f9f9f9;
                border: 1px solid #D0D0D0;
                color: #002166;
                display: block;
                margin: 14px 0 14px 0;
                padding: 12px 10px 12px 10px;
            }

            #body{
                margin: 0 15px 0 15px;
            }

            p.footer{
                text-align: right;
                font-size: 11px;
                border-top: 1px solid #D0D0D0;
                line-height: 32px;
                padding: 0 10px 0 10px;
                margin: 20px 0 0 0;
            }

            #container{
                margin: 10px;
                border: 1px solid #D0D0D0;
                -webkit-box-shadow: 0 0 8px #D0D0D0;
            }

            /* start (custom style) */
            input[type=text] {
                width: 200px;
                padding: 5px;
                margin: 5px 0;
                box-sizing: border-box;
            }

            #autoSuggestionsList > li {
                background: none repeat scroll 0 0 #F3F3F3;
                border-bottom: 1px solid #E3E3E3;
                list-style: none outside none;
                padding: 3px 15px 3px 15px;
                text-align: left;
            }

            #autoSuggestionsList > li a { color: #800000; }

            .auto_list {
                border: 1px solid #E3E3E3;
                border-radius: 5px 5px 5px 5px;
                position: absolute;
            }
            /* end (custom style) */
        </style>
    </head>
    <body>

        <div id="container">
            <h1>CodeIgniter jQuery Ajax Live Search</h1>

            <div id="body">

                <!-- start (view code) -->
                <div class="something">
                    <input name="search_data" id="search_data" type="text" onkeyup="ajaxSearch();">
                    <div id="suggestions">
                        <div id="autoSuggestionsList">
                        </div>
                    </div>
                </div>
                <!-- end (view code) -->

            </div>

            <p class="footer">Page rendered in <strong>{elapsed_time}</strong> seconds</p>
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

        <!-- start (JS code) -->
        <script type="text/javascript">
            function ajaxSearch()
            {
                var input_data = $('#search_data').val();

                if (input_data.length === 0)
                {
                    $('#suggestions').hide();
                }
                else
                {

                    var post_data = {
                        'search_data': input_data,
                        '<?php echo $this->security->get_csrf_token_name(); ?>': '<?php echo $this->security->get_csrf_hash(); ?>'
                    };

                    $.ajax({
                        type: "POST",
                        url: "<?php echo base_url(); ?>welcome/autocomplete/",
                        data: post_data,
                        success: function (data) {
                            // return success
                            if (data.length > 0) {
                                $('#suggestions').show();
                                $('#autoSuggestionsList').addClass('auto_list');
                                $('#autoSuggestionsList').html(data);
                            }
                        }
                    });

                }
            }
        </script>
        <!-- end (JS code) -->

    </body>
</html>