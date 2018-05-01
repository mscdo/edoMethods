function [vx, vy] = bogacki_shampin_ode23 (s, n, yi);

    vx(1)=0;
    s = @(x) 4*(2.-x);
    tspan = [0 , 2];

    for i=1:n
      [vx, vy] = ode23(s, tspan , yi);
      endfor
endfunction