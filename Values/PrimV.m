classdef PrimV < Value
   enumeration
      Add, Sub, Mult, Div, Leq, Eq
   end
   
   methods(Static)
       function val = add(args)
           val = NumV(args(1).num + args(2).num);
       end
       function val = sub(args)
           val = NumV(args(1).num - args(2).num);
       end
       function val = mult(args)
           val = NumV(args(1).num * args(2).num);
       end
       function val = div(args)
           val = NumV(args(1).num / args(2).num);
       end
       function val = leq(args)
           val = BoolV(args(1).num <= args(2).num);
       end
       function val = equals(args)
           if isa(args(1), 'NumV') && isa(args(2), 'NumV')
               val = BoolV(args(1).num == args(2).num);
           elseif isa(args(1), 'StrgV') && isa(args(2), 'StrgV')
               val = BoolV(args(1).str == args(2).str);
           elseif isa(args(1), 'BoolV') && isa(args(2), 'BoolV')
               val = BoolV(args(1).bool == args(2).bool);
           else
               error("DUNQ:args", "equal - invalid args");
           end
       end
   end
end