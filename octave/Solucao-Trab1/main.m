  clear
  
  %DEFININDO VARIAVEIS 
  n=10;
  p=100;
  xi=0;
  xf=2;
  L=2;

  %Intervalo
  x=0:(xf-xi)/n:2;
  x100=0:(xf-xi)/100:2;


  %%Definindo funcoes anonimas
  
  %%Função w(x)=cte
  w = 4;
  %%Função M(x)
  m = @(w, x, L) (w*L.*x - ((w*(x.^2))/2) - ((w*(L^2))/2));
  %%Função S(x)
  s = @(w, x, L) w*L - (w*x);
  %% Função M(x) na forma canônica
  mc = @(w, x, L) -(w/2)*((x-L)^2);
  
    ### TAREFA 1 ###
    
    #Impressão tabela somente Tarefa 1
  fprintf('----------------------------------------\n');
  fprintf('---        TABELA - TAREFA 1         --- \n');
  fprintf('---------------------------------------- \n \n');
  fprintf('%10s| %10s | %10s\n', 'x', 'M(x)', 'S(x)' );
  fprintf('----------------------------------------\n');
  for i=1:length(x)
    fprintf('%10.2f | %10.5f | %10.5f\n', x(i), m(w, x(i), L), s(w, x(i), L));
    endfor
    
    
    %Construção gráficos
    %x100=0:0.02:2 -> para aumentar suavidade da curva
      
    hold on
    
    %Gráfico de w(x)
    subplot(3,1,1);
      line(x, w, "color", "b");
    grid on;
    title('Gráfico: w(x) . L');
    
    %Gráfico de S(x)
    subplot(3,1,2);
      plot(x100, s(w, x100, L),'-g');
    grid on;
    title('Gráfico: S(x) .  L');
    
    %Gráfico de M(x)
    subplot(3,1,3);
      plot(x100, m(w, x100, L), '-r');
    grid on;
    title('Gráfico: M(x) . L');
    
    %Salva Gráfico como .jpg
    %print -djpg graph_t1_melina_lucas.jpg
    
    hold off
    % FIM TAREFA 1 %
    
    %----------------------------------------------%
    
    % TAREFA 2 %
    
    
    pkg load symbolic
    pkg load odepkg
     
    % yi=mc(4, 0, 2)=-8;
    tspan= [0, 2]     
    tabelas(x, s, m, 4, 2, 10);
    plot_graphx(x, s, m, 4, 2);