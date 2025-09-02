INCLUDE Irvine32.inc

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




.data	
num1 word ?
num2 word ?
broj word, 0
x0 word, 1

.code		;Code of program starts here


main PROC
; PROGRAM STARTS HERE
; --------------------------------------------------------------

;-----------------------Color of the background-----------------
mov eax, white + (blue * 16)
call SetTextColor
call Clrscr

; ---- - ---------------Hides the cursor-------------------------
.data
cursorInfo CONSOLE_CURSOR_INFO <>
outHandle  DWORD ?
.code
INVOKE GetStdHandle, STD_OUTPUT_HANDLE
mov  outHandle, eax
INVOKE GetConsoleCursorInfo, outHandle, ADDR cursorInfo
mov  cursorInfo.bVisible, 0
INVOKE SetConsoleCursorInfo, outHandle, ADDR cursorInfo
; -------------------------------------------------------------- -



; ------Draw the Vertical Line left----------------------------------------
; from(0, 0) --to (0, 20)

mov  dl, lineLeft
mov  dh, lineTop
mov  ecx, lineBottom - lineTop + 1
mov  al, 0BAh

DrawLineVl :
call Gotoxy
call WriteChar
inc  dh
loop DrawLineVl
; ------------------------------------------------------------ -

; ------Draw the Vertical Line right ----------------------------------------
; from(24, 0) --to(24, 20)

mov  dl, lineRight
mov  dh, lineTop
mov  ecx, lineBottom - lineTop + 1
mov  al, 0BAh

DrawLineVr :
call Gotoxy
call WriteChar
inc  dh
loop DrawLineVr
; ------------------------------------------------------------ -


; ------Draw the Horizontal Line top ----------------------------------------
; from(0, 0) --to(24, 0)

mov  dh, lineTop
mov  dl, lineLeft
mov  ecx, lineRight - lineLeft + 1
mov  al, 0CDh

DrawLineHt :
call Gotoxy
call WriteChar
inc  dl
loop DrawLineHt
; ------------------------------------------------------------ -

; ------Draw the Horizontal Line bottom ----------------------------------------
; from(0, 20) --to(24, 20)

mov  dh, lineBottom
mov  dl, lineLeft
mov  ecx, lineRight - lineLeft + 1
mov  al, 0CDh

DrawLineHb :
call Gotoxy
call WriteChar
inc  dl
loop DrawLineHb
; ------------------------------------------------------------ -


; ------Draw the Vertical Line 11 ----------------------------------------
; from(2, 2) --to(2, 6)

mov  dl, lineVertical1
mov  dh, lineHorizontal1
mov  ecx, lineHorizontal2 - lineHorizontal1 + 1
mov  al, 0BAh

DrawLineV11 :
call Gotoxy
call WriteChar
inc  dh
loop DrawLineV11
; ------------------------------------------------------------ -

; ------Draw the Vertical Line 12 ----------------------------------------
; from(2, 8) --to(2, 12)

mov  dl, lineVertical1
mov  dh, lineHorizontal3
mov  ecx, lineHorizontal4 - lineHorizontal3 + 1
mov  al, 0BAh

DrawLineV12 :
call Gotoxy
call WriteChar
inc  dh
loop DrawLineV12
; ------------------------------------------------------------ -

; ------Draw the Vertical Line 13 ----------------------------------------
; from(2, 14) --to(2, 18)

mov  dl, lineVertical1
mov  dh, lineHorizontal5
mov  ecx, lineHorizontal6 - lineHorizontal5 + 1
mov  al, 0BAh

DrawLineV13 :
call Gotoxy
call WriteChar
inc  dh
loop DrawLineV13
; ------------------------------------------------------------ -

; ------Draw the Vertical Line 21 ----------------------------------------
; from(22, 2) --to(22, 6)

mov  dl, lineVertical2
mov  dh, lineHorizontal1
mov  ecx, lineHorizontal2 - lineHorizontal1 + 1
mov  al, 0BAh

DrawLineV21 :
call Gotoxy
call WriteChar
inc  dh
loop DrawLineV21
; ------------------------------------------------------------ -

; ------Draw the Vertical Line 22 ----------------------------------------
; from(22, 8) --to(22, 12)

mov  dl, lineVertical2
mov  dh, lineHorizontal3
mov  ecx, lineHorizontal4 - lineHorizontal3 + 1
mov  al, 0BAh

DrawLineV22 :
call Gotoxy
call WriteChar
inc  dh
loop DrawLineV22
; ------------------------------------------------------------ -

; ------Draw the Vertical Line 23 ----------------------------------------
; from(22, 14) --to(22, 18)

mov  dl, lineVertical2
mov  dh, lineHorizontal5
mov  ecx, lineHorizontal6 - lineHorizontal5 + 1
mov  al, 0BAh

DrawLineV23 :
call Gotoxy
call WriteChar
inc  dh
loop DrawLineV23
; ------------------------------------------------------------ -

; ------Draw the Horizontal Line 11 ----------------------------------------
; from(2, 2) --to(22, 2)

mov  dl, lineVertical1
mov  dh, lineHorizontal1
mov  ecx, lineVertical2 - lineVertical1 + 1
mov  al, 0CDh

DrawLineH11 :
call Gotoxy
call WriteChar
inc  dl
loop DrawLineH11
; ------------------------------------------------------------ -

; ------Draw the Horizontal Line 12 ----------------------------------------
; from(2, 6) --to(22, 6)

mov  dl, lineVertical1
mov  dh, lineHorizontal2
mov  ecx, lineVertical2 - lineVertical1 + 1
mov  al, 0CDh

DrawLineH12 :
call Gotoxy
call WriteChar
inc  dl
loop DrawLineH12
; ------------------------------------------------------------ -

; ------Draw the Horizontal Line 13 ----------------------------------------
; from(2, 8) --to(22, 8)

mov  dl, lineVertical1
mov  dh, lineHorizontal3
mov  ecx, lineVertical2 - lineVertical1 + 1
mov  al, 0CDh

DrawLineH13 :
call Gotoxy
call WriteChar
inc  dl
loop DrawLineH13
; ------------------------------------------------------------ -

; ------Draw the Horizontal Line 14 ----------------------------------------
; from(2, 12) --to(22, 12)

mov  dl, lineVertical1
mov  dh, lineHorizontal4
mov  ecx, lineVertical2 - lineVertical1 + 1
mov  al, 0CDh

DrawLineH14 :
call Gotoxy
call WriteChar
inc  dl
loop DrawLineH14
; ------------------------------------------------------------ -

; ------Draw the Horizontal Line 15 ----------------------------------------
; from(2, 14) --to(22, 14)

mov  dl, lineVertical1
mov  dh, lineHorizontal5
mov  ecx, lineVertical2 - lineVertical1 + 1
mov  al, 0CDh

DrawLineH15 :
call Gotoxy
call WriteChar
inc  dl
loop DrawLineH15
; ------------------------------------------------------------ -

; ------Draw the Horizontal Line 6 ----------------------------------------
; from(2, 18) --to(22, 18)

mov  dl, lineVertical1
mov  dh, lineHorizontal6
mov  ecx, lineVertical2 - lineVertical1 + 1
mov  al, 0CDh

DrawLineH16 :
call Gotoxy
call WriteChar
inc  dl
loop DrawLineH16

; ------------------------------------------------------------ -







;OVDE KRECE PROGRAM ZAPRAVO

jmp start 

loopWait:
	mov eax, 10 ;delay for msg processing
	call Delay
	call ReadKey
	JZ loopWait


start :

	;---------------------Prvi korak----------
	mov dl, xbin
	mov dh, ybin
	call Gotoxy





	; ----------Read and write first No------------------ -

	mov edx, offset num1			
	call readint
	mov num1, ax

	mov dl, xdec
	mov dh, ydec

	call Gotoxy
	call WriteInt

	mov dl, xhex
	mov dh, yhex

	call Gotoxy
	call WriteHex





stop :
	exit
main endp
end main

