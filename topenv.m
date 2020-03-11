

function val = topenv()
    env = {};
    env = [env, Binding("+", PrimV.Add)];
    env = [env, Binding("-", PrimV.Sub)];
    env = [env, Binding("*", PrimV.Mult)];
    env = [env, Binding("/", PrimV.Div)];
    val = env;
end