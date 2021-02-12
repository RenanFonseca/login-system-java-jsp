<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>
<body class="align">
	
	
	<div class="grid">

        <form action="LoginServlet" method="post" class="form login">
            <div class="form__field">
                <label for="login__username">
                    <svg class="icon"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#user" ></use></svg>
                    <span class="hidden">Usuário</span>
                </label>
                <input id="login__username" type="text" name="username" class="form__input" placeholder="Usuário" required/>
            </div>

            <div class="form__field">
                <label for="login__password">
                    <svg class="icon"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#password"></use></svg>
                    <span class="hidden">Senha</span>
                </label>
                <input id="login__password" type="password" name="password" class="form__input" placeholder="Senha" required/>
            </div>

            <div class="form__field">
                <input type="submit" value="Entrar">
            </div>
        </form>

        <p class="text--center">Não tem acesso? <a href="#">Cadastre-se agora</a></p>

    </div>
	
	<!-- Icons Material Design -->
    <svg xmlns="http://www.w3.org/2000/svg" class="icons">
        <symbol viewBox="0 0 24 24" fill="#606468" width="18px" height="18px" id="user">
            <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/>
        </symbol>
        <symbol viewBox="0 0 24 24" fill="#606468" width="18px" height="18px" id="password">
            <path d="M0 0h24v24H0V0z" fill="none"/><path d="M12.65 10C11.83 7.67 9.61 6 7 6c-3.31 0-6 2.69-6 6s2.69 6 6 6c2.61 0 4.83-1.67 5.65-4H17v4h4v-4h2v-4H12.65zM7 14c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2z"></path>
        </symbol>
    </svg>
</body>
</html>