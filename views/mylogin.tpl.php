<html>
    <head></head>
    <body>

            <p><?=$titulo ?></p>

            <?php
            $user=$_REQUEST['user'];
            $psw=$_REQUEST['password'];

            $band = 1;

            if($user == "" OR $psw == ""){
                $band = 0;
                //Si no se introdujo algun valor manda un mensaje de error al login.
                echo"
                                     <div class=\"alert alert-danger\" role=\"alert\">Por favor, ingrese su usuario y contraseña</div>
                                      
                                 <meta http-equiv=\"refresh\" content=\"3;url=login.asp\" />
                              ";

                exit;
            }

            $sql = "SELECT * FROM usuario WHERE User ='".mysql_real_escape_string($user)."' AND Contrasena ='".mysql_real_escape_string($psw)."'";
            $consulta = mysql_query($sql)or die("Error de consulta1 $sql");
            $cuantos = mysql_num_rows($consulta);
            if($cuantos == 0){
                $band = 0;
                //Si no encuentra coincidencias en la base de datos manda un mensaje de error al login.
                echo "
                                      <div class=\"alert alert-danger\" role=\"alert\">Usuario o contraseña inválidos</div>
                                      
                                 <meta http-equiv=\"refresh\" content=\"3;url=login.asp\" />
                              ";
                exit;
            }

            if($band == 1){
                //correcto
                $id = mysql_result($consulta, 0, 'id');

                //Se crea una cookie
                setCookie('id', $id);
                session_start();

                $_SESSION["sesionUser"] = $_REQUEST['user'];
                ?>
                <script type='text/JavaScript'>
                    $(function () {
                        window.location="cuestionario.net";
                    })
                </script>

                <?php
                exit;
            }
?>
    </body>
</html>
