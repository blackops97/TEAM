do 
local function jacky(msg, matches) 
if is_sudo(msg) then 
return '❇ الايدي : '.. msg.from.id..'\n' 
..'❇ المعرف : @'..msg.from.username..'\n' 
..'❇الاســم : '..msg.from.print_name..'\n' 
..'❇ ايدي الكروب : '..msg.to.id..'\n' 
..'❇ اسم الكروب : '..msg.to.title..'\n' 
..'❇ موقعك : انــت المــطور مالتــي🙈♥' 
end 
if is_owner(msg) then 
  return '❇ الايدي : '.. msg.from.id..'\n' 
..'❇ المعرف : @'..msg.from.username..'\n' 
..'❇ الاسم : '..msg.from.print_name..'\n' 
..'❇ ايدي الكروب : '..msg.to.id..'\n' 
..'❇ اسم الكروب : '..msg.to.title..'\n' 
..'❇ رتبتك : انــت الــمدير مال الــكــروب🙊❤️' 
end 
if is_momod(msg) then 
return '❇ الايدي : '.. msg.from.id..'\n' 
..'❇ المعرف : @'..msg.from.username..'\n' 
..'❇ الاسم : '..msg.from.print_name..'\n' 
..'❇ ايدي الكروب : '..msg.to.id..'\n' 
..'❇ اسم الكروب : '..msg.to.title..'\n' 
..'❇ مــوقعك : انــت ادمــن😍🙊' 
end 
if not is_momod(msg) then 
return '❇ الايدي : '.. msg.from.id..'\n' 
..'❇ المعرف : @'..msg.from.username..'\n' 
..'❇ الاسم : '..msg.from.print_name..'\n' 
..'❇ ايدي الكروب : '..msg.to.id..'\n' 
..'❇اســم الكروب : '..msg.to.title..'\n' 
..'❇ مــوقعك : انــت دايــح قــصدي عــضو😹😜' 
end  

if ( msg.text == "about" ) then 
if ( msg.from.username == "#DEV: @illOlli" ) then 
R = get_receiver(msg) 
send_large_msg ( R , "Made by @illOlli" ); 
end 
end 
end 
return { 
  patterns = { 
       "^(موقعي)$", 
  }, 
  run =jacky,
} 
end 
