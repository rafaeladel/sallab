$(function() {
    activateColorpicker($("body").find(".colorpicker_field"));

    $("body").on("cocoon:after-insert", "#colors", function(e, inserted_item){
        var codeInput = $(inserted_item).find(".colorpicker_field");
        activateColorpicker(codeInput);
    });

    function activateColorpicker(element) {
        element.colorpicker()
            .on("changeColor", function (e) {
                element.css("background", e.color.toHex());
            });
    }
});