classdef IfC < ExprC

    properties
        tst
        thn
        els
    end
    
    methods
        function obj = IfC(tst,thn,els)
            obj.tst = tst;
            obj.thn = thn;
            obj.els = els;
        end
        
        function outputTst = getTst(obj)
            outputTst = obj.tst;
        end
        
        function outputThn = getThn(obj)
            outputThn = obj.thn;
        end
        
        function outputEls = getEls(obj)
            outputEls = obj.els;
        end
    end
end

