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
    if isa(expr, 'NumC')
        val = NumV(expr.num);
    elseif isa(expr, 'StrgC')
        val = StrgV(expr.str);
    end
end


