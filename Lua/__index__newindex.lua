local mt1 = {
    __index = function(t, k)
        print("执行了原表中的__index")
        print("t:", t, "k:", k)
    end,
    __newindex = function(t, k, v)
        print("执行了原表中的__newindex")
        print("t:", t, "k:", k, "v:", v)
    end,
}

local t1 = {}
setmetatable(t1, mt1)

local a = t1.a;
t1.a = "aa"
