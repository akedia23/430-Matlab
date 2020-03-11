function val = interp_appc(expr, env)
    funval = interpretor(expr.fun, env);
    argvals = {};
    for arg = expr.args
        argvals = [argvals, interpretor(arg, env)];
    end
    if isa(funval, 'CloV')
        newenv = topenv();
       % bind(funval.params, argvals).append(env);
        val = interpretor(funval.body, newenv);
    elseif isa(funval, 'PrimV')
        if funval == PrimV.Add
            val = PrimV.add(argvals); 
        end
    end
end