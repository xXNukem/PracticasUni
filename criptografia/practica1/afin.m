function cifradoafin = afin(clave, d, texto)
numero = letranumero(texto);
cifradoafin = [];

if mod(clave,1) ~= 0 || mod(d,1) ~=0 || d<0 || clave<0 %Comprobar que los numeos son enteros y positivos y sino salirse
     error('ErrrorTest:convertTest', 'No se han introducido numeros enteros y positivos')
     return
end

d = floor(d); %La funcion floor rendondea al entero mas cercano
alfabeto = 'abcdefghijklmnnopqrstuvwxyz';
alfabeto(15) = char(241);

if gcd(clave, length(alfabeto)) == 1
    
    numero = numero * clave + d;
    numero = mod(numero, length(alfabeto));

    cifradoafin = numeroletra(numero);
else
    error('ErrorTest:convertTest', 'El MCD de la clave y el tamaño del alfabeto debe ser 1')
    
    
end