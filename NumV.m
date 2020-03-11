classdef NumV < Value

    properties
        num
    end
    
    methods
        function obj = NumV(num)
            obj.num = num;
        end
        
        function outputNum = getNum(obj)
            outputNum = obj.num;
        end
    end
end

