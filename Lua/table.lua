local t = {
    a = "a",
    b = "b",
    [1] = "1",
    [2] = "2",
}
-- 上面几行代码叫声明table

print(#t)

t[3] = "3"
print(#t)

t[5] = "5"
print(#t)

t[4] = "4"
print(#t)