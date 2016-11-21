function toDatetimeLocal(jsFmt){
  jsFmt = jsFmt.toString().split(' ');
  var year = parseInt(jsFmt[3], 10);
  var month = jsFmt[1]
  switch(month){
    case 'Jun':
      month = 01;
      break;
    case 'Feb':
      month = 02;
      break;
    case 'Mar':
      month = 03;
      break;
    case 'Apl':
      month = 04;
      break;
    case 'May':
      month = 05;
      break;
    case 'Jun':
      month = 06;
      break;
    case 'Jul':
      month = 07;
      break;
    case 'Aug':
      month = 08;
      break;
    case 'Sep':
      month = 09;
      break;
    case 'Oct':
      month = 10;
      break;
    case 'Nov':
      month = 11;
      break;
    case 'Dec':
      month = 12;
      break;
  }
  var day = parseInt(jsFmt[2], 10);
  day = ("0" + day).slice(-2);
  var hour = jsFmt[4].slice(0, 2);
  var minute = jsFmt[4].slice(3, 5);
  minute = ("0" + minute).slice(-2);
  var datetimeLocalFmtTime = year + '-' + month + '-' + day + 'T' + hour + ':' + minute;
  console.log(datetimeLocalFmtTime);
  return datetimeLocalFmtTime;
}
