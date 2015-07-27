function diffDays()
{
  var startdate  = document.getElementById("start").value;
  var enddate  = document.getElementById("end").value;

  var one_day = 1000 * 60 * 60 * 24;

  var start1 = Date.parse(startdate);
  var end1 = Date.parse(enddate);

  var out = Math.abs(end1 - start1);
  var output = (Math.round(out/one_day))+1;

  duration.value = output + " CD";
  document.getElementById("days").innerHTML = output + " CD";
}