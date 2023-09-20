             program ajedrez
             character*4 tablero(8,8),bon
             character*2 bool
             character*10 archivo,pass,hist
             integer elecmenu, pieza0(2),piezaf(2)
             
             
             
             call menu(elecmenu)
             if(elecmenu.eq.3)then
             goto 99
             elseif(elecmenu.eq.1)then
             call nuevo(tablero,archivo,pass,hist)
             elseif(elecmenu.eq.2)then
             call cargar(tablero,archivo,pass,hist)
             end if
             
10           do i=1,8
             write(*,*) (tablero(i,j),j=1,8)
             write(*,*)
             end do
             write(*,*) "Mover pieza: (o introduce 9 9 para recargar)"
             read(*,*) pieza0(1),pieza0(2)
             if(pieza0(1).eq.9)then
             call recargar(tablero,archivo)
             goto 10
             end if
             write(*,*) "A la posici¢n:"
             read(*,*) piezaf(1),piezaf(2)
             write(*,*) "Quieres mover la pieza"
             write(*,*) tablero(pieza0(1),pieza0(2))
             write(*,*) "A la casilla ",tablero(piezaf(1),piezaf(2))
             write(*,*) "¨Correcto? si/no"
             read(*,*) bool
             if(bool.eq."si")then
             tablero(piezaf(1),piezaf(2))=tablero(pieza0(1),pieza0(2))
             call blancoynegro(pieza0(1),pieza0(2),bon)
             tablero(pieza0(1),pieza0(2))=bon
             call guardar(tablero,archivo,pass,hist)
             call historial(pieza0,piezaf,hist)
             call system("cls")
             else
             call system("cls")
             end if
             goto 10
             call system("pause>nul")
99           end
             



             subroutine historial(p0,pf,archivo)
             character*10 archivo
             integer p0(2),pf(2)
             open(1,file=archivo)
             do i=1,1000000000
             read(1,*,end=50)
             end do
50           write(1,*) p0(1),p0(2),pf(1),pf(2)
             close(1)
             return
             end

             subroutine menu(elecmenu)
             integer elecmenu
             write(*,*) "      MENU"
             write(*,*)
             write(*,*) "1 Nueva Partida"
             write(*,*)
             write(*,*) "2 Cargar Partida"
             write(*,*)
             write(*,*) "3 Salir"
             write(*,*)
             write(*,*) "Elige una opci¢n:"
             read(*,*) elecmenu
             call system("cls")
             return
             end

             subroutine guardar(c,archivo,pass,hist)
             character*4 c(8,8)
             character*10 archivo,pass,hist
             open(1,file=archivo)
             do i=1,8
             write(1,"(8(A4))") (c(i,j),j=1,8)
             end do
             write(1,"(A10)") pass
             write(1,"(A10)") hist
             close(1)
             return
             end

             subroutine nuevo(c,archivo,pass,hist)
             integer b
             character*10 archivo,pass,hist
             character*4 c(8,8)
             write(*,*) "Introduce un nombre para la partida:"
             read(*,*) archivo
             write(*,*) "Introduce un nombre para el historial:"
             read(*,*) hist
             write(*,*) "Escribe una contrase¤a:"
             read(*,*) pass
             call system("cls")
             b=0
             c(1,1)="T"
             c(1,2)="C"
             c(1,3)="A"
             c(1,4)="R"
             c(1,5)="D"
             c(1,6)="A"
             c(1,7)="C"
             c(1,8)="T"
             do i=1,8
             c(2,i)="P"
             c(7,i)="p"
             end do
             c(8,1)="t"
             c(8,2)="c"
             c(8,3)="a"
             c(8,4)="r"
             c(8,5)="d"
             c(8,6)="a"
             c(8,7)="c"
             c(8,8)="t"
             do i=3,6
             do j=1,8
             if(float(b)/2.eq.int(b/2))then
             if(float(j)/2.eq.int(j/2))then
             c(i,j)="="
             else
             c(i,j)="_"
             end if
             else
             if(float(j)/2.ne.int(j/2))then
             c(i,j)="="
             else
             c(i,j)="_"
             end if
             end if
             end do
             b=b+1
             end do
             open(1,file=archivo)
             do i=1,8
             write(1,"(8(A4))") (c(i,j),j=1,8)
             end do
             write(1,"(A10)") pass
             write(1,"(A10)") hist
             close(1)
             return
             end
             
             subroutine cargar(c,archivo,pass,hist)
             character*4 c(8,8)
             character*10 archivo,pass,passpr,hist
40           write(*,*) "Introduce el nombre de la partida guardada:"
             read(*,*) archivo
             write(*,*) "Introduce la contrase¤a para esta partida:"
             read(*,*) passpr
             call system("cls")
             open(1,file=archivo)
             do i=1,8
             read(1,"(8(A4))") (c(i,j),j=1,8)
             end do

             read(1,"(A10)") pass
             read(1,"(A10)") hist
                          close(1)

             if(passpr.ne.pass)then
             write(*,*) "Las contrase¤as no coinciden."
             goto 40
             end if
             return
             end
             
             subroutine recargar(c,archivo,pass)
             character*4 c(8,8)
             character*10 archivo,pass
             call system("cls")
             open(1,file=archivo)
             do i=1,8
             read(1,"(8(A4))") (c(i,j),j=1,8)
             end do
             close(1)
             return
             end
             
             
             subroutine blancoynegro(n,m,bon)
             integer n,m
             character*4 bon
             if(float(n+m)/2.eq.int((n+m)/2))then
             bon="_"
             else
             bon="="
             end if
             return
             end
