if Callback.CqCall.MessageData == ".nyabot" then
    if Callback.CqCall.GroupID == nil then
        CqMsg:Reply("有关 NyaBot 问题请前往 -> 813956993", Callback.CqCall.UserID, false, Callback.CqCall.MessageID)
    end
    if Callback.CqCall.GroupID ~= nil then
        CqMsg:Reply("有关 NyaBot 问题请前往 -> 813956993", Callback.CqCall.GroupID, true, Callback.CqCall.MessageID)
    end
end