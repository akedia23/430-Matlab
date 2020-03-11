classdef AppC < ExprC

    properties
        fun
        args
    end
    
    methods
        function obj = AppC(fun,args)
            obj.fun = fun;
            obj.args = args;
        end
        
        function outputFun = getFun(obj)
            outputFun = obj.fun;
        end
        
        function outputArgs = getArgs(obj)
            outputArgs = obj.args;
        end
    end
end

