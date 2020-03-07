close all
clear all
clc


%Sleeping = 0
%Sedentary = 1
%Outdoor mooving = 2
%Sport = 3
%Indoor moving = 4

Insonnia=zeros(30,17);

Insonnia(1,:)=[1 1 2 1 1 3 3 1 1 1 1 1 2 1 1 0 0];
Insonnia(2,:)=[3 2 3 1 3 3 2 1 1 2 2 1 1 2 1 1 1];
Insonnia(3,:)=[0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0];
Insonnia(4,:)=[0 1 1 1 1 1 2 3 2 1 1 1 1 1 1 1 1];
Insonnia(5,:)=[0 1 1 1 1 1 1 1 1 4 4 1 1 1 1 1 1];
Insonnia(6,:)=[1 2 1 1 1 1 2 1 1 1 1 1 2 1 1 1 0];
Insonnia(7,:)=[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
Insonnia(8,:)=[1 1 1 3 3 4 1 1 1 1 3 1 1 1 1 1 1];
Insonnia(9,:)=[1 1 1 2 1 1 1 1 1 1 1 1 2 1 1 1 1];
Insonnia(10,:)=[1 1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1];
Insonnia(11,:)=[1 2 1 1 1 1 1 1 1 1 1 1 2 1 1 1 1];
Insonnia(12,:)=[1 1 1 0 0 1 1 1 4 4 4 1 1 1 1 1 0];
Insonnia(13,:)=[1 3 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
Insonnia(14,:)=[1 1 1 1 3 3 1 1 1 1 1 1 1 1 1 1 1];
Insonnia(15,:)=[0 1 1 1 3 3 1 1 1 1 1 1 1 1 1 0 1];
Insonnia(16,:)=[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
Insonnia(17,:)=[2 1 1 1 1 1 1 1 1 1 2 1 1 1 1 1 1];
Insonnia(18,:)=[1 1 2 1 1 1 1 1 2 3 1 0 1 1 1 1 1];
Insonnia(19,:)=[1 1 1 1 1 1 1 0 1 1 4 4 1 1 1 3 1];
Insonnia(20,:)=[1 1 3 3 1 1 1 1 1 1 1 1 1 1 1 1 1];
Insonnia(21,:)=[1 1 1 2 1 1 1 1 1 1 1 1 1 1 1 1 1];
Insonnia(22,:)=[1 1 1 1 1 1 1 1 3 1 1 1 1 1 1 1 1];
Insonnia(23,:)=[1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1];
Insonnia(24,:)=[1 1 1 1 1 0 1 1 1 1 4 4 4 1 1 1 1];
Insonnia(25,:)=[1 1 1 1 1 1 1 1 1 1 3 1 1 1 1 1 1];
Insonnia(26,:)=[1 1 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1];
Insonnia(27,:)=[2 1 1 1 1 1 1 1 1 1 1 1 1 2 1 1 1];
Insonnia(28,:)=[1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1];
Insonnia(29,:)=[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1];
Insonnia(30,:)=[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];


RefMonth=zeros(30,17);

RefMonth(1,:)= [0 1 1 1 3 3 1 0 0 2 3 3 1 1 1 1 0];
RefMonth(2,:)= [3 2 3 1 3 3 2 1 2 2 2 1 1 2 1 1 0];
RefMonth(3,:)= [0 2 1 1 1 1 1 1 1 1 1 2 1 1 1 1 0];
RefMonth(4,:)= [0 1 1 1 1 1 3 3 3 3 3 1 1 1 1 1 0];
RefMonth(5,:)= [0 2 1 1 1 1 1 1 1 4 4 4 4 1 1 1 0];
RefMonth(6,:)= [0 2 3 3 1 1 2 3 2 1 1 1 2 1 1 1 0];
RefMonth(7,:)= [0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0];
RefMonth(8,:)= [0 0 1 3 3 3 4 1 0 1 3 3 1 1 1 1 1];
RefMonth(9,:)= [0 0 0 2 1 1 1 2 1 1 1 1 1 1 1 0 0];
RefMonth(10,:)=[0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0];
RefMonth(11,:)=[0 2 1 1 1 1 1 1 1 1 1 1 2 1 1 1 0];
RefMonth(12,:)=[0 2 1 1 1 1 1 1 4 4 4 4 1 1 1 1 0];
RefMonth(13,:)=[0 3 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0];
RefMonth(14,:)=[0 1 1 1 3 3 3 0 0 0 1 1 1 1 1 1 1];
RefMonth(15,:)=[0 1 1 3 3 3 1 0 0 1 1 1 1 1 1 0 0];
RefMonth(16,:)=[0 1 1 1 1 1 1 1 1 1 1 2 1 1 1 1 0];
RefMonth(17,:)=[2 1 1 1 1 1 1 1 1 1 2 1 1 1 1 1 0];
RefMonth(18,:)=[0 1 2 1 1 1 1 1 2 3 3 3 1 1 1 1 0];
RefMonth(19,:)=[0 1 2 1 1 1 1 1 1 4 4 4 2 1 1 1 0];
RefMonth(20,:)=[0 2 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0];
RefMonth(21,:)=[0 0 1 2 3 3 1 0 0 1 1 1 1 1 1 1 0];
RefMonth(22,:)=[0 0 0 1 1 1 1 1 3 3 3 3 1 1 1 1 0];
RefMonth(23,:)=[0 2 1 1 1 1 1 1 1 1 1 1 1 2 1 1 0];
RefMonth(24,:)=[2 1 1 1 1 1 1 1 1 4 4 4 1 1 1 1 0];
RefMonth(25,:)=[2 1 1 1 1 1 1 1 2 1 3 3 1 1 1 0 0];
RefMonth(26,:)=[0 2 1 1 1 1 1 1 4 1 4 1 1 1 1 1 0];
RefMonth(27,:)=[2 1 1 1 1 1 1 1 1 1 1 1 1 2 1 1 0];
RefMonth(28,:)=[0 0 1 1 1 4 4 4 4 1 3 3 3 1 1 1 0];
RefMonth(29,:)=[0 0 4 3 1 1 1 1 1 1 1 1 0 1 1 1 1];
RefMonth(30,:)=[2 1 1 1 1 1 1 1 1 1 1 2 1 1 1 0 0];

%calcolo le somiglianze tra un giorno e gli altri 29 come distanza euclidea
somiglianze=zeros(30,30);
for i=1:30
    for j=1:30
        somiglianze(i,j)=norm(RefMonth(i,:)-RefMonth(j,:)); 
    end
end


minimo=min(min(somiglianze));
massimo=max(max(somiglianze));

somNorm = 1 - ((somiglianze - minimo)./(massimo - minimo));


%viene eseguito il clustering sui giorni del mese abituale del soggetto.


fuzziness = 2;
maxIterazioni = 100;
sogliaErrore = 0.0001;
opzioni = [fuzziness maxIterazioni sogliaErrore false];
numeroClusters = 3;
[centers, U] = fcm(somNorm, numeroClusters, opzioni);




%calcolo somiglianze del mese di malattia con il mese di riferimento
somiglianzeInsonnia=zeros(30,30);
 
for i=1:30
    for j=1:30
        somiglianzeInsonnia(i,j)=norm(Insonnia(i,:)-RefMonth(j,:));
    end 
end

minimo = min(min(somiglianzeInsonnia));
massimo = max(max(somiglianzeInsonnia));

somInsNorm = 1 -((somiglianzeInsonnia - minimo)./(massimo - minimo));


dst=distfcm(centers,somInsNorm);
appoggio = dst.^(-2/(fuzziness-1));
AppartenenzaInsonnia = appoggio ./(ones(numeroClusters,1)*sum(appoggio));
   
anomalieInsonnia=zeros(1,30);




%Calcolo anomalia esterna
soglia = 0.8;
for i=1:30
    anomalieInsonnia(1,i)=AnomalyIndex(AppartenenzaInsonnia(:,i));
   if anomalieInsonnia(1,i) <= soglia
        anomalieInsonnia(1,i) = 0;
   else
        anomalieInsonnia(1,i)=(anomalieInsonnia(1,i)-soglia)/(1-soglia);
   end    
end

%plot(anomalieInsonnia);



%Calcolo anomalia interna

%Calcolo il numero di giorni non classificati anomali nel mese di
%Insonnia (cioè quelli che influiscono sull'anomalia interna)
contaGiorniNormali=0; 
indiciGiorniNormali=[];
 
for i=1:30
    if anomalieInsonnia(1,i)==0 
        contaGiorniNormali=contaGiorniNormali+1;
        indiciGiorniNormali=cat(2,indiciGiorniNormali,i);
    end
end

giorniSedentari=12; 
giorniAttivi=5; 
giorniRiposo=3; 
 
finestraSedentari=12;
finestraAttivi=5;
finestraRiposo=3;

anomalieInterne=zeros(1,contaGiorniNormali);

for i = 1 : contaGiorniNormali 
    
    %aggiungo nuovo giorno alla finestra   
    k = indiciGiorniNormali(i);
    if AppartenenzaInsonnia(1,k) >= 0.6
        finestraAttivi = finestraAttivi + 1;
    end
    if AppartenenzaInsonnia(2,k) >= 0.6
        finestraSedentari = finestraSedentari + 1;
    end
    if AppartenenzaInsonnia(3,k) >= 0.6
        finestraRiposo = finestraRiposo + 1;
    end
    %tolgo il più vecchio
    if U(1,i) >= 0.6
          finestraAttivi = finestraAttivi - 1;
    end  
    if U(2,i) >= 0.6
          finestraSedentari = finestraSedentari - 1;
    end  
    if U(3,i) >= 0.6
          finestraRiposo = finestraRiposo - 1;
    end
    
    %Applico la formula di Jaccard per calcolare l'anomalia interna
    numeratore = min(giorniAttivi,finestraAttivi) + min(giorniSedentari,finestraSedentari) + min(giorniRiposo,finestraRiposo);
    denom = max(giorniAttivi,finestraAttivi) + max(giorniSedentari,finestraSedentari) + max(giorniRiposo,finestraRiposo);
    anomalieInterne(1,i) = 1 - numeratore/denom;
end

%plot(anomalieInterne);



anomalieGlobali=zeros(1,30); 

for i = 1 : contaGiorniNormali
    k = indiciGiorniNormali(i);
    anomalieGlobali(1,k) = anomalieInterne(i);
end

anomalieGlobali = anomalieGlobali + anomalieInsonnia;

plot(anomalieGlobali);
title('Anomalie Globali');
xlabel('Giorni');
ylabel('Valore indice');



