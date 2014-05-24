import white.box.palpunte.CodeMst

class BootStrap {

	def init = { servletContext ->

		// TODO:マスタの初期化処理を入れる。本来は別ファイルの取り込みで設定するようにする。
		CodeMst.withTransaction {
			new CodeMst(codename:"C0001",label:"プロジェクト名",type:"default",key:"1",value:"Palpunte").save(flush:false)
			new CodeMst(codename:"C0001",label:"プロジェクト名",type:"default",key:"2",value:"パルプンテ").save(flush:false)
			new CodeMst(codename:"C0001",label:"プロジェクト名",type:"default",key:"3",value:"White Box").save(flush:false)

			new CodeMst(codename:"C0002",label:"開発バージョン",type:"default",key:"1",value:"Phase1").save(flush:false)
			new CodeMst(codename:"C0002",label:"開発バージョン",type:"default",key:"2",value:"Phase2").save(flush:false)
			new CodeMst(codename:"C0002",label:"開発バージョン",type:"default",key:"0",value:"その他").save(flush:false)

			new CodeMst(codename:"C0003",label:"工程",type:"default",key:"1",value:"UT").save(flush:false)
			new CodeMst(codename:"C0003",label:"工程",type:"default",key:"2",value:"SI1").save(flush:false)
			new CodeMst(codename:"C0003",label:"工程",type:"default",key:"3",value:"SI2").save(flush:false)
			new CodeMst(codename:"C0003",label:"工程",type:"default",key:"4",value:"SI3").save(flush:false)
			new CodeMst(codename:"C0003",label:"工程",type:"default",key:"5",value:"PT").save(flush:false)
			new CodeMst(codename:"C0003",label:"工程",type:"default",key:"6",value:"RT").save(flush:false)
			new CodeMst(codename:"C0003",label:"工程",type:"default",key:"7",value:"商用").save(flush:false)

			new CodeMst(codename:"C0004",label:"ステータス",type:"default",key:"1",value:"未対応").save(flush:false)
			new CodeMst(codename:"C0004",label:"ステータス",type:"default",key:"2",value:"再現待ち").save(flush:false)
			new CodeMst(codename:"C0004",label:"ステータス",type:"default",key:"3",value:"解析済み").save(flush:false)
			new CodeMst(codename:"C0004",label:"ステータス",type:"default",key:"4",value:"対応済み").save(flush:false)
			new CodeMst(codename:"C0004",label:"ステータス",type:"default",key:"5",value:"完了").save(flush:false)
			new CodeMst(codename:"C0004",label:"ステータス",type:"default",key:"6",value:"無効").save(flush:false)
			new CodeMst(codename:"C0004",label:"ステータス",type:"default",key:"7",value:"対応なし").save(flush:false)
			new CodeMst(codename:"C0004",label:"ステータス",type:"default",key:"8",value:"次回対応").save(flush:false)

			new CodeMst(codename:"C0005",label:"重要度",type:"default",key:"1",value:"最優先").save(flush:false)
			new CodeMst(codename:"C0005",label:"重要度",type:"default",key:"2",value:"緊急").save(flush:false)
			new CodeMst(codename:"C0005",label:"重要度",type:"default",key:"3",value:"通常").save(flush:false)
			new CodeMst(codename:"C0005",label:"重要度",type:"default",key:"4",value:"不急").save(flush:false)

			// TODO:機能はユーザ登録で設定する想定なので、以下はダミー値
			new CodeMst(codename:"C0006",label:"機能",type:"default",key:"1",value:"FunctionA").save(flush:false)
			new CodeMst(codename:"C0006",label:"機能",type:"default",key:"2",value:"FunctionB").save(flush:false)
			new CodeMst(codename:"C0006",label:"機能",type:"default",key:"3",value:"FunctionC").save(flush:false)

			// TODO:チームはユーザ登録で設定する想定なので、以下はダミー値（チーム名というくくり自体変更できるようにする？）
			new CodeMst(codename:"C0007",label:"チーム名",type:"default",key:"1",value:"特攻野郎Aチーム").save(flush:false)
			new CodeMst(codename:"C0007",label:"チーム名",type:"default",key:"2",value:"虚弱体質Bチーム").save(flush:false)
			new CodeMst(codename:"C0007",label:"チーム名",type:"default",key:"3",value:"White Box").save(flush:false)

		}
		// TODO:アプリケーションスコープへの格納
		// TODO:これだとメモリ食い過ぎるからkey,valueで保持させる
		servletContext.setAttribute("projects", CodeMst.findAllByCodename("C0001"))
		servletContext.setAttribute("phases", CodeMst.findAllByCodename("C0002", [sort:"key", order:"desc"]))
		servletContext.setAttribute("processes", CodeMst.findAllByCodename("C0003", [sort:"key", order:"asc"]))
		servletContext.setAttribute("status", CodeMst.findAllByCodename("C0004", [sort:"key", order:"asc"]).collect {new CodeMst(value:it.value)})
		servletContext.setAttribute("priority", CodeMst.findAllByCodename("C0005", [sort:"key", order:"asc"]))

	}
	def destroy = {
	}
}
