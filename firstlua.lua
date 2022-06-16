-- word="Hello"
-- manyWords=[[
--     rerewe ksdfmksdfsf sd fskfnfdskfndsf
--     sdfdskfldsfs sdfksdlfndfkd födsdsd fldkfd
-- ]]
-- print(word)
-- print(manyWords)

-- health=100
-- print("our helath is",health,"HP")

--[[
    This is a comment
    This is a comment
    This is a comment
    ]]

-- Math operations

-- --addition
-- addition=10+10
-- print("10+10="..addition)

-- --subtraction
-- subtraction=20-8
-- print("20-8="..subtraction)

-- --multiplication

-- multiplication=10*10
-- print("10*10="..multiplication)

-- --division

-- division=20/3
-- print("20/3="..division)

-- --modular division
-- remainder=20%3
-- print("20%3="..remainder)

-- --increment & decrement

-- number=10
-- number =number + 1
-- print("number="..number)

-- relational and logical operators

-- test=3<20
-- print("3<20="..tostring(test))
-- print("is 3 smaller than 20?",test)
-- test=20>200
-- print("20>200 ? "..tostring(test))

-- string1="Hello"
-- string2="Hello"
-- comparison = string1==string2
-- print("string1==string2 ? "..tostring(comparison))

-- x=comparison and true
-- print("x=comparison and true ? "..tostring(x))

-- x=(1==1) and (2==2)
-- print("x=(1==1) and (2==2) ? "..tostring(x))
-- x=(1~=0) or (0==1)
-- print("x=(1~=0) or (0==1) ? "..tostring(x))

-- IF and ELSE

-- x=40
-- y=1000
-- isGoodCourse=true
-- if x>y then
--     print("x is greater than y")    
-- else
--     print("x is not greater than y")
-- end

-- if isGoodCourse then
--     print("This is a good course")
-- else
--     print("This is a bad course")

-- end

-- if isGoodCourse==true then
--     print("Still really good course")
-- else
--     print("This is a bad course")

-- end

-- if x<50 then
--     print("FAIL")  
-- elseif x>=50 and x<100 then
--     print("PASSED")
-- else print("Passed with HONORS")
-- end

-- local what =2
-- print(what)

-- if what>1 then
--     local x=100
--     print(x)
-- end
-- -- print(x)

-- local test="Hello, this is me saying Hello"
-- print(test)

-- print("Length of the string: "..#test) -- # is the length operator
-- local newTest=string.gsub(test,"Hello","Hi") -- gsub replaces all instances of Hello with Hi
-- print(newTest)

-- local finding=string.find(test,"this") -- finds the first instance of this in the string
-- print("First instance of 'this': "..finding)
-- print(string.reverse(test)) -- reverses the string
-- for word in string.gmatch(test,"%w+") do-- gmatch finds all words in the string
--     print(word)
-- end

-- print("SHOUTING: "..string.upper(test)) -- converts the string to uppercase
-- print("whispering: "..string.lower(test)) -- converts the string to lowercase


-- for loop

-- for i=1,10,1 do
--     print(i)
-- end

-- --while loop

-- local x=3
-- while x<10 do
--     print("while: "..x)
--     x=x+1
--     if x==7 then
--         break
--     end
-- end

-- --repeat loop

--     repeat
--         print("repeat: "..x)
--             x=x+1
--     until x>10

--Tables

-- days={
--     "Monday",
--     "Tuesday",
--     "Wednesday",
--     "Thursday",
--     "Friday",
   
--     }

-- print(days[1])

-- for index,value in ipairs(days) do -- iterating through a table (list in python)
--     print(index,value)
--     print(string.format("[%i]: %s",index,value))
-- end
-- print("-----------------------")
-- table.insert(days,"Saturday")
-- table.insert(days,7,"Sunday")
-- table.insert(days,4,"Just inserted")

-- for i=1,#days,1 do
--     print(string.format("[%i]: %s",i,days[i]))
-- end

-- print("-----------------------")

-- person={firstname="John",lastname="Doe",age=30,gender="male"}
-- print("person: "..person.firstname)
-- print("person: "..person["firstname"])

-- for key,value in pairs(person) do --iterating through a table (dictionary in python)
--     print(string.format("%s: %s",key,value))
-- end

--Functions


-- function sum(num1,num2)
--     return num1+num2
-- end
    
-- print("sum: "..sum(10,20))

-- --functions as variables

-- local x= sum
-- print("x is a function and a variable??? :  "..x(10,20))

--Coroutines

-- co=coroutine.create(function()
--     for i=1,8,1 do
--         print("coroutine: "..i)
--         print(coroutine.status(co))
--         if i==5 then
--             coroutine.yield() --suspends the coroutine like break
--         end
--     end
    
--     end)
-- co=coroutine.create(function(a)
--     for i=a,8,1 do
--         print("coroutine: "..i)
--         print(coroutine.status(co))
--         if i==5 then
--             coroutine.yield("Coroutine is yielded") --suspends the coroutine like break
--         end
--     end
    
--     end)
--     --3 statuses: Suspended, running , dead
--     print("Coroutine status: "..coroutine.status(co))
--     print(coroutine.resume(co,3))
--     print("Coroutine status: "..coroutine.status(co))
--     coroutine.resume(co)
--     print("Coroutine status: "..coroutine.status(co))

local routine_1=coroutine.create(function()
    for i=1,10,1 do
        print("Routine 1: "..i)
        if i==5 then
            coroutine.yield()
        end
     
    end
    
    end)

local routine_func=function ()
        for i=11,20,1 do
            print("Routine 2: "..i)
        end
end
        
 
local routine_2=coroutine.create(routine_func)


print("Routine 1 status: "..coroutine.status(routine_1))
coroutine.resume(routine_1)
coroutine.resume(routine_2)
if coroutine.status(routine_1)=="suspended" then
    print("Routine 1 suspended: "..coroutine.status(routine_1))
   coroutine.resume(routine_1)

end
print("Routine 1 status: "..coroutine.status(routine_1))
print("Routine 2 status: "..coroutine.status(routine_2))
if coroutine.status(routine_1)=="dead" then
    print("Routine 1 dead: "..coroutine.status(routine_1))
    routine_2=coroutine.create(routine_func)
    coroutine.resume(routine_2)
end

--using modules

local mymath=require("mymathmodule")
print(mymath.topla(15,63))
print(mymath.cikart(15,63))
print(mymath.carp(15,63))
