function [vx, vy] = euler_melhorado (s, w, L, xi, xf, n, yi)
      
  vx(1) = xi;
  vy(1) = yi;
  h = (xf - xi)/n;
  
  for i =1:n
    vy(i+1) = vy(i) + 0.5*h*(s(w, vx(i), L) + s(w, vx(i)+h, L));
    vx(i+1) = vx(i) + h;
  endfor
endfunction