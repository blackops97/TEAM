--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ لتحذف حقوق بذمتك🚶🏻 
      #BY ~ @SADIKAL_KNANI10
       Channel @KINGTELE1 
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
local test = "اخي /اختي🌝~["..msg.from.first_name.."]".."\n".."يمنع كافه الميديا هنا ان كانت صور او فيديوهات او صوتيات فهي ممنوعه التزم بالقوانين{❌}👿".."\n".."👾username: @"..(msg.from.username or " ") 
reply_msg(sadik, test, ok_cb, true) 

end 

        return msg 
    end 

local function run(msg, matches) 
local jalal = msg['id'] 

    if matches[1] == 'قفل الوسائط'  and is_momod(msg) then 
                    local oscar = 'mate:'..msg.to.id 
                    redis:set(oscar, true) 
                    local oscar1 = 'تـ﷽ـم قًفَلُ جْمٌيَْع الُوَسائط🌝\n👮تــم الامـر بواسطه : @'..msg.from.print_name..'\n☻Order By : @'.. msg.from.username..'\n'
reply_msg(sadik, king, ok_cb, true) 
elseif matches[1] == 'قفل الوسائط' and not is_momod(msg) then 
local asdy = 'للمشرفين فقط🔴' 
reply_msg(sadik, asdy, ok_cb, true) 

    elseif matches[1] == 'فتح الوسائط'  and is_momod(msg) then 
      local oscar = 'mate:'..msg.to.id 
      redis:del(king) 
    local don = 'تـ﷽ـمٌ فَتْحُ جْمٌيَْع الُوَسِائطِ🌝\n👮تــم الامـر بواسطه : '..msg.from.print_name..'\n☻Order By  : @'.. msg.from.username..'\n' 
reply_msg(jalal, don, ok_cb, true) 
elseif matches[1] == 'قفل الوسائط' and not is_momod(msg) then 
local sadikal_knani = 'للمشرفين فقط🔴' 
reply_msg(sadik, sadikal_knani, ok_cb, true) 
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
