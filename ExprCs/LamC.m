classdef LamC < ExprC

    properties
        params
        body
    end
    
    methods
        function obj = LamC(params,body)
            obj.params = params;
            obj.body = body;
        end
        
        function outputParams = getParams(obj)
            outputParams = obj.params;
        end
        
        function outputBody = getBody(obj)
            outputBody = obj.body;
        end
    end
end

