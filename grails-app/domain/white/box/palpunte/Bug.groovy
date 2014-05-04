package white.box.palpunte

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

	// TODO:タグ
	String tags

	// タイトル
	String title
	// バグ内容
	String bugInfo
	// ステータス
	String status
	// 重要度
	String priority
	// 機能
	String function
	// チーム名
	String team
	// バグ発見日
	Date finddate
	// APバージョン
	String apVersion
	// 試験項目
	String pcl

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

	// 備考
	String note
	// 登録日
	Date createdate
	// 登録者
	String creater
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

		tags nullable: true

		title nullable: true
		bugInfo nullable: true
		status nullable: true
		priority nullable: true
		function nullable: true
		team nullable: true
		finddate nullable: true
		apVersion nullable: true
		pcl nullable: true

		analyzeInfo nullable: true
		analyzer nullable: true
		analyzedate nullable: true

		commitInfo nullable: true
		commiter nullable: true
		commitdate nullable: true

		spreadChanges nullable: true
		spreadChangesInfo nullable: true

		note nullable: true
		createdate nullable: true
		creater nullable: true
		updatedate nullable: true
		updater nullable: true

		extendInfo nullable: true

	}
}
