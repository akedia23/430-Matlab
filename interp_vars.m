function expr = interp_vars(expr,vars,top_env)
    %INTERP_VARS Substitute var values into vars body
    %   Detailed explanation goes here
    env = [];
    for i = 1:length(vars)
        % append var bindings to env %
        append(env, Binding(vars(i, 1), vars(i, 2)));
    end
    expr = interpretor(expr, horz_cat(top_env, env));
end

