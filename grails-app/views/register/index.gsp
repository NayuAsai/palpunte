<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="utf-8">
	<r:require modules="bootstrap" />
	<meta name="layout" content="main" />
	<title>バグ登録 - Palpunte</title>
</head>
<body>
	<h2>バグ登録</h2>

<div class="row">

	<div id="bug_info" class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">バグ情報</h3>
		</div>
		<div class="panel-body">
			<table class="table">
				<tr class="">
					<td class="col-md-2 info">管理ID</td>
					<td class="col-md-3" colspan="2">
						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								プロジェクト名<span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#"></a></li>
								<li><a href="#">Palpunte</a></li>
								<li><a href="#">パルプンテ</a></li>
								<li><a href="#">Jenga</a></li>
								<li class="divider"></li>
								<li><a href="#">Other</a></li>
							</ul>
						</div>　-　
						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								バージョン<span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Phase3</a></li>
								<li><a href="#">Phase2</a></li>
								<li><a href="#">Phase1</a></li>
								<li class="divider"></li>
								<li><a href="#">Other</a></li>
								<li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li><li><a href="#">Other</a></li>
							</ul>
						</div>　-　
						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
								工程<span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">UT</a></li>
								<li><a href="#">SI1</a></li>
								<li><a href="#">SI2</a></li>
								<li><a href="#">商用</a></li>
							</ul>
						</div>　-　 <span style="font-size: 24px;">00000</span>
					</td>
				</tr>
				<tr class="">
					<td class="col-md-2 info">ステータス</td>
					<td class="col-md-3">未対応</td>
					<td class="col-md-2 info">重要度</td>
					<td class="col-md-3">最優先</td>
				</tr>
				<tr class="">
					<td class="col-md-2 info">機能</td>
					<td class="col-md-3">絵を描くということ</td>
					<td class="col-md-2 info">登録日</td>
					<td class="col-md-3">
						<div class="">
							<div class="input-group input-group-sm">
								<input type="text" class="form-control" value="2014/03/15 17:00">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">Cal</button>
								</span>
							</div>
							<!-- /input-group -->
						</div>
						<!-- /.col-lg-6 -->

					</td>
				</tr>
				<tr class="">
					<td class="col-md-2 info">タイトル</td>
					<td class="col-md-10" colspan="3">
						<input class="form-control" type="text" placeholder="なんかうまく動かないのでいい感じに直してほしい">
					</td>
				</tr>
				<tr class="">
					<td class="col-md-2 info">内容</td>
					<td class="col-md-10" colspan="3">
						<textarea class="form-control" style="resize: vertical;" rows="3">
気付いたら3月だった、どうにかしてほしい
コミティア終わってもう1ヶ月経ってるとか信じられない。
きっと長い夢を見てるはずなので、寝てるやつをたたき起こしてほしい。
						</textarea>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<div class="checkbox col-md-3 col-md-offset-0">
		<label> <input type="checkbox"> メール送信
		</label>
	</div>
	<div class="col-md-offset-11">
		<button type="submit" class="btn btn-primary btn-lg">保存</button>
	</div>
	<br>

	<div id="bug_analyze" class="panel panel-primary">
		<div class="panel-heading"><h3 class="panel-title">解析</h3></div>
		<div class="panel-body">
			<div class="row show-grid">
				<div class="col-md-2">管理ID</div>
				<div class="col-md-3 col-md-pull-9">.col-md-3 .col-md-pull-9</div>
			</div>
			<div class="row">
				<div class="col-md-4">.col-md-4</div>
				<div class="col-md-4 col-md-offset-4">.col-md-4
					.col-md-offset-4</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-md-offset-3">.col-md-3
					.col-md-offset-3</div>
				<div class="col-md-3 col-md-offset-3">.col-md-3
					.col-md-offset-3</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-md-offset-3">.col-md-6
					.col-md-offset-3</div>
			</div>

			<table class="table">
				<tr class="">
					<td class="col-md-2 info">管理ID</td>
					<td class="col-md-3">Palpunte - Phase1 - SI1 - XXXXX</td>
				</tr>
				<tr class="">
					<td class="col-md-2 info">管理ID</td>
					<td class="col-md-3">管理ID</td>
					<td class="col-md-2 info">管理ID</td>
					<td class="col-md-3">管理ID</td>
				</tr>
				<tr class="">
					<td class="col-md-2 info">タイトル</td>
					<td class="col-md-10" colspan="3">なんかうまく動かないのでいい感じに直してほしい</td>
				</tr>
			</table>
		</div>
	</div>

	<div id="bug_commit" class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">対応</h3>
		</div>
		<div class="panel-body">
			<table class="table">
				<tr class="">
					<td class="col-md-2 info">管理ID</td>
					<td class="col-md-3">Palpunte - Phase1 - SI1 - XXXXX</td>
				</tr>
				<tr class="">
					<td class="col-md-2 info">ステータス</td>
					<td class="col-md-3">未対応</td>
					<td class="col-md-2 info">重要度</td>
					<td class="col-md-3">通常</td>
				</tr>
				<tr class="">
					<td class="col-md-2 info">タイトル</td>
					<td class="col-md-10" colspan="3">なんかうまく動かないのでいい感じに直してほしい</td>
				</tr>
				<tr class="">
					<td class="col-md-2 info">内容</td>
					<td class="col-md-10" colspan="3">
					気付いたら3月だった、どうにかしてほしい<br>
					コミティア終わってもう1ヶ月経ってるとか信じられない。<br>
					きっと長い夢を見てるはずなので、寝てるやつをたたき起こしてほしい。<br>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>

</body>
</html>
