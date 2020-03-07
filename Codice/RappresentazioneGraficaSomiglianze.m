
%Calcolo giorni normali ed anomali.
%una volta calcolate le anomalie è stato scelto come valore di soglia 0.8
%ed inserito direttamente il confronto con esso nel ciclo for per 
%ottimizzare l'algoritmo. la soglia ci permette di avere una distinzione
%tra giorni normali ed anomali.
soglia = 0.8;
n=1;
c=1;
for i=1:30
    anomaly(i)=AnomalyIndex(U(:,i));
    if(anomaly(i) < soglia)
        normali(n) = i;
        n = n+1;
    else 
        anomali(c) = i;
        c = c+1;
    end
end

%disp(anomali);
%disp(normali);

sed = [3 7 9 10 11 13 16 17 20 23 27 30];
week = [14 15 21];
lab = [5 12 19 22 24];



%Riordinamento dei giorni del mese in base al cluster di appartenenza per
%ottenere al termine una rappresentazione grafica più ordinata e
%comprensibile.
sedDays=zeros(12,17);
labDays=zeros(5,17);
weekDays=zeros(3,17);
anomalyDays=zeros(10,17);

for i=1:12 
    index=sed(i);
    sedDays(i,:)=RefMonth(index,:);
end

for i=1:5
    index=lab(i);
    labDays(i,:)=RefMonth(index,:);
end

for i=1:3
    index=week(i);
    weekDays(i,:)=RefMonth(index,:);
end

for i=1:10
    index=anomali(i);
    anomalyDays(i,:)=RefMonth(index,:);
end    

Days=[sedDays;labDays;weekDays;anomalyDays];

Month=zeros(30,30);
for i=1:30
    for j=1:30
        Month(i,j)=norm(Days(i,:)-Days(j,:)); 
    end
end

minimo = min(min(Month));
massimo = max(max(Month));

MonthNorm = 1 -((Month - minimo)./(massimo - minimo));

%imagesc(MonthNorm);
%colorbar



%Rappresentazione grafica del mese di insonnia.
InsonniaMonth=zeros(30,30);
for i=1:30
    for j=1:30
        InsonniaMonth(i,j)=norm(Insonnia(i,:)-Insonnia(j,:)); 
    end
end

minimo = min(min(InsonniaMonth));
massimo = max(max(InsonniaMonth));

InsonniaMonthNorm = 1 -((InsonniaMonth - minimo)./(massimo - minimo));

imagesc(InsonniaMonthNorm);
%colorbar
