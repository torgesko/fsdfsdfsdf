section .data
	msg db 'Hello World', 0xa, 0
	msg_len dd 0xc

section .text
	global _start
_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	mov edx, msg_len
	int 0x80

	mov eax, 1
	xor ebx, ebx
	int 0x80
	
