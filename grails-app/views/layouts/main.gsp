<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<asset:stylesheet href="application.css"/>
	<asset:stylesheet href="navbar.css"/>
	
	<asset:javascript src="application.js"/>

	<title><g:layoutTitle default="Palpunte"/></title>
	<g:layoutHead/>
</head>
<body>

	<div class="container">

		<!-- Static navbar -->
		<nav class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="search"><span class="glyphicon glyphicon-certificate"></span> PALPUNTE</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="search">バグ検索</a></li>
					<li><a href="register">新規バグ登録</a></li>
					<li>　　</li><!-- TODO:位置調整なので後でCSSに変える -->
				</ul>
			</div>
			<!--/.nav-collapse -->
		</nav>

		<!-- Main component for a primary marketing message or call to action -->
		<div>
			<g:layoutBody />
		</div>
	</div>
</body>
</html>