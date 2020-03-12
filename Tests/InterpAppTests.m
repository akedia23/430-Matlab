classdef InterpAppTests < matlab.unittest.TestCase
    
    methods (Test)
        function testAddInterp(testCase)
            args = [NumC(5) NumC(4)];
            appc = AppC(IdC("+"), args);
            actSolution = interpretor(appc, topenv());
            testCase.verifyEqual(actSolution.num, 9);
        end
        
        function testSubInterp(testCase)
            args = [NumC(5) NumC(4)];
            appc = AppC(IdC("-"), args);
            actSolution = interpretor(appc, topenv());
            testCase.verifyEqual(actSolution.num, 1);
        end
        
        function testMultInterp(testCase)
            args = [NumC(5) NumC(4)];
            appc = AppC(IdC("*"), args);
            actSolution = interpretor(appc, topenv());
            testCase.verifyEqual(actSolution.num, 20);
        end
        
        function testDivInterp(testCase)
            args = [NumC(10) NumC(2)];
            appc = AppC(IdC("/"), args);
            actSolution = interpretor(appc, topenv());
            testCase.verifyEqual(actSolution.num, 5);
        end
        
        function testLeqInterp(testCase)
            args = [NumC(0) NumC(2)];
            appc = AppC(IdC("<="), args);
            actSolution = interpretor(appc, topenv());
            testCase.verifyEqual(actSolution.bool, true);
        end
        
        function testEqualInterp(testCase)
            args = [NumC(2) NumC(2)];
            appc = AppC(IdC("equal?"), args);
            actSolution = interpretor(appc, topenv());
            testCase.verifyEqual(actSolution.bool, true);
        end
        
        function testCloVInterp(testCase)
            args1 = ExprC.empty;
            args1 = [args1, IdC("x")];
            args1 = [args1, NumC(3)];
            args2 = ExprC.empty;
            args2 = [args2, NumC(4)];
            appc = AppC(LamC("x", AppC(IdC("+"), args1)), args2);
            actSolution = interpretor(appc, topenv());
            testCase.verifyEqual(actSolution.num, 7);
        end
    end

end