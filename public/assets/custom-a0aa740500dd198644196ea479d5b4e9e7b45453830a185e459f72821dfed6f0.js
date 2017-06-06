/**
 * Created by Pan Laptop on 29.05.2017.
 */


$('.calendar-picker').datepicker({
    todayBtn: "linked",
    language: "pl",
    todayHighlight: true,
    beforeShowDay: function (date){
        if (date.getMonth() == (new Date()).getMonth())
            switch (date.getDate()){
                case 4:
                    return {
                        tooltip: 'Example tooltip',
                        classes: 'active'
                    };
                case 8:
                    return false;
                case 12:
                    return "text-success";
            }
    }
});
