function val = interp_appc(expr, env)
    funval = interpretor(expr, env);
    argvals = [];
    for arg = expr.args
        argvals.append(interpretor(arg, env));
    end
    if isa(funval, 'CloV')
        newenv = topenv();
       % bind(funval.params, argvals).append(env);
        val = interpretor(funval.body, newenv);
    elseif isa(funval, 'PrimV.Add')
        val = PrimV.add(argvals);
    end
end