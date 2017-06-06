
$(document).on('turbolinks:load', function() {
    $('.calendar-picker').datepicker({
        todayBtn: "linked",
        language: "pl",
        todayHighlight: true,
    });
    $('.calendar-picker').on("changeDate", function() {
        var date =  $('.calendar-picker').datepicker('getDate')

        //Wyliczanie id - kolejnosc dnia w roku
        var now = new Date(0004, date.getMonth(), date.getDate());
        var start = new Date(0004, 0, 0);
        var diff = now - start;
        var oneDay = 1000 * 60 * 60 * 24;
        var day_id = Math.ceil(diff / oneDay);

        window.location.href = 'http://localhost:3000/days/' + day_id
    });
});

