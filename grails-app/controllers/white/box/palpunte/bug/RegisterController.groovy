package white.box.palpunte.bug

import white.box.palpunte.Bug
import white.box.palpunte.CodeMst

/**
 * バグ登録画面を表示するController
 *
 * 別に登録画面と同じにしてしまってもいいかと思う。
 * ただ参照のみを許可するユーザを作成するのであれば、別途作った方が管理が楽（制御的な意味で）
 *
 * @author seri
 *
 */
class RegisterController {

    /**
     * 登録画面初期表示処理
     *
     * ・デフォルト値を設定する（ステータス、重要度、バグ発見日）
     * ・ユーザ情報から初期値の設定を行う（チーム名、APバージョン）
     * ・画面項目をマスタ値から取得して設定する（ステータス、重要度、チーム名、APバージョン）
     * ・次の項目はそれぞれ検索時に検索する（チーム名、APバージョン、機能一覧）
     *
     * @return
     */
    def index() {

		// TODO:ユーザ情報の定義が必要。あと取得も。
		// 基本セッションの情報を使って、使えなければDBから引いてくる。

		// バグ情報を作成し、初期値を設定
		def bug = new Bug()
		init(bug, null)




//		// TODO:ここは登録だからいいけど、編集はIDでDBから値引っ張ってこないとダメ
//		def bug = Bug.get(1)
//		if (bug == null) {
//			bug = new Bug()
//			bug.setTitle("テストタイトル")
//		}


//		[bug: new Bug()]
//		[bug: bug, projects: CodeMst.findAllByCodename("C0001")]

		// 再描画については悩ましいが、いったん保留。
		// 続けて入力ボタンとかもいるかもしれない。その場合、前回の入力を割と引き継ぐとか。
		[bug: bug]
	}

	/**
	 * 初期値設定用
	 * @param bug 設定するバグ情報
	 * @param userInfo ユーザ情報。ユーザ独自の初期設定がある場合はこれを利用する。
	 */
	void init(bug, userInfo) {



	}

	/**
	 *
	 *
	 * @return 参照画面（に行きたいけど、とりあえず編集画面を再描画）
	 */
	def save() {
		println "save"	// TODO:log出力に変更する

		def bug = new Bug(params)
		// IDで検索かけてカウント+1
		int count = Bug.countByBugIdProjectAndBugIdPhaseAndBugIdProcess(
			bug.bugIdProject, bug.bugIdPhase, bug.bugIdProcess)
		bug.bugIdNo = count + 1
		bug.save()

		redirect(action: 'index')
//		redirect(action: 'index', params: [saveflag: true])	// これでも↓と同じ動作になるが、index()が実行される分違うかも
//		render(view: 'index')	// 自画面遷移（何もしないとsave.jspに遷移しようとするので）
	}
}
