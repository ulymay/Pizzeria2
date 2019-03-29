/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    var scroll_pos = 0;
    $(document).scroll(function () {
        scroll_pos = $(this).scrollTop();
        if (scroll_pos <= 10) {
            $("nav.bg-custom").addClass("bgTransparente");
        } else {
            $("nav.bg-custom").removeClass("bgTransparente");
        }
    });
});

