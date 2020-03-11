classdef NumC < ExprC

    properties
        num
    end
    
    methods
        function obj = NumC(num)
            obj.num = num;
        end
        
        function outputNum = getNum(obj)
            outputNum = obj.num;
        end
    end
end

