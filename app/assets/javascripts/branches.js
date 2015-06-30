$(function () {
    var map, myLatlng;
    function initialize() {
        var wrapper = $("body").find(".nested-fields"),
            lat_input = wrapper.find(".lat_input"),
            long_input = wrapper.find(".long_input"),
            map_holder = wrapper.find("#map_canvas");

        if(lat_input.val() != '' && long_input.val() != '') {
            myLatlng = new google.maps.LatLng($('.lat_input').val(),$('.long_input').val())
        } else {
            myLatlng = new google.maps.LatLng(30.1011046,31.219684);
        }

        var myOptions = {
            zoom: 10,
            center: myLatlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        map = new google.maps.Map(map_holder.get(0), myOptions);
        var marker = new google.maps.Marker({
            draggable: true,
            position: myLatlng,
            map: map,
            title: "Your location"
        });
        google.maps.event.addListener(marker, 'dragend', function (event) {
            lat_input.val(this.getPosition().lat());
            long_input.val(this.getPosition().lng());
        });
    }

    initialize();
});
