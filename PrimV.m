classdef PrimV < Value
    
    properties
        f
    end
    
    methods
        function obj = PrimV(f)
            obj.f = f;
        end
        
        function outputF = getF(obj)
            outputF = obj.f;
        end
    end
end

