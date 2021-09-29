local t = {
    [-1] = "a",
    [0] = "b",
    [1] = "c",
    [2] = "d",
    ["*"] = "e",
    [3] = "f",
    [5] = "g"
}

print("====== pairs log ======")
for k,v in pairs(t) do
    print(k,v)
end

print("====== ipairs log ======")
for k, v in ipairs(t) do
    print(k, v)
end