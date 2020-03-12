function val = interp_appc(expr, env)
    funval = interpretor(expr.fun, env);
    argvals = {};
    for arg = expr.args
        argvals = [argvals, interpretor(arg, env)];
    end
    if isa(funval, 'CloV')
        newenv = funval.env;
        for i = 1:length(funval.params)
            newenv = [newenv, Binding(funval.params(i), argvals(i))];
        end
        val = interpretor(funval.body, newenv);
    elseif isa(funval, 'PrimV')
        if funval == PrimV.Add
            val = PrimV.add(argvals); 
        elseif funval == PrimV.Sub
            val = PrimV.sub(argvals);
        elseif funval == PrimV.Mult
            val = PrimV.mult(argvals);
        elseif funval == PrimV.Div
            val = PrimV.div(argvals);
        elseif funval == PrimV.Leq
            val = PrimV.leq(argvals);
        elseif funval == PrimV.Eq
            val = PrimV.equals(argvals);
        end
    end
end