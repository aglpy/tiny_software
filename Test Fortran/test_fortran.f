        program test
        character*10 nombre
        real nota,notat
        integer p(10),n
        do i=1,10
        p(i)=0
        end do
        notat = 0
        write(*,*) "¿Cómo te llamas?"
        read(*,*) nombre
        call system("cls")
        write(*,*) "Hola,",nombre
        write(*,*) "Vas a realizar un examen tipo test sobre"
        write(*,*) "Fortran."
        write(*,*) "Cada pregunta vale 1 punto y 2 mal quitan 1 bien."
        write(*,*) "Pulsa <enter> para continuar."
        call system("pause>nul")
        call system("cls")
        do i=1,15
        n=i
        call preguntas(nota,p,n)
        notat=notat+nota
        end do
        write(*,*) "Tu nota es...", (float(10)/float(15))*notat
        open(1,file=nombre)
        write(1,*)(float(10)/float(15))*notat
        close(1)
        call system("pause>nul")
        stop
        end
        
        
        
        
        subroutine preguntas(nota,p,n)
        real nota,hd
        integer n, p(10),h,e
        h=n
51      continue
        if(h.eq.1)then
                      write(*,*)"¿Que significa FORTRAN?"
                      write(*,*)"1 FOR TRANsfer"
                      write(*,*)"2 FORmula TRANslation"
                      write(*,*)"3 FORd TRActor Neumatic"
                      write(*,*)"4 Ninguna es correcta"
                      write(*,*)"Introduce la respuesta correcta:"
                      read(*,*)e
                      write(*,*) "La respuesta es... 2"
                      if(e.eq.2)then
                      nota=1
                      else
                      nota=-0.5
                      end if
        elseif(h.eq.2)then
        write(*,*)"¿Como debe empezar todo programa?"
                      write(*,*)"1 program ""nombre"""
                      write(*,*)"2 end program"
                      write(*,*)"3 start program"
                      write(*,*)"4 program nombre"
                      write(*,*)"Introduce la respuesta correcta:"
                      read(*,*)e
                      write(*,*) "La respuesta es... 4"
                      if(e.eq.4)then
                      nota=1
                      else
                      nota=-0.5
                      end if
        elseif(h.eq.3)then
        write(*,*)"¿Como se declara una variable tipo real?"
                      write(*,*)"1 integer variable"
                      write(*,*)"2 real variable"
                      write(*,*)"3 float variable"
                      write(*,*)"4 re variable"
                      write(*,*)"Introduce la respuesta correcta:"
                      read(*,*)e
                      write(*,*) "La respuesta es... 2"
                      if(e.eq.2)then
                      nota=1
                      else
                      nota=-0.5
                      end if
        elseif(h.eq.4)then
        write(*,*)"¿Como se declara un vector tipo entero?"
                      write(*,*)"1 entero nombre(n)"
                      write(*,*)"2 integer vector nombre(n)"
                      write(*,*)"3 vector integer nombre(n)"
                      write(*,*)"4 ninguna es correcta"
                      write(*,*)"Introduce la respuesta correcta:"
                      read(*,*)e
                      write(*,*) "La respuesta es... 4"
                      if(e.eq.4)then
                      nota=1
                      else
                      nota=-0.5
                      end if
        elseif(h.eq.5)then
        write(*,*)"Fortran es principalmente usado para..."
                      write(*,*)"1 Inteligencia artificial"
                      write(*,*)"2 Calculos cientificos"
                      write(*,*)"3 Nada"
                      write(*,*)"4 Hacer virus"
                      write(*,*)"Introduce la respuesta correcta:"
                      read(*,*)e
                      write(*,*) "La respuesta es... 2"
                      if(e.eq.2)then
                      nota=1
                      else
                      nota=-0.5
                      end if
        elseif(h.eq.6)then
        write(*,*)"¿Que significa lt?"
                      write(*,*)"1 mayor que"
                      write(*,*)"2 menor o igual que"
                      write(*,*)"3 menor que"
                      write(*,*)"4 igual y distinto que"
                      write(*,*)"Introduce la respuesta correcta:"
                      read(*,*)e
                      write(*,*) "La respuesta es... 3"
                      if(e.eq.3)then
                      nota=1
                      else
                      nota=-0.5
                      end if
        elseif(h.eq.7)then
        write(*,*)"¿Que hace una funcion?"
                      write(*,*)"1 Funciona como una variable mas"
                      write(*,*)"2 Devuelve el valor entre parentesis"
                      write(*,*)"3 Es puro postureo"
                      write(*,*)"4 Ninguna es correcta"
                      write(*,*)"Introduce la respuesta correcta:"
                      read(*,*)e
                      write(*,*) "La respuesta es... 1"
                      if(e.eq.1)then
                      nota=1
                      else
                      nota=-0.5
                      end if
        elseif(h.eq.8)then
        write(*,*)"¿Para que sirve rewind?"
                      write(*,*)"1 Para pausar el programa"
                      write(*,*)"2 Para resetear las variables"
                      write(*,*)"3 Para rebobinar un archivo"
                      write(*,*)"4 Para que salten errores"
                      write(*,*)"Introduce la respuesta correcta:"
                      read(*,*)e
                      write(*,*) "La respuesta es... 3"
                      if(e.eq.3)then
                      nota=1
                      else
                      nota=-0.5
                      end if
        elseif(h.eq.9)then
        write(*,*)"¿Que significa elseif?"
        write(*,*)"1 Otra condición por si no se cumple la anterior"
                      write(*,*)"2 Cierra un if"
                      write(*,*)"3 Cierra un do"
                      write(*,*)"4 Abre un if dentro de otro"
                      write(*,*)"Introduce la respuesta correcta:"
                      read(*,*)e
                      write(*,*) "La respuesta es... 1"
                      if(e.eq.1)then
                      nota=1
                      else
                      nota=-0.5
                      end if
        elseif(h.eq.10)then
        write(*,*)"¿Para que sirve el tercer numero de un do?"
                      write(*,*)"1 Es el indice final"
                      write(*,*)"2 Es una etiqueta del do"
                      write(*,*)"3 Es el numero de indices que salta"
                      write(*,*)"4 Ninguna es correcta"
                      write(*,*)"Introduce la respuesta correcta:"
                      read(*,*)e
                      write(*,*) "La respuesta es... 3"
                      if(e.eq.3)then
                      nota=1
                      else
                      nota=-0.5
                      end if
        elseif(h.eq.11)then
        write(*,*)"¿Como se abre una archivo?"
                      write(*,*)"1 start(unit, file)"
                      write(*,*)"2 abracadabra(unit file)"
                      write(*,*)"3 open(file)"
                      write(*,*)"4 open(unit,file)"
                      write(*,*)"Introduce la respuesta correcta:"
                      read(*,*)e
                      write(*,*) "La respuesta es... 4"
                      if(e.eq.4)then
                      nota=1
                      else
                      nota=-0.5
                      end if
        elseif(h.eq.12)then
        write(*,*)"¿Como se cierra un archivo?"
                      write(*,*)"1 close(unit)"
                      write(*,*)"2 close(file)"
                      write(*,*)"3 cerrar(file)"
                      write(*,*)"4 close(unit, file)"
                      write(*,*)"Introduce la respuesta correcta:"
                      read(*,*)e
                      write(*,*) "La respuesta es... 1"
                      if(e.eq.1)then
                      nota=1
                      else
                      nota=-0.5
                      end if
        elseif(h.eq.13)then
        write(*,*)"¿Que hace un goto?"
                      write(*,*)"1 Vuelve a una etiqueta indicada"
                      write(*,*)"2 Nada"
                      write(*,*)"3 Abre un condicional"
                      write(*,*)"4 Ninguna es correcta"
                      write(*,*)"Introduce la respuesta correcta:"
                      read(*,*)e
                      write(*,*) "La respuesta es... 1"
                      if(e.eq.1)then
                      nota=1
                      else
                      nota=-0.5
                      end if
        elseif(h.eq.14)then
        write(*,*)"¿Para que sirve continue?"
                      write(*,*)"1 Para abrir un bucle"
                      write(*,*)"2 No hace nada"
                      write(*,*)"3 Cierra un bucle"
                      write(*,*)"4 Ninguna es correcta"
                      write(*,*)"Introduce la respuesta correcta:"
                      read(*,*)e
                      write(*,*) "La respuesta es... 2"
                      if(e.eq.2)then
                      nota=1
                      else
                      nota=-0.5
                      end if
        elseif(h.eq.15)then
        write(*,*)"¿Cual es el numero mas grande de tipo integer?"
                      write(*,*)"1 5"
                      write(*,*)"2 674506342968317568"
                      write(*,*)"3 1000000000000"
                      write(*,*)"4 2147483647"
                      write(*,*)"Introduce la respuesta correcta:"
                      read(*,*)e
                      write(*,*) "La respuesta es... 4"
                      if(e.eq.4)then
                      nota=1
                      else
                      nota=-0.5
                      end if

        end if
        return
        end


        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
