<div id="days"></div>
<script language="javascript">
function show_date_time(){
window.setTimeout("show_date_time()", 1000);
let BirthDay=new Date("01/23/2022 20:00:00");
let today=new Date();
let timeold=(today.getTime()-BirthDay.getTime());
let sectimeold=timeold/1000
let secondsold=Math.floor(sectimeold);
let msPerDay=24*60*60*1000
let e_daysold=timeold/msPerDay
let daysold=Math.floor(e_daysold);
let e_hrsold=(e_daysold-daysold)*24;
let hrsold=setzero(Math.floor(e_hrsold));
let e_minsold=(e_hrsold-hrsold)*60;
let minsold=setzero(Math.floor((e_hrsold-hrsold)*60));
let seconds=setzero(Math.floor((e_minsold-minsold)*60));
document.getElementById('days').innerHTML="已运行"+daysold+"天"+hrsold+"时"+minsold+"分"+seconds+"秒";
}
function setzero(i){
if (i<10)
{i="0" + i};
return i;
}
show_date_time();
</script>