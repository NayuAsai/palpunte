if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}

// めんどくさいからdata-toggle="dropdown"と変更OKなクラス属性持つ奴は、
// その上の値が書き換わるようにしておく
$(function() {
	// ボタンをクリックした場合
	$("#id_project+ul a").click(function() {
		// フォームの値を取得
		str = $(this).html();
//		alert(str);
//		$("#id_project").html(str + '　<span class="caret"></span>');
		$("#id_project").html(str + '　<span class="caret"></span>');
	});
});
