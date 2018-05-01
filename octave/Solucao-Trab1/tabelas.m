function tabelas (x, s, m, w, L, n)
  
    [x1, y1] = euler (s, 4, 2, 0, 2, 10, -8);
    [x2, y2] = euler_melhorado (s, 4, 2, 0, 2, 10, -8); 
    [x3, y3] = euler_modificado (s, 4, 2, 0, 2, 10, -8);
    
    xs = [0;2];
    
    [x4, y4] = runge_kutta(s, 4, 2, 1/3, 0, 2, 10, -8);
    [x5, y5] = bogacki_shampin_ode23 (s, 10, -8);
    [x6, y6] = bogacki_shampin_na (s, 4, 2, 10, -8);
    
    
  fprintf('----------------------------------------------------------------------------------------------------- \n');
  fprintf('-----------          TABELAS DE COMPARAÇÕES - MÉTODOS NUMÉRICOS            -------------------------- \n');
  fprintf('----------------------------------------------------------------------------------------------------- \n');
  fprintf(' %2s| %2s | %2s | %2s| %2s | %2s | %2s | %2s \n', 'x(m)', 'Valor Exato', 'Euler', 'Euler(Mel.)', 'Euler(Modf.)', '2ªordem(a=1/3)', 'Bogacki-S(ode23)', 'Bogacki-S');
  fprintf('-------------------------------------------------------------------------------------------------------\n');
  for i=1:n+1
    fprintf('%2.6f | %2.6f | %2.6f | %2.6f | %2.6f | %2.6f | %2.6f | %2.6f\n', x(i), m(w, x(i), L), y1(i), y2(i), y3(i), y4(i), y5(i), y6(i));
    endfor
  endfunction