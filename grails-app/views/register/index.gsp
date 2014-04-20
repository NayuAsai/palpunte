<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="utf-8">
	<meta name="layout" content="main" />
	<title>バグ登録</title>

</head>
<body>
	<h2>バグ登録</h2>

<div class="row">

	<div id="bug_info" class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title"><b>バグ情報</b></h3>
		</div>
		<div class="panel-body">
			<table class="table">
				<tr class="">
					<td class="col-md-2 info">管理ID</td>
					<td class="col-md-3" colspan="2">
						<div class="btn-group">
							<select class="form-control">
								<option value='' disabled selected style='display:none;'>プロジェクト名</option>
								<option>Palpunte</option>
								<option>パルプンテ</option>
								<option>Jenga</option>
								<option>White Box</option>
								<option>その他</option>
							</select>
						</div>　-　
						<div class="btn-group">
							<select class="form-control">
								<option value='' disabled selected style='display:none;'>バージョン</option>
								<option>Phase3</option>
								<option>Phase2</option>
								<option>Phase1</option>
								<option>Other</option>
								<option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option><option>Other</option>
							</select>
						</div>　-　
						<div class="btn-group">
							<select class="form-control">
								<option value='' disabled selected style='display:none;'>工程</option>
								<option>UT</option>
								<option>SI1</option>
								<option>SI2</option>
								<option>SI3</option>
								<option>商用</option>
							</select>
						</div>　-　 <span style="font-size: 24px;">00000</span>
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
						<textarea class="form-control" style="resize: vertical;" rows="3"></textarea>
					</td>
				</tr>
				<tr class="">
					<td class="col-md-2 info">ステータス</td>
					<td class="col-md-3">
						<select class="form-control">
							<option>未対応</option>
							<option></option>
							<option></option>
							<option></option>
							<option></option>
							<option></option>
							<option></option>
							<option></option>
						</select>
					</td>
					<td class="col-md-2 info">重要度</td>
					<td class="col-md-3">
						<select class="form-control">
							<option>最優先</option>
							<option>緊急</option>
							<option selected>通常</option>
							<option>不急</option>
						</select>
					</td>
				</tr>
				<tr class="">
					<td class="col-md-2 info">チーム名</td>
					<td class="col-md-3">
						<div class="">
							<div class="input-group input-group-sm">
								<input type="text" class="form-control" value="White Box技術部">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">Tm</button>
								</span>
							</div>
						</div>
					</td>
					<td class="col-md-2 info">APバージョン（任意）</td>
					<td class="col-md-3">
						<input class="form-control" type="text" placeholder="発見日から自動入力できたらかっこいい">
					</td>
				</tr>
				<tr class="">
					<td class="col-md-2 info">機能</td>
					<td class="col-md-3">
						<div class="">
							<div class="input-group input-group-sm">
								<input type="text" class="form-control" value="絵を描くということ">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">Func</button>
								</span>
							</div>
						</div>
					</td>
					<td class="col-md-2 info">バグ発見日</td>
					<td class="col-md-3">
						<div class="">
							<div class="input-group input-group-sm">
								<input type="text" class="form-control" value="2014/03/15 17:00">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">Cal</button>
								</span>
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<div class="checkbox col-md-5 col-md-offset-0">
		<label><input type="checkbox"> メール送信</label>
		<span>（いつ送信したかをステータスと一緒に表示する）</span>
	</div>
	<div class="col-md-offset-11">
		<button type="submit" class="btn btn-primary btn-lg"><b>保存</b></button>
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
