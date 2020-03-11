classdef PrimV < Value
   enumeration
      Add, Sub, Mult, Div, Leq, Eq
   end
   
   methods
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
       function val = eq(args)
           if isa(args(1), 'NumV') & isa(args(2), 'NumV')
               if 
   end
end