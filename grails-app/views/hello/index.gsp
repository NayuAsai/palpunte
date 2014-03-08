<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<r:require modules="bootstrap" />
<meta name="layout" content="main" />
<title>Bootstrap 3</title>
</head>
<body>
	<h1>Hello World!</h1>
	<div class="btn-group">
  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
    Action <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" role="menu">
    <li><a href="#">Action</a></li>
    <li><a href="#">Another action</a></li>
    <li><a href="#">Something else here</a></li>
    <li class="divider"></li>
    <li><a href="#">Separated link</a></li>
  </ul>
</div>
	<h2><g:message code="default.button.delete.confirm.message" /></h2>
	Accept-Languagが指定されていると変わるよ。<br>
	JSPなら?lang=jaをURLの後ろに付けると反映されるよ！<br>
</body>
</html>
