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
function val = interpretor(expr)
    % PrimV = struct(f,[]);
    import NumC
    import StrgC
    if isa(expr, 'NumC')
        val = expr.num;
    elseif isa(expr, 'StrgC')
        val = expr.str;
    end
end

