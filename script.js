
$(window).scroll(function(){
    $("#sidenav").css("top", Math.max(40, 100 - $(this).scrollTop()));
});

window.onload = function () {
	var applist = document.getElementsByClassName("app-list");
	var legend = document.getElementsByClassName("top-wrapper__legend");

	markLabels(applist[0], false);
	markLabels(legend[0], true);

	var entries = applist[0].getElementsByTagName("ul");

	for (ul of entries) {
		ul.className = "label-container";
	}
}

function markLabels(collection, inline) {
	var entries = collection.getElementsByTagName("li");
	var suffix = inline ? " label__inline" : "";

	for (li of entries) {
		if(li.getElementsByTagName("strong").length && li.getElementsByTagName("em").length) {
			li.className = "label label__esspaid" + suffix;
		}
		else if(li.getElementsByTagName("strong").length) {
			li.className = "label label__ess" + suffix;
		}
		else if(li.getElementsByTagName("em").length) {
			li.className = "label label__paid" + suffix;
		}
		else {
			li.className = "label label__free" + suffix;
		}
	}
}
