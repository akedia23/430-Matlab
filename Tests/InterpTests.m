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
        function testMultInterp(testCase)
            exp = AppC(IdC("*"), [NumC(5), NumC(7)]);
            actSolution = interpretor(exp, topenv());
            testCase.verifyEqual(actSolution.num, 35);
        end
        function testAddInterp(testCase)
            exp = AppC(IdC("+"), [NumC(5), NumC(7)]);
            actSolution = interpretor(exp, topenv());
            testCase.verifyEqual(actSolution.num, 12);
        end
        function testDivInterp(testCase)
            exp = AppC(IdC("/"), [NumC(7), NumC(5)]);
            actSolution = interpretor(exp, topenv());
            testCase.verifyEqual(actSolution.num, 1.4);
        end
        function testSubInterp(testCase)
            exp = AppC(IdC("-"), [NumC(5), NumC(7)]);
            actSolution = interpretor(exp, topenv());
            testCase.verifyEqual(actSolution.num, -2);
        end
        function testLeqTrueInterp(testCase)
            exp = AppC(IdC("<="), [NumC(5), NumC(7)]);
            actSolution = interpretor(exp, topenv());
            testCase.verifyEqual(actSolution.bool, true);
        end
        function testLeqTrue2Interp(testCase)
            exp = AppC(IdC("<="), [NumC(5), NumC(5)]);
            actSolution = interpretor(exp, topenv());
            testCase.verifyEqual(actSolution.bool, true);
        end
        function testLeqFalseInterp(testCase)
            exp = AppC(IdC("<="), [NumC(7), NumC(5)]);
            actSolution = interpretor(exp, topenv());
            testCase.verifyEqual(actSolution.bool, false);
        end
        function testEqFalseInterp(testCase)
            exp = AppC(IdC("equal?"), [NumC(7), NumC(5)]);
            actSolution = interpretor(exp, topenv());
            testCase.verifyEqual(actSolution.bool, false);
        end
        function testEqTrueInterp(testCase)
            exp = AppC(IdC("equal?"), [NumC(5), NumC(5)]);
            actSolution = interpretor(exp, topenv());
            testCase.verifyEqual(actSolution.bool, true);
        end
    end

end