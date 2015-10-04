
$(window).scroll () ->
    $("#sidenav").css("top", Math.max(40, 100 - $(this).scrollTop()))

markLabels = (collection, inline) ->
	entries = collection.find("li");
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
  $('.programs ul > li').click () ->
     $('.programs').toggleClass('active')
  $('.websites ul > li').click () ->
     $('.websites').toggleClass('active')

	applist = $(".app-container");
	legend = $(".top-wrapper__legend");

	markLabels(applist, false);
	markLabels(legend, true);

	entries = applist.find("ul");

	for ul in entries
		ul.className = "label-container";
