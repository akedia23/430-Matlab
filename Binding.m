classdef Binding
    properties
        id, val
    end
    
    methods
        function obj = Binding(id, val)
            obj.id = id;
            obj.val = val;
        end
    end
end

