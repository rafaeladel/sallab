var pageSlogan = function () {
    $("h3.pageSlogan em,h3.pageSlogan b").each(function () {
        var item = $(this);
        var str = $(item).text();
        var words = str.split(" ");
        $(this).empty();
        for (var i = 0; i < words.length; i++) {
            words[i] += " ";
            var value = i * 70 + "ms";
            $(item).append("<span style='-webkit-transition-delay:"+value+";transition-delay:"+value+"'>" + words[i] + "</span>");
        }
        setTimeout(function () { $("h3.pageSlogan").addClass("active"); }, 1000);
    });
}
var autoPlayYouTubeModal = function () {
    var trigger = $("body").find('[data-toggle="modal"]');
    trigger.click(function () {
        var theModal = $(this).data("target"),
            videoSRC = $(this).attr("data-theVideo"),
            videoSRCauto = videoSRC + "?autoplay=1&modestbranding=1&autohide=1&showinfo=0";
        var height = $(".modal-lg").width() * 16 / 9;
        $(theModal + ' iframe').attr('height', height);
        $(theModal + ' iframe').attr('src', videoSRCauto);
        $(theModal + ' button.close').click(function () {
            $(theModal + ' iframe').attr('src', videoSRC);
        });
        $('.modal').click(function () {
            $(theModal + ' iframe').attr('src', videoSRC);
        });
    });
}

var bluegal = function(){
    $('.image-gal').click(function (event) {
        event = event || window.event;
        var target = event.target || event.srcElement,
            link = target.src ? target.parentNode : target,
            options = {index: link, event: event},
            links = this.getElementsByTagName('a');
        blueimp.Gallery(links,options);
    });
}

var careersForm = function () {
    $('#carrerModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget);
        var recipient = button.attr('data-vacancyID');
        var modal = $(this);
        console.log(button);
        modal.find('form').attr('data-vacancyID', recipient);
    })
}
var newsGrid = function () {
    var windowLeft = $(".container").width() / 2;
    $(".news .col-sm-6").each(function () {
        if ($(this).offset().left > windowLeft) { $(this).addClass("floated") }
    })
    $(".rtl .news .col-sm-6").each(function () {
        if ($(this).offset().left < windowLeft) { $(this).addClass("floatedAR").removeClass("floated") }
    });
}
var productDetails = function () {
    $('#productModal').on('shown.bs.modal', function (event) {
        var button = $(event.relatedTarget);
        var product = button.attr('data-productID');
        console.log(product)
        var modal = $(this);
        modal.find('#productImg').zoomToo({magnify: 1});
    })
}
$(document).ready(function () {
    pageSlogan();
    autoPlayYouTubeModal();
    bluegal();
    careersForm();
    newsGrid();
    productDetails();
    $('[data-toggle="tooltip"]').tooltip();
	$(".form-validate").validate();
	$("[data-toggle='buttons'] .btn").each(function(i, el) {
	  var $button = $(el);
	  var checked = $button.find("input[type='checkbox']").prop("checked");
	  if (checked) {
		$button.addClass("active");
	  } else {
		$button.removeClass("active");
	  }
	});
})