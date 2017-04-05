---
---

#$(window).scroll () ->
#    $("#toc-container").css("top", Math.max(40, 100 - $(this).scrollTop()))

$(document).ready () ->
    sections = $(".page .side__nav ul > li > ul")
    $(".page .side__nav ul > li > span").click (event) ->
        $(event.target).parent().find(sections).toggleClass('selected')
