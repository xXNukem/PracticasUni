% Construir una función para cifrar un texto dado a partir de una matriz A.
% Entradas:
% A: matriz que va a ser la clave. La función debe comprobar que es adecuada para este
% tipo de cifrado, es decir, que tenga inversa módulo m.
% m: número de elementos de nuestro alfabeto.
% texto: texto llano que queremos cifrar.
% Salida: texto cifrado.
function salida_hill = cifro_hill(A,m,texto)

if(inv_modulo(A,m)==0)
    error('ErrorTests:convertTest','La matriz no tiene inversa')
    return
end
if m<0 || mod(m,1) ~=0
    error('ErrorTests:convertTest','M debe ser entero positivo')
    return
end

    texto=lower(texto);
    texto = letranumero(texto); %Se pasa el texto a numero para dividirlo en grupos
    if ~isequal(inv_modulo(A,m),0)

        if mod(size(texto,2),size(A,1))~=0
            RESTO = mod(size(texto,2), size(A,1))
               for i=1:size(A,1)-RESTO
               texto=[texto,23];
            end
        end  
        
        forma_matriz = (size(texto)/size(A,1));
        forma_matriz = forma_matriz(2);
   
        texto = reshape(texto,size(A,1),forma_matriz);

        for i=1:forma_matriz
            array(:,i)=mod(A*texto(:,i),m);     
        end
        salida = reshape(array,1,[]);
        
        salida = numeroletra(salida);
    else
        salida = 0;
    end
        
end