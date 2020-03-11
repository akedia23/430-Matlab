classdef LookupTests < matlab.unittest.TestCase
    
    methods (Test)
        function testAddLookup(testCase)
            actSolution = lookup("+", topeTnv());
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
    end

end