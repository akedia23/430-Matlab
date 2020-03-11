classdef StrgV < Value

    properties
        str
    end
    
    methods
        function obj = StrgV(str)
            obj.str = str;
        end
        
        function outputStr = getStr(obj)
            outputStr = obj.str;
        end
    end
end

