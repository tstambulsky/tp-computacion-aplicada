

printf "Ingrese opcion ingresando un numero:\n" # This is an inline Bash comment.
printf "1. Pedir un numero entero y mostrar esa cantidad de elementos de la sucesion de Fibonacci.\n\n"
printf "2. Pedir un numero entero y mostrar por pantalla ese numero en forma invertida.\n\n"
printf "3. Pedir una cadena de caracteres y evaluar si es palindromo o no.\n\n"
printf "4. Pedir el path a un archivo de texto y mostrar por pantalla la cantidad de lineas que tiene.\n\n"
printf "5. Pedir el ingreso de 5 numeros enteros y mostrarlos por pantalla en forma ordenada.\n\n"
printf "6. Pedir el path a un directorio y mostrar por pantalla cuantos archivos de cada tipo contiene (No se tenga en cuenta ./ y ../).\n\n"
printf "7. Salir (Saludando al usuario que ejecuto el programa).\n\n"
printf "Opcion ingresada: "

read opcion



  case $opcion in
     1)
		printf "Seleccione cantidad de numeros que quiere ver de la escala de fibonnaci: "
		read N
		a=0
		b=1
        for (( i=0; i<N; i++ ))
		do
		    echo -n "$a "
		    fn=$((a + b))
		    a=$b
		    b=$fn
		done
     ;;
     2)
		echo "Ingresa el numero a invertir: "
		read n
		c=0
		while [ $n -gt 0 ]
		do
			a=`expr $n % 10 `
			n=`expr $n / 10 `
			c=`expr $c \* 10 + $a`
		done
		echo $c

     ;;
     *)
        echo "no sé qué numero es"
     ;;
  esac
