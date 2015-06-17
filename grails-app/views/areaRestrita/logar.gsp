<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	
		<title>Área Restrita - Ativos</title>
		
		    <!-- Bootstrap Core CSS -->
		    
	 <asset:stylesheet src="bower_components/bootstrap/dist/css/bootstrap.min.css"/>

    <!-- MetisMenu CSS -->
     <asset:stylesheet src="bower_components/metisMenu/dist/metisMenu.min.css"/>
    

    <!-- Custom CSS -->
       <asset:stylesheet src="dist/css/sb-admin-2.css"/>


    <!-- Custom Fonts -->
       <asset:stylesheet src="bower_components/font-awesome/css/font-awesome.min.css" type="text/css"/>
    
    <!-- jQuery -->
      <asset:stylesheet src="bower_components/jquery/dist/jquery.min.js"/>
    
    <!-- Bootstrap Core JavaScript -->
         <asset:stylesheet src="dist/css/sb-admin-2.css"/>
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
         <asset:stylesheet src="bower_components/metisMenu/dist/metisMenu.min.js"/>

    <!-- Custom Theme JavaScript -->
         <asset:stylesheet src="dist/js/sb-admin-2.js"/>
  
	</head>
	<body>
		
		  <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Entrar</h3>
                    </div>
                    
                                
                   <form action='${request.contextPath}/j_spring_security_check' method='POST' id='formlogar' name='formLogar'>
		
		
                                <div class="form-group">
                                    <input class="form-control" placeholder="E-mail" name='j_username' type='text' />
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name='j_password'  type="password" id='password' />
                                </div>
                             
                             
      
                                <!-- Change this to a button or input when using this as a form -->
                                <input type="submit"  class="btn btn-lg btn-success btn-block" value="Entrar" />
                  
                  </form>
                    </div>
                </div>
            </div>

</div>

    
	</body>
</html>
