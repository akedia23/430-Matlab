classdef VarsC
    %VARC Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        vars
        body
    end
    
    methods
        function obj = VarsC(vars,body)
            %VARC Construct an instance of this class
            %   Detailed explanation goes here
            obj.vars = vars;
            obj.body = body;
        end
        
        function vars = getVars(obj)
            vars = obj.vars;
        end
        
        function body = getBody(obj)
            body = obj.body;
        end
    end
end

