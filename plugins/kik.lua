do
local function run(msg, matches) 
if matches[1] == 'مغادره' then 
local hash = 'kick:'..msg.to.id..':'..msg.from.id 
     redis:set(hash, "waite") 
      return 'عزيزي 🦁 (@'..msg.from.username..')\nهل انت متاكد من الخروج من المجموعة ارسل (دعبلني)✈️ لكي تخرج من المجموعة ان لم تكن متأكد من الخروج ارسل(لا) )' 
    end 

    if msg.text then 
   local hash = 'kick:'..msg.to.id..':'..msg.from.id 
      if msg.text:match("^دعبلني$") and redis:get(hash) == "waite" then 
     redis:set(hash, "ok") 
   elseif msg.text:match("^لا$") and redis:get(hash) == "waite" then 
   send_large_msg(get_receiver(msg), "تم الغاء طردك تره هيه مو العبه  👁‍🗨") 
     redis:del(hash, true) 

      end 
    end 
   local hash = 'kick:'..msg.to.id..':'..msg.from.id 
    if redis:get(hash) then 
        if redis:get(hash) == "ok" then 
         channel_kick("channel#id"..msg.to.id, "user#id"..msg.from.id, ok_cb, false) 
         return '✈️عزيزي لقد تم ضربك جلاق من هذهي المجموعة ('..msg.to.title..')🐯' 
        end 
      end 
    end 

return { 
  patterns = { 
  "مغادره", 
  "^دعبلني$", 
  "^لا$" 
  }, 
  run = run, 
}
end