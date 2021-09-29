local mt = {
    __index = {}
}
print("元表id", mt)

local t = {}
setmetatable(t, mt)

local testMT = getmetatable(t)

print("获取的元表id", testMT)