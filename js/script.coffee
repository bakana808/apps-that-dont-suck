---
---

$(window).scroll () ->
    $("#toc-container").css("top", Math.max(40, 100 - $(this).scrollTop()))
