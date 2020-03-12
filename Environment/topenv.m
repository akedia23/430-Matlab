

function val = topenv()
    env = {};
    env = [env, Binding("+", PrimV.Add)];
    env = [env, Binding("-", PrimV.Sub)];
    env = [env, Binding("*", PrimV.Mult)];
    env = [env, Binding("/", PrimV.Div)];
    env = [env, Binding("<=", PrimV.Leq)];
    env = [env, Binding("equal?", PrimV.Eq)];
    val = env;
end