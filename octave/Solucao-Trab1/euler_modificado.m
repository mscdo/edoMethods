function [vx, vy] = euler_modificado (s, w, L, xi, xf, n, yi)
  
  vx(1) = xi;
  vy(1) = yi;
  h = (xf - xi)/n;
  novoH = h/2.0;
  
  for i =1:n
    vy(i+1) = vy(i) + h*(s(w, (vx(i)+novoH), L));
    vx(i+1) = vx(i) + h;
  endfor
endfunction