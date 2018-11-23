$(document).ready(function () {
    let nav = $("#navbar-must-fixed");
    nav.on("scroll", function (e) {
        if (this.scrollTop > 250) {
            nav.addClass("fixed-top");
            console.log("e");
        } else {
            nav.removeClass("fixed-top");
        }
    }); 
});