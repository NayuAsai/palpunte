import white.box.palpunte.CodeMst

class BootStrap {

	def init = { servletContext ->

		// TODO:マスタの初期化処理を入れる
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
		}
		// TODO:アプリケーションスコープへの格納
		// TODO:これだとメモリ食い過ぎるからkey,valueで保持させる
		servletContext.setAttribute("projects", CodeMst.findAllByCodename("C0001"))
		servletContext.setAttribute("phases", CodeMst.findAllByCodename("C0002", [sort:"key", order:"desc"]))
		servletContext.setAttribute("processes", CodeMst.findAllByCodename("C0003", [sort:"key", order:"asc"]))
	}
	def destroy = {
	}
}
