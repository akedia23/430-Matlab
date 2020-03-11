classdef SolverTest < matlab.unittest.TestCase
    
    methods (Test)
        function testNumInterp(testCase)
            actSolution = interpretor(NumC(5.0));
            expSolution = NumV(5.0);
            testCase.verifyEqual(actSolution.num, expSolution.num);
        end
    end

end