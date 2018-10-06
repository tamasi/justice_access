$(document).ready(function() {
  $('#court_city_id').sm_select({
    show_placeholder:true,
    duration: 1200,
    input_text: 'comienza a escribir el nombre de la provincia...'
  })
  
  $('#court_jurisdiction_id').sm_select({
    show_placeholder:true,
    duration: 1200,
    input_text: 'comienza a escribir el nombre de la jurisdiccion...'
  })

  // Function to never submit a form field
  $('form').submit(function() {
    $('.never-submit').prop('disabled', true);
    console.log("####################entro al never")
    return true;
  });
});

$(document).ready(function() {
  
});

jQuery(function() {
  var states;
  states = $('#court_jurisdiction_id').html();
  console.log(states);
  return $('#court_city_id').change(function() {
    var country, options;
    country = $('#court_city_id :selected').text();
    options = $(states).filter("optgroup[label=" + country + "]").html();
    console.log(options);
    if (options) {
      return $('#court_jurisdiction_id').html(options);
    } else {
      return $('#court_jurisdiction_id').empty();
    }
  });
});