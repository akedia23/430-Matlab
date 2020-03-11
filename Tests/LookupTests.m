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
        function testLookupAddedVal(testCase)
            env = topenv();
            env = [env, Binding("five", NumV(5.0))];
            actSolution = lookup("five", env);
            testCase.verifyEqual(actSolution.num, 5.0);
        end
        function testLookupAddedValOverrides(testCase)
            env = topenv();
            env = [env, Binding("five", NumV(2.0))];
            env = [env, Binding("five", NumV(5.0))];
            actSolution = lookup("five", env);
            testCase.verifyEqual(actSolution.num, 5.0);
        end
        function testRandomLookupExpectError(testCase)
            err = "DUNQ:lookup";
            func = @() lookup("not-here", topenv());
            testCase.verifyError(func, err);
        end
    end

end