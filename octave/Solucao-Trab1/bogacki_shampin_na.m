function [vx, vy] = bogacki_shampin_na (s, w, L, n, yi)
  
  vx(1)=0;
    x=0:0.2:2;
    s = @(x) 4*(2.-x);
    
    for i=1:n
      [vx, vy] = ode23(s, x, yi);
    endfor
endfunction