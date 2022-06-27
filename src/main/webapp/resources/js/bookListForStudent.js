
$(document).ready(function () {
    console.log('ready')

    $('.rewritebook').click(function () {
        let article104 = $('#article1-4')
        let otherarticle = article104.siblings()

        article104.css('display', 'block');
        otherarticle.css('display', 'none');
    })

    $('.btn1').click(function () {
        let article104 = $('#article1-4')
        let otherarticle = article104.siblings()

        article104.css('display', 'none');
        otherarticle.css('display', 'block');
    })


})


