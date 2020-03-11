classdef InterpAppTests < matlab.unittest.TestCase
    
    methods (Test)
        function testAddInterp(testCase)
            args = [NumC(5) NumC(4)];
            appc = AppC(IdC("+"), args);
            actSolution = interpretor(appc, topenv());
            testCase.verifyEqual(actSolution.num, 9);
        end
    end

end