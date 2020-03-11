classdef SolverTest < matlab.unittest.TestCase
    
    methods (Test)
        function testNumInterp(testCase)
            actSolution = interpretor(NumC(5.0));
            testCase.verifyEqual(actSolution.num, 5.0);
        end
        function testStrgInterp(testCase)
            actSolution = interpretor(StrgC("Test"));
            testCase.verifyEqual(actSolution.str, "Test");
        end
    end

end