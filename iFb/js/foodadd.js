$(document).ready(function () {
   
    
    $('.input-group input[required]').on('keyup change', function () {
        var $form = $(this).closest('#foodNameType'),
            $group = $(this).closest('.input-group'),
            $addon = $group.find('.input-group-addon'),
            $icon = $addon.find('span'),
            state = false;

        if (!$group.data('validate')) {
            state = $(this).val() ? true : false;
        } else if ($group.data('validate') == "number") {
            state = !isNaN(parseFloat($(this).val())) && isFinite($(this).val());
        }

        if (state) {
            $addon.removeClass('danger');
            $addon.addClass('success');
            $icon.attr('class', 'glyphicon glyphicon-ok');
        } else {
            $addon.removeClass('success');
            $addon.addClass('danger');
            $icon.attr('class', 'glyphicon glyphicon-remove');
        }

    });

    $('.input-group input[required]').trigger('change');

    $('a[title]').tooltip();
    $('.btn-next').on('click', function (e) {
        var formname = $(this).attr('name');
        var tabname = $(this).attr('href');
        e.preventDefault();
        $('ul.nav li a[href="' + tabname + '"]').parent().removeClass('disabled');
        $('ul.nav li a[href="' + tabname + '"]').trigger('click');
    });

    $('.btn-submit1').on('click', function (e) {
       // alert('0');
        if ($('#foodNameType').find('.input-group-addon.danger').length == 0) {
            var formname = $(this).attr('name');
            var tabname = $(this).attr('href');
            e.preventDefault();
            $('ul.nav li a[href="' + tabname + '"]').parent().removeClass('disabled');
            $('ul.nav li a[href="' + tabname + '"]').trigger('click');
        } else {
            e.preventDefault();
            return false;
        }

    });
    
    $('.btn-submit2').on('click', function (e) {
        if ($('#foodTime').find('.input-group-addon.danger').length == 0) {
            //alert('btn-submit2');
            var formname = $(this).attr('name');
            var tabname = $(this).attr('href');
            e.preventDefault();
            $('ul.nav li a[href="' + tabname + '"]').parent().removeClass('disabled');
            $('ul.nav li a[href="' + tabname + '"]').trigger('click');
        } else {
            e.preventDefault();
            return false;
        }
    });

    $('ul.nav li').on('click', function (e) {
        if ($(this).hasClass('disabled')) {
            e.preventDefault();
            return false;
        }
    });

    $("#tbFoodDate").datepicker();

});