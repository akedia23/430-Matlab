classdef BoolV < Value

    properties
        bool
    end
    
    methods
        function obj = BoolV(bool)
            obj.bool = bool;
        end
        
        function outputBool = getBool(obj)
            outputBool = obj.bool;
        end
    end
end

