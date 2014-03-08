package palpunte

/**
 * バグ情報として管理する項目
 *
 * @author seri
 */
class Bug {

	// バグID（複数カラムで構成する）
	String bugIdProject
	String bugIdPhase
	String bugIdProcess
	String bugIdNo

	// ステータス
	String status
	// 優先度
	String priority
	// タグ
	String tags

	// タイトル
	String title
	// バグ内容
	String bugInfo
	// 登録日
	Date createdate
	// 登録者
	String creater

	// 解析結果
	String analyzeInfo
	// 解析者
	String analyzer
	// 解析日
	Date analyzedate

	// 対応内容
	String commitInfo
	// 対応者
	String commiter
	// 対応日
	Date commitdate

	// 横展開有無(yes or no)
	String spreadChanges
	// 横展開結果
	String spreadChangesInfo

	// 更新日
	Date updatedate
	// 更新者
	String updater

	// 拡張カラム
	String extendInfo

	// 制約
	static constraints = {

		bugIdProject nullable: true
		bugIdPhase nullable: true
		bugIdProcess nullable: true
		bugIdNo nullable: true
		status nullable: true
		priority nullable: true
		tags nullable: true
		title nullable: true
		bugInfo nullable: true
		createdate nullable: true
		creater nullable: true
		analyzeInfo nullable: true
		analyzer nullable: true
		analyzedate nullable: true
		commitInfo nullable: true
		commiter nullable: true
		commitdate nullable: true
		spreadChanges nullable: true
		spreadChangesInfo nullable: true
		updatedate nullable: true
		updater nullable: true
		extendInfo nullable: true

	}
}
