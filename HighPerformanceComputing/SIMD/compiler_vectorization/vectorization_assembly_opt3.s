	.file	"vectorization.cpp"
# GNU C++17 (GCC) version 11.3.0 (x86_64-unknown-linux-gnu)
#	compiled by GNU C version 11.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O3 -std=c++17
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1512:
	.cfi_startproc
# /usr/include/c++/11.3.0/bits/locale_facets.h:1087:       do_widen(char __c) const
	movl	%esi, %eax	# tmp87, __c
# /usr/include/c++/11.3.0/bits/locale_facets.h:1088:       { return __c; }
	ret	
	.cfi_endproc
.LFE1512:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.text
	.p2align 4
	.globl	_Z10simple_madPfS_S_S_i
	.type	_Z10simple_madPfS_S_S_i, @function
_Z10simple_madPfS_S_S_i:
.LFB4367:
	.cfi_startproc
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:37: {
	movq	%rdi, %r9	# tmp175, a
	movq	%rdx, %rdi	# tmp177, c
	movq	%rcx, %rdx	# tmp178, result
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:38:     for(size_t i = 0; i < length; ++i)
	movslq	%r8d, %rcx	# length, niters.114
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:38:     for(size_t i = 0; i < length; ++i)
	testq	%rcx, %rcx	# niters.114
	je	.L3	#,
	leaq	4(%rdi), %r10	#, tmp141
	movq	%rdx, %rax	# result, tmp142
	subq	%r10, %rax	# tmp141, tmp142
	leaq	4(%rsi), %r10	#, tmp148
	cmpq	$8, %rax	#, tmp142
	seta	%al	#, tmp144
	cmpl	$1, %r8d	#, length
	setne	%r8b	#, tmp146
	andl	%r8d, %eax	# tmp146, tmp147
	movq	%rdx, %r8	# result, tmp149
	subq	%r10, %r8	# tmp148, tmp149
	cmpq	$8, %r8	#, tmp149
	seta	%r8b	#, tmp151
	testb	%r8b, %al	# tmp151, tmp147
	je	.L12	#,
	leaq	4(%r9), %r8	#, tmp153
	movq	%rdx, %rax	# result, tmp154
	subq	%r8, %rax	# tmp153, tmp154
	cmpq	$8, %rax	#, tmp154
	jbe	.L12	#,
	leaq	-1(%rcx), %rax	#, tmp157
	cmpq	$2, %rax	#, tmp157
	jbe	.L13	#,
	movq	%rcx, %r8	# niters.114, bnd.98
	xorl	%eax, %eax	# ivtmp.144
	shrq	$2, %r8	#, bnd.98
	salq	$4, %r8	#, _78
	.p2align 4,,10
	.p2align 3
.L7:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	movups	(%r9,%rax), %xmm0	# MEM <vector(4) float> [(float *)a_16(D) + ivtmp.144_71 * 1], vect__6.107
	movups	(%rsi,%rax), %xmm2	# MEM <vector(4) float> [(float *)b_17(D) + ivtmp.144_71 * 1], tmp186
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	movups	(%rdi,%rax), %xmm3	# MEM <vector(4) float> [(float *)c_18(D) + ivtmp.144_71 * 1], tmp187
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	addps	%xmm2, %xmm0	# tmp186, vect__6.107
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	addps	%xmm3, %xmm0	# tmp187, vect__10.111
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	movups	%xmm0, (%rdx,%rax)	# vect__10.111, MEM <vector(4) float> [(float *)result_19(D) + ivtmp.144_71 * 1]
	addq	$16, %rax	#, ivtmp.144
	cmpq	%rax, %r8	# ivtmp.144, _78
	jne	.L7	#,
	movq	%rcx, %rax	# niters.114, tmp.117
	andq	$-4, %rax	#, tmp.117
	testb	$3, %cl	#, niters.114
	je	.L3	#,
	subq	%rax, %rcx	# tmp.117, niters.114
	cmpq	$1, %rcx	#, niters.114
	je	.L9	#,
.L6:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	movq	(%rsi,%rax,4), %xmm1	# MEM <vector(2) float> [(float *)vectp_b.122_127], vect__62.123
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	movq	(%r9,%rax,4), %xmm0	# MEM <vector(2) float> [(float *)vectp_a.119_122], vect__60.120
	movq	%rcx, %r8	# niters.114, niters_vector_mult_vf.116
	andq	$-2, %r8	#, niters_vector_mult_vf.116
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	addps	%xmm1, %xmm0	# vect__62.123, vect__63.124
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	movq	(%rdi,%rax,4), %xmm1	# MEM <vector(2) float> [(float *)vectp_c.126_133], vect__65.127
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	addps	%xmm1, %xmm0	# vect__65.127, vect__67.128
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	movlps	%xmm0, (%rdx,%rax,4)	# vect__67.128, MEM <vector(2) float> [(float *)vectp_result.130_139]
	addq	%r8, %rax	# niters_vector_mult_vf.116, tmp.117
	cmpq	%r8, %rcx	# niters_vector_mult_vf.116, niters.114
	je	.L3	#,
.L9:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	movss	(%r9,%rax,4), %xmm0	# *_102, *_102
	addss	(%rsi,%rax,4), %xmm0	# *_104, tmp169
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	addss	(%rdi,%rax,4), %xmm0	# *_107, tmp171
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	movss	%xmm0, (%rdx,%rax,4)	# tmp171, *_109
	ret	
	.p2align 4,,10
	.p2align 3
.L12:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:38:     for(size_t i = 0; i < length; ++i)
	xorl	%eax, %eax	# i
	.p2align 4,,10
	.p2align 3
.L5:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	movss	(%r9,%rax,4), %xmm0	# MEM[(float *)a_16(D) + i_40 * 4], MEM[(float *)a_16(D) + i_40 * 4]
	addss	(%rsi,%rax,4), %xmm0	# MEM[(float *)b_17(D) + i_40 * 4], tmp172
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	addss	(%rdi,%rax,4), %xmm0	# MEM[(float *)c_18(D) + i_40 * 4], tmp174
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	movss	%xmm0, (%rdx,%rax,4)	# tmp174, MEM[(float *)result_19(D) + i_40 * 4]
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:38:     for(size_t i = 0; i < length; ++i)
	addq	$1, %rax	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:38:     for(size_t i = 0; i < length; ++i)
	cmpq	%rax, %rcx	# i, niters.114
	jne	.L5	#,
.L3:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:40: }
	ret	
.L13:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:38:     for(size_t i = 0; i < length; ++i)
	xorl	%eax, %eax	# tmp.117
	jmp	.L6	#
	.cfi_endproc
.LFE4367:
	.size	_Z10simple_madPfS_S_S_i, .-_Z10simple_madPfS_S_S_i
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB5068:
	.cfi_startproc
# /usr/include/c++/11.3.0/bits/random.tcc:394:     mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
	movq	%rdi, %r8	# tmp137, this
	movq	(%rdi), %rdi	# MEM[(long unsigned int *)this_40(D)], this___M_x_I_lsm0.159
# /usr/include/c++/11.3.0/bits/random.tcc:406: 		       ^ ((__y & 0x01) ? __a : 0));
	movl	$2567483615, %r10d	#, tmp136
	movq	%r8, %rax	# this, ivtmp.167
	leaq	1816(%r8), %r9	#, _35
# /usr/include/c++/11.3.0/bits/random.tcc:394:     mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
	movq	%r8, %rdx	# this, ivtmp.174
	.p2align 4,,10
	.p2align 3
.L30:
# /usr/include/c++/11.3.0/bits/random.tcc:403: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	andq	$-2147483648, %rdi	#, this___M_x_I_lsm0.159
	movq	%rdi, %rcx	# this___M_x_I_lsm0.159, _33
# /usr/include/c++/11.3.0/bits/random.tcc:404: 			   | (_M_x[__k + 1] & __lower_mask));
	movq	8(%rdx), %rdi	# MEM[(long unsigned int *)_78 + 8B], this___M_x_I_lsm0.159
# /usr/include/c++/11.3.0/bits/random.tcc:404: 			   | (_M_x[__k + 1] & __lower_mask));
	movq	%rdi, %rsi	# this___M_x_I_lsm0.159, tmp114
	andl	$2147483647, %esi	#, tmp114
# /usr/include/c++/11.3.0/bits/random.tcc:403: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	orq	%rcx, %rsi	# _33, __y
# /usr/include/c++/11.3.0/bits/random.tcc:405: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	movq	%rsi, %rcx	# __y, tmp115
	shrq	%rcx	# tmp115
# /usr/include/c++/11.3.0/bits/random.tcc:405: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	xorq	3176(%rdx), %rcx	# MEM[(long unsigned int *)_78 + 3176B], _85
# /usr/include/c++/11.3.0/bits/random.tcc:406: 		       ^ ((__y & 0x01) ? __a : 0));
	andl	$1, %esi	#, __y
	je	.L29	#,
# /usr/include/c++/11.3.0/bits/random.tcc:406: 		       ^ ((__y & 0x01) ? __a : 0));
	xorq	%r10, %rcx	# tmp136, _85
.L29:
# /usr/include/c++/11.3.0/bits/random.tcc:405: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	movq	%rcx, (%rdx)	# _85, MEM[(long unsigned int *)_78]
# /usr/include/c++/11.3.0/bits/random.tcc:401:       for (size_t __k = 0; __k < (__n - __m); ++__k)
	addq	$8, %rdx	#, ivtmp.174
	cmpq	%r9, %rdx	# _35, ivtmp.174
	jne	.L30	#,
	movq	1816(%r8), %rsi	# MEM[(long unsigned int *)this_40(D) + 1816B], this___M_x_I_lsm0.158
	leaq	3168(%r8), %rdi	#, _17
# /usr/include/c++/11.3.0/bits/random.tcc:414: 		       ^ ((__y & 0x01) ? __a : 0));
	movl	$2567483615, %r9d	#, tmp135
	.p2align 4,,10
	.p2align 3
.L32:
# /usr/include/c++/11.3.0/bits/random.tcc:411: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	andq	$-2147483648, %rsi	#, this___M_x_I_lsm0.158
	movq	%rsi, %rdx	# this___M_x_I_lsm0.158, _69
# /usr/include/c++/11.3.0/bits/random.tcc:412: 			   | (_M_x[__k + 1] & __lower_mask));
	movq	1824(%rax), %rsi	# MEM[(long unsigned int *)_16 + 1824B], this___M_x_I_lsm0.158
# /usr/include/c++/11.3.0/bits/random.tcc:412: 			   | (_M_x[__k + 1] & __lower_mask));
	movq	%rsi, %rcx	# this___M_x_I_lsm0.158, tmp118
	andl	$2147483647, %ecx	#, tmp118
# /usr/include/c++/11.3.0/bits/random.tcc:411: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	orq	%rdx, %rcx	# _69, __y
# /usr/include/c++/11.3.0/bits/random.tcc:413: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	movq	%rcx, %rdx	# __y, tmp119
	shrq	%rdx	# tmp119
# /usr/include/c++/11.3.0/bits/random.tcc:413: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	xorq	(%rax), %rdx	# MEM[(long unsigned int *)_16], prephitmp_54
# /usr/include/c++/11.3.0/bits/random.tcc:414: 		       ^ ((__y & 0x01) ? __a : 0));
	andl	$1, %ecx	#, __y
	je	.L31	#,
# /usr/include/c++/11.3.0/bits/random.tcc:414: 		       ^ ((__y & 0x01) ? __a : 0));
	xorq	%r9, %rdx	# tmp135, prephitmp_54
.L31:
# /usr/include/c++/11.3.0/bits/random.tcc:413: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	movq	%rdx, 1816(%rax)	# prephitmp_54, MEM[(long unsigned int *)_16 + 1816B]
# /usr/include/c++/11.3.0/bits/random.tcc:409:       for (size_t __k = (__n - __m); __k < (__n - 1); ++__k)
	addq	$8, %rax	#, ivtmp.167
	cmpq	%rdi, %rax	# _17, ivtmp.167
	jne	.L32	#,
# /usr/include/c++/11.3.0/bits/random.tcc:417:       _UIntType __y = ((_M_x[__n - 1] & __upper_mask)
	movq	4984(%r8), %rax	# this_40(D)->_M_x[623], tmp122
# /usr/include/c++/11.3.0/bits/random.tcc:418: 		       | (_M_x[0] & __lower_mask));
	movq	(%r8), %rdx	# this_40(D)->_M_x[0], tmp124
# /usr/include/c++/11.3.0/bits/random.tcc:417:       _UIntType __y = ((_M_x[__n - 1] & __upper_mask)
	andq	$-2147483648, %rax	#, tmp122
# /usr/include/c++/11.3.0/bits/random.tcc:418: 		       | (_M_x[0] & __lower_mask));
	andl	$2147483647, %edx	#, tmp124
# /usr/include/c++/11.3.0/bits/random.tcc:417:       _UIntType __y = ((_M_x[__n - 1] & __upper_mask)
	orq	%rdx, %rax	# tmp124, __y
# /usr/include/c++/11.3.0/bits/random.tcc:419:       _M_x[__n - 1] = (_M_x[__m - 1] ^ (__y >> 1)
	movq	%rax, %rdx	# __y, tmp126
	shrq	%rdx	# tmp126
# /usr/include/c++/11.3.0/bits/random.tcc:419:       _M_x[__n - 1] = (_M_x[__m - 1] ^ (__y >> 1)
	xorq	3168(%r8), %rdx	# this_40(D)->_M_x[396], _29
# /usr/include/c++/11.3.0/bits/random.tcc:420: 		       ^ ((__y & 0x01) ? __a : 0));
	testb	$1, %al	#, __y
	je	.L33	#,
# /usr/include/c++/11.3.0/bits/random.tcc:420: 		       ^ ((__y & 0x01) ? __a : 0));
	movl	$2567483615, %eax	#, tmp128
	xorq	%rax, %rdx	# tmp128, _29
.L33:
# /usr/include/c++/11.3.0/bits/random.tcc:419:       _M_x[__n - 1] = (_M_x[__m - 1] ^ (__y >> 1)
	movq	%rdx, 4984(%r8)	# _29, this_40(D)->_M_x[623]
# /usr/include/c++/11.3.0/bits/random.tcc:421:       _M_p = 0;
	movq	$0, 4992(%r8)	#, this_40(D)->_M_p
# /usr/include/c++/11.3.0/bits/random.tcc:422:     }
	ret	
	.cfi_endproc
.LFE5068:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.text
	.p2align 4
	.globl	_Z11fill_arraysPfS_S_i
	.type	_Z11fill_arraysPfS_S_i, @function
_Z11fill_arraysPfS_S_i:
.LFB4368:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r13	# tmp205, c
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12	# tmp204, b
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp	# tmp203, a
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movslq	%ecx, %rbx	# tmp206,
	subq	$5016, %rsp	#,
	.cfi_def_cfa_offset 5072
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:43: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp208
	movq	%rax, 5000(%rsp)	# tmp208, D.91993
	xorl	%eax, %eax	# tmp208
	movq	%rsp, %r14	#, tmp199
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:44:     const auto seed = std::chrono::steady_clock::now().time_since_epoch().count();
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT	#
# /usr/include/c++/11.3.0/bits/random.tcc:330:       for (size_t __i = 1; __i < state_size; ++__i)
	movl	$1, %edx	#, __i
# /usr/include/c++/11.3.0/bits/random.h:140: 	    __res %= __m;
	movl	%eax, %ecx	# tmp207, rng___M_x_I_lsm0.179
# /usr/include/c++/11.3.0/bits/random.tcc:327:       _M_x[0] = __detail::__mod<_UIntType,
	movq	%rcx, (%rsp)	# rng___M_x_I_lsm0.179, MEM[(struct mersenne_twister_engine *)&rng]._M_x[0]
	.p2align 4,,10
	.p2align 3
.L46:
# /usr/include/c++/11.3.0/bits/random.tcc:333: 	  __x ^= __x >> (__w - 2);
	movq	%rcx, %rax	# rng___M_x_I_lsm0.179, tmp148
	shrq	$30, %rax	#, tmp148
# /usr/include/c++/11.3.0/bits/random.tcc:333: 	  __x ^= __x >> (__w - 2);
	xorq	%rcx, %rax	# rng___M_x_I_lsm0.179, __x
# /usr/include/c++/11.3.0/bits/random.tcc:334: 	  __x *= __f;
	imulq	$1812433253, %rax, %rax	#, __x, __x
# /usr/include/c++/11.3.0/bits/random.h:140: 	    __res %= __m;
	leal	(%rax,%rdx), %ecx	#, rng___M_x_I_lsm0.179
# /usr/include/c++/11.3.0/bits/random.tcc:336: 	  _M_x[__i] = __detail::__mod<_UIntType,
	movq	%rcx, (%r14,%rdx,8)	# rng___M_x_I_lsm0.179, MEM[(long unsigned int *)&rng + __i_147 * 8]
# /usr/include/c++/11.3.0/bits/random.tcc:330:       for (size_t __i = 1; __i < state_size; ++__i)
	addq	$1, %rdx	#, __i
# /usr/include/c++/11.3.0/bits/random.tcc:330:       for (size_t __i = 1; __i < state_size; ++__i)
	cmpq	$624, %rdx	#, __i
	jne	.L46	#,
# /usr/include/c++/11.3.0/bits/random.tcc:339:       _M_p = state_size;
	movq	$624, 4992(%rsp)	#, MEM[(struct mersenne_twister_engine *)&rng]._M_p
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:48:     for (size_t i = 0; i < length; ++i)
	testq	%rbx, %rbx	# _64
	je	.L45	#,
	movss	.LC2(%rip), %xmm3	#, tmp197
	movss	.LC3(%rip), %xmm2	#, tmp198
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:48:     for (size_t i = 0; i < length; ++i)
	xorl	%r15d, %r15d	# i
	pxor	%xmm1, %xmm1	# tmp196
	jmp	.L47	#
	.p2align 4,,10
	.p2align 3
.L71:
# /usr/include/c++/11.3.0/bits/random.tcc:3366: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	pxor	%xmm0, %xmm0	# tmp156
	cvtsi2ssq	%rax, %xmm0	# __z, tmp156
# /usr/include/c++/11.3.0/bits/random.tcc:3366: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	addss	%xmm1, %xmm0	# tmp196, __sum
# /usr/include/c++/11.3.0/bits/random.tcc:3369:       __ret = __sum / __tmp;
	mulss	%xmm3, %xmm0	# tmp197, __ret
# /usr/include/c++/11.3.0/bits/random.tcc:3370:       if (__builtin_expect(__ret >= _RealType(1), 0))
	comiss	%xmm2, %xmm0	# tmp198, __ret
	jnb	.L64	#,
.L72:
# /usr/include/c++/11.3.0/bits/random.h:1870: 	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
	addss	%xmm1, %xmm0	# tmp196, _46
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:50:         a[i] = distr(rng);
	movss	%xmm0, 0(%rbp,%r15,4)	# _46, MEM[(float *)a_15(D) + i_67 * 4]
# /usr/include/c++/11.3.0/bits/random.tcc:455:       if (_M_p >= state_size)
	cmpq	$623, %rsi	#, _93
	ja	.L68	#,
.L52:
# /usr/include/c++/11.3.0/bits/random.tcc:459:       result_type __z = _M_x[_M_p++];
	movq	(%rsp,%rsi,8), %rax	# rng._M_x[prephitmp_142], __z
# /usr/include/c++/11.3.0/bits/random.tcc:459:       result_type __z = _M_x[_M_p++];
	leaq	1(%rsi), %rcx	#, prephitmp_48
	movq	%rcx, 4992(%rsp)	# prephitmp_48, rng._M_p
# /usr/include/c++/11.3.0/bits/random.tcc:460:       __z ^= (__z >> __u) & __d;
	movq	%rax, %rdx	# __z, tmp166
	shrq	$11, %rdx	#, tmp166
# /usr/include/c++/11.3.0/bits/random.tcc:460:       __z ^= (__z >> __u) & __d;
	movl	%edx, %edx	# tmp166, _111
# /usr/include/c++/11.3.0/bits/random.tcc:460:       __z ^= (__z >> __u) & __d;
	xorq	%rdx, %rax	# _111, __z
# /usr/include/c++/11.3.0/bits/random.tcc:461:       __z ^= (__z << __s) & __b;
	movq	%rax, %rdx	# __z, tmp167
	salq	$7, %rdx	#, tmp167
# /usr/include/c++/11.3.0/bits/random.tcc:461:       __z ^= (__z << __s) & __b;
	andl	$2636928640, %edx	#, _114
# /usr/include/c++/11.3.0/bits/random.tcc:461:       __z ^= (__z << __s) & __b;
	xorq	%rdx, %rax	# _114, __z
# /usr/include/c++/11.3.0/bits/random.tcc:462:       __z ^= (__z << __t) & __c;
	movq	%rax, %rdx	# __z, tmp168
	salq	$15, %rdx	#, tmp168
# /usr/include/c++/11.3.0/bits/random.tcc:462:       __z ^= (__z << __t) & __c;
	andl	$4022730752, %edx	#, _117
# /usr/include/c++/11.3.0/bits/random.tcc:462:       __z ^= (__z << __t) & __c;
	xorq	%rdx, %rax	# _117, __z
# /usr/include/c++/11.3.0/bits/random.tcc:463:       __z ^= (__z >> __l);
	movq	%rax, %rdx	# __z, _119
	shrq	$18, %rdx	#, _119
# /usr/include/c++/11.3.0/bits/random.tcc:3366: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	xorq	%rdx, %rax	# _119, __z
	js	.L53	#,
	pxor	%xmm0, %xmm0	# tmp170
	cvtsi2ssq	%rax, %xmm0	# __z, tmp170
# /usr/include/c++/11.3.0/bits/random.tcc:3366: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	addss	%xmm1, %xmm0	# tmp196, __sum
# /usr/include/c++/11.3.0/bits/random.tcc:3369:       __ret = __sum / __tmp;
	mulss	%xmm3, %xmm0	# tmp197, __ret
# /usr/include/c++/11.3.0/bits/random.tcc:3370:       if (__builtin_expect(__ret >= _RealType(1), 0))
	comiss	%xmm2, %xmm0	# tmp198, __ret
	jnb	.L65	#,
.L75:
# /usr/include/c++/11.3.0/bits/random.h:1870: 	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
	addss	%xmm1, %xmm0	# tmp196, _85
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:51:         b[i] = distr(rng);
	movss	%xmm0, (%r12,%r15,4)	# _85, MEM[(float *)b_17(D) + i_67 * 4]
# /usr/include/c++/11.3.0/bits/random.tcc:455:       if (_M_p >= state_size)
	cmpq	$623, %rcx	#, prephitmp_48
	ja	.L69	#,
.L56:
# /usr/include/c++/11.3.0/bits/random.tcc:459:       result_type __z = _M_x[_M_p++];
	movq	(%rsp,%rcx,8), %rax	# rng._M_x[prephitmp_48], __z
# /usr/include/c++/11.3.0/bits/random.tcc:459:       result_type __z = _M_x[_M_p++];
	leaq	1(%rcx), %rdx	#, __i
	movq	%rdx, 4992(%rsp)	# __i, rng._M_p
# /usr/include/c++/11.3.0/bits/random.tcc:460:       __z ^= (__z >> __u) & __d;
	movq	%rax, %rcx	# __z, tmp180
	shrq	$11, %rcx	#, tmp180
# /usr/include/c++/11.3.0/bits/random.tcc:460:       __z ^= (__z >> __u) & __d;
	movl	%ecx, %ecx	# tmp180, _126
# /usr/include/c++/11.3.0/bits/random.tcc:460:       __z ^= (__z >> __u) & __d;
	xorq	%rcx, %rax	# _126, __z
# /usr/include/c++/11.3.0/bits/random.tcc:461:       __z ^= (__z << __s) & __b;
	movq	%rax, %rcx	# __z, tmp181
	salq	$7, %rcx	#, tmp181
# /usr/include/c++/11.3.0/bits/random.tcc:461:       __z ^= (__z << __s) & __b;
	andl	$2636928640, %ecx	#, _129
# /usr/include/c++/11.3.0/bits/random.tcc:461:       __z ^= (__z << __s) & __b;
	xorq	%rcx, %rax	# _129, __z
# /usr/include/c++/11.3.0/bits/random.tcc:462:       __z ^= (__z << __t) & __c;
	movq	%rax, %rcx	# __z, tmp182
	salq	$15, %rcx	#, tmp182
# /usr/include/c++/11.3.0/bits/random.tcc:462:       __z ^= (__z << __t) & __c;
	andl	$4022730752, %ecx	#, _132
# /usr/include/c++/11.3.0/bits/random.tcc:462:       __z ^= (__z << __t) & __c;
	xorq	%rcx, %rax	# _132, __z
# /usr/include/c++/11.3.0/bits/random.tcc:463:       __z ^= (__z >> __l);
	movq	%rax, %rcx	# __z, _134
	shrq	$18, %rcx	#, _134
# /usr/include/c++/11.3.0/bits/random.tcc:3366: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	xorq	%rcx, %rax	# _134, __z
	js	.L57	#,
	pxor	%xmm0, %xmm0	# tmp184
	cvtsi2ssq	%rax, %xmm0	# __z, tmp184
# /usr/include/c++/11.3.0/bits/random.tcc:3366: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	addss	%xmm1, %xmm0	# tmp196, __sum
# /usr/include/c++/11.3.0/bits/random.tcc:3369:       __ret = __sum / __tmp;
	mulss	%xmm3, %xmm0	# tmp197, __ret
# /usr/include/c++/11.3.0/bits/random.tcc:3370:       if (__builtin_expect(__ret >= _RealType(1), 0))
	comiss	%xmm2, %xmm0	# tmp198, __ret
	jnb	.L59	#,
.L73:
# /usr/include/c++/11.3.0/bits/random.h:1870: 	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
	addss	%xmm1, %xmm0	# tmp196, tmp192
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:52:         c[i] = distr(rng);
	movss	%xmm0, 0(%r13,%r15,4)	# tmp192, MEM[(float *)c_19(D) + i_67 * 4]
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:48:     for (size_t i = 0; i < length; ++i)
	addq	$1, %r15	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:48:     for (size_t i = 0; i < length; ++i)
	cmpq	%rbx, %r15	# _64, i
	je	.L45	#,
.L47:
# /usr/include/c++/11.3.0/bits/random.tcc:455:       if (_M_p >= state_size)
	cmpq	$623, %rdx	#, __i
	ja	.L70	#,
.L48:
# /usr/include/c++/11.3.0/bits/random.tcc:459:       result_type __z = _M_x[_M_p++];
	movq	(%rsp,%rdx,8), %rax	# rng._M_x[prephitmp_150], __z
# /usr/include/c++/11.3.0/bits/random.tcc:459:       result_type __z = _M_x[_M_p++];
	leaq	1(%rdx), %rsi	#, _93
	movq	%rsi, 4992(%rsp)	# _93, rng._M_p
# /usr/include/c++/11.3.0/bits/random.tcc:460:       __z ^= (__z >> __u) & __d;
	movq	%rax, %rdx	# __z, tmp152
	shrq	$11, %rdx	#, tmp152
# /usr/include/c++/11.3.0/bits/random.tcc:460:       __z ^= (__z >> __u) & __d;
	movl	%edx, %edx	# tmp152, _96
# /usr/include/c++/11.3.0/bits/random.tcc:460:       __z ^= (__z >> __u) & __d;
	xorq	%rdx, %rax	# _96, __z
# /usr/include/c++/11.3.0/bits/random.tcc:461:       __z ^= (__z << __s) & __b;
	movq	%rax, %rdx	# __z, tmp153
	salq	$7, %rdx	#, tmp153
# /usr/include/c++/11.3.0/bits/random.tcc:461:       __z ^= (__z << __s) & __b;
	andl	$2636928640, %edx	#, _99
# /usr/include/c++/11.3.0/bits/random.tcc:461:       __z ^= (__z << __s) & __b;
	xorq	%rdx, %rax	# _99, __z
# /usr/include/c++/11.3.0/bits/random.tcc:462:       __z ^= (__z << __t) & __c;
	movq	%rax, %rdx	# __z, tmp154
	salq	$15, %rdx	#, tmp154
# /usr/include/c++/11.3.0/bits/random.tcc:462:       __z ^= (__z << __t) & __c;
	andl	$4022730752, %edx	#, _102
# /usr/include/c++/11.3.0/bits/random.tcc:462:       __z ^= (__z << __t) & __c;
	xorq	%rdx, %rax	# _102, __z
# /usr/include/c++/11.3.0/bits/random.tcc:463:       __z ^= (__z >> __l);
	movq	%rax, %rdx	# __z, _104
	shrq	$18, %rdx	#, _104
# /usr/include/c++/11.3.0/bits/random.tcc:3366: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	xorq	%rdx, %rax	# _104, __z
	jns	.L71	#,
	movq	%rax, %rdx	# __z, tmp158
	andl	$1, %eax	#, tmp159
	pxor	%xmm0, %xmm0	# tmp157
	shrq	%rdx	# tmp158
	orq	%rax, %rdx	# tmp159, tmp158
	cvtsi2ssq	%rdx, %xmm0	# tmp158, tmp157
	addss	%xmm0, %xmm0	# tmp157, tmp156
# /usr/include/c++/11.3.0/bits/random.tcc:3366: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	addss	%xmm1, %xmm0	# tmp196, __sum
# /usr/include/c++/11.3.0/bits/random.tcc:3369:       __ret = __sum / __tmp;
	mulss	%xmm3, %xmm0	# tmp197, __ret
# /usr/include/c++/11.3.0/bits/random.tcc:3370:       if (__builtin_expect(__ret >= _RealType(1), 0))
	comiss	%xmm2, %xmm0	# tmp198, __ret
	jb	.L72	#,
.L64:
	movss	.LC0(%rip), %xmm0	#, _46
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:50:         a[i] = distr(rng);
	movss	%xmm0, 0(%rbp,%r15,4)	# _46, MEM[(float *)a_15(D) + i_67 * 4]
# /usr/include/c++/11.3.0/bits/random.tcc:455:       if (_M_p >= state_size)
	cmpq	$623, %rsi	#, _93
	jbe	.L52	#,
	.p2align 4,,10
	.p2align 3
.L68:
# /usr/include/c++/11.3.0/bits/random.tcc:456: 	_M_gen_rand();
	movq	%r14, %rdi	# tmp199,
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv	#
# /usr/include/c++/11.3.0/bits/random.tcc:459:       result_type __z = _M_x[_M_p++];
	movq	4992(%rsp), %rsi	# rng._M_p, _93
	pxor	%xmm1, %xmm1	# tmp196
	movss	.LC3(%rip), %xmm2	#, tmp198
	movss	.LC2(%rip), %xmm3	#, tmp197
	jmp	.L52	#
	.p2align 4,,10
	.p2align 3
.L57:
# /usr/include/c++/11.3.0/bits/random.tcc:3366: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	movq	%rax, %rcx	# __z, tmp186
	andl	$1, %eax	#, tmp187
	pxor	%xmm0, %xmm0	# tmp185
	shrq	%rcx	# tmp186
	orq	%rax, %rcx	# tmp187, tmp186
	cvtsi2ssq	%rcx, %xmm0	# tmp186, tmp185
	addss	%xmm0, %xmm0	# tmp185, tmp184
# /usr/include/c++/11.3.0/bits/random.tcc:3366: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	addss	%xmm1, %xmm0	# tmp196, __sum
# /usr/include/c++/11.3.0/bits/random.tcc:3369:       __ret = __sum / __tmp;
	mulss	%xmm3, %xmm0	# tmp197, __ret
# /usr/include/c++/11.3.0/bits/random.tcc:3370:       if (__builtin_expect(__ret >= _RealType(1), 0))
	comiss	%xmm2, %xmm0	# tmp198, __ret
	jb	.L73	#,
.L59:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:52:         c[i] = distr(rng);
	movl	$0x3f7fffff, 0(%r13,%r15,4)	#, MEM[(float *)c_19(D) + i_67 * 4]
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:48:     for (size_t i = 0; i < length; ++i)
	addq	$1, %r15	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:48:     for (size_t i = 0; i < length; ++i)
	cmpq	%rbx, %r15	# _64, i
	jne	.L47	#,
.L45:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:54: }
	movq	5000(%rsp), %rax	# D.91993, tmp209
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp209
	jne	.L74	#,
	addq	$5016, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L53:
	.cfi_restore_state
# /usr/include/c++/11.3.0/bits/random.tcc:3366: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	movq	%rax, %rdx	# __z, tmp172
	andl	$1, %eax	#, tmp173
	pxor	%xmm0, %xmm0	# tmp171
	shrq	%rdx	# tmp172
	orq	%rax, %rdx	# tmp173, tmp172
	cvtsi2ssq	%rdx, %xmm0	# tmp172, tmp171
	addss	%xmm0, %xmm0	# tmp171, tmp170
# /usr/include/c++/11.3.0/bits/random.tcc:3366: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	addss	%xmm1, %xmm0	# tmp196, __sum
# /usr/include/c++/11.3.0/bits/random.tcc:3369:       __ret = __sum / __tmp;
	mulss	%xmm3, %xmm0	# tmp197, __ret
# /usr/include/c++/11.3.0/bits/random.tcc:3370:       if (__builtin_expect(__ret >= _RealType(1), 0))
	comiss	%xmm2, %xmm0	# tmp198, __ret
	jb	.L75	#,
.L65:
	movss	.LC0(%rip), %xmm0	#, _85
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:51:         b[i] = distr(rng);
	movss	%xmm0, (%r12,%r15,4)	# _85, MEM[(float *)b_17(D) + i_67 * 4]
# /usr/include/c++/11.3.0/bits/random.tcc:455:       if (_M_p >= state_size)
	cmpq	$623, %rcx	#, prephitmp_48
	jbe	.L56	#,
	.p2align 4,,10
	.p2align 3
.L69:
# /usr/include/c++/11.3.0/bits/random.tcc:456: 	_M_gen_rand();
	movq	%r14, %rdi	# tmp199,
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv	#
# /usr/include/c++/11.3.0/bits/random.tcc:459:       result_type __z = _M_x[_M_p++];
	movq	4992(%rsp), %rcx	# rng._M_p, prephitmp_48
	pxor	%xmm1, %xmm1	# tmp196
	movss	.LC3(%rip), %xmm2	#, tmp198
	movss	.LC2(%rip), %xmm3	#, tmp197
	jmp	.L56	#
	.p2align 4,,10
	.p2align 3
.L70:
# /usr/include/c++/11.3.0/bits/random.tcc:456: 	_M_gen_rand();
	movq	%r14, %rdi	# tmp199,
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv	#
# /usr/include/c++/11.3.0/bits/random.tcc:459:       result_type __z = _M_x[_M_p++];
	movq	4992(%rsp), %rdx	# rng._M_p, __i
	pxor	%xmm1, %xmm1	# tmp196
	movss	.LC3(%rip), %xmm2	#, tmp198
	movss	.LC2(%rip), %xmm3	#, tmp197
	jmp	.L48	#
.L74:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:54: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE4368:
	.size	_Z11fill_arraysPfS_S_i, .-_Z11fill_arraysPfS_S_i
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"Runtime: "
.LC5:
	.string	"ms"
	.text
	.p2align 4
	.globl	_Z12optimizationv
	.type	_Z12optimizationv, @function
_Z12optimizationv:
.LFB4356:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:12:     float* a = new float[length];
	movl	$268435456, %edi	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:10: {
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:12:     float* a = new float[length];
	call	_Znam@PLT	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:13:     float* b = new float[length];
	movl	$268435456, %edi	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:12:     float* a = new float[length];
	movq	%rax, %r15	# tmp170, _3
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:13:     float* b = new float[length];
	call	_Znam@PLT	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:14:     float* c = new float[length];
	movl	$268435456, %edi	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:13:     float* b = new float[length];
	movq	%rax, %rbx	# tmp171, _5
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:14:     float* c = new float[length];
	call	_Znam@PLT	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:15:     float* result = new float[length];
	movl	$268435456, %edi	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:14:     float* c = new float[length];
	movq	%rax, %rbp	# tmp172, _7
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:15:     float* result = new float[length];
	call	_Znam@PLT	#
	movq	%rax, %r12	# tmp173, _9
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:18:         const auto time_start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:19:         fun(args...);
	movl	$67108864, %ecx	#,
	movq	%rbp, %rdx	# _7,
	movq	%rbx, %rsi	# _5,
	movq	%r15, %rdi	# _3,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:18:         const auto time_start = std::chrono::high_resolution_clock::now();
	movq	%rax, %r13	# tmp174, time_start
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:19:         fun(args...);
	call	_Z11fill_arraysPfS_S_i	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:20:         const auto time_end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	leaq	.LC4(%rip), %rsi	#,
# /usr/include/c++/11.3.0/chrono:227: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	movabsq	$4835703278458516699, %rdx	#, tmp138
# /usr/include/c++/11.3.0/chrono:666: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%r13, %rax	# time_start, tmp175
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %r13	#, tmp169
# /usr/include/c++/11.3.0/chrono:666: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	movq	%rax, %rcx	# tmp175, tmp136
# /usr/include/c++/11.3.0/chrono:227: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	imulq	%rdx	# tmp138
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	movq	%r13, %rdi	# tmp169,
# /usr/include/c++/11.3.0/chrono:227: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	sarq	$63, %rcx	#, tmp140
	sarq	$18, %rdx	#, tmp139
	subq	%rcx, %rdx	# tmp140, tmp139
	movq	%rdx, %r14	# tmp139, _25
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/11.3.0/ostream:167:       { return _M_insert(__n); }
	movq	%r14, %rsi	# _25,
	movq	%r13, %rdi	# tmp169,
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	leaq	.LC5(%rip), %r14	#, tmp168
# /usr/include/c++/11.3.0/ostream:167:       { return _M_insert(__n); }
	call	_ZNSo9_M_insertIlEERSoT_@PLT	#
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
	movq	%r14, %rsi	# tmp168,
	movq	%rax, %rdi	# _26,
	movq	%rax, (%rsp)	# _26, %sfp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/11.3.0/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movq	(%rsp), %r9	# %sfp, _26
	movq	(%r9), %rax	# MEM[(struct basic_ostream *)_26]._vptr.basic_ostream, MEM[(struct basic_ostream *)_26]._vptr.basic_ostream
	movq	-24(%rax), %rax	# MEM[(long int *)_27 + -24B], MEM[(long int *)_27 + -24B]
	movq	240(%r9,%rax), %rdi	# MEM[(const struct __ctype_type * *)_30 + 240B], _35
# /usr/include/c++/11.3.0/bits/basic_ios.h:49:       if (!__f)
	testq	%rdi, %rdi	# _35
	je	.L81	#,
# /usr/include/c++/11.3.0/bits/locale_facets.h:877: 	if (_M_widen_ok)
	cmpb	$0, 56(%rdi)	#, MEM[(const struct ctype *)_35]._M_widen_ok
	je	.L78	#,
# /usr/include/c++/11.3.0/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movsbl	67(%rdi), %esi	# MEM[(const struct ctype *)_35]._M_widen[10], _109
.L79:
	movq	%r9, %rdi	# _26,
	call	_ZNSo3putEc@PLT	#
	movq	%rax, %rdi	# tmp178, _33
# /usr/include/c++/11.3.0/ostream:707:     { return __os.flush(); }
	call	_ZNSo5flushEv@PLT	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:18:         const auto time_start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	xorl	%edx, %edx	# ivtmp.218
	movq	%rax, %rsi	# tmp179, time_start
	.p2align 4,,10
	.p2align 3
.L80:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	movups	(%rbx,%rdx), %xmm0	# MEM <vector(4) float> [(float *)_5 + ivtmp.218_43 * 1], vect__70.207
	movups	(%r15,%rdx), %xmm1	# MEM <vector(4) float> [(float *)_3 + ivtmp.218_43 * 1], tmp191
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	movups	0(%rbp,%rdx), %xmm2	# MEM <vector(4) float> [(float *)_7 + ivtmp.218_43 * 1], tmp192
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	addps	%xmm1, %xmm0	# tmp191, vect__70.207
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	addps	%xmm2, %xmm0	# tmp192, vect__74.211
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	movups	%xmm0, (%r12,%rdx)	# vect__74.211, MEM <vector(4) float> [(float *)_9 + ivtmp.218_43 * 1]
	addq	$16, %rdx	#, ivtmp.218
	cmpq	$268435456, %rdx	#, ivtmp.218
	jne	.L80	#,
	movq	%rsi, (%rsp)	# time_start, %sfp
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:20:         const auto time_end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/11.3.0/chrono:666: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	movq	(%rsp), %rsi	# %sfp, time_start
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	movq	%r13, %rdi	# tmp169,
# /usr/include/c++/11.3.0/chrono:227: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	movabsq	$4835703278458516699, %rdx	#, tmp156
# /usr/include/c++/11.3.0/chrono:666: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%rsi, %rax	# time_start, tmp180
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	leaq	.LC4(%rip), %rsi	#,
# /usr/include/c++/11.3.0/chrono:666: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	movq	%rax, %rcx	# tmp180, tmp154
# /usr/include/c++/11.3.0/chrono:227: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	imulq	%rdx	# tmp156
	sarq	$63, %rcx	#, tmp158
	sarq	$18, %rdx	#, tmp157
	subq	%rcx, %rdx	# tmp158, tmp157
	movq	%rdx, (%rsp)	# _20, %sfp
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	movl	$9, %edx	#,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/11.3.0/ostream:167:       { return _M_insert(__n); }
	movq	(%rsp), %rsi	# %sfp,
	movq	%r13, %rdi	# tmp169,
	call	_ZNSo9_M_insertIlEERSoT_@PLT	#
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	movq	%r14, %rsi	# tmp168,
	movl	$2, %edx	#,
# /usr/include/c++/11.3.0/ostream:167:       { return _M_insert(__n); }
	movq	%rax, %r13	# tmp181, _21
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	movq	%rax, %rdi	# _21,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/11.3.0/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movq	0(%r13), %rax	# MEM[(struct basic_ostream *)_21]._vptr.basic_ostream, MEM[(struct basic_ostream *)_21]._vptr.basic_ostream
	movq	-24(%rax), %rax	# MEM[(long int *)_55 + -24B], MEM[(long int *)_55 + -24B]
	movq	240(%r13,%rax), %r14	# MEM[(const struct __ctype_type * *)_58 + 240B], _63
# /usr/include/c++/11.3.0/bits/basic_ios.h:49:       if (!__f)
	testq	%r14, %r14	# _63
	je	.L81	#,
# /usr/include/c++/11.3.0/bits/locale_facets.h:877: 	if (_M_widen_ok)
	cmpb	$0, 56(%r14)	#, MEM[(const struct ctype *)_63]._M_widen_ok
	je	.L82	#,
# /usr/include/c++/11.3.0/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movsbl	67(%r14), %esi	# MEM[(const struct ctype *)_63]._M_widen[10], _88
.L83:
	movq	%r13, %rdi	# _21,
	call	_ZNSo3putEc@PLT	#
	movq	%rax, %rdi	# tmp183, _61
# /usr/include/c++/11.3.0/ostream:707:     { return __os.flush(); }
	call	_ZNSo5flushEv@PLT	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:29:     delete[] a;
	movq	%r15, %rdi	# _3,
	call	_ZdaPv@PLT	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:30:     delete[] b;
	movq	%rbx, %rdi	# _5,
	call	_ZdaPv@PLT	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:31:     delete[] c;
	movq	%rbp, %rdi	# _7,
	call	_ZdaPv@PLT	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:33: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:32:     delete[] result;
	movq	%r12, %rdi	# _9,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:33: }
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:32:     delete[] result;
	jmp	_ZdaPv@PLT	#
	.p2align 4,,10
	.p2align 3
.L78:
	.cfi_restore_state
	movq	%r9, 8(%rsp)	# _26, %sfp
# /usr/include/c++/11.3.0/bits/locale_facets.h:879: 	this->_M_widen_init();
	movq	%rdi, (%rsp)	# _35, %sfp
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT	#
# /usr/include/c++/11.3.0/bits/locale_facets.h:880: 	return this->do_widen(__c);
	movq	(%rsp), %rdi	# %sfp, _35
	movq	8(%rsp), %r9	# %sfp, _26
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx	#, tmp148
	movl	$10, %esi	#, _109
	movq	(%rdi), %rax	# MEM[(const struct ctype *)_35].D.37156._vptr.facet, MEM[(const struct ctype *)_35].D.37156._vptr.facet
	movq	48(%rax), %rax	# MEM[(int (*) () *)_45 + 48B], _46
	cmpq	%rdx, %rax	# tmp148, _46
	je	.L79	#,
	movq	%r9, (%rsp)	# _26, %sfp
	call	*%rax	# _46
# /usr/include/c++/11.3.0/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movq	(%rsp), %r9	# %sfp, _26
	movsbl	%al, %esi	# tmp177, _109
	jmp	.L79	#
	.p2align 4,,10
	.p2align 3
.L82:
# /usr/include/c++/11.3.0/bits/locale_facets.h:879: 	this->_M_widen_init();
	movq	%r14, %rdi	# _63,
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT	#
# /usr/include/c++/11.3.0/bits/locale_facets.h:880: 	return this->do_widen(__c);
	movq	(%r14), %rax	# MEM[(const struct ctype *)_63].D.37156._vptr.facet, MEM[(const struct ctype *)_63].D.37156._vptr.facet
	movl	$10, %esi	#, _88
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx	#, tmp166
	movq	48(%rax), %rax	# MEM[(int (*) () *)_86 + 48B], _87
	cmpq	%rdx, %rax	# tmp166, _87
	je	.L83	#,
	movq	%r14, %rdi	# _63,
	call	*%rax	# _87
# /usr/include/c++/11.3.0/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movsbl	%al, %esi	# tmp182, _88
	jmp	.L83	#
.L81:
# /usr/include/c++/11.3.0/bits/basic_ios.h:50: 	__throw_bad_cast();
	call	_ZSt16__throw_bad_castv@PLT	#
	.cfi_endproc
.LFE4356:
	.size	_Z12optimizationv, .-_Z12optimizationv
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB4369:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:60:     optimization();
	call	_Z12optimizationv	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:62: }
	xorl	%eax, %eax	#
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE4369:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I__Z12optimizationv, @function
_GLOBAL__sub_I__Z12optimizationv:
.LFB5096:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# /usr/include/c++/11.3.0/iostream:74:   static ios_base::Init __ioinit;
	leaq	_ZStL8__ioinit(%rip), %rbp	#, tmp82
	movq	%rbp, %rdi	# tmp82,
	call	_ZNSt8ios_base4InitC1Ev@PLT	#
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi	#,
	movq	%rbp, %rsi	# tmp82,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:62: }
	popq	%rbp	#
	.cfi_def_cfa_offset 8
# /usr/include/c++/11.3.0/iostream:74:   static ios_base::Init __ioinit;
	leaq	__dso_handle(%rip), %rdx	#, tmp83
	jmp	__cxa_atexit@PLT	#
	.cfi_endproc
.LFE5096:
	.size	_GLOBAL__sub_I__Z12optimizationv, .-_GLOBAL__sub_I__Z12optimizationv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z12optimizationv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1065353215
	.align 4
.LC2:
	.long	796917760
	.align 4
.LC3:
	.long	1065353216
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
