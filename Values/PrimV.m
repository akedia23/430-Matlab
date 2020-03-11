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
           if args(1).num <= args(2).num
               val = BoolV(true);
           else
               val = BoolV(false);
           end
       end
       function val = equals(args)
           if isa(args(1), 'NumV') && isa(args(2), 'NumV')
               if args(1).num == args(2).num
                   val = BoolV(true);
               else
                   val = BoolV(false);
               end
           elseif isa(args(1), 'StrgV') && isa(args(2), 'StrgV')
               if args(1).str == args(2).str
                   val = BoolV(true);
               else
                   val = BoolV(false);
               end
           elseif isa(args(1), 'BoolV') && isa(args(2), 'BoolV')
               if args(1).bool == args(2).bool
                   val = BoolV(true);
               else
                   val = BoolV(false);
               end
           else
               error("DUNQ: equal - invalid args");
           end
       end
   end
end