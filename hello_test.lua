#!/usr/bin/env lua

-- Function under test
function plus( first, second ) 
    return first + second 
end

-- Start test case
local lu = require('luaunit')

TestCalculator = {}
    function TestCalculator:testPlus()
        a = 1
        b = 2
        result = plus( a, b )
        lu.assertEquals( type(result), 'number' )
        lu.assertEquals( result, 3 )
    end

-- Start test runner with LuaUnit test
local runner = lu.LuaUnit.new()
runner:setOutputType("tap")
os.exit( runner:runSuite() )