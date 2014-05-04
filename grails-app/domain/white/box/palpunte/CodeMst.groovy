package white.box.palpunte

class CodeMst {

	String codename
	String label
	String type		// default, user, system
	String key		// ソート条件も兼ねる（別途ソート用のカラムがほしくなるかも）
	String value
	String sort
	String note
	boolean delflag = false

    static constraints = {
		sort nullable: true
		note nullable: true
    }
}
