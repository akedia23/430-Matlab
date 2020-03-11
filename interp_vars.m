function [expr] = interp_vars(expr,vars)
    %INTERP_VARS Substitute var values into vars body
    %   Detailed explanation goes here
    env = [];
    while not(ISEMPTY(vars))
        % append var bindings to env %
    end
    interp(expr, env)
end

