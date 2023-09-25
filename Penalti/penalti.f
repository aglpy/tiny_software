        program penalti
        character*30 porteria(6),jugador(5),campo(5)
        character*10 nombre
        character*2 numero
        integer eleccion,nale
        write(*,*) "¿Como te llamas?"
        read(*,*)nombre
        write(*,*) "¿Qué número de jugador quieres ser?"
        read(*,*)numero
20      call system("cls")
        call dibujar(porteria,campo,jugador,nombre,numero)
        call escribir(porteria,campo,jugador)
        write(*,*)"¿A donde quieres tirar el balón? (1,2,3)"
        read(*,*)eleccion
        call aleatorio(nale)
        call video(eleccion,nale,nombre,numero)
        write(*,*)"Pulsa <enter> para jugar de nuevo."
        read(*,*)
        goto 20
        stop
        end
        
        
        
        subroutine video(eleccion,nale,nombre,numero)
        integer eleccion,nale,t
        character*30 porteria(6),jugador(5),campo(5)
        character*10 nombre
        character*2 numero
        t=100
        call dibujar(porteria,campo,jugador,nombre,numero)
        call parar(t)
        jugador(4)= "               /\*/           "
        jugador(5)= "              /               "
        call escribir(porteria,campo,jugador)
        call parar(t)
        jugador(4)= "               /\             "
        jugador(5)= "              /  \            "
        if(eleccion.eq.1)then
        do i=5,1,-1
        do j=1,5
        campo(j)=   "                              "
        end do
        campo(i)=   "              *               "
        call escribir(porteria,campo,jugador)
        call parar(t)
        end do
        elseif(eleccion.eq.2)then
        do i=5,1,-1
        do j=1,5
        campo(j)=   "                              "
        end do
        campo(i)=   "               *              "
        call escribir(porteria,campo,jugador)
        call parar(t)
        end do
        else
        do i=5,1,-1
        do j=1,5
        campo(j)=   "                              "
        end do
        campo(i)=   "                *             "
        call escribir(porteria,campo,jugador)
        call parar(t)
        end do
        end if
        if(nale.eq.0)then
        porteria(4)="              o               "
        porteria(5)="             '|'              "
        porteria(6)="             ' '              "
        elseif(nale.eq.2)then
        porteria(4)="                o             "
        porteria(5)="               '|'            "
        porteria(6)="               ' '            "
        end if
        call escribir(porteria,campo,jugador)
        call parar(t)
        if(nale.eq.(eleccion-1))then
        write(*,*)"Parada!!"
        else
        do j=1,5
        campo(j)=   "                              "
        end do
        if(eleccion.eq.1)then
        porteria(3)="             |*  |            "
        elseif(eleccion.eq.2)then
        porteria(3)="             | * |            "
        else
        porteria(3)="             |  *|            "
        end if
        call escribir(porteria,campo,jugador)
        write(*,*)"Gooooooooooooooooooooooool!!!!!!"
        end if
        return
        end



        
        
        
        
        
        
        
        
        subroutine escribir(porteria,campo,jugador)
        character*30 porteria(6),jugador(5),campo(5)
        call system("cls")
        do i=1,6
        write(*,*) porteria(i)
        end do
        do i=1,5
        write(*,*) campo(i)
        end do
        do i=1,5
        write(*,*) jugador(i)
        end do
        return
        end
        
        
        
        
        
        subroutine parar(tiempo)
        integer t,t0,tiempo
        call system_clock(t0)
        do j=1,100000000
        call system_clock(t)
        if(t.gt.(t0+tiempo))then
        goto 10
        end if
        end do
10      return
        end
        
        
        subroutine aleatorio(t)
        integer t
        call system_clock(t)
        t=int(3*(float(t)-10*int(float(t)/10))/10)
        return
        end
        
        
        subroutine dibujar(porteria,campo,jugador,nombre,numero)
        character*30 porteria(6),jugador(5),campo(5)
        character*10 nombre
        character*2 numero
100     format(A13,A10,A7)
200     format(A15,A2,A13)
        porteria(1)="              123             "
        porteria(2)="             _____            "
        porteria(3)="             |   |            "
        porteria(4)="               o              "
        porteria(5)="              '|'             "
        porteria(6)="              ' '             "
        do i=1,5
        campo(i)=   "                              "
        end do
        jugador(1)= "               O              "
        write(jugador(2),100)"             ",nombre,"       "
        write(jugador(3),200)"               ",numero,"             "
        jugador(4)= "               /\             "
        jugador(5)= "              /  \*           "
        return
        end
        
