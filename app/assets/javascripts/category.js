$(document).on('turbolinks:load', function(){
    $(document).on('change', '#pref', function(){
        let pref_val = $('#pref').val();
        console.log(pref_val);

        if (pref_val !== "") {
            let selectedTemplate = $(`#city_${pref_val}`);

            $('#city_dummy').remove();
            $('#selected_city').remove();
            $('#city_list_insert_point').after(selectedTemplate.html());
        };
        
    });
})