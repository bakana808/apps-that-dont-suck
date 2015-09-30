
$(window).scroll () ->
    $("#sidenav").css("top", Math.max(40, 100 - $(this).scrollTop()))

$("#sidenav ul>li>a").click () ->
	$("#sidenav ul>li>ul").addClass('selected')

markLabels = (collection, inline) ->
	entries = collection.getElementsByTagName("li");
	suffix = if inline then " label__inline" else "";

	console.log entries
	for li in entries
		console.log li
		if(li.getElementsByTagName("strong").length && li.getElementsByTagName("em").length)
			li.className = "label label__esspaid" + suffix
		else if(li.getElementsByTagName("strong").length)
			li.className = "label label__ess" + suffix
		else if(li.getElementsByTagName("em").length)
			li.className = "label label__paid" + suffix
		else
			li.className = "label label__free" + suffix

window.onload = () ->
	applist = $(".app-container");
	legend = $(".top-wrapper__legend");

	markLabels(applist[0], false);
	markLabels(legend[0], true);

	entries = applist[0].getElementsByTagName("ul");

	for ul in entries
		ul.className = "label-container";
