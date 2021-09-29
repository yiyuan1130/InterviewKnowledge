local mt = {
    __index = function()
        print("执行了元表中的 __index")
    end,
    __newindex = function()
        print("执行了元表中的 __newindex")
    end,
}
local t = {}
setmetatable(t, mt)

print("---- rawget/set ----")
local val_a2 = rawget(t, "a2")
rawset(t, "b2", "b2")

print("---- no rawget/set ----")
local a1 = t.a1
t.b1 = "b1"

