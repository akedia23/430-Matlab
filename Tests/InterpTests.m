classdef InterpTests < matlab.unittest.TestCase
    
    methods (Test)
        function testNumInterp(testCase)
            actSolution = interpretor(NumC(5.0), topenv());
            testCase.verifyEqual(actSolution.num, 5.0);
        end
        function testStrgInterp(testCase)
            actSolution = interpretor(StrgC("Test"), topenv());
            testCase.verifyEqual(actSolution.str, "Test");
        end
        function testIdPrimInterp(testCase)
            actSolution = interpretor(IdC("+"), topenv());
            testCase.verifyEqual(actSolution, PrimV.Add);
        end
        function testIdNonPrimInterp(testCase)
            env = topenv();
            env = [env, Binding("not-primop", StrgV("value"))];
            actSolution = interpretor(IdC("not-primop"), env);
            testCase.verifyEqual(actSolution.str, "value");
        end
    end

end