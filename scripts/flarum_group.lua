if not(Callback.CqCall.GroupID == 432511748) and not(Callback.CqCall.GroupID == 188723593) then
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

for key, value in ipairs(dict) do
    if Callback.CqCall.MessageData == "." .. key then
        CqMsg:Reply("这个群不是" .. value .. "新手教学群", Callback.CqCall.GroupID, true, Callback.CqCall.MessageID)
    end
end

if Callback.CqCall.MessageData == ".deprecated" then
    CqMsg:Reply("请将 php.ini 中的 display_errors 设置为 Off", Callback.CqCall.GroupID, true, Callback.CqCall.MessageID)
end