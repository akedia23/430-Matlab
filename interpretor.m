%ExprC definition%
% NumC = struct(n,[]);
% IdC = struct(s,[]);
% StrgC = struct(str,[]);
% LamC = struct(params,[],body,[]);
% AppC = struct(fun,[],args,[]);
% IfC = struct(tst,[],thn,[],els,[]);
%ExprC = struct(numC,NumC,idC,IdC,strgC,StrgC,lamC,LamC,appC,AppC,ifC,IfC);%

%Value definition%
% NumV = struct(n,[]);
% BoolV = struct(b,[]);
% StrgV = struct(str,[]);
% CloV = struct(params,[],body,[],env,[]);
   
%Convert an ExprC into a Value%
function val = interpretor(expr, env)
    if isa(expr, 'NumC')
        val = NumV(expr.num);
    elseif isa(expr, 'StrgC')
        val = StrgV(expr.str);
    elseif isa(expr, 'IdC')
        val = lookup(expr.sym, env);
    elseif isa(expr, 'IfC')
        if interpretor(expr.getTst(), env).bool
            val = interpretor(expr.getThn(), env);
        else
            val = interpretor(expr.getEls(), env);
        end
    elseif isa(expr, 'VarsC')
        val = interp_vars(expr, env);
    elseif isa(expr, 'LamC')
        val = CloV(expr.params, expr.body, env);
    elseif isa(expr, 'AppC')
        val = interp_appc(expr, env);
    else
        error("DUNQ:interp", "Cannot process expression")
    end
end


