
local student1_scores = {
    chinese = 98,
    math = 99,
    english = 90,
}

local student2_scores = {
    chinese = 80,
    math = 81,
    english = 82,
}

-- local twoStudentScoresAdd = student1_scores + student2_scores
-- local twoStudentScoresAdd = student1_scores - student2_scores
-- 不能加减 会报错

local mt = {
    __add = function(t1, t2)
        local ret = {}
        for k, v in pairs(t1) do
            ret[k] = t1[k] + t2[k]
        end
        return ret
    end,
    __sub = function(t1, t2)
        local ret = {}
        for k, v in pairs(t1) do
            ret[k] = t1[k] - t2[k]
        end
        return ret
    end,
}
setmetatable(student1_scores, mt)
setmetatable(student2_scores, mt)

print("table + table")
local addRet = student1_scores + student2_scores
for k,v in pairs(addRet) do
    print(k,v)
end

print("table - table")
local subRet = student1_scores - student2_scores
for k,v in pairs(subRet) do
    print(k,v)
end