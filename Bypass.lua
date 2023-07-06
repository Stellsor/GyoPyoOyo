--** Error Ban Bypass **--
for _,v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
    v:Disable()
    wait()
    print("Bypassed Error Check.")
end
 
for _,v in pairs(getconnections(game:GetService("LogService").MessageOut)) do
    v:Disable()
    wait()
    print("Bypassed Logger.")
en