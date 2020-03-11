%ExprC definition%
NumC = struct(n,[]);
IdC = struct(s,[]);
StrgC = struct(str,[]);
LamC = struct(params,[],body,[]);
AppC = struct(fun,[],args,[]);
IfC = struct(tst,[],thn,[],els,[]);
%ExprC = struct(numC,NumC,idC,IdC,strgC,StrgC,lamC,LamC,appC,AppC,ifC,IfC);%

%Value definition%
NumV = struct(n,[]);
BoolV = struct(b,[]);
StrgV = struct(str,[]);
CloV = struct(params,[],body,[],env,[]);
PrimV = struct(f,[]);

    

