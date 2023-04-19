if not(Callback.CqCall.GroupID == 188723593) and not(Callback.CqCall.GroupID == 198848645) then
    return
end

if Callback.CqCall.MessageData == ".debug" then
    CqMsg:SetCustomForward("超级练习册", "113764782", "F12 看看控制台有无输出")
    CqMsg:SetCustomForward("超级练习册", "113764782", "因为有可能是客户端毛病")
    CqMsg:SetCustomForward("超级练习册", "113764782", "https://docs.flarum.org/zh/troubleshoot/")
    CqMsg:SetCustomForward("超级练习册", "113764782", "你也可以打开 config.php 把 debug 改为 true")
    CqMsg:SetCustomForward("超级练习册", "113764782", "尽量一次性提供足够的信息让群友们看")
    CqMsg:SetCustomForward("超级练习册", "113764782", "我其实很讨厌说这套说辞。已经挂在了群公告里，但是我每天最少都会说一次")
    CqMsg:SendForwardMsg(Callback.CqCall.GroupID, true)
end

if Callback.CqCall.MessageData == ".bt" then
    CqMsg:Reply("这个群不是宝塔售后群，宝塔问题请加宝塔群问", Callback.CqCall.GroupID, true, Callback.CqCall.MessageID)
end

if Callback.CqCall.MessageData == ".ks" then
    CqMsg:Reply("KubeSphere是本群唯一指定面板", Callback.CqCall.GroupID, true, Callback.CqCall.MessageID)
end

dict = {}
dict["linux"] = "Linux"
dict["windows"] = "Windows"
dict["mysql"] = "MySQL"
dict["unix"] = "Unix"
dict["macos"] = "MacOS"
dict["openbsd"] = "OpenBSD"

for key, value in pairs(dict) do
    if Callback.CqCall.MessageData == "." .. key then
        CqMsg:Reply("这个群不是" .. value .. "新手教学群", Callback.CqCall.GroupID, true, Callback.CqCall.MessageID)
    end
end

if Callback.CqCall.MessageData == ".deprecated" then
    CqMsg:Reply("请将 php.ini 中的 display_errors 设置为 Off", Callback.CqCall.GroupID, true, Callback.CqCall.MessageID)
end

if Callback.CqCall.MessageData == ".permission" then
    CqMsg:Reply("又不是说我没权限，是你的服务器说的没权限，你不要和我争辩说你已经设置了权限，你去和你的服务器争辩，谢谢", Callback.CqCall.GroupID, true, Callback.CqCall.MessageID)
end

function split(text, delim)
    -- returns an array of fields based on text and delimiter (one character only)
    local result = {}
    local magic = "().%+-*?[]^$"

    if delim == nil then
        delim = "%s"
    elseif string.find(delim, magic, 1, true) then
        -- escape magic
        delim = "%"..delim
    end

    local pattern = "[^"..delim.."]+"
    for w in string.gmatch(text, pattern) do
        table.insert(result, w)
    end
    return result
end

if string.sub(Callback.CqCall.MessageData, 1, 6) == ".argue" then
    splitRes = split(string.gsub(Callback.CqCall.MessageData, ".argue%s", ""), "%s")
    CqMsg:Reply("又不是我说" ..splitRes[1].. "，是你的服务器说的" ..splitRes[2].. "，你不要和我争辩说你已经" ..splitRes[3].. "，你去和你的服务器争辩，谢谢", Callback.CqCall.GroupID, true, Callback.CqCall.MessageID)
end

if string.sub(Callback.CqCall.MessageData, 1, 15) == ".methoddisabled" then
    splitRes = split(string.gsub(Callback.CqCall.MessageData, ".methoddisabled%s", ""), "%s")
    CqMsg:Reply("又不是我说没启用" ..splitRes[1].. "函数，是你的服务器说的没启用" ..splitRes[1].. "函数，你不要和我争辩说你已经设置了" ..splitRes[1].. "函数，你去和你的服务器争辩，谢谢", Callback.CqCall.GroupID, true, Callback.CqCall.MessageID)
end

if string.sub(Callback.CqCall.MessageData, 1, 12) == ".extnotfound" then
    splitRes = split(string.gsub(Callback.CqCall.MessageData, ".extnotfound%s", ""), "%s")
    CqMsg:Reply("又不是我说没启用" ..splitRes[1].. "扩展，是你的服务器说的没启用" ..splitRes[1].. "扩展，你不要和我争辩说你已经设置了" ..splitRes[1].. "扩展，你去和你的服务器争辩，谢谢", Callback.CqCall.GroupID, true, Callback.CqCall.MessageID)
end

if Callback.CqCall.MessageData == '.giveup' then
    CqMsg:SendMsg("[CQ:image,file=giveup.jpg,url=https://telegra.ph/file/08eef1d517247cf78d654.jpg]", Callback.CqCall.GroupID, true)
end

if Callback.CqCall.MessageData == '你干嘛' then
    CqMsg:SendMsg("哎哎呦~", Callback.CqCall.GroupID, true)
end

if Callback.CqCall.MessageData == '114514' then
    CqMsg:SendMsg("1919810", Callback.CqCall.GroupID, true)
end

if Callback.CqCall.MessageData == '.rust' then
    CqMsg:SendMsg("[CQ:image,file=rust.gif,url=https://telegra.ph/file/795ed5adbbef549e88064.gif]", Callback.CqCall.GroupID, true)
end

if string.find(Callback.CqCall.MessageData, "原神") then
    CqMsg.SendMsg("这里不是原神交流群", Callback.CqCall.GroupID, true)
end
