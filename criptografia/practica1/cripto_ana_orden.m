function [frecuencia, freordenada] = cripto_ana_orden(v)
    alfabeto = 'abcdefghijklmnnopqrstuvwxyz';
    alfabeto(15) = char(241);
    m = length(alfabeto);
    frecuencia = zeros(27,2);%Matriz con la primera columna la frecuencia y la segunda el numero que corresponde a la letra
    numeros = letranumero(v);
    format shortg; %Para darle formato a la salida
    for i=1:m
        aux = (numeros==i-1);
        f = sum(aux);
        frecuencia(i,1) = f/length(v);
        frecuencia(i,2) = floor(i-1);
    end
                %sortrows orderna por la columna 1 descendiente
freordenada = sortrows(frecuencia, 1,'descend');