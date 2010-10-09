
// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function submit_locale_selection() {
  var data = "locale[id]=" + $("#locale_id").val();
  $.ajax({
    url: "/locale/selection",
    type: "POST",       
    data: data,
    cache: false,
    dataType: "script"
  });
  return false;
}
