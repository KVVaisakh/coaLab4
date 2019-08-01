.text
.globl main

main:	la $a0,array
	addi $a1,$0,0
	addi $sp,$sp,-4
	sw $ra,0($sp)
	jal swap
	lw $ra,0($sp)
	addi $sp,$sp,4
	la $t0,array
	lw $a0,0($t0)
	li $v0,1
	syscall
	lw $a0,4($t0)
	li $v0,1
	syscall
	jr $ra

swap:	addi $t1,$a0,0
	lw $t0,0($t1)
	lw $t2,4($t1)
	sw $t2,0($t1)
	sw $t0,4($t1)
	jr $ra
	
	.data
array:	.word 5, 4, 2, 1