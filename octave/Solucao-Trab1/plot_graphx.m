function plot_graphx(x, s, m, w, L)
    figure(2);
    
    [x1, y1] = euler (s, 4, 2, 0, 2, 10, -8);
    [x2, y2] = euler_melhorado (s, 4, 2, 0, 2, 10, -8); 
    [x3, y3] = euler_modificado (s, 4, 2, 0, 2, 10, -8);
    
    xs = [0;2];
    
    [x4, y4] = runge_kutta(s, 4, 2, 1/3, 0, 2, 10, -8);
    [x5, y5] = bogacki_shampin_ode23 (s, 10, -8);
    [x6, y6] = bogacki_shampin_na (s, 4, 2, 10, -8);
    
    clf
    hold on 
      grid on;
      title('Gráfico Métodos Numéricos');
      x=0:0.2:2;
      plot(x, m(w, x, L), x1, y1, 'b', x2, y2, 'c--', x3,  y3, 'v*', x4, y4, 'kx',  x5, y5, 'm', x6, y6, 'yo');
      legend('Analítica', 'Euler', 'Euler Melhorado', 'Euler Modificado', 'Runge-Kutta 2ªOrdem', 'Bogacki-Shimpin(ode23)(adpt)',
             'Bogacki-Shimpin(ode23)(NãoAdpt)', "location", "northwest");
  
    hold off
  endfunction