classdef LookupTests < matlab.unittest.TestCase
    
    methods (Test)
        function testAddLookup(testCase)
            actSolution = lookup("+", topenv());
            testCase.verifyEqual(actSolution, PrimV.Add);
        end
        function testSubLookup(testCase)
            actSolution = lookup("-", topenv());
            testCase.verifyEqual(actSolution, PrimV.Sub);
        end
        function testMultLookup(testCase)
            actSolution = lookup("*", topenv());
            testCase.verifyEqual(actSolution, PrimV.Mult);
        end
        function testDivLookup(testCase)
            actSolution = lookup("/", topenv());
            testCase.verifyEqual(actSolution, PrimV.Div);
        end
        function testRandomLookup(testCase)
            err = "DUNQ:err";
            func = @() lookup("not-here", topenv());
            testCase.verifyError(func, err);
        end
    end

end