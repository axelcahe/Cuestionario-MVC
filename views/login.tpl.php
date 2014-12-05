<?php

?>
<html>
    <head>

    </head>
    <body>

        <div class="col-sm-4">
        </div>
        <div class="col-sm-4">
            <div class="panel panel-default">
            <div class="panel-heading" align='center'>
                <h3 class="panel-title">Iniciar Sesión</h3>
            </div>
            <div class="panel-body">
                <form action='mylogin.net' method='POST' name ='frmdo' id='frmdo' target = '_self'>
                    <table class="table table-striped" align='center'>
                    <tr><td align='right'>Usuario:</td></td><td><input type='text' name='user' ></td></tr>
                    <tr><td align='right'>Password:</td><td><input type='password' name='password' ></td></tr>
                    <tr><td colspan=2 align=center><input type='submit' value='Acceder' class="btn btn-default" ></td></tr>
                    </table>
                </form>
                <br/><center><div id='msg'></div></center></div>
        </div>




    </body>
</html>

