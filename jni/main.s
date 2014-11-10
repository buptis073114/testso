	.arch armv5te
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"main.c"
	.section	.rodata
	.align	2
.LC1:
	.ascii	"ss\000"
	.align	2
.LC2:
	.ascii	"in encrypt!\000"
	.align	2
.LC0:
	.ascii	"abcdefg\000"
	.space	120
	.text
	.align	2
	.type	encrypt, %function
encrypt:
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #136
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, .L2
.LPIC0:
	add	r3, pc, r3
	sub	r2, fp, #136
	ldmia	r3, {r0, r1}
	stmia	r2, {r0, r1}
	sub	r2, fp, #128
	mov	r3, #120
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	bl	memset(PLT)
	mov	r0, #4
	ldr	r3, .L2+4
.LPIC1:
	add	r3, pc, r3
	mov	r1, r3
	ldr	r3, .L2+8
.LPIC2:
	add	r3, pc, r3
	mov	r2, r3
	bl	__android_log_print(PLT)
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L3:
	.align	2
.L2:
	.word	.LC0-(.LPIC0+8)
	.word	.LC1-(.LPIC1+8)
	.word	.LC2-(.LPIC2+8)
	.size	encrypt, .-encrypt
	.align	2
	.global	Java_com_ss_jni_JNIUtil_nativec
	.type	Java_com_ss_jni_JNIUtil_nativec, %function
Java_com_ss_jni_JNIUtil_nativec:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	bl	encrypt(PLT)
	mov	r3, #1
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.size	Java_com_ss_jni_JNIUtil_nativec, .-Java_com_ss_jni_JNIUtil_nativec
	.ident	"GCC: (GNU) 4.6 20120106 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
