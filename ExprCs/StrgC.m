classdef StrgC < ExprC
    
    properties
        str
    end
    
    methods
        function obj = StrgC(str)
            obj.str = str;
        end
        
        function outputStr = getStr(obj)
            outputStr = obj.str;
        end
    end
end

