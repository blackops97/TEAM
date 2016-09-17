--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY BAKURY                ▀▄ ▄▀ 
▀▄ ▄▀   BY sadik   (@illOlli)     ▀▄ ▄▀    
▀▄ ▄  JUST WRITED BY BAKURY      ▀▄ ▄▀ 
▀▄ ▄▀        wolcom   :  ترحيب             ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]

do
    
local function run(msg,matches)
    if matches[1] == "chat_add_user"  then 
     local text = ' اهلا بك في المجموعه كبد حياتي 🙈💋'..'\n'..'\n'
    ..'✳ اسمك :  '..msg.action.user.print_name..'\n'
    ..'✳ معرفك : @'..(msg.action.user.username or "لا يوجد")..'\n'
    ..'✳ الايدي : '..msg.action.user.id..'\n'
    ..'✳رقم هاتفك : '..(msg.action.user.phone or "لا يوجد")..'\n'
    ..'✳الي ضافك : '..msg.from.print_name..'\n'
    ..'❇ معرف الي ضافك : @'..(msg.from.username or "لا يوجد")..'\n'
    ..'❇ التاريخ : '..os.date('!%A, %B %d, %Y*\n', timestamp)
    ..'❇ الوقت : '..os.date(' %T*', os.time())..'\n'  
     
     return reply_msg(msg.id, text, ok_cb, false)
     end
    if matches[1] == "chat_add_user_link" then
      local text = ' اهلا بك في المجموعه كبد حياتي 🙈💋'..'\n'..'\n'
     ..'❇ اسمك :  '..msg.from.print_name..'\n'
    ..'✳ معرفك : @'..(msg.from.username or "لا يوجد")..'\n'
    ..'✳ الايدي : '..msg.from.id..'\n'
    ..'❇رقم هاتفك : '..(msg.from.phone or "لا يوجد")..'\n'
    ..'❇ اسم المجموعة : '..msg.to.title..'\n'
    ..'❇ ايدي المجموعة : '..msg.to.id..'\n'
    ..'❇ التاريخ : '..os.date('!%A, %B %d, %Y*\n', timestamp)
    ..'❇ الوقت : '..os.date(' %T*', os.time())..'\n'  
     
        return reply_msg(msg.id, text, ok_cb, false)
  end
      if matches[1] == "chat_del_user" then
       return " 🔸 الله وياك/ج كبد عمري 😍🙈 لتنسه الباب مفتوح 🌚"..msg.action.user.first_name
end
end
 
return {
    patterns = {
        "^!!tgservice (chat_add_user)$",
        "^!!tgservice (chat_add_user_link)$",        
        "^!!tgservice (chat_del_user)$"
        
    },
 run = run
}
end
