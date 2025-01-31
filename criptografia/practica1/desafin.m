function descifradoafin = desafin(clave, d, texto)

if mod(clave,1) ~= 0 || mod(d,1) ~=0 || d<0 || clave<0 %Comprobar que los numeos son enteros y positivos y sino salirse
     error('ErrrorTest:convertTest', 'No se han introducido numeros enteros y positivos')
     return
end

numero = letranumero(texto);

descifradoafin = [];
    alfabeto = 'abcdefghijklmnnopqrstuvwxyz';
    alfabeto(15) = char(241);

if gcd(clave, length(alfabeto)) == 1
   [G, U, V]= gcd(length(alfabeto), clave);%Obtenemos V que hara falta en la desencriptacion
    numero =  V * (numero - d);
    numero = mod(numero, length(alfabeto));
    
else
    error('ErrrorTest:convertTest', 'El MCD de la clave y el alfabeto debe ser 1')
    
end

descifradoafin = numeroletra(numero);