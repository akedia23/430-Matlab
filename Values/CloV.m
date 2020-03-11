classdef CloV < Value
    
    properties
        params
        body
        env
    end
    
    methods
        function obj = CloV(params,body,env)
            obj.params = params;
            obj.body = body;
            obj.env = env;
        end
        
        function outputParams = getParams(obj)
            outputParams = obj.params;
        end
        
        function outputBody = getBody(obj)
            outputBody = obj.body;
        end
        
        function outputEnv = getEnv(obj)
            outputEnv = obj.env;
        end
    end
end

