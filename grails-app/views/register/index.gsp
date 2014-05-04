<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="utf-8">
	<meta name="layout" content="main" />
	<title>バグ登録</title>

</head>
<body>
<g:form controller="register">

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
					<td class="col-md-10" colspan="3">
						<div class="btn-group">
							<select name="bugIdProject" class="form-control">
								<option value='' disabled selected style='display: none;'>プロジェクト名</option>
							<g:each in="${application.projects}">
								<option value="${it.value}">${it.value}</option>
							</g:each>
							</select>
						</div>　-　
						<div class="btn-group">
							<select name="bugIdPhase" class="form-control">
								<option value='' disabled selected style='display:none;'>開発バージョン</option>
							<g:each in="${application.phases}">
								<option value="${it.value}">${it.value}</option>
							</g:each>
							</select>
						</div>　-　
						<div class="btn-group">
							<select name="bugIdProcess" class="form-control">
								<option value='' disabled selected style='display:none;'>工程</option>
							<g:each in="${application.processes}">
								<option value="${it.value}">${it.value}</option>
							</g:each>
							</select>
						</div>
					</td>
				</tr>
				<tr class="">
					<td class="col-md-2 info">タイトル</td>
					<td class="col-md-10" colspan="3">
						<g:textField name="title" value="${bug.title}" class="form-control" placeholder="バグの簡単な内容を入力してください" />
					</td>
				</tr>
				<tr class="">
					<td class="col-md-2 info">内容</td>
					<td class="col-md-10" colspan="3">
						<textarea class="form-control" style="resize: vertical;" rows="3" placeholder="バグの詳細な内容を入力してください"></textarea>
					</td>
				</tr>
				<tr class="">
					<td class="col-md-2 info">ステータス</td>
					<td class="col-md-3">
						<select class="form-control">
							<option>未対応</option>
							<option>再現待ち</option>
							<option>解析済み</option>
							<option>対応済み</option>
							<option>完了</option>
							<option>無効</option>
							<option>対応なし</option>
							<option>次回対応</option>
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
				</tr>
				<tr class="">
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
					<td class="col-md-2 info">APバージョン（任意）</td>
					<td class="col-md-3">
						<input type="text" class="form-control" placeholder="発見日から自動入力できたらかっこいい">
					</td>
				</tr>
				<tr class="">
					<td class="col-md-2 info">試験項目（任意）</td>
					<td class="col-md-10" colspan="3">
						<input class="form-control" type="text">
					</td>
				</tr>				<tr class="">
					<td class="col-md-2 info">登録者</td>
					<td class="col-md-3">
						<div class="">
							<div class="input-group input-group-sm">
								<input type="text" class="form-control">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">User</button>
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
		<g:actionSubmit value="保存" class="btn btn-primary btn-lg" action="save" style="font-weight: bold;"/>
	</div>
	<br>
<!-- 解析 -->
	<div id="bug_analyze" class="panel panel-default">
		<div class="panel-heading"><h3 class="panel-title">解析</h3></div>
		<div class="panel-body">
			<table class="table">
				<tr class="">
					<td class="col-md-2 info">解析内容</td>
					<td class="col-md-10" colspan="3">
						<textarea class="form-control" style="resize: vertical;" rows="3"></textarea>
					</td>
				</tr>
				<tr class="">
					<td class="col-md-2 info">解析者</td>
					<td class="col-md-3">
						<input type="text" class="form-control">
					</td>
					<td class="col-md-2 info">解析日</td>
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
<!-- 対応 -->
	<div id="bug_commit" class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">対応</h3>
		</div>
		<div class="panel-body">
			<table class="table">
				<tr class="">
					<td class="col-md-2 info">対応内容</td>
					<td class="col-md-10" colspan="3">
						<textarea class="form-control" style="resize: vertical;" rows="3"></textarea>
					</td>
				</tr>
				<tr class="">
					<td class="col-md-2 info">対応者</td>
					<td class="col-md-3">
						<input type="text" class="form-control">
					</td>
					<td class="col-md-2 info">対応日</td>
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

	<table class="table">
		<tr class="">
			<td class="col-md-2 info">備考</td>
			<td class="col-md-10" colspan="3">
				<textarea class="form-control" style="resize: vertical;" rows="3"></textarea>
			</td>
		</tr>
		<tr><td></td></tr>
		<tr class="">
			<td class="col-md-2 info">登録日</td>
			<td class="col-md-3">
				<div class="">
				</div>
			</td>
			<td class="col-md-2 info">更新日</td>
			<td class="col-md-3">
				<div class="">
				</div>
			</td>
		</tr>
	</table>
</div>
</g:form>
</body>
</html>
