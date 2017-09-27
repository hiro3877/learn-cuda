	.file	"cgh-float-fresnel.c"
	.text
.Ltext0:
	.globl	getrusage_sec
	.type	getrusage_sec, @function
getrusage_sec:
.LFB2:
	.file 1 "cgh-float-fresnel.c"
	.loc 1 53 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	.loc 1 53 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 57 0
	leaq	-160(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	getrusage
	.loc 1 58 0
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	.loc 1 60 0
	movq	-176(%rbp), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movq	-168(%rbp), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC0(%rip), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	.loc 1 61 0
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L3
	call	__stack_chk_fail
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	getrusage_sec, .-getrusage_sec
	.section	.rodata
	.align 8
.LC1:
	.string	"\343\203\225\343\202\241\343\202\244\343\203\253\345\220\215\343\202\222\345\205\245\345\212\233\343\201\227\343\201\246\343\201\217\343\201\240\343\201\225\343\201\204 :  "
.LC2:
	.string	"%s"
.LC3:
	.string	"rb"
	.align 8
.LC4:
	.string	"\343\203\225\343\202\241\343\202\244\343\203\253\343\202\252\343\203\274\343\203\227\343\203\263\343\202\250\343\203\251\343\203\274"
.LC5:
	.string	"\347\211\251\344\275\223\347\202\271\346\225\260\343\201\257%d\343\201\247\343\201\231\n"
	.align 8
.LC13:
	.string	"min = %lf  max = %lf  mid = %lf\n"
.LC14:
	.string	"wb"
.LC15:
	.string	"cgh_root.bmp"
.LC16:
	.string	"Calculation time is %lf\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.loc 1 64 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1368, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	.loc 1 64 0
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	.loc 1 77 0
	movw	$19778, -1168(%rbp)
	.loc 1 78 0
	movl	$2074678, -1166(%rbp)
	.loc 1 79 0
	movw	$0, -1162(%rbp)
	.loc 1 80 0
	movw	$0, -1160(%rbp)
	.loc 1 81 0
	movl	$1078, -1158(%rbp)
	.loc 1 83 0
	movl	$40, -1152(%rbp)
	.loc 1 84 0
	movl	$1920, -1148(%rbp)
	.loc 1 85 0
	movl	$1080, -1144(%rbp)
	.loc 1 86 0
	movw	$1, -1140(%rbp)
	.loc 1 87 0
	movw	$8, -1138(%rbp)
	.loc 1 88 0
	movl	$0, -1136(%rbp)
	.loc 1 89 0
	movl	$0, -1132(%rbp)
	.loc 1 90 0
	movl	$0, -1128(%rbp)
	.loc 1 91 0
	movl	$0, -1124(%rbp)
	.loc 1 92 0
	movl	$0, -1120(%rbp)
	.loc 1 93 0
	movl	$0, -1116(%rbp)
	.loc 1 95 0
	movl	$0, -1316(%rbp)
	jmp	.L5
.L6:
	.loc 1 96 0 discriminator 3
	movl	-1316(%rbp), %eax
	movl	%eax, %edx
	movl	-1316(%rbp), %eax
	cltq
	movb	%dl, -1104(%rbp,%rax,4)
	.loc 1 97 0 discriminator 3
	movl	-1316(%rbp), %eax
	movl	%eax, %edx
	movl	-1316(%rbp), %eax
	cltq
	movb	%dl, -1103(%rbp,%rax,4)
	.loc 1 98 0 discriminator 3
	movl	-1316(%rbp), %eax
	movl	%eax, %edx
	movl	-1316(%rbp), %eax
	cltq
	movb	%dl, -1102(%rbp,%rax,4)
	.loc 1 99 0 discriminator 3
	movl	-1316(%rbp), %eax
	cltq
	movb	$0, -1101(%rbp,%rax,4)
	.loc 1 95 0 discriminator 3
	addl	$1, -1316(%rbp)
.L5:
	.loc 1 95 0 is_stmt 0 discriminator 1
	cmpl	$255, -1316(%rbp)
	jle	.L6
	.loc 1 102 0 is_stmt 1
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -64(%rbp)
	.loc 1 103 0
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	.loc 1 104 0
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	.loc 1 106 0
	leaq	-80(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -1264(%rbp)
	.loc 1 107 0
	cmpq	$0, -1264(%rbp)
	jne	.L7
	.loc 1 108 0
	movl	$.LC4, %edi
	call	puts
.L7:
	.loc 1 111 0
	movq	-1264(%rbp), %rax
	leaq	-1332(%rbp), %rdi
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread
	.loc 1 112 0
	movl	-1332(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	.loc 1 114 0
	movl	-1332(%rbp), %edx
	movq	%rsp, %rax
	movq	%rax, %rbx
	movslq	%edx, %rax
	subq	$1, %rax
	movq	%rax, -1256(%rbp)
	movslq	%edx, %rax
	movq	%rax, -1360(%rbp)
	movq	$0, -1352(%rbp)
	movslq	%edx, %rax
	movq	%rax, -1376(%rbp)
	movq	$0, -1368(%rbp)
	movslq	%edx, %rax
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -1248(%rbp)
	.loc 1 115 0
	movl	-1332(%rbp), %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -1240(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, -1392(%rbp)
	movq	$0, -1384(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, -1408(%rbp)
	movq	$0, -1400(%rbp)
	cltq
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -1232(%rbp)
	.loc 1 116 0
	movl	-1332(%rbp), %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -1224(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %r14
	movl	$0, %r15d
	movslq	%eax, %rdx
	movq	%rdx, %r12
	movl	$0, %r13d
	cltq
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -1216(%rbp)
	.loc 1 120 0
	movl	$0, -1316(%rbp)
	jmp	.L8
.L9:
	.loc 1 121 0 discriminator 3
	movq	-1264(%rbp), %rdx
	leaq	-1328(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread
	.loc 1 122 0 discriminator 3
	movq	-1264(%rbp), %rdx
	leaq	-1324(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread
	.loc 1 123 0 discriminator 3
	movq	-1264(%rbp), %rdx
	leaq	-1320(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread
	.loc 1 125 0 discriminator 3
	movl	-1328(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	leal	960(%rax), %ecx
	movq	-1248(%rbp), %rax
	movl	-1316(%rbp), %edx
	movslq	%edx, %rdx
	movl	%ecx, (%rax,%rdx,4)
	.loc 1 126 0 discriminator 3
	movl	-1324(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	leal	540(%rax), %ecx
	movq	-1232(%rbp), %rax
	movl	-1316(%rbp), %edx
	movslq	%edx, %rdx
	movl	%ecx, (%rax,%rdx,4)
	.loc 1 127 0 discriminator 3
	movl	-1320(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	.LC6(%rip), %xmm1
	mulss	%xmm1, %xmm0
	movss	.LC7(%rip), %xmm1
	addss	%xmm1, %xmm0
	movq	-1216(%rbp), %rax
	movl	-1316(%rbp), %edx
	movslq	%edx, %rdx
	movss	%xmm0, (%rax,%rdx,4)
	.loc 1 120 0 discriminator 3
	addl	$1, -1316(%rbp)
.L8:
	.loc 1 120 0 is_stmt 0 discriminator 1
	movl	-1332(%rbp), %eax
	cmpl	%eax, -1316(%rbp)
	jl	.L9
	.loc 1 129 0 is_stmt 1
	movq	-1264(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	.loc 1 139 0
	movl	$8294400, %edi
	call	malloc
	movq	%rax, -1208(%rbp)
	.loc 1 140 0
	movl	$0, -1316(%rbp)
	jmp	.L10
.L11:
	.loc 1 141 0 discriminator 3
	movl	-1316(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1208(%rbp), %rax
	addq	%rdx, %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	.loc 1 140 0 discriminator 3
	addl	$1, -1316(%rbp)
.L10:
	.loc 1 140 0 is_stmt 0 discriminator 1
	cmpl	$2073599, -1316(%rbp)
	jle	.L11
	.loc 1 146 0 is_stmt 1
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -1292(%rbp)
	.loc 1 147 0
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -1288(%rbp)
	.loc 1 148 0
	movss	.LC11(%rip), %xmm0
	movss	%xmm0, -1284(%rbp)
	.loc 1 149 0
	movss	-1292(%rbp), %xmm0
	addss	%xmm0, %xmm0
	mulss	-1284(%rbp), %xmm0
	divss	-1288(%rbp), %xmm0
	movss	%xmm0, -1280(%rbp)
	.loc 1 154 0
	movl	$0, %eax
	call	getrusage_sec
	movq	%xmm0, %rax
	movq	%rax, -1200(%rbp)
	.loc 1 155 0
	movl	$0, -1316(%rbp)
	jmp	.L12
.L17:
	.loc 1 156 0
	movl	$0, -1312(%rbp)
	jmp	.L13
.L16:
	.loc 1 157 0
	pxor	%xmm0, %xmm0
	movss	%xmm0, -1304(%rbp)
	.loc 1 158 0
	movl	$0, -1308(%rbp)
	jmp	.L14
.L15:
	.loc 1 159 0 discriminator 3
	movq	-1248(%rbp), %rax
	movl	-1308(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	subl	-1312(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -1276(%rbp)
	.loc 1 160 0 discriminator 3
	movq	-1232(%rbp), %rax
	movl	-1308(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	subl	-1316(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -1272(%rbp)
	.loc 1 161 0 discriminator 3
	cvtss2sd	-1304(%rbp), %xmm3
	movsd	%xmm3, -1360(%rbp)
	movss	-1280(%rbp), %xmm1
	movss	.LC12(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	-1276(%rbp), %xmm0
	movaps	%xmm0, %xmm2
	mulss	-1276(%rbp), %xmm2
	movss	-1272(%rbp), %xmm0
	mulss	-1272(%rbp), %xmm0
	addss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	movq	-1216(%rbp), %rax
	movl	-1308(%rbp), %edx
	movslq	%edx, %rdx
	movss	(%rax,%rdx,4), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	cos
	addsd	-1360(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm4
	movss	%xmm4, -1304(%rbp)
	.loc 1 158 0 discriminator 3
	addl	$1, -1308(%rbp)
.L14:
	.loc 1 158 0 is_stmt 0 discriminator 1
	movl	-1332(%rbp), %eax
	cmpl	%eax, -1308(%rbp)
	jl	.L15
	.loc 1 165 0 is_stmt 1 discriminator 2
	movl	-1316(%rbp), %eax
	sall	$7, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	-1312(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1208(%rbp), %rax
	addq	%rdx, %rax
	movss	-1304(%rbp), %xmm0
	movss	%xmm0, (%rax)
	.loc 1 156 0 discriminator 2
	addl	$1, -1312(%rbp)
.L13:
	.loc 1 156 0 is_stmt 0 discriminator 1
	cmpl	$1919, -1312(%rbp)
	jle	.L16
	.loc 1 155 0 is_stmt 1 discriminator 2
	addl	$1, -1316(%rbp)
.L12:
	.loc 1 155 0 is_stmt 0 discriminator 1
	cmpl	$1079, -1316(%rbp)
	jle	.L17
	.loc 1 168 0 is_stmt 1
	movl	$0, %eax
	call	getrusage_sec
	movq	%xmm0, %rax
	movq	%rax, -1192(%rbp)
	.loc 1 172 0
	movq	-1208(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -1300(%rbp)
	.loc 1 173 0
	movq	-1208(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -1296(%rbp)
	.loc 1 175 0
	movl	$0, -1316(%rbp)
	jmp	.L18
.L25:
	.loc 1 176 0
	movl	$0, -1312(%rbp)
	jmp	.L19
.L24:
	.loc 1 177 0
	movl	-1316(%rbp), %eax
	sall	$7, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	-1312(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1208(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movss	-1300(%rbp), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L20
	.loc 1 178 0
	movl	-1316(%rbp), %eax
	sall	$7, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	-1312(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1208(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -1300(%rbp)
.L20:
	.loc 1 180 0
	movl	-1316(%rbp), %eax
	sall	$7, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	-1312(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1208(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	ucomiss	-1296(%rbp), %xmm0
	jbe	.L22
	.loc 1 181 0
	movl	-1316(%rbp), %eax
	sall	$7, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	-1312(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1208(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -1296(%rbp)
.L22:
	.loc 1 176 0 discriminator 2
	addl	$1, -1312(%rbp)
.L19:
	.loc 1 176 0 is_stmt 0 discriminator 1
	cmpl	$1919, -1312(%rbp)
	jle	.L24
	.loc 1 175 0 is_stmt 1 discriminator 2
	addl	$1, -1316(%rbp)
.L18:
	.loc 1 175 0 is_stmt 0 discriminator 1
	cmpl	$1079, -1316(%rbp)
	jle	.L25
	.loc 1 186 0 is_stmt 1
	movss	-1300(%rbp), %xmm0
	addss	-1296(%rbp), %xmm0
	movss	.LC12(%rip), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -1268(%rbp)
	.loc 1 188 0
	cvtss2sd	-1268(%rbp), %xmm2
	cvtss2sd	-1296(%rbp), %xmm1
	cvtss2sd	-1300(%rbp), %xmm0
	movl	$.LC13, %edi
	movl	$3, %eax
	call	printf
	.loc 1 192 0
	movl	$2073600, %edi
	call	malloc
	movq	%rax, -1184(%rbp)
	.loc 1 194 0
	movl	$0, -1316(%rbp)
	jmp	.L26
.L31:
	.loc 1 195 0
	movl	-1316(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1208(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movss	-1268(%rbp), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L27
	.loc 1 196 0
	movl	-1316(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L27:
	.loc 1 198 0
	movl	-1316(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1208(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	ucomiss	-1268(%rbp), %xmm0
	jbe	.L29
	.loc 1 199 0
	movl	-1316(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1184(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
.L29:
	.loc 1 194 0 discriminator 2
	addl	$1, -1316(%rbp)
.L26:
	.loc 1 194 0 is_stmt 0 discriminator 1
	cmpl	$2073599, -1316(%rbp)
	jle	.L31
	.loc 1 204 0 is_stmt 1
	movl	$.LC14, %esi
	movl	$.LC15, %edi
	call	fopen
	movq	%rax, -1176(%rbp)
	.loc 1 205 0
	cmpq	$0, -1176(%rbp)
	jne	.L32
	.loc 1 206 0
	movl	$.LC4, %edi
	call	puts
.L32:
	.loc 1 209 0
	movq	-1176(%rbp), %rdx
	leaq	-1168(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$14, %esi
	movq	%rax, %rdi
	call	fwrite
	.loc 1 210 0
	movq	-1176(%rbp), %rdx
	leaq	-1152(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	call	fwrite
	.loc 1 211 0
	movq	-1176(%rbp), %rdx
	leaq	-1104(%rbp), %rax
	movq	%rdx, %rcx
	movl	$256, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fwrite
	.loc 1 212 0
	movq	-1176(%rbp), %rdx
	movq	-1184(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2073600, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite
	.loc 1 214 0
	movsd	-1192(%rbp), %xmm0
	subsd	-1200(%rbp), %xmm0
	movl	$.LC16, %edi
	movl	$1, %eax
	call	printf
	.loc 1 216 0
	movq	-1184(%rbp), %rax
	movq	%rax, %rdi
	call	free
	.loc 1 217 0
	movq	-1208(%rbp), %rax
	movq	%rax, %rdi
	call	free
	.loc 1 218 0
	movq	-1176(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	.loc 1 220 0
	movl	$0, %eax
	movq	%rbx, %rsp
	.loc 1 224 0
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L34
	call	__stack_chk_fail
.L34:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	2696277389
	.long	1051772663
	.align 4
.LC6:
	.long	1109393408
	.align 4
.LC7:
	.long	1203982336
	.align 4
.LC9:
	.long	1078530011
	.align 4
.LC10:
	.long	1059195978
	.align 4
.LC11:
	.long	1093140480
	.align 4
.LC12:
	.long	1056964608
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/stdint.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/time.h"
	.file 8 "/usr/include/x86_64-linux-gnu/sys/time.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/resource.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x931
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF137
	.byte	0xc
	.long	.LASF138
	.long	.LASF139
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x83
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x84
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x8b
	.long	0x69
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x8d
	.long	0x69
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0xaf
	.long	0x69
	.uleb128 0x6
	.byte	0x8
	.long	0xb6
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x30
	.long	0xc8
	.uleb128 0x7
	.long	.LASF45
	.byte	0xd8
	.byte	0x5
	.byte	0xf1
	.long	0x245
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xf2
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xf7
	.long	0xb0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.byte	0xf8
	.long	0xb0
	.byte	0x10
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.byte	0xf9
	.long	0xb0
	.byte	0x18
	.uleb128 0x8
	.long	.LASF20
	.byte	0x5
	.byte	0xfa
	.long	0xb0
	.byte	0x20
	.uleb128 0x8
	.long	.LASF21
	.byte	0x5
	.byte	0xfb
	.long	0xb0
	.byte	0x28
	.uleb128 0x8
	.long	.LASF22
	.byte	0x5
	.byte	0xfc
	.long	0xb0
	.byte	0x30
	.uleb128 0x8
	.long	.LASF23
	.byte	0x5
	.byte	0xfd
	.long	0xb0
	.byte	0x38
	.uleb128 0x8
	.long	.LASF24
	.byte	0x5
	.byte	0xfe
	.long	0xb0
	.byte	0x40
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x100
	.long	0xb0
	.byte	0x48
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x101
	.long	0xb0
	.byte	0x50
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x102
	.long	0xb0
	.byte	0x58
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x104
	.long	0x27d
	.byte	0x60
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x106
	.long	0x283
	.byte	0x68
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x108
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x10c
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x10e
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x112
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x113
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x114
	.long	0x289
	.byte	0x83
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x118
	.long	0x299
	.byte	0x88
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x121
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x129
	.long	0xa3
	.byte	0x98
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x12a
	.long	0xa3
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x12b
	.long	0xa3
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x12c
	.long	0xa3
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.value	0x12e
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF43
	.byte	0x5
	.value	0x12f
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF44
	.byte	0x5
	.value	0x131
	.long	0x29f
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF140
	.byte	0x5
	.byte	0x96
	.uleb128 0x7
	.long	.LASF46
	.byte	0x18
	.byte	0x5
	.byte	0x9c
	.long	0x27d
	.uleb128 0x8
	.long	.LASF47
	.byte	0x5
	.byte	0x9d
	.long	0x27d
	.byte	0
	.uleb128 0x8
	.long	.LASF48
	.byte	0x5
	.byte	0x9e
	.long	0x283
	.byte	0x8
	.uleb128 0x8
	.long	.LASF49
	.byte	0x5
	.byte	0xa2
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x24c
	.uleb128 0x6
	.byte	0x8
	.long	0xc8
	.uleb128 0xb
	.long	0xb6
	.long	0x299
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x245
	.uleb128 0xb
	.long	0xb6
	.long	0x2af
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF50
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF51
	.uleb128 0x2
	.long	.LASF52
	.byte	0x6
	.byte	0x26
	.long	0x62
	.uleb128 0x2
	.long	.LASF53
	.byte	0x6
	.byte	0x33
	.long	0x4d
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF54
	.uleb128 0x7
	.long	.LASF55
	.byte	0x10
	.byte	0x7
	.byte	0x1e
	.long	0x2ff
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0x20
	.long	0x8d
	.byte	0
	.uleb128 0x8
	.long	.LASF57
	.byte	0x7
	.byte	0x21
	.long	0x98
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF58
	.uleb128 0x7
	.long	.LASF59
	.byte	0x8
	.byte	0x8
	.byte	0x37
	.long	0x32b
	.uleb128 0x8
	.long	.LASF60
	.byte	0x8
	.byte	0x39
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF61
	.byte	0x8
	.byte	0x3a
	.long	0x62
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x306
	.uleb128 0xd
	.long	0x32b
	.uleb128 0xe
	.long	.LASF141
	.byte	0x4
	.long	0x62
	.byte	0x9
	.byte	0x9e
	.long	0x353
	.uleb128 0xf
	.long	.LASF62
	.byte	0
	.uleb128 0x10
	.long	.LASF63
	.sleb128 -1
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0x9
	.byte	0xc2
	.long	0x372
	.uleb128 0x12
	.long	.LASF64
	.byte	0x9
	.byte	0xc4
	.long	0x69
	.uleb128 0x12
	.long	.LASF65
	.byte	0x9
	.byte	0xc5
	.long	0xa5
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0x9
	.byte	0xca
	.long	0x391
	.uleb128 0x12
	.long	.LASF66
	.byte	0x9
	.byte	0xcc
	.long	0x69
	.uleb128 0x12
	.long	.LASF67
	.byte	0x9
	.byte	0xcd
	.long	0xa5
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0x9
	.byte	0xd0
	.long	0x3b0
	.uleb128 0x12
	.long	.LASF68
	.byte	0x9
	.byte	0xd2
	.long	0x69
	.uleb128 0x12
	.long	.LASF69
	.byte	0x9
	.byte	0xd3
	.long	0xa5
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0x9
	.byte	0xd6
	.long	0x3cf
	.uleb128 0x12
	.long	.LASF70
	.byte	0x9
	.byte	0xd8
	.long	0x69
	.uleb128 0x12
	.long	.LASF71
	.byte	0x9
	.byte	0xd9
	.long	0xa5
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0x9
	.byte	0xdd
	.long	0x3ee
	.uleb128 0x12
	.long	.LASF72
	.byte	0x9
	.byte	0xdf
	.long	0x69
	.uleb128 0x12
	.long	.LASF73
	.byte	0x9
	.byte	0xe0
	.long	0xa5
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0x9
	.byte	0xe3
	.long	0x40d
	.uleb128 0x12
	.long	.LASF74
	.byte	0x9
	.byte	0xe5
	.long	0x69
	.uleb128 0x12
	.long	.LASF75
	.byte	0x9
	.byte	0xe6
	.long	0xa5
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0x9
	.byte	0xe9
	.long	0x42c
	.uleb128 0x12
	.long	.LASF76
	.byte	0x9
	.byte	0xeb
	.long	0x69
	.uleb128 0x12
	.long	.LASF77
	.byte	0x9
	.byte	0xec
	.long	0xa5
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0x9
	.byte	0xf0
	.long	0x44b
	.uleb128 0x12
	.long	.LASF78
	.byte	0x9
	.byte	0xf2
	.long	0x69
	.uleb128 0x12
	.long	.LASF79
	.byte	0x9
	.byte	0xf3
	.long	0xa5
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0x9
	.byte	0xf6
	.long	0x46a
	.uleb128 0x12
	.long	.LASF80
	.byte	0x9
	.byte	0xf8
	.long	0x69
	.uleb128 0x12
	.long	.LASF81
	.byte	0x9
	.byte	0xf9
	.long	0xa5
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0x9
	.byte	0xfc
	.long	0x489
	.uleb128 0x12
	.long	.LASF82
	.byte	0x9
	.byte	0xfe
	.long	0x69
	.uleb128 0x12
	.long	.LASF83
	.byte	0x9
	.byte	0xff
	.long	0xa5
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.byte	0x9
	.value	0x102
	.long	0x4ab
	.uleb128 0x14
	.long	.LASF84
	.byte	0x9
	.value	0x104
	.long	0x69
	.uleb128 0x14
	.long	.LASF85
	.byte	0x9
	.value	0x105
	.long	0xa5
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.byte	0x9
	.value	0x108
	.long	0x4cd
	.uleb128 0x14
	.long	.LASF86
	.byte	0x9
	.value	0x10a
	.long	0x69
	.uleb128 0x14
	.long	.LASF87
	.byte	0x9
	.value	0x10b
	.long	0xa5
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.byte	0x9
	.value	0x110
	.long	0x4ef
	.uleb128 0x14
	.long	.LASF88
	.byte	0x9
	.value	0x112
	.long	0x69
	.uleb128 0x14
	.long	.LASF89
	.byte	0x9
	.value	0x113
	.long	0xa5
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.byte	0x9
	.value	0x117
	.long	0x511
	.uleb128 0x14
	.long	.LASF90
	.byte	0x9
	.value	0x119
	.long	0x69
	.uleb128 0x14
	.long	.LASF91
	.byte	0x9
	.value	0x11a
	.long	0xa5
	.byte	0
	.uleb128 0x7
	.long	.LASF92
	.byte	0x90
	.byte	0x9
	.byte	0xbb
	.long	0x58a
	.uleb128 0x8
	.long	.LASF93
	.byte	0x9
	.byte	0xbe
	.long	0x2da
	.byte	0
	.uleb128 0x8
	.long	.LASF94
	.byte	0x9
	.byte	0xc0
	.long	0x2da
	.byte	0x10
	.uleb128 0x15
	.long	0x353
	.byte	0x20
	.uleb128 0x15
	.long	0x372
	.byte	0x28
	.uleb128 0x15
	.long	0x391
	.byte	0x30
	.uleb128 0x15
	.long	0x3b0
	.byte	0x38
	.uleb128 0x15
	.long	0x3cf
	.byte	0x40
	.uleb128 0x15
	.long	0x3ee
	.byte	0x48
	.uleb128 0x15
	.long	0x40d
	.byte	0x50
	.uleb128 0x15
	.long	0x42c
	.byte	0x58
	.uleb128 0x15
	.long	0x44b
	.byte	0x60
	.uleb128 0x15
	.long	0x46a
	.byte	0x68
	.uleb128 0x15
	.long	0x489
	.byte	0x70
	.uleb128 0x15
	.long	0x4ab
	.byte	0x78
	.uleb128 0x15
	.long	0x4cd
	.byte	0x80
	.uleb128 0x15
	.long	0x4ef
	.byte	0x88
	.byte	0
	.uleb128 0x7
	.long	.LASF95
	.byte	0xe
	.byte	0x1
	.byte	0xc
	.long	0x5d3
	.uleb128 0x8
	.long	.LASF96
	.byte	0x1
	.byte	0xe
	.long	0x46
	.byte	0
	.uleb128 0x8
	.long	.LASF97
	.byte	0x1
	.byte	0xf
	.long	0x2c8
	.byte	0x2
	.uleb128 0x8
	.long	.LASF98
	.byte	0x1
	.byte	0x10
	.long	0x46
	.byte	0x6
	.uleb128 0x8
	.long	.LASF99
	.byte	0x1
	.byte	0x11
	.long	0x46
	.byte	0x8
	.uleb128 0x8
	.long	.LASF100
	.byte	0x1
	.byte	0x12
	.long	0x2c8
	.byte	0xa
	.byte	0
	.uleb128 0x2
	.long	.LASF101
	.byte	0x1
	.byte	0x13
	.long	0x58a
	.uleb128 0x7
	.long	.LASF102
	.byte	0x28
	.byte	0x1
	.byte	0x16
	.long	0x66f
	.uleb128 0x8
	.long	.LASF103
	.byte	0x1
	.byte	0x18
	.long	0x2c8
	.byte	0
	.uleb128 0x8
	.long	.LASF104
	.byte	0x1
	.byte	0x19
	.long	0x2bd
	.byte	0x4
	.uleb128 0x8
	.long	.LASF105
	.byte	0x1
	.byte	0x1a
	.long	0x2bd
	.byte	0x8
	.uleb128 0x8
	.long	.LASF106
	.byte	0x1
	.byte	0x1b
	.long	0x46
	.byte	0xc
	.uleb128 0x8
	.long	.LASF107
	.byte	0x1
	.byte	0x1c
	.long	0x46
	.byte	0xe
	.uleb128 0x8
	.long	.LASF108
	.byte	0x1
	.byte	0x1d
	.long	0x2c8
	.byte	0x10
	.uleb128 0x8
	.long	.LASF109
	.byte	0x1
	.byte	0x1e
	.long	0x2c8
	.byte	0x14
	.uleb128 0x8
	.long	.LASF110
	.byte	0x1
	.byte	0x1f
	.long	0x2bd
	.byte	0x18
	.uleb128 0x8
	.long	.LASF111
	.byte	0x1
	.byte	0x20
	.long	0x2bd
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF112
	.byte	0x1
	.byte	0x21
	.long	0x2c8
	.byte	0x20
	.uleb128 0x8
	.long	.LASF113
	.byte	0x1
	.byte	0x22
	.long	0x2c8
	.byte	0x24
	.byte	0
	.uleb128 0x2
	.long	.LASF114
	.byte	0x1
	.byte	0x23
	.long	0x5de
	.uleb128 0x7
	.long	.LASF115
	.byte	0x4
	.byte	0x1
	.byte	0x25
	.long	0x6b7
	.uleb128 0x8
	.long	.LASF116
	.byte	0x1
	.byte	0x27
	.long	0x3f
	.byte	0
	.uleb128 0x8
	.long	.LASF117
	.byte	0x1
	.byte	0x28
	.long	0x3f
	.byte	0x1
	.uleb128 0x8
	.long	.LASF118
	.byte	0x1
	.byte	0x29
	.long	0x3f
	.byte	0x2
	.uleb128 0x8
	.long	.LASF119
	.byte	0x1
	.byte	0x2a
	.long	0x3f
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF120
	.byte	0x1
	.byte	0x2b
	.long	0x67a
	.uleb128 0x16
	.long	.LASF121
	.byte	0x1
	.byte	0x34
	.long	0x2b6
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ff
	.uleb128 0x17
	.string	"t"
	.byte	0x1
	.byte	0x36
	.long	0x511
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x17
	.string	"tv"
	.byte	0x1
	.byte	0x37
	.long	0x2da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x16
	.long	.LASF122
	.byte	0x1
	.byte	0x40
	.long	0x62
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x8d6
	.uleb128 0x18
	.long	.LASF123
	.byte	0x1
	.byte	0x42
	.long	0x2b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1216
	.uleb128 0x18
	.long	.LASF124
	.byte	0x1
	.byte	0x42
	.long	0x2b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1208
	.uleb128 0x18
	.long	.LASF125
	.byte	0x1
	.byte	0x44
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1348
	.uleb128 0x18
	.long	.LASF126
	.byte	0x1
	.byte	0x46
	.long	0x5d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1184
	.uleb128 0x18
	.long	.LASF127
	.byte	0x1
	.byte	0x47
	.long	0x66f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1168
	.uleb128 0x18
	.long	.LASF128
	.byte	0x1
	.byte	0x48
	.long	0x8d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.uleb128 0x17
	.string	"fp"
	.byte	0x1
	.byte	0x4a
	.long	0x8e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1280
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x4b
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1332
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.byte	0x4b
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1328
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.byte	0x4b
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1324
	.uleb128 0x18
	.long	.LASF129
	.byte	0x1
	.byte	0x66
	.long	0x29f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.byte	0x72
	.long	0x8ec
	.uleb128 0x4
	.byte	0x91
	.sleb128 -1264
	.byte	0x6
	.uleb128 0x17
	.string	"y"
	.byte	0x1
	.byte	0x73
	.long	0x900
	.uleb128 0x4
	.byte	0x91
	.sleb128 -1248
	.byte	0x6
	.uleb128 0x17
	.string	"z"
	.byte	0x1
	.byte	0x74
	.long	0x914
	.uleb128 0x4
	.byte	0x91
	.sleb128 -1232
	.byte	0x6
	.uleb128 0x18
	.long	.LASF130
	.byte	0x1
	.byte	0x76
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1344
	.uleb128 0x18
	.long	.LASF131
	.byte	0x1
	.byte	0x76
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1340
	.uleb128 0x18
	.long	.LASF132
	.byte	0x1
	.byte	0x76
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1336
	.uleb128 0x18
	.long	.LASF133
	.byte	0x1
	.byte	0x89
	.long	0x928
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1224
	.uleb128 0x17
	.string	"pi"
	.byte	0x1
	.byte	0x90
	.long	0x2af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1308
	.uleb128 0x18
	.long	.LASF134
	.byte	0x1
	.byte	0x90
	.long	0x2af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1300
	.uleb128 0x18
	.long	.LASF135
	.byte	0x1
	.byte	0x90
	.long	0x2af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1304
	.uleb128 0x18
	.long	.LASF136
	.byte	0x1
	.byte	0x90
	.long	0x2af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1296
	.uleb128 0x17
	.string	"dx"
	.byte	0x1
	.byte	0x97
	.long	0x2af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1292
	.uleb128 0x17
	.string	"dy"
	.byte	0x1
	.byte	0x97
	.long	0x2af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1288
	.uleb128 0x17
	.string	"tmp"
	.byte	0x1
	.byte	0x97
	.long	0x2af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1320
	.uleb128 0x17
	.string	"min"
	.byte	0x1
	.byte	0xaa
	.long	0x2af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1316
	.uleb128 0x17
	.string	"max"
	.byte	0x1
	.byte	0xaa
	.long	0x2af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1312
	.uleb128 0x17
	.string	"mid"
	.byte	0x1
	.byte	0xaa
	.long	0x2af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1284
	.uleb128 0x17
	.string	"img"
	.byte	0x1
	.byte	0xbf
	.long	0x92e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1200
	.uleb128 0x17
	.string	"fp1"
	.byte	0x1
	.byte	0xcb
	.long	0x8e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1192
	.byte	0
	.uleb128 0xb
	.long	0x6b7
	.long	0x8e6
	.uleb128 0xc
	.long	0x86
	.byte	0xff
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbd
	.uleb128 0xb
	.long	0x62
	.long	0x900
	.uleb128 0x19
	.long	0x86
	.uleb128 0x4
	.byte	0x91
	.sleb128 -1272
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0x914
	.uleb128 0x19
	.long	0x86
	.uleb128 0x4
	.byte	0x91
	.sleb128 -1256
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.long	0x2af
	.long	0x928
	.uleb128 0x19
	.long	0x86
	.uleb128 0x4
	.byte	0x91
	.sleb128 -1240
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2af
	.uleb128 0x6
	.byte	0x8
	.long	0x3f
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF101:
	.string	"BITMAPFILEHEADER"
.LASF61:
	.string	"tz_dsttime"
.LASF35:
	.string	"_shortbuf"
.LASF140:
	.string	"_IO_lock_t"
.LASF113:
	.string	"biCirImportant"
.LASF124:
	.string	"endtime1"
.LASF24:
	.string	"_IO_buf_end"
.LASF91:
	.string	"__ru_nivcsw_word"
.LASF136:
	.string	"goukei"
.LASF22:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF53:
	.string	"uint32_t"
.LASF60:
	.string	"tz_minuteswest"
.LASF16:
	.string	"_flags"
.LASF28:
	.string	"_markers"
.LASF139:
	.string	"/home/hiro/projects/learn-cuda/cuda/cgh/cgh-root-c"
.LASF131:
	.string	"y_buf"
.LASF66:
	.string	"ru_ixrss"
.LASF74:
	.string	"ru_majflt"
.LASF96:
	.string	"bfType"
.LASF90:
	.string	"ru_nivcsw"
.LASF49:
	.string	"_pos"
.LASF67:
	.string	"__ru_ixrss_word"
.LASF27:
	.string	"_IO_save_end"
.LASF50:
	.string	"float"
.LASF95:
	.string	"tagBITMAPFILEHEADER"
.LASF85:
	.string	"__ru_msgrcv_word"
.LASF58:
	.string	"long long unsigned int"
.LASF70:
	.string	"ru_isrss"
.LASF93:
	.string	"ru_utime"
.LASF26:
	.string	"_IO_backup_base"
.LASF37:
	.string	"_offset"
.LASF88:
	.string	"ru_nvcsw"
.LASF30:
	.string	"_fileno"
.LASF138:
	.string	"cgh-float-fresnel.c"
.LASF76:
	.string	"ru_nswap"
.LASF55:
	.string	"timeval"
.LASF75:
	.string	"__ru_majflt_word"
.LASF63:
	.string	"RUSAGE_CHILDREN"
.LASF7:
	.string	"size_t"
.LASF104:
	.string	"biWidth"
.LASF19:
	.string	"_IO_read_base"
.LASF47:
	.string	"_next"
.LASF57:
	.string	"tv_usec"
.LASF94:
	.string	"ru_stime"
.LASF121:
	.string	"getrusage_sec"
.LASF108:
	.string	"biCompression"
.LASF118:
	.string	"rgbRed"
.LASF73:
	.string	"__ru_minflt_word"
.LASF92:
	.string	"rusage"
.LASF87:
	.string	"__ru_nsignals_word"
.LASF84:
	.string	"ru_msgrcv"
.LASF82:
	.string	"ru_msgsnd"
.LASF14:
	.string	"char"
.LASF43:
	.string	"_mode"
.LASF119:
	.string	"rgbReserved"
.LASF129:
	.string	"filename"
.LASF46:
	.string	"_IO_marker"
.LASF125:
	.string	"tensuu"
.LASF17:
	.string	"_IO_read_ptr"
.LASF64:
	.string	"ru_maxrss"
.LASF111:
	.string	"biYPelsPerMeter"
.LASF115:
	.string	"tagRGBQUAD"
.LASF117:
	.string	"rgbGreen"
.LASF69:
	.string	"__ru_idrss_word"
.LASF137:
	.string	"GNU C11 5.4.0 20160609 -mtune=generic -march=x86-64 -g -fstack-protector-strong"
.LASF130:
	.string	"x_buf"
.LASF20:
	.string	"_IO_write_base"
.LASF54:
	.string	"long long int"
.LASF98:
	.string	"bfReserved1"
.LASF99:
	.string	"bfReserved2"
.LASF25:
	.string	"_IO_save_base"
.LASF127:
	.string	"BmpInfoHeader"
.LASF13:
	.string	"__syscall_slong_t"
.LASF133:
	.string	"img_buf"
.LASF141:
	.string	"__rusage_who"
.LASF100:
	.string	"bf0ffBits"
.LASF38:
	.string	"__pad1"
.LASF39:
	.string	"__pad2"
.LASF40:
	.string	"__pad3"
.LASF41:
	.string	"__pad4"
.LASF42:
	.string	"__pad5"
.LASF78:
	.string	"ru_inblock"
.LASF68:
	.string	"ru_idrss"
.LASF34:
	.string	"_vtable_offset"
.LASF114:
	.string	"BITMAPINFOHEADER"
.LASF110:
	.string	"biXPelsPerMeter"
.LASF59:
	.string	"timezone"
.LASF132:
	.string	"z_buf"
.LASF72:
	.string	"ru_minflt"
.LASF18:
	.string	"_IO_read_end"
.LASF5:
	.string	"short int"
.LASF81:
	.string	"__ru_oublock_word"
.LASF109:
	.string	"biSizeImage"
.LASF6:
	.string	"long int"
.LASF106:
	.string	"biPlanes"
.LASF105:
	.string	"biHeight"
.LASF71:
	.string	"__ru_isrss_word"
.LASF36:
	.string	"_lock"
.LASF56:
	.string	"tv_sec"
.LASF10:
	.string	"sizetype"
.LASF0:
	.string	"long unsigned int"
.LASF32:
	.string	"_old_offset"
.LASF45:
	.string	"_IO_FILE"
.LASF79:
	.string	"__ru_inblock_word"
.LASF89:
	.string	"__ru_nvcsw_word"
.LASF52:
	.string	"int32_t"
.LASF62:
	.string	"RUSAGE_SELF"
.LASF1:
	.string	"unsigned char"
.LASF128:
	.string	"RGBQuad"
.LASF48:
	.string	"_sbuf"
.LASF103:
	.string	"biSize"
.LASF21:
	.string	"_IO_write_ptr"
.LASF83:
	.string	"__ru_msgsnd_word"
.LASF102:
	.string	"tagBITMAPINFOHEADER"
.LASF12:
	.string	"__suseconds_t"
.LASF112:
	.string	"biCirUsed"
.LASF11:
	.string	"__time_t"
.LASF107:
	.string	"biBitCount"
.LASF134:
	.string	"kankaku"
.LASF97:
	.string	"bfSize"
.LASF80:
	.string	"ru_oublock"
.LASF126:
	.string	"BmpFileHeader"
.LASF86:
	.string	"ru_nsignals"
.LASF8:
	.string	"__off_t"
.LASF123:
	.string	"starttime1"
.LASF4:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF77:
	.string	"__ru_nswap_word"
.LASF122:
	.string	"main"
.LASF65:
	.string	"__ru_maxrss_word"
.LASF135:
	.string	"hatyou"
.LASF51:
	.string	"double"
.LASF29:
	.string	"_chain"
.LASF15:
	.string	"FILE"
.LASF31:
	.string	"_flags2"
.LASF33:
	.string	"_cur_column"
.LASF120:
	.string	"RGBQUAD"
.LASF116:
	.string	"rgbBlue"
.LASF9:
	.string	"__off64_t"
.LASF44:
	.string	"_unused2"
.LASF23:
	.string	"_IO_buf_base"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
