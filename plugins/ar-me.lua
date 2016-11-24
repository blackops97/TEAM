do 
local function jacky(msg, matches) 
if is_sudo(msg) then 
return '🐯 الايـ❆ـدي : '.. msg.from.id..'\n' 
..'🐯 المعـ☆ـرف : @'..msg.from.username..'\n' 
..'🐯 الاسـ☆ـم : '..msg.from.print_name..'\n' 
..'🐯 ايدي الكـ❈ـروب : '..msg.to.id..'\n' 
..'🐯 اسم الكـ❈ـروب : '..msg.to.title..'\n' 
..'🐯 مـ☆ـوقعك : انــت المــطور مالتــي🙈♥' 
end 
if is_owner(msg) then 
  return '🐯 الايـ❆ـدي : '.. msg.from.id..'\n' 
..'🐯 المعـ☆ـرف : @'..msg.from.username..'\n' 
..'🐯 الاسـ☆م : '..msg.from.print_name..'\n' 
..'🐯 ايدي الكـ❈ـروب : '..msg.to.id..'\n' 
..'🐯 اسم الكـ❈ـروب : '..msg.to.title..'\n' 
..'🐯 مـ☆ـوقعك : انــت الــمدير مال الــكــروب🙊❤️' 
end 
if is_momod(msg) then 
return '🐯 الايـ❆ـدي : '.. msg.from.id..'\n' 
..'🐯 المعـ❃ـرف : @'..msg.from.username..'\n' 
..'🐯 الاسـ☆ـم : '..msg.from.print_name..'\n' 
..'🐯 ايدي الكـ❈ـروب : '..msg.to.id..'\n' 
..'🐯 اسـم الكـ❃ـروب : '..msg.to.title..'\n' 
..'🐯 مـ☆ـوقعك : انــت ادمــن😍🙊' 
end 
if not is_momod(msg) then 
return '🐯 الايـ❆ـدي : '.. msg.from.id..'\n' 
..'🐯 المعـ☆ـرف : @'..msg.from.username..'\n' 
..'🐯 الاسـ☆ـم : '..msg.from.print_name..'\n' 
..'🐯 ايـدي الكـ❈ـروب : '..msg.to.id..'\n' 
..'🐯اســم الكـ❈ـروب : '..msg.to.title..'\n' 
..'🐯 مـ❅ـوقعك : انــت دايــح قــصدي عــضو😹😜' 
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
