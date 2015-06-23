$(function() {
    $("body").on("click", "#add_color_btn", function (e) {
        e.preventDefault();
        var wrapper = $(e.target).closest("#colors_wrapper");
        var text_field = wrapper.find(".color_field").last().clone();
        text_field.find("input").val("");
        wrapper.append(text_field);
    })
});