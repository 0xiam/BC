local WH = return {
    {HWID = "d38bf40cfa645b3bfea2e543a7be9fc130b39b92f3283ad64402e21619f2708a"},
    {HWID = "94af877ba872020e6459ba118962dccfafaa6e02fc120722c9a26f4a665e875f"}
  }
table.freeze(WH)
getgenv().HWID = gethwid()
function VWH()
    for i, data in ipairs(WH) do 
        if data.HWID == gethwid() then
            return "TRUE"
        else
            game.Players.LocalPlayer:Kick('Not Whitelisted')
            return "FALSE"
        end
    end
end
