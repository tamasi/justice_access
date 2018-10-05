$(document).ready(function() {
  $('#court_city_id').select2({
    theme: "bootstrap"
  })
  $('#court_jurisdiction_id').select2({
    theme: "bootstrap"
  })
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