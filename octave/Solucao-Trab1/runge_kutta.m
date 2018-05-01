function [vx, vy] = runge_kutta(s, w, L, a, xi, xf, n, yi) 
 	vx(1) = xi;
	vy(1) = yi;
  x=0:0.2:2;
	h = (xf - xi) / n;
  a1=(1-(1/(2*a)));
  a2=1/(2*a);
  
	for i = 1:n
		k1 = s(w, vx(i), L);
		k2 = s(w, vx(i) + a*h, L);
		vy(i+1) = vy(i) + h*(a1*k1 + a2*k2);
		vx(i+1) = vx(i) + h;
	endfor
endfunction