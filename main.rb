require 'date'
def g(a,b)
  c=Date.parse(a);d=Date.parse(b);w=c.mday;x=d.mday;e=d.year-c.year>0?true:false;f=c.mon-d.mon==0?true:false
  g=["st","nd","rd"];h=(w>3&&w<20)||(w>=24&&w<31)?true:false;i=(x>=4&&x<=20)||(x>=24&&x<31)?true:false;s=[32,0x2D];q=e&&(((d-c).to_i/365.25)>=1);
  vw=Date.today;vwv=c.year!=vw.year;_=(c.day==d.day)&&(c.mon==d.mon)&&(c.year==d.year)
  c.strftime("%B"<<32<<"%-d"+(h ?"th":""<<g[c.mday%10-1])+((e&&q&&vwv||e&&q) ?", %"<<89:""))+(_ ?"":"%c%c"%s)<<
  d.strftime((f ?"": "%c"%"20".to_i(16)<<"%B")<<(_ ?"":0o40)<<(_ ?"":"%-d")+(i ?(_ ?:"":"th"):(_ ?"":g[d.mday%10-1]))+((vwv||e&&q) ?", %Y":""))
end


puts g("2015-07-01","2015-07-4")
puts g("2015-12-01", "2016-02-03")
puts g("2015-12-01", "2017-02-03")
puts g("2016-03-01", "2016-05-05")
puts g("2017-01-01", "2017-01-01")
puts g("2022-09-05", "2023-09-04")
puts g("2022-09-05", "2023-09-06")

