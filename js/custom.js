$(document).ready(function() {
    //MATERIALIZE SELECT DROPDOWN
    $('select').material_select();

    //AUTO COMPLETE CITY SELECT
    $('#select-city,#select-city-1,#select-city-2,#select-city-3,#select-city-4,#select-city-5.autocomplete').autocomplete({
        data: {
            "CHENNAI": null,
            "BENGALURU": null,
            "PUNE": null,
            "AMRITSAR": null,
            "HYDERABAD": null,
            "DELHI": null,
            "KOLKATA": null,
            "MUMBAI": null,
            "AHMEDABAD": null,
            "JAIPUR": null,
        },
        limit: 5, // The max amount of results that can be shown at once. Default: Infinity.
        onAutocomplete: function(val) {
            // Callback function when value is autcompleted.
        },
        minLength: 1, // The minimum length of the input for the autocomplete to start. Default: 1.
    });

});

//DATE PICKER	
$(function() {
    var dateFormat = "mm/dd/yy",
        from = $("#from,#from-1,#from-2,#from-3,#from-4,#from-5")
        .datepicker({
            defaultDate: "+1w",
            changeMonth: false,
            numberOfMonths: 1
        })
        .on("change", function() {
            to.datepicker("option", "minDate", getDate(this));
        }),
        to = $("#to,#to-1,#to-2,#to-3,#to-4,#to-5").datepicker({
            defaultDate: "+1w",
            changeMonth: false,
            numberOfMonths: 1
        })
        .on("change", function() {
            from.datepicker("option", "maxDate", getDate(this));
        });

    function getDate(element) {
        var date;
        try {
            date = $.datepicker.parseDate(dateFormat, element.value);
        } catch (error) {
            date = null;
        }

        return date;
    }
});