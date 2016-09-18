--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ لتحذف حقوق بذمتك🚶🏻 
      #CODS CREATED By ~ @JALAL_ALDON 
      please join to Channel Oscar Team @OSCARBOTv2 
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]] 
do 

local function pre_process(msg) 
local jalal = msg['id'] 
  local user = msg.from.id 
local chat = msg.to.id 
    local oscar = 'mate:'..msg.to.id 
    if redis:get(oscar) and msg.media and not is_momod(msg) then 
    delete_msg(msg.id, ok_cb, false) 
local test = "عزيزي👿~["..msg.from.first_name.."]".."\n".."اه ولك/ج هم قافلينهن وهم ما سالمين منك/ج ولك/ج ممنوع يعني ممنوع اذا انعادت اسمط اهل اهلك/ج{❌}👿".."\n".."👾username: @"..(msg.from.username or " ") 
reply_msg(jalal, test, ok_cb, true) 

end 

        return msg 
    end 

local function run(msg, matches) 
local jalal = msg['id'] 

    if matches[1] == 'قفل الوسائط'  and is_momod(msg) then 
                    local oscar = 'mate:'..msg.to.id 
                    redis:set(oscar, true) 
                    local oscar1 = 'تــم قفــل 🔐✅الوســائط \n👮تــم الامـر بواسطه:- '..msg.from.print_name..'\n🔻Order By @'.. msg.from.username..'\n' 
reply_msg(jalal, oscar1, ok_cb, true) 
elseif matches[1] == 'قفل الوسائط' and not is_momod(msg) then 
local asdy = 'للمشرفين فقط🔴' 
reply_msg(jalal, asdy, ok_cb, true) 

    elseif matches[1] == 'فتح الوسائط'  and is_momod(msg) then 
      local oscar = 'mate:'..msg.to.id 
      redis:del(oscar) 
    local don = 'تـ﷽ـمٌ فَتْحُ جْمٌيَْع الُوَسِائطِ\n👮تــم الامـر بواسطه  '..msg.from.print_name..'\n🔻Order By @'.. msg.from.username..'\n'  
reply_msg(jalal, don, ok_cb, true) 
elseif matches[1] == 'قفل الوسائط' and not is_momod(msg) then 
local jalal_aldon = 'للمشرفين فقط🔴' 
reply_msg(jalal, jalal_aldon, ok_cb, true) 
end 
end 

return { 
    patterns = { 
    "^(قفل الوسائط)$", 
    "^(فتح الوسائط)$" 
    }, 
run = run, 
    pre_process = pre_process 
} 

end 
