.section .data
liczba1:
	.long 0x00000001, 0x00000002, 0x00000003, 0x00000004
liczba2:
	.long 0x00000005, 0x00000006, 0x00000007, 0x00000008

.section .text
.globl _start
.code32

_start:
	clc

	movl liczba1, %eax
	adcl liczba2, %eax
	pushl %eax

	movl liczba1+4, %eax
	adcl liczba2+4, %eax
	push %eax


	movl liczba1+8, %eax
	adcl liczba2+8, %eax
	push %eax

	movl liczba1+12, %eax
	adcl liczba2+12, %eax
	push %eax

	jnc no_carry
	push $1

no_carry:
	movl $1, %eax
	xorl %ebx, %ebx
	int $0x80
