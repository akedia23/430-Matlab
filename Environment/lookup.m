function val = lookup(id, env)
    for i = length(env):-1:1
        curr = env(i);
        if id == curr.id
            val = curr.val;
            return;
        end
    end
    error('DUNQ:err', "unable to find id: "+id+" in env");
end