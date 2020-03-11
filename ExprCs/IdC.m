classdef IdC < ExprC
    
    properties
        sym
    end
    
    methods
        function obj = IdC(sym)
            obj.sym = sym;
        end
        
        function outputSym = getId(obj)
            outputSym = obj.sym;
        end
    end
end

