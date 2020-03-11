function val = interp_appc(expr, env)
    funval = interpretor(expr, env);
    argvals = [];
    for arg = expr.args
        argvals.append(interpretor(arg, env));
    end
    if isa(funval, 'CloV')
        new-env = bind(funval.params, argvals).append(env);
        val = interpretor(funval.body, new-env);
    elseif isa(funval, 'PrimV')
        val = funval.f(argvals);
    end
end