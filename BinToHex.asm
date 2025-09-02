INCLUDE Irvine32.inc
	INCLUDE Macros.inc

; ------------ - Define the grid------------------
lineTop = 0; top row number
lineLeft = 0; left row number
lineBottom = 20; bottom row number
lineRight = 24; right row number


lineHorizontal1 = 2; horizontal row number
lineHorizontal2 = 6
lineHorizontal3 = 8
lineHorizontal4 = 12
lineHorizontal5 = 14
lineHorizontal6 = 18

lineVertical1 = 2; vertical row number
lineVertical2 = 22

; ------------------ - Char position------------------ -

xbin = 4
ybin = 4
xdec = 4
ydec = 10
xhex = 4
yhex = 16

.code		;Code Of program starts here

deset = 10

OcistiSve proc c uses eax ebx edx ecx
; PROGRAM STARTS HERE
; --------------------------------------------------------------

;-----------------------Color of the background-----------------
mov eax, white + (blue * 16)
Call SetTextColor
Call Clrscr

; ------Draw the Vertical Line left----------------------------------------
; from(0, 0) --to (0, 20)

mov  dl, lineLeft
mov  dh, lineTop
mov  ecx, lineBottom - lineTop + 1
mov  al, 0B3h

DrawLineVl:
Call Gotoxy
Call WriteChar
inc  dh
Loop DrawLineVl
; ------------------------------------------------------------ -

; ------Draw the Vertical Line right ----------------------------------------
; from(24, 0) --to(24, 20)

mov  dl, lineRight
mov  dh, lineTop
mov  ecx, lineBottom - lineTop + 1
mov  al, 0B3h

DrawLineVr:
Call Gotoxy
Call WriteChar
inc  dh
Loop DrawLineVr
; ------------------------------------------------------------ -


; ------Draw the Horizontal Line top ----------------------------------------
; from(0, 0) --to(24, 0)

mov  dh, lineTop
mov  dl, lineLeft
mov  ecx, lineRight - lineLeft + 1
mov  al, 0C4h

DrawLineHt:
Call Gotoxy
Call WriteChar
inc  dl
Loop DrawLineHt
; ------------------------------------------------------------ -

; ------Draw the Horizontal Line bottom ----------------------------------------
; from(0, 20) --to(24, 20)

mov  dh, lineBottom
mov  dl, lineLeft
mov  ecx, lineRight - lineLeft + 1
mov  al, 0C4h

DrawLineHb:
Call Gotoxy
Call WriteChar
inc  dl
Loop DrawLineHb
; ------------------------------------------------------------ -


; ------Draw the Vertical Line 11 ----------------------------------------
; from(2, 2) --to(2, 6)

mov  dl, lineVertical1
mov  dh, lineHorizontal1
mov  ecx, lineHorizontal2 - lineHorizontal1 + 1
mov  al, 0B3h

DrawLineV11:
Call Gotoxy
Call WriteChar
inc  dh
Loop DrawLineV11
; ------------------------------------------------------------ -

; ------Draw the Vertical Line 12 ----------------------------------------
; from(2, 8) --to(2, 12)

mov  dl, lineVertical1
mov  dh, lineHorizontal3
mov  ecx, lineHorizontal4 - lineHorizontal3 + 1
mov  al, 0B3h

DrawLineV12:
Call Gotoxy
Call WriteChar
inc  dh
Loop DrawLineV12
; ------------------------------------------------------------ -

; ------Draw the Vertical Line 13 ----------------------------------------
; from(2, 14) --to(2, 18)

mov  dl, lineVertical1
mov  dh, lineHorizontal5
mov  ecx, lineHorizontal6 - lineHorizontal5 + 1
mov  al, 0B3h

DrawLineV13:
Call Gotoxy
Call WriteChar
inc  dh
Loop DrawLineV13
; ------------------------------------------------------------ -

; ------Draw the Vertical Line 21 ----------------------------------------
; from(22, 2) --to(22, 6)

mov  dl, lineVertical2
mov  dh, lineHorizontal1
mov  ecx, lineHorizontal2 - lineHorizontal1 + 1
mov  al, 0B3h

DrawLineV21:
Call Gotoxy
Call WriteChar
inc  dh
Loop DrawLineV21
; ------------------------------------------------------------ -

; ------Draw the Vertical Line 22 ----------------------------------------
; from(22, 8) --to(22, 12)

mov  dl, lineVertical2
mov  dh, lineHorizontal3
mov  ecx, lineHorizontal4 - lineHorizontal3 + 1
mov  al, 0B3h

DrawLineV22:
Call Gotoxy
Call WriteChar
inc  dh
Loop DrawLineV22
; ------------------------------------------------------------ -

; ------Draw the Vertical Line 23 ----------------------------------------
; from(22, 14) --to(22, 18)

mov  dl, lineVertical2
mov  dh, lineHorizontal5
mov  ecx, lineHorizontal6 - lineHorizontal5 + 1
mov  al, 0B3h

DrawLineV23:
Call Gotoxy
Call WriteChar
inc  dh
Loop DrawLineV23
; ------------------------------------------------------------ -

; ------Draw the Horizontal Line 11 ----------------------------------------
; from(2, 2) --to(22, 2)

mov  dl, lineVertical1
mov  dh, lineHorizontal1
mov  ecx, lineVertical2 - lineVertical1 + 1
mov  al, 0C4h

DrawLineH11:
Call Gotoxy
Call WriteChar
inc  dl
Loop DrawLineH11
; ------------------------------------------------------------ -

; ------Draw the Horizontal Line 12 ----------------------------------------
; from(2, 6) --to(22, 6)

mov  dl, lineVertical1
mov  dh, lineHorizontal2
mov  ecx, lineVertical2 - lineVertical1 + 1
mov  al, 0C4h

DrawLineH12:
Call Gotoxy
Call WriteChar
inc  dl
Loop DrawLineH12
; ------------------------------------------------------------ -

; ------Draw the Horizontal Line 13 ----------------------------------------
; from(2, 8) --to(22, 8)

mov  dl, lineVertical1
mov  dh, lineHorizontal3
mov  ecx, lineVertical2 - lineVertical1 + 1
mov  al, 0C4h

DrawLineH13:
Call Gotoxy
Call WriteChar
inc  dl
Loop DrawLineH13
; ------------------------------------------------------------ -

; ------Draw the Horizontal Line 14 ----------------------------------------
; from(2, 12) --to(22, 12)

mov  dl, lineVertical1
mov  dh, lineHorizontal4
mov  ecx, lineVertical2 - lineVertical1 + 1
mov  al, 0C4h

DrawLineH14:
Call Gotoxy
Call WriteChar
inc  dl
Loop DrawLineH14
; ------------------------------------------------------------ -

; ------Draw the Horizontal Line 15 ----------------------------------------
; from(2, 14) --to(22, 14)

mov  dl, lineVertical1
mov  dh, lineHorizontal5
mov  ecx, lineVertical2 - lineVertical1 + 1
mov  al, 0C4h

DrawLineH15:
Call Gotoxy
Call WriteChar
inc  dl
Loop DrawLineH15
; ------------------------------------------------------------ -

; ------Draw the Horizontal Line 6 ----------------------------------------
; from(2, 18) --to(22, 18)

mov  dl, lineVertical1
mov  dh, lineHorizontal6
mov  ecx, lineVertical2 - lineVertical1 + 1
mov  al, 0C4h

DrawLineH16:
Call Gotoxy
Call WriteChar
inc  dl
Loop DrawLineH16
; ------------------------------------------------------------ -

ret
OcistiSve endp


;OVDE KRECE PROGRAM ZAPRAVO


.data
up_code EQU 38
down_code EQU 40
enter_code EQU 0Dh
prazno Byte 0

.code
main proc
Call OcistiSve
jmp BinBlok

;--------------------Press any key to continue...------------
loopWait:
	mov eax, 10 ;delay for msg processing
	Call Delay
Call ReadKey
	JZ loopWait

BinBlok:

Call Gotoxy

	; ------Oboji ----------------------------------------
Call OcistiSve
mov  dl, lineVertical1+1
mov  dh, lineHorizontal1+1
mov  ecx, lineVertical2 - lineVertical1 -1
mov  al, 0DBh
DrawLineB11:
Call Gotoxy
	mov eax, 0DBh
Call SetTextColor
Call WriteChar
inc  dl
Loop DrawLineB11

mov  dl, lineVertical1+1
mov  dh, lineHorizontal1+2
mov  ecx, lineVertical2 - lineVertical1 -1
mov  al, 0DBh
DrawLineB12:
Call Gotoxy
	mov eax, 0DBh
Call SetTextColor
Call WriteChar
inc  dl
Loop DrawLineB12

mov  dl, lineVertical1+1
mov  dh, lineHorizontal1+3
mov  ecx, lineVertical2 - lineVertical1 -1
mov  al, 0DBh
DrawLineB13:
Call Gotoxy
	mov eax, 0DBh
Call SetTextColor
Call WriteChar
inc  dl
Loop DrawLineB13
	; ------------------------------------------------------------ -

	; -------------------------UCITAVA TASTATURU----------------------------------- -

ucitaj1:
    mov  eax,50        
    Call Delay

Call ReadKey         
    jz   ucitaj1   

    cmp    dx, VK_UP
je HexBlok
	cmp    dx, VK_DOWN
je DecBlok
	cmp    dx, VK_RETURN
je IzaberiBin
	cmp    dx, VK_ESCAPE
je kraj
	jne    ucitaj1


DecBlok: 
		; ------Oboji ----------------------------------------
Call OcistiSve
mov  dl, lineVertical1+1
mov  dh, lineHorizontal3+1
mov  ecx, lineVertical2 - lineVertical1 -1
mov  al, 0DBh
DrawLineB21:
Call Gotoxy
	mov eax, 0DBh
Call SetTextColor
Call WriteChar
inc  dl
Loop DrawLineB21

mov  dl, lineVertical1+1
mov  dh, lineHorizontal3+2
mov  ecx, lineVertical2 - lineVertical1 -1
mov  al, 0DBh
DrawLineB22:
Call Gotoxy
	mov eax, 0DBh
Call SetTextColor
Call WriteChar
inc  dl
Loop DrawLineB22

mov  dl, lineVertical1+1
mov  dh, lineHorizontal3+3
mov  ecx, lineVertical2 - lineVertical1 -1
mov  al, 0DBh
DrawLineB23:
Call Gotoxy
	mov eax, 0DBh
Call SetTextColor
Call WriteChar
inc  dl
Loop DrawLineB23
	; ------------------------------------------------------------ -

	; -------------------------UCITAVA TASTATURU----------------------------------- -
 
ucitaj2:
    mov  eax,50        
    Call Delay

Call ReadKey         
    jz   ucitaj2     

    cmp    dx, VK_UP
je BinBlok
	cmp    dx, VK_DOWN
je HexBlok
	cmp    dx, VK_RETURN
je IzaberiDec
	cmp    dx, VK_ESCAPE
je kraj
	jne    ucitaj2


HexBlok:

	; ------Oboji ----------------------------------------
Call OcistiSve
mov  dl, lineVertical1+1
mov  dh, lineHorizontal5+1
mov  ecx, lineVertical2 - lineVertical1 -1
mov  al, 0DBh
DrawLineB31:
Call Gotoxy
	mov eax, 0DBh
Call SetTextColor
Call WriteChar
inc  dl
Loop DrawLineB31

mov  dl, lineVertical1+1
mov  dh, lineHorizontal5+2
mov  ecx, lineVertical2 - lineVertical1 -1
mov  al, 0DBh
DrawLineB32:
Call Gotoxy
	mov eax, 0DBh
Call SetTextColor
Call WriteChar
inc  dl
Loop DrawLineB32

mov  dl, lineVertical1+1
mov  dh, lineHorizontal5+3
mov  ecx, lineVertical2 - lineVertical1 -1
mov  al, 0DBh
DrawLineB33:
Call Gotoxy
	mov eax, 0DBh
Call SetTextColor
Call WriteChar
inc  dl
Loop DrawLineB33
	; ------------------------------------------------------------ -

	; -------------------------UCITAVA TASTATURU----------------------------------- -

ucitaj3:
    mov  eax,50        
    Call Delay

Call ReadKey         
    jz   ucitaj3     

    cmp    dx, VK_UP
je DecBlok
	cmp    dx, VK_DOWN
je BinBlok
	cmp    dx, VK_RETURN
je IzaberiHex
	cmp    dx, VK_ESCAPE
je kraj
	jne    ucitaj3



		; -------------------------KADA SE KLIKNE TASTER----------------------------------- -
.data
num dword 0
numb word 0
numd word 0
numh word 0

.code
;------------------------------------KADA KORISNIK IZABERE BIN---------------------------------------------------------
IzaberiBin:

	mov dl, xbin
	mov dh, ybin
Call Gotoxy

LookForKey1:
    mov  eax,50          
    Call Delay

Call ReadKey         
    jz   LookForKey1

	
    cmp dx, VK_SPACE
	je prikazi1
	cmp dx, VK_RETURN
	je BinBlok

Call WriteChar 
	inc dl
add al,-48
	movzx bx, al
	mov dx,2
	mov ax, numd
	mul dx
	add ax, bx
	add numd, ax

   jmp LookForKey1

prikazi1:
	
	mov dl, xdec 
	mov dh, ydec


Call Gotoxy
Xor eax,eax
	movzx eax, numd
Call WriteDec

	mov dl, xhex
	mov dh, yhex

Call Gotoxy
Call WriteHex

krajbin:
Call readChar
mov numd,0
cmp al, enter_code
je	BinBlok
jne krajbin


;---------------------------------------KADA KORISNIK IZABERE DEC----------------------------------------
IzaberiDec:
	mov dl, xdec
	mov dh, ydec
Call Gotoxy

LookForKey2:
    mov  eax,50          
    Call Delay

Call ReadKey         
    jz   LookForKey2

	
    cmp dx, VK_SPACE
	je prikazi2
	cmp dx, VK_RETURN
	je DecBlok

Call WriteChar 
	inc dl
add al,-48
	movzx bx, al
	mov dx,10
	mov ax, numd
	mul dx
	add ax, bx
	add numd, ax

   jmp LookForKey2

prikazi2:
	mov dl, xbin 
	mov dh, ybin


Call Gotoxy
Xor eax,eax
	movzx eax, numd
Call WriteDec

	mov dl, xhex
	mov dh, yhex

Call Gotoxy
Call WriteHex

krajdec:
Call readChar
mov numd,0
cmp al, enter_code
je	DecBlok
jne krajdec

;-------------------------------------------KADA KORISNIK IZABERE HEX-----------------------------------------------------------------
IzaberiHex:
	mov dl, xhex
	mov dh, yhex
Call Gotoxy

LookForKey3:
    mov  eax,50          
    Call Delay

Call ReadKey         
    jz   LookForKey3

	
    cmp dx, VK_SPACE
	je prikazi3
	cmp dx, VK_RETURN
	je HexBlok

Call WriteChar 
	inc dl
add al,-48
	movzx bx, al
	mov dx,10
	mov ax, numd
	mul dx
	add ax, bx
	add numd, ax

   jmp LookForKey3

prikazi3:

	mov dl, xbin 
	mov dh, ybin


Call Gotoxy
Xor eax,eax
	movzx eax, numd
Call WriteDec

	mov dl, xdec
	mov dh, ydec

Call Gotoxy
Call WriteHex

krajhex:
Call readChar
mov numd,0
cmp al, enter_code
je	HexBlok
jne krajhex




Kraj:

Exit
main endp
End main

