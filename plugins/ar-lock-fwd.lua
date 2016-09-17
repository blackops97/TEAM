
do
local function pre_process(msg)

    local fwd = 'mate:'..msg.to.id
    if redis:get(fwd) and not is_momod(msg) and msg.fwd_from then
            delete_msg(msg.id, ok_cb, true)
             send_large_msg(get_receiver(msg), 'اخي اختي/🌝 يمنع عمل اعاده توجيه هنا التزم بالقوانين لتجنب الطرد 🔕\n#User @'..msg.from.username)
            return "ok"
end
        return msg
    end
    
 local function h_k_a(msg, matches)
     chat_id = msg.to.id
local reply_id = msg['id']
     if is_momod(msg) and matches[1]== 'قفل' and matches[2]== 'اعاده توجيه' then
         local fwd = 'mate:'..msg.to.id
         redis:set(fwd, true)
         local text = 'تم قفل اعاده توجيه \n👮تــم الامـر بواسطه '..msg.from.print_name..'\n🔻Order By @'.. msg.from.username..'\n'
         return reply_msg(reply_id, text, ok_cb, false)
         end
local reply_id = msg['id']
    if not is_momod(msg) and matches[1]== 'قفل' and matches[2]== 'اعاده توجيه' then
    local text= '❌ للمشرفين فقط 😻'
 return reply_msg(reply_id, text, ok_cb, false)
end
local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'فتح' and matches[2]== 'اعاده توجيه' then
    local fwd = 'mate:'..msg.to.id
    redis:del(fwd)
    local text = 'تم️ فتح اعاده توجيه \n👮تــم الامـر بواسطه : '..msg.from.print_name..'\n🔻Order By @'.. msg.from.username..'\n'
    return reply_msg(reply_id, text, ok_cb, false)
end

local reply_id = msg['id']
if not is_momod(msg) and matches[1]== 'فتح' and matches[2]== 'اعاده توجيه' then
local text = '❌ للمشرفين فقط 😻'
 return reply_msg(reply_id, text, ok_cb, false)
 end

end
return {
    patterns ={
        '^(قفل) (اعاده توجيه)$',
        '^(فتح) (اعاده توجيه)$'
    },
run = h_k_a,
pre_process = pre_process 
}
end
