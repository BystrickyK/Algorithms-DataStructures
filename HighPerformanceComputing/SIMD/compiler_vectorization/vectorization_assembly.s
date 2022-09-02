	.file	"vectorization.cpp"
# GNU C++17 (GCC) version 11.3.0 (x86_64-unknown-linux-gnu)
#	compiled by GNU C version 11.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -std=c++17
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
	.align 4
	.type	_ZN9__gnu_cxxL21__default_lock_policyE, @object
	.size	_ZN9__gnu_cxxL21__default_lock_policyE, 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.long	2
	.type	_ZN6__pstl9execution2v1L3seqE, @object
	.size	_ZN6__pstl9execution2v1L3seqE, 1
_ZN6__pstl9execution2v1L3seqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L3parE, @object
	.size	_ZN6__pstl9execution2v1L3parE, 1
_ZN6__pstl9execution2v1L3parE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L9par_unseqE, @object
	.size	_ZN6__pstl9execution2v1L9par_unseqE, 1
_ZN6__pstl9execution2v1L9par_unseqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L5unseqE, @object
	.size	_ZN6__pstl9execution2v1L5unseqE, 1
_ZN6__pstl9execution2v1L5unseqE:
	.zero	1
	.section	.text._ZSt9nextafterff,"axG",@progbits,_ZSt9nextafterff,comdat
	.weak	_ZSt9nextafterff
	.type	_ZSt9nextafterff, @function
_ZSt9nextafterff:
.LFB2817:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movss	%xmm0, -4(%rbp)	# __x, __x
	movss	%xmm1, -8(%rbp)	# __y, __y
# /usr/include/c++/11.3.0/cmath:1661:   { return __builtin_nextafterf(__x, __y); }
	movss	-8(%rbp), %xmm0	# __y, tmp84
	movl	-4(%rbp), %eax	# __x, tmp85
	movaps	%xmm0, %xmm1	# tmp84,
	movd	%eax, %xmm0	# tmp85,
	call	nextafterf@PLT	#
# /usr/include/c++/11.3.0/cmath:1661:   { return __builtin_nextafterf(__x, __y); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2817:
	.size	_ZSt9nextafterff, .-_ZSt9nextafterff
	.section	.text._ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,comdat
	.align 2
	.weak	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.type	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, @function
_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv:
.LFB4279:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/11.3.0/chrono:538: 	{ return __r; }
	movq	-8(%rbp), %rax	# this, tmp84
	movq	(%rax), %rax	# this_2(D)->__r, _3
# /usr/include/c++/11.3.0/chrono:538: 	{ return __r; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4279:
	.size	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, .-_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.section	.text._ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	.type	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_, @function
_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_:
.LFB4284:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __rep, __rep
# /usr/include/c++/11.3.0/chrono:522: 	  : __r(static_cast<rep>(__rep)) { }
	movq	-16(%rbp), %rax	# __rep, tmp83
	movq	(%rax), %rdx	# *__rep_5(D), _1
# /usr/include/c++/11.3.0/chrono:522: 	  : __r(static_cast<rep>(__rep)) { }
	movq	-8(%rbp), %rax	# this, tmp84
	movq	%rdx, (%rax)	# _1, this_3(D)->__r
# /usr/include/c++/11.3.0/chrono:522: 	  : __r(static_cast<rep>(__rep)) { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4284:
	.size	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_, .-_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	.section	.text._ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv,comdat
	.align 2
	.weak	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	.type	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv, @function
_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv:
.LFB4311:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/11.3.0/chrono:538: 	{ return __r; }
	movq	-8(%rbp), %rax	# this, tmp84
	movq	(%rax), %rax	# this_2(D)->__r, _3
# /usr/include/c++/11.3.0/chrono:538: 	{ return __r; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4311:
	.size	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv, .-_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv
	.section	.text._ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,"axG",@progbits,_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,comdat
	.weak	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.type	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, @function
_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE:
.LFB4312:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# __d, __d
# /usr/include/c++/11.3.0/chrono:276: 	return __dc::__cast(__d);
	movq	-8(%rbp), %rax	# __d, tmp84
	movq	%rax, %rdi	# tmp84,
	call	_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE	#
# /usr/include/c++/11.3.0/chrono:277:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4312:
	.size	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, .-_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.section	.text._ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"axG",@progbits,_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,comdat
	.weak	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.type	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, @function
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:
.LFB4313:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# __lhs, __lhs
	movq	%rsi, -48(%rbp)	# __rhs, __rhs
# /usr/include/c++/11.3.0/chrono:1042:       operator-(const time_point<_Clock, _Dur1>& __lhs,
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp93
	movq	%rax, -8(%rbp)	# tmp93, D.91404
	xorl	%eax, %eax	# tmp93
# /usr/include/c++/11.3.0/chrono:1044:       { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
	movq	-48(%rbp), %rax	# __rhs, tmp84
	movq	%rax, %rdi	# tmp84,
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv	#
	movq	%rax, -16(%rbp)	# tmp86, D.83126
# /usr/include/c++/11.3.0/chrono:1044:       { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
	movq	-40(%rbp), %rax	# __lhs, tmp87
	movq	%rax, %rdi	# tmp87,
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv	#
	movq	%rax, -24(%rbp)	# tmp89, D.83125
# /usr/include/c++/11.3.0/chrono:1044:       { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
	leaq	-16(%rbp), %rdx	#, tmp90
	leaq	-24(%rbp), %rax	#, tmp91
	movq	%rdx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_	#
# /usr/include/c++/11.3.0/chrono:1044:       { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
	movq	-8(%rbp), %rdx	# D.91404, tmp94
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp94
	je	.L12	#,
	call	__stack_chk_fail@PLT	#
.L12:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4313:
	.size	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, .-_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.section	.text._ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"axG",@progbits,_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,comdat
	.weak	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.type	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, @function
_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:
.LFB4314:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# __lhs, __lhs
	movq	%rsi, -80(%rbp)	# __rhs, __rhs
# /usr/include/c++/11.3.0/chrono:660:       operator-(const duration<_Rep1, _Period1>& __lhs,
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp96
	movq	%rax, -24(%rbp)	# tmp96, D.91406
	xorl	%eax, %eax	# tmp96
# /usr/include/c++/11.3.0/chrono:666: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	movq	-72(%rbp), %rax	# __lhs, tmp87
	movq	(%rax), %rax	# *__lhs_5(D), tmp88
	movq	%rax, -56(%rbp)	# tmp88, D.83143
# /usr/include/c++/11.3.0/chrono:666: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	leaq	-56(%rbp), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv	#
	movq	%rax, %rbx	#, _1
# /usr/include/c++/11.3.0/chrono:666: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	movq	-80(%rbp), %rax	# __rhs, tmp90
	movq	(%rax), %rax	# *__rhs_8(D), tmp91
	movq	%rax, -48(%rbp)	# tmp91, D.83144
# /usr/include/c++/11.3.0/chrono:666: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	leaq	-48(%rbp), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv	#
	movq	%rax, %rdx	#, _2
# /usr/include/c++/11.3.0/chrono:666: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	movq	%rbx, %rax	# _1, _1
	subq	%rdx, %rax	# _2, _1
	movq	%rax, -40(%rbp)	# _3, D.83145
# /usr/include/c++/11.3.0/chrono:666: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	leaq	-40(%rbp), %rdx	#, tmp93
	leaq	-32(%rbp), %rax	#, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_	#
# /usr/include/c++/11.3.0/chrono:666: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	movq	-32(%rbp), %rax	# D.83146, D.91275
# /usr/include/c++/11.3.0/chrono:667:       }
	movq	-24(%rbp), %rdx	# D.91406, tmp97
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp97
	je	.L15	#,
	call	__stack_chk_fail@PLT	#
.L15:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4314:
	.size	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, .-_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.section	.text._ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,"axG",@progbits,_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,comdat
	.align 2
	.weak	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.type	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, @function
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv:
.LFB4315:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/11.3.0/chrono:899: 	{ return __d; }
	movq	-8(%rbp), %rax	# this, tmp84
	movq	(%rax), %rax	# this_2(D)->__d, D.91273
# /usr/include/c++/11.3.0/chrono:899: 	{ return __d; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4315:
	.size	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, .-_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.section	.rodata
.LC0:
	.string	"Runtime: "
.LC1:
	.string	"ms"
	.text
	.align 2
	.type	_ZZ12optimizationvENKUlT_DpT0_E_clIPFvPfS4_S4_iEJS4_S4_S4_iEEEDaS_S1_, @function
_ZZ12optimizationvENKUlT_DpT0_E_clIPFvPfS4_S4_iEJS4_S4_S4_iEEEDaS_S1_:
.LFB4318:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -56(%rbp)	# __closure, __closure
	movq	%rsi, -64(%rbp)	# fun, fun
	movq	%rdx, -72(%rbp)	# args#0, args#0
	movq	%rcx, -80(%rbp)	# args#1, args#1
	movq	%r8, -88(%rbp)	# args#2, args#2
	movl	%r9d, -92(%rbp)	# args#3, args#3
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:17:     auto time_fun = [](auto fun, auto... args){
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	movq	%rax, -8(%rbp)	# tmp109, D.91407
	xorl	%eax, %eax	# tmp109
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:18:         const auto time_start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, -48(%rbp)	# tmp87, time_start
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:19:         fun(args...);
	movq	-64(%rbp), %r8	# fun, fun.0_1
	movl	-92(%rbp), %ecx	# args#3, tmp88
	movq	-88(%rbp), %rdx	# args#2, tmp89
	movq	-80(%rbp), %rsi	# args#1, tmp90
	movq	-72(%rbp), %rax	# args#0, tmp91
	movq	%rax, %rdi	# tmp91,
	call	*%r8	# fun.0_1
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:20:         const auto time_end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, -40(%rbp)	# tmp93, time_end
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:21:         const auto runtime = std::chrono::duration_cast<std::chrono::milliseconds>(time_end - time_start).count();
	leaq	-48(%rbp), %rdx	#, tmp94
	leaq	-40(%rbp), %rax	#, tmp95
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE	#
	movq	%rax, -32(%rbp)	# tmp97, D.83290
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:21:         const auto runtime = std::chrono::duration_cast<std::chrono::milliseconds>(time_end - time_start).count();
	leaq	-32(%rbp), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE	#
	movq	%rax, -24(%rbp)	# tmp100, D.83291
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:21:         const auto runtime = std::chrono::duration_cast<std::chrono::milliseconds>(time_end - time_start).count();
	leaq	-24(%rbp), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv	#
	movq	%rax, -16(%rbp)	# tmp102, runtime
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:22:         std::cout << "Runtime: " << runtime << "ms" << std::endl;
	leaq	.LC0(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	_ZSt4cout(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _2
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:22:         std::cout << "Runtime: " << runtime << "ms" << std::endl;
	movq	-16(%rbp), %rax	# runtime, tmp105
	movq	%rax, %rsi	# tmp105,
	movq	%rdx, %rdi	# _2,
	call	_ZNSolsEl@PLT	#
	movq	%rax, %rdx	#, _3
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:22:         std::cout << "Runtime: " << runtime << "ms" << std::endl;
	leaq	.LC1(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	movq	%rdx, %rdi	# _3,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:22:         std::cout << "Runtime: " << runtime << "ms" << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp108
	movq	%rdx, %rsi	# tmp107,
	movq	%rax, %rdi	# _4,
	call	_ZNSolsEPFRSoS_E@PLT	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:23:     };
	nop	
	movq	-8(%rbp), %rax	# D.91407, tmp110
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp110
	je	.L19	#,
	call	__stack_chk_fail@PLT	#
.L19:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4318:
	.size	_ZZ12optimizationvENKUlT_DpT0_E_clIPFvPfS4_S4_iEJS4_S4_S4_iEEEDaS_S1_, .-_ZZ12optimizationvENKUlT_DpT0_E_clIPFvPfS4_S4_iEJS4_S4_S4_iEEEDaS_S1_
	.align 2
	.type	_ZZ12optimizationvENKUlT_DpT0_E_clIPFvPfS4_S4_S4_iEJS4_S4_S4_S4_iEEEDaS_S1_, @function
_ZZ12optimizationvENKUlT_DpT0_E_clIPFvPfS4_S4_S4_iEJS4_S4_S4_S4_iEEEDaS_S1_:
.LFB4319:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -56(%rbp)	# __closure, __closure
	movq	%rsi, -64(%rbp)	# fun, fun
	movq	%rdx, -72(%rbp)	# args#0, args#0
	movq	%rcx, -80(%rbp)	# args#1, args#1
	movq	%r8, -88(%rbp)	# args#2, args#2
	movq	%r9, -96(%rbp)	# args#3, args#3
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:17:     auto time_fun = [](auto fun, auto... args){
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	movq	%rax, -8(%rbp)	# tmp109, D.91410
	xorl	%eax, %eax	# tmp109
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:18:         const auto time_start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, -48(%rbp)	# tmp87, time_start
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:19:         fun(args...);
	movq	-64(%rbp), %r9	# fun, fun.1_1
	movq	-96(%rbp), %rcx	# args#3, tmp88
	movq	-88(%rbp), %rdx	# args#2, tmp89
	movq	-80(%rbp), %rsi	# args#1, tmp90
	movq	-72(%rbp), %rax	# args#0, tmp91
	movl	16(%rbp), %r8d	# args#4,
	movq	%rax, %rdi	# tmp91,
	call	*%r9	# fun.1_1
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:20:         const auto time_end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, -40(%rbp)	# tmp93, time_end
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:21:         const auto runtime = std::chrono::duration_cast<std::chrono::milliseconds>(time_end - time_start).count();
	leaq	-48(%rbp), %rdx	#, tmp94
	leaq	-40(%rbp), %rax	#, tmp95
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE	#
	movq	%rax, -32(%rbp)	# tmp97, D.83313
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:21:         const auto runtime = std::chrono::duration_cast<std::chrono::milliseconds>(time_end - time_start).count();
	leaq	-32(%rbp), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE	#
	movq	%rax, -24(%rbp)	# tmp100, D.83314
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:21:         const auto runtime = std::chrono::duration_cast<std::chrono::milliseconds>(time_end - time_start).count();
	leaq	-24(%rbp), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000EEE5countEv	#
	movq	%rax, -16(%rbp)	# tmp102, runtime
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:22:         std::cout << "Runtime: " << runtime << "ms" << std::endl;
	leaq	.LC0(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	_ZSt4cout(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rax, %rdx	#, _2
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:22:         std::cout << "Runtime: " << runtime << "ms" << std::endl;
	movq	-16(%rbp), %rax	# runtime, tmp105
	movq	%rax, %rsi	# tmp105,
	movq	%rdx, %rdi	# _2,
	call	_ZNSolsEl@PLT	#
	movq	%rax, %rdx	#, _3
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:22:         std::cout << "Runtime: " << runtime << "ms" << std::endl;
	leaq	.LC1(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	movq	%rdx, %rdi	# _3,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:22:         std::cout << "Runtime: " << runtime << "ms" << std::endl;
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx	#, tmp108
	movq	%rdx, %rsi	# tmp107,
	movq	%rax, %rdi	# _4,
	call	_ZNSolsEPFRSoS_E@PLT	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:23:     };
	nop	
	movq	-8(%rbp), %rax	# D.91410, tmp110
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp110
	je	.L21	#,
	call	__stack_chk_fail@PLT	#
.L21:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4319:
	.size	_ZZ12optimizationvENKUlT_DpT0_E_clIPFvPfS4_S4_S4_iEJS4_S4_S4_S4_iEEEDaS_S1_, .-_ZZ12optimizationvENKUlT_DpT0_E_clIPFvPfS4_S4_S4_iEJS4_S4_S4_S4_iEEEDaS_S1_
	.globl	_Z12optimizationv
	.type	_Z12optimizationv, @function
_Z12optimizationv:
.LFB4309:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:10: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp105
	movq	%rax, -8(%rbp)	# tmp105, D.91411
	xorl	%eax, %eax	# tmp105
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:11:     const int length = 1024 * 1024 * 64;
	movl	$67108864, -44(%rbp)	#, length
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:12:     float* a = new float[length];
	movl	$268435456, %edi	#,
	call	_Znam@PLT	#
	movq	%rax, -40(%rbp)	# _9, a
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:13:     float* b = new float[length];
	movl	$268435456, %edi	#,
	call	_Znam@PLT	#
	movq	%rax, -32(%rbp)	# _12, b
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:14:     float* c = new float[length];
	movl	$268435456, %edi	#,
	call	_Znam@PLT	#
	movq	%rax, -24(%rbp)	# _15, c
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:15:     float* result = new float[length];
	movl	$268435456, %edi	#,
	call	_Znam@PLT	#
	movq	%rax, -16(%rbp)	# _18, result
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:25:     time_fun(fill_arrays, a, b, c, length);
	movq	-24(%rbp), %rsi	# c, tmp90
	movq	-32(%rbp), %rcx	# b, tmp91
	movq	-40(%rbp), %rdx	# a, tmp92
	leaq	-45(%rbp), %rax	#, tmp93
	movl	$67108864, %r9d	#,
	movq	%rsi, %r8	# tmp90,
	leaq	_Z11fill_arraysPfS_S_i(%rip), %rsi	#, tmp94
	movq	%rax, %rdi	# tmp93,
	call	_ZZ12optimizationvENKUlT_DpT0_E_clIPFvPfS4_S4_iEJS4_S4_S4_iEEEDaS_S1_	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:26:     time_fun(simple_mad, a, b, c, result, length);
	movq	-16(%rbp), %rdi	# result, tmp95
	movq	-24(%rbp), %rsi	# c, tmp96
	movq	-32(%rbp), %rcx	# b, tmp97
	movq	-40(%rbp), %rdx	# a, tmp98
	leaq	-45(%rbp), %rax	#, tmp99
	subq	$8, %rsp	#,
	pushq	$67108864	#
	movq	%rdi, %r9	# tmp95,
	movq	%rsi, %r8	# tmp96,
	leaq	_Z10simple_madPfS_S_S_i(%rip), %rsi	#, tmp100
	movq	%rax, %rdi	# tmp99,
	call	_ZZ12optimizationvENKUlT_DpT0_E_clIPFvPfS4_S4_S4_iEJS4_S4_S4_S4_iEEEDaS_S1_	#
	addq	$16, %rsp	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:29:     delete[] a;
	cmpq	$0, -40(%rbp)	#, a
	je	.L23	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:29:     delete[] a;
	movq	-40(%rbp), %rax	# a, tmp101
	movq	%rax, %rdi	# tmp101,
	call	_ZdaPv@PLT	#
.L23:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:30:     delete[] b;
	cmpq	$0, -32(%rbp)	#, b
	je	.L24	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:30:     delete[] b;
	movq	-32(%rbp), %rax	# b, tmp102
	movq	%rax, %rdi	# tmp102,
	call	_ZdaPv@PLT	#
.L24:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:31:     delete[] c;
	cmpq	$0, -24(%rbp)	#, c
	je	.L25	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:31:     delete[] c;
	movq	-24(%rbp), %rax	# c, tmp103
	movq	%rax, %rdi	# tmp103,
	call	_ZdaPv@PLT	#
.L25:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:32:     delete[] result;
	cmpq	$0, -16(%rbp)	#, result
	je	.L28	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:32:     delete[] result;
	movq	-16(%rbp), %rax	# result, tmp104
	movq	%rax, %rdi	# tmp104,
	call	_ZdaPv@PLT	#
.L28:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:33: }
	nop	
	movq	-8(%rbp), %rax	# D.91411, tmp106
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp106
	je	.L27	#,
	call	__stack_chk_fail@PLT	#
.L27:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4309:
	.size	_Z12optimizationv, .-_Z12optimizationv
	.globl	_Z10simple_madPfS_S_S_i
	.type	_Z10simple_madPfS_S_S_i, @function
_Z10simple_madPfS_S_S_i:
.LFB4320:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	movq	%rdx, -40(%rbp)	# c, c
	movq	%rcx, -48(%rbp)	# result, result
	movl	%r8d, -52(%rbp)	# length, length
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:38:     for(size_t i = 0; i < length; ++i)
	movq	$0, -8(%rbp)	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:38:     for(size_t i = 0; i < length; ++i)
	jmp	.L30	#
.L31:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	movq	-8(%rbp), %rax	# i, tmp96
	leaq	0(,%rax,4), %rdx	#, _1
	movq	-24(%rbp), %rax	# a, tmp97
	addq	%rdx, %rax	# _1, _2
	movss	(%rax), %xmm1	# *_2, _3
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	movq	-8(%rbp), %rax	# i, tmp98
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-32(%rbp), %rax	# b, tmp99
	addq	%rdx, %rax	# _4, _5
	movss	(%rax), %xmm0	# *_5, _6
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	addss	%xmm0, %xmm1	# _6, _7
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	movq	-8(%rbp), %rax	# i, tmp100
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-40(%rbp), %rax	# c, tmp101
	addq	%rdx, %rax	# _8, _9
	movss	(%rax), %xmm0	# *_9, _10
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	movq	-8(%rbp), %rax	# i, tmp102
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-48(%rbp), %rax	# result, tmp103
	addq	%rdx, %rax	# _11, _12
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	addss	%xmm1, %xmm0	# _7, _13
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:39:         result[i] = a[i] + b[i] + c[i];
	movss	%xmm0, (%rax)	# _13, *_12
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:38:     for(size_t i = 0; i < length; ++i)
	addq	$1, -8(%rbp)	#, i
.L30:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:38:     for(size_t i = 0; i < length; ++i)
	movl	-52(%rbp), %eax	# length, tmp104
	cltq
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:38:     for(size_t i = 0; i < length; ++i)
	cmpq	%rax, -8(%rbp)	# _14, i
	jb	.L31	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:40: }
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4320:
	.size	_Z10simple_madPfS_S_S_i, .-_Z10simple_madPfS_S_S_i
	.globl	_Z11fill_arraysPfS_S_i
	.type	_Z11fill_arraysPfS_S_i, @function
_Z11fill_arraysPfS_S_i:
.LFB4321:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$5080, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -5064(%rbp)	# a, a
	movq	%rsi, -5072(%rbp)	# b, b
	movq	%rdx, -5080(%rbp)	# c, c
	movl	%ecx, -5084(%rbp)	# length, length
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:43: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp116
	movq	%rax, -24(%rbp)	# tmp116, D.91413
	xorl	%eax, %eax	# tmp116
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:44:     const auto seed = std::chrono::steady_clock::now().time_since_epoch().count();
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT	#
	movq	%rax, -5056(%rbp)	# tmp94, D.83388
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:44:     const auto seed = std::chrono::steady_clock::now().time_since_epoch().count();
	leaq	-5056(%rbp), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv	#
	movq	%rax, -5032(%rbp)	# tmp97, MEM[(struct duration *)_14]
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:44:     const auto seed = std::chrono::steady_clock::now().time_since_epoch().count();
	leaq	-5032(%rbp), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv	#
	movq	%rax, -5040(%rbp)	# tmp99, seed
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:45:     std::mt19937 rng(seed);
	movq	-5040(%rbp), %rdx	# seed, seed.2_1
	leaq	-5024(%rbp), %rax	#, tmp100
	movq	%rdx, %rsi	# seed.2_1,
	movq	%rax, %rdi	# tmp100,
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:46:     std::uniform_real_distribution<float> distr(0, 1);
	leaq	-5032(%rbp), %rax	#, tmp101
	movss	.LC2(%rip), %xmm1	#,
	movl	.LC3(%rip), %edx	#, tmp102
	movd	%edx, %xmm0	# tmp102,
	movq	%rax, %rdi	# tmp101,
	call	_ZNSt25uniform_real_distributionIfEC1Eff	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:48:     for (size_t i = 0; i < length; ++i)
	movq	$0, -5048(%rbp)	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:48:     for (size_t i = 0; i < length; ++i)
	jmp	.L33	#
.L34:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:50:         a[i] = distr(rng);
	movq	-5048(%rbp), %rax	# i, tmp103
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-5064(%rbp), %rax	# a, tmp104
	leaq	(%rdx,%rax), %rbx	#, _3
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:50:         a[i] = distr(rng);
	leaq	-5024(%rbp), %rdx	#, tmp105
	leaq	-5032(%rbp), %rax	#, tmp106
	movq	%rdx, %rsi	# tmp105,
	movq	%rax, %rdi	# tmp106,
	call	_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_	#
	movd	%xmm0, %eax	#, _4
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:50:         a[i] = distr(rng);
	movl	%eax, (%rbx)	# _4, *_3
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:51:         b[i] = distr(rng);
	movq	-5048(%rbp), %rax	# i, tmp107
	leaq	0(,%rax,4), %rdx	#, _5
	movq	-5072(%rbp), %rax	# b, tmp108
	leaq	(%rdx,%rax), %rbx	#, _6
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:51:         b[i] = distr(rng);
	leaq	-5024(%rbp), %rdx	#, tmp109
	leaq	-5032(%rbp), %rax	#, tmp110
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_	#
	movd	%xmm0, %eax	#, _7
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:51:         b[i] = distr(rng);
	movl	%eax, (%rbx)	# _7, *_6
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:52:         c[i] = distr(rng);
	movq	-5048(%rbp), %rax	# i, tmp111
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-5080(%rbp), %rax	# c, tmp112
	leaq	(%rdx,%rax), %rbx	#, _9
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:52:         c[i] = distr(rng);
	leaq	-5024(%rbp), %rdx	#, tmp113
	leaq	-5032(%rbp), %rax	#, tmp114
	movq	%rdx, %rsi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_	#
	movd	%xmm0, %eax	#, _10
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:52:         c[i] = distr(rng);
	movl	%eax, (%rbx)	# _10, *_9
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:48:     for (size_t i = 0; i < length; ++i)
	addq	$1, -5048(%rbp)	#, i
.L33:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:48:     for (size_t i = 0; i < length; ++i)
	movl	-5084(%rbp), %eax	# length, tmp115
	cltq
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:48:     for (size_t i = 0; i < length; ++i)
	cmpq	%rax, -5048(%rbp)	# _11, i
	jb	.L34	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:54: }
	nop	
	movq	-24(%rbp), %rax	# D.91413, tmp117
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp117
	je	.L35	#,
	call	__stack_chk_fail@PLT	#
.L35:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4321:
	.size	_Z11fill_arraysPfS_S_i, .-_Z11fill_arraysPfS_S_i
	.globl	main
	.type	main, @function
main:
.LFB4322:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:60:     optimization();
	call	_Z12optimizationv	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:61:     return 0;
	movl	$0, %eax	#, _3
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:62: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4322:
	.size	main, .-main
	.section	.text._ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE,"axG",@progbits,_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE,comdat
	.weak	_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.type	_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE, @function
_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE:
.LFB4672:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# __d, __d
# /usr/include/c++/11.3.0/chrono:223: 	  __cast(const duration<_Rep, _Period>& __d)
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp94
	movq	%rax, -8(%rbp)	# tmp94, D.91414
	xorl	%eax, %eax	# tmp94
# /usr/include/c++/11.3.0/chrono:227: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	movq	-40(%rbp), %rax	# __d, tmp86
	movq	%rax, %rdi	# tmp86,
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv	#
	movq	%rax, %rcx	#, _1
# /usr/include/c++/11.3.0/chrono:227: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	movabsq	$4835703278458516699, %rdx	#, tmp88
	movq	%rcx, %rax	# _1, tmp95
	imulq	%rdx	# tmp88
	movq	%rdx, %rax	# tmp87, tmp87
	sarq	$18, %rax	#, tmp87
	sarq	$63, %rcx	#, _1
	movq	%rcx, %rdx	# _1, tmp90
	subq	%rdx, %rax	# tmp90, _2
# /usr/include/c++/11.3.0/chrono:226: 	    return _ToDur(static_cast<__to_rep>(
	movq	%rax, -24(%rbp)	# _2, D.87360
# /usr/include/c++/11.3.0/chrono:226: 	    return _ToDur(static_cast<__to_rep>(
	leaq	-24(%rbp), %rdx	#, tmp91
	leaq	-16(%rbp), %rax	#, tmp92
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC1IlvEERKT_	#
# /usr/include/c++/11.3.0/chrono:227: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	movq	-16(%rbp), %rax	# D.87361, D.91285
# /usr/include/c++/11.3.0/chrono:228: 	  }
	movq	-8(%rbp), %rdx	# D.91414, tmp96
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp96
	je	.L40	#,
	call	__stack_chk_fail@PLT	#
.L40:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4672:
	.size	_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE, .-_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.section	.text._ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,"axG",@progbits,_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,comdat
	.align 2
	.weak	_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.type	_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, @function
_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv:
.LFB4677:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/11.3.0/chrono:899: 	{ return __d; }
	movq	-8(%rbp), %rax	# this, tmp84
	movq	(%rax), %rax	# this_2(D)->__d, D.91300
# /usr/include/c++/11.3.0/chrono:899: 	{ return __d; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4677:
	.size	_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, .-_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC5Em,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em:
.LFB4679:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __sd, __sd
# /usr/include/c++/11.3.0/bits/random.h:531:       { seed(__sd); }
	movq	-16(%rbp), %rdx	# __sd, tmp82
	movq	-8(%rbp), %rax	# this, tmp83
	movq	%rdx, %rsi	# tmp82,
	movq	%rax, %rdi	# tmp83,
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm	#
# /usr/include/c++/11.3.0/bits/random.h:531:       { seed(__sd); }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4679:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em
	.set	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em
	.section	.text._ZNSt25uniform_real_distributionIfEC2Eff,"axG",@progbits,_ZNSt25uniform_real_distributionIfEC5Eff,comdat
	.align 2
	.weak	_ZNSt25uniform_real_distributionIfEC2Eff
	.type	_ZNSt25uniform_real_distributionIfEC2Eff, @function
_ZNSt25uniform_real_distributionIfEC2Eff:
.LFB4682:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movss	%xmm0, -12(%rbp)	# __a, __a
	movss	%xmm1, -16(%rbp)	# __b, __b
# /usr/include/c++/11.3.0/bits/random.h:1802:       : _M_param(__a, __b)
	movq	-8(%rbp), %rax	# this, _1
	movss	-16(%rbp), %xmm0	# __b, tmp83
	movl	-12(%rbp), %edx	# __a, tmp84
	movaps	%xmm0, %xmm1	# tmp83,
	movd	%edx, %xmm0	# tmp84,
	movq	%rax, %rdi	# _1,
	call	_ZNSt25uniform_real_distributionIfE10param_typeC1Eff	#
# /usr/include/c++/11.3.0/bits/random.h:1803:       { }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4682:
	.size	_ZNSt25uniform_real_distributionIfEC2Eff, .-_ZNSt25uniform_real_distributionIfEC2Eff
	.weak	_ZNSt25uniform_real_distributionIfEC1Eff
	.set	_ZNSt25uniform_real_distributionIfEC1Eff,_ZNSt25uniform_real_distributionIfEC2Eff
	.section	.text._ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_,"axG",@progbits,_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_,comdat
	.align 2
	.weak	_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_
	.type	_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_, @function
_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_:
.LFB4684:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __urng, __urng
# /usr/include/c++/11.3.0/bits/random.h:1861:         { return this->operator()(__urng, _M_param); }
	movq	-8(%rbp), %rdx	# this, _1
# /usr/include/c++/11.3.0/bits/random.h:1861:         { return this->operator()(__urng, _M_param); }
	movq	-16(%rbp), %rcx	# __urng, tmp85
	movq	-8(%rbp), %rax	# this, tmp86
	movq	%rcx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE	#
# /usr/include/c++/11.3.0/bits/random.h:1861:         { return this->operator()(__urng, _M_param); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4684:
	.size	_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_, .-_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_
	.section	.text._ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC5IlvEERKT_,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_
	.type	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_, @function
_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_:
.LFB4829:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __rep, __rep
# /usr/include/c++/11.3.0/chrono:522: 	  : __r(static_cast<rep>(__rep)) { }
	movq	-16(%rbp), %rax	# __rep, tmp83
	movq	(%rax), %rdx	# *__rep_5(D), _1
# /usr/include/c++/11.3.0/chrono:522: 	  : __r(static_cast<rep>(__rep)) { }
	movq	-8(%rbp), %rax	# this, tmp84
	movq	%rdx, (%rax)	# _1, this_3(D)->__r
# /usr/include/c++/11.3.0/chrono:522: 	  : __r(static_cast<rep>(__rep)) { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4829:
	.size	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_, .-_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC1IlvEERKT_
	.set	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC1IlvEERKT_,_ZNSt6chrono8durationIlSt5ratioILl1ELl1000EEEC2IlvEERKT_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm:
.LFB4834:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movq	%rsi, -32(%rbp)	# __sd, __sd
# /usr/include/c++/11.3.0/bits/random.tcc:328: 	__detail::_Shift<_UIntType, __w>::__value>(__sd);
	movq	-32(%rbp), %rax	# __sd, tmp87
	movq	%rax, %rdi	# tmp87,
	call	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_	#
# /usr/include/c++/11.3.0/bits/random.tcc:327:       _M_x[0] = __detail::__mod<_UIntType,
	movq	-24(%rbp), %rdx	# this, tmp88
	movq	%rax, (%rdx)	# _1, this_11(D)->_M_x[0]
# /usr/include/c++/11.3.0/bits/random.tcc:330:       for (size_t __i = 1; __i < state_size; ++__i)
	movq	$1, -16(%rbp)	#, __i
# /usr/include/c++/11.3.0/bits/random.tcc:330:       for (size_t __i = 1; __i < state_size; ++__i)
	jmp	.L49	#
.L50:
# /usr/include/c++/11.3.0/bits/random.tcc:332: 	  _UIntType __x = _M_x[__i - 1];
	movq	-16(%rbp), %rax	# __i, tmp89
	leaq	-1(%rax), %rdx	#, _2
# /usr/include/c++/11.3.0/bits/random.tcc:332: 	  _UIntType __x = _M_x[__i - 1];
	movq	-24(%rbp), %rax	# this, tmp90
	movq	(%rax,%rdx,8), %rax	# this_11(D)->_M_x[_2], tmp91
	movq	%rax, -8(%rbp)	# tmp91, __x
# /usr/include/c++/11.3.0/bits/random.tcc:333: 	  __x ^= __x >> (__w - 2);
	movq	-8(%rbp), %rax	# __x, tmp92
	shrq	$30, %rax	#, _3
# /usr/include/c++/11.3.0/bits/random.tcc:333: 	  __x ^= __x >> (__w - 2);
	xorq	%rax, -8(%rbp)	# _3, __x
# /usr/include/c++/11.3.0/bits/random.tcc:334: 	  __x *= __f;
	movq	-8(%rbp), %rax	# __x, tmp94
	imulq	$1812433253, %rax, %rax	#, tmp94, tmp93
	movq	%rax, -8(%rbp)	# tmp93, __x
# /usr/include/c++/11.3.0/bits/random.tcc:335: 	  __x += __detail::__mod<_UIntType, __n>(__i);
	movq	-16(%rbp), %rax	# __i, tmp95
	movq	%rax, %rdi	# tmp95,
	call	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_	#
# /usr/include/c++/11.3.0/bits/random.tcc:335: 	  __x += __detail::__mod<_UIntType, __n>(__i);
	addq	%rax, -8(%rbp)	# _19, __x
# /usr/include/c++/11.3.0/bits/random.tcc:337: 	    __detail::_Shift<_UIntType, __w>::__value>(__x);
	movq	-8(%rbp), %rax	# __x, tmp96
	movq	%rax, %rdi	# tmp96,
	call	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_	#
# /usr/include/c++/11.3.0/bits/random.tcc:336: 	  _M_x[__i] = __detail::__mod<_UIntType,
	movq	-24(%rbp), %rdx	# this, tmp97
	movq	-16(%rbp), %rcx	# __i, tmp98
	movq	%rax, (%rdx,%rcx,8)	# _4, this_11(D)->_M_x[__i_5]
# /usr/include/c++/11.3.0/bits/random.tcc:330:       for (size_t __i = 1; __i < state_size; ++__i)
	addq	$1, -16(%rbp)	#, __i
.L49:
# /usr/include/c++/11.3.0/bits/random.tcc:330:       for (size_t __i = 1; __i < state_size; ++__i)
	cmpq	$623, -16(%rbp)	#, __i
	jbe	.L50	#,
# /usr/include/c++/11.3.0/bits/random.tcc:339:       _M_p = state_size;
	movq	-24(%rbp), %rax	# this, tmp99
	movq	$624, 4992(%rax)	#, this_11(D)->_M_p
# /usr/include/c++/11.3.0/bits/random.tcc:340:     }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4834:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm
	.section	.text._ZNSt25uniform_real_distributionIfE10param_typeC2Eff,"axG",@progbits,_ZNSt25uniform_real_distributionIfE10param_typeC5Eff,comdat
	.align 2
	.weak	_ZNSt25uniform_real_distributionIfE10param_typeC2Eff
	.type	_ZNSt25uniform_real_distributionIfE10param_typeC2Eff, @function
_ZNSt25uniform_real_distributionIfE10param_typeC2Eff:
.LFB4836:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movss	%xmm0, -12(%rbp)	# __a, __a
	movss	%xmm1, -16(%rbp)	# __b, __b
# /usr/include/c++/11.3.0/bits/random.h:1760: 	: _M_a(__a), _M_b(__b)
	movq	-8(%rbp), %rax	# this, tmp82
	movss	-12(%rbp), %xmm0	# __a, tmp83
	movss	%xmm0, (%rax)	# tmp83, this_2(D)->_M_a
# /usr/include/c++/11.3.0/bits/random.h:1760: 	: _M_a(__a), _M_b(__b)
	movq	-8(%rbp), %rax	# this, tmp84
	movss	-16(%rbp), %xmm0	# __b, tmp85
	movss	%xmm0, 4(%rax)	# tmp85, this_2(D)->_M_b
# /usr/include/c++/11.3.0/bits/random.h:1763: 	}
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4836:
	.size	_ZNSt25uniform_real_distributionIfE10param_typeC2Eff, .-_ZNSt25uniform_real_distributionIfE10param_typeC2Eff
	.weak	_ZNSt25uniform_real_distributionIfE10param_typeC1Eff
	.set	_ZNSt25uniform_real_distributionIfE10param_typeC1Eff,_ZNSt25uniform_real_distributionIfE10param_typeC2Eff
	.section	.text._ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE,comdat
	.align 2
	.weak	_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE
	.type	_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE, @function
_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE:
.LFB4838:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# this, this
	movq	%rsi, -48(%rbp)	# __urng, __urng
	movq	%rdx, -56(%rbp)	# __p, __p
# /usr/include/c++/11.3.0/bits/random.h:1865: 	operator()(_UniformRandomNumberGenerator& __urng,
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp97
	movq	%rax, -24(%rbp)	# tmp97, D.91415
	xorl	%eax, %eax	# tmp97
# /usr/include/c++/11.3.0/bits/random.h:1869: 	    __aurng(__urng);
	movq	-48(%rbp), %rdx	# __urng, tmp90
	leaq	-32(%rbp), %rax	#, tmp91
	movq	%rdx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC1ERS2_	#
# /usr/include/c++/11.3.0/bits/random.h:1870: 	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
	leaq	-32(%rbp), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv	#
	movss	%xmm0, -60(%rbp)	#, %sfp
# /usr/include/c++/11.3.0/bits/random.h:1870: 	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
	movq	-56(%rbp), %rax	# __p, tmp93
	movq	%rax, %rdi	# tmp93,
	call	_ZNKSt25uniform_real_distributionIfE10param_type1bEv	#
	movd	%xmm0, %ebx	#, _2
# /usr/include/c++/11.3.0/bits/random.h:1870: 	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
	movq	-56(%rbp), %rax	# __p, tmp94
	movq	%rax, %rdi	# tmp94,
	call	_ZNKSt25uniform_real_distributionIfE10param_type1aEv	#
# /usr/include/c++/11.3.0/bits/random.h:1870: 	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
	movd	%ebx, %xmm1	# _2, _2
	subss	%xmm0, %xmm1	# _3, _2
# /usr/include/c++/11.3.0/bits/random.h:1870: 	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
	mulss	-60(%rbp), %xmm1	# %sfp, _4
	movss	%xmm1, -60(%rbp)	# _4, %sfp
# /usr/include/c++/11.3.0/bits/random.h:1870: 	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
	movq	-56(%rbp), %rax	# __p, tmp95
	movq	%rax, %rdi	# tmp95,
	call	_ZNKSt25uniform_real_distributionIfE10param_type1aEv	#
# /usr/include/c++/11.3.0/bits/random.h:1870: 	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
	addss	-60(%rbp), %xmm0	# %sfp, _16
# /usr/include/c++/11.3.0/bits/random.h:1871: 	}
	movq	-24(%rbp), %rax	# D.91415, tmp98
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp98
	je	.L54	#,
	call	__stack_chk_fail@PLT	#
.L54:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4838:
	.size	_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE, .-_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE
	.section	.text._ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_,comdat
	.weak	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	.type	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_, @function
_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_:
.LFB4909:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# __x, __x
# /usr/include/c++/11.3.0/bits/random.h:154: 	    constexpr _Tp __a1 = __a ? __a : 1;
	movq	$1, -8(%rbp)	#, __a1
# /usr/include/c++/11.3.0/bits/random.h:155: 	    return _Mod<_Tp, __m, __a1, __c>::__calc(__x);
	movq	-24(%rbp), %rax	# __x, tmp84
	movq	%rax, %rdi	# tmp84,
	call	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm	#
# /usr/include/c++/11.3.0/bits/random.h:157:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4909:
	.size	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_, .-_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	.section	.text._ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_,comdat
	.weak	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_
	.type	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_, @function
_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_:
.LFB4910:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# __x, __x
# /usr/include/c++/11.3.0/bits/random.h:154: 	    constexpr _Tp __a1 = __a ? __a : 1;
	movq	$1, -8(%rbp)	#, __a1
# /usr/include/c++/11.3.0/bits/random.h:155: 	    return _Mod<_Tp, __m, __a1, __c>::__calc(__x);
	movq	-24(%rbp), %rax	# __x, tmp84
	movq	%rax, %rdi	# tmp84,
	call	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm	#
# /usr/include/c++/11.3.0/bits/random.h:157:       }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4910:
	.size	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_, .-_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_
	.section	.text._ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC2ERS2_,"axG",@progbits,_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC5ERS2_,comdat
	.align 2
	.weak	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC2ERS2_
	.type	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC2ERS2_, @function
_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC2ERS2_:
.LFB4912:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __g, __g
# /usr/include/c++/11.3.0/bits/random.h:171: 	: _M_g(__g) { }
	movq	-8(%rbp), %rax	# this, tmp82
	movq	-16(%rbp), %rdx	# __g, tmp83
	movq	%rdx, (%rax)	# tmp83, this_2(D)->_M_g
# /usr/include/c++/11.3.0/bits/random.h:171: 	: _M_g(__g) { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4912:
	.size	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC2ERS2_, .-_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC2ERS2_
	.weak	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC1ERS2_
	.set	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC1ERS2_,_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEC2ERS2_
	.section	.text._ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv,"axG",@progbits,_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv,comdat
	.align 2
	.weak	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv
	.type	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv, @function
_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv:
.LFB4914:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/11.3.0/bits/random.h:191: 	                            _Engine>(_M_g);
	movq	-8(%rbp), %rax	# this, tmp85
	movq	(%rax), %rax	# this_3(D)->_M_g, _1
	movq	%rax, %rdi	# _1,
	call	_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_	#
# /usr/include/c++/11.3.0/bits/random.h:192: 	}
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4914:
	.size	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv, .-_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv
	.section	.text._ZNKSt25uniform_real_distributionIfE10param_type1bEv,"axG",@progbits,_ZNKSt25uniform_real_distributionIfE10param_type1bEv,comdat
	.align 2
	.weak	_ZNKSt25uniform_real_distributionIfE10param_type1bEv
	.type	_ZNKSt25uniform_real_distributionIfE10param_type1bEv, @function
_ZNKSt25uniform_real_distributionIfE10param_type1bEv:
.LFB4915:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/11.3.0/bits/random.h:1771: 	{ return _M_b; }
	movq	-8(%rbp), %rax	# this, tmp84
	movss	4(%rax), %xmm0	# this_2(D)->_M_b, _3
# /usr/include/c++/11.3.0/bits/random.h:1771: 	{ return _M_b; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4915:
	.size	_ZNKSt25uniform_real_distributionIfE10param_type1bEv, .-_ZNKSt25uniform_real_distributionIfE10param_type1bEv
	.section	.text._ZNKSt25uniform_real_distributionIfE10param_type1aEv,"axG",@progbits,_ZNKSt25uniform_real_distributionIfE10param_type1aEv,comdat
	.align 2
	.weak	_ZNKSt25uniform_real_distributionIfE10param_type1aEv
	.type	_ZNKSt25uniform_real_distributionIfE10param_type1aEv, @function
_ZNKSt25uniform_real_distributionIfE10param_type1aEv:
.LFB4916:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/11.3.0/bits/random.h:1767: 	{ return _M_a; }
	movq	-8(%rbp), %rax	# this, tmp84
	movss	(%rax), %xmm0	# this_2(D)->_M_a, _3
# /usr/include/c++/11.3.0/bits/random.h:1767: 	{ return _M_a; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4916:
	.size	_ZNKSt25uniform_real_distributionIfE10param_type1aEv, .-_ZNKSt25uniform_real_distributionIfE10param_type1aEv
	.section	.text._ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm,comdat
	.weak	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm
	.type	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm, @function
_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm:
.LFB4972:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# __x, __x
# /usr/include/c++/11.3.0/bits/random.h:138: 	  _Tp __res = __a * __x + __c;
	movq	-24(%rbp), %rax	# __x, tmp84
	movq	%rax, -8(%rbp)	# tmp84, __res
# /usr/include/c++/11.3.0/bits/random.h:140: 	    __res %= __m;
	movl	$4294967295, %eax	#, tmp87
	andq	%rax, -8(%rbp)	# tmp87, __res
# /usr/include/c++/11.3.0/bits/random.h:141: 	  return __res;
	movq	-8(%rbp), %rax	# __res, _4
# /usr/include/c++/11.3.0/bits/random.h:142: 	}
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4972:
	.size	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm, .-_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm
	.section	.text._ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm,comdat
	.weak	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm
	.type	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm, @function
_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm:
.LFB4973:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# __x, __x
# /usr/include/c++/11.3.0/bits/random.h:138: 	  _Tp __res = __a * __x + __c;
	movq	-24(%rbp), %rax	# __x, tmp84
	movq	%rax, -8(%rbp)	# tmp84, __res
# /usr/include/c++/11.3.0/bits/random.h:140: 	    __res %= __m;
	movq	-8(%rbp), %rcx	# __res, tmp86
	movq	%rcx, %rax	# tmp86, tmp87
	shrq	$4, %rax	#, tmp87
	movabsq	$945986875574848801, %rdx	#, tmp89
	mulq	%rdx	# tmp89
	movq	%rdx, %rax	# tmp88, tmp88
	shrq	%rax	# tmp88
	imulq	$624, %rax, %rdx	#, tmp85, tmp90
	movq	%rcx, %rax	# tmp86, tmp86
	subq	%rdx, %rax	# tmp90, tmp86
	movq	%rax, -8(%rbp)	# tmp91, __res
# /usr/include/c++/11.3.0/bits/random.h:141: 	  return __res;
	movq	-8(%rbp), %rax	# __res, _4
# /usr/include/c++/11.3.0/bits/random.h:142: 	}
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4973:
	.size	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm, .-_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv:
.LFB4977:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# /usr/include/c++/11.3.0/bits/random.h:556:       { return 0; }
	movl	$0, %eax	#, _1
# /usr/include/c++/11.3.0/bits/random.h:556:       { return 0; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4977:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv
	.section	.text._ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_,"axG",@progbits,_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_,comdat
	.weak	_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	.type	_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_, @function
_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_:
.LFB4974:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# __urng, __urng
# /usr/include/c++/11.3.0/bits/random.tcc:3353:       const size_t __b
	movq	$24, -56(%rbp)	#, __b
# /usr/include/c++/11.3.0/bits/random.tcc:3356:       const long double __r = static_cast<long double>(__urng.max())
	fldt	.LC4(%rip)	#
	fstpt	-32(%rbp)	# __r
# /usr/include/c++/11.3.0/bits/random.tcc:3358:       const size_t __log2r = std::log(__r) / std::log(2.0L);
	movq	$32, -48(%rbp)	#, __log2r
# /usr/include/c++/11.3.0/bits/random.tcc:3359:       const size_t __m = std::max<size_t>(1UL,
	movq	$1, -40(%rbp)	#, __m
# /usr/include/c++/11.3.0/bits/random.tcc:3362:       _RealType __sum = _RealType(0);
	pxor	%xmm0, %xmm0	# tmp93
	movss	%xmm0, -72(%rbp)	# tmp93, __sum
# /usr/include/c++/11.3.0/bits/random.tcc:3363:       _RealType __tmp = _RealType(1);
	movss	.LC2(%rip), %xmm0	#, tmp94
	movss	%xmm0, -68(%rbp)	# tmp94, __tmp
# /usr/include/c++/11.3.0/bits/random.tcc:3364:       for (size_t __k = __m; __k != 0; --__k)
	movq	$1, -64(%rbp)	#, __k
# /usr/include/c++/11.3.0/bits/random.tcc:3364:       for (size_t __k = __m; __k != 0; --__k)
	jmp	.L73	#
.L76:
# /usr/include/c++/11.3.0/bits/random.tcc:3366: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	movq	-88(%rbp), %rax	# __urng, tmp95
	movq	%rax, %rdi	# tmp95,
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv	#
	movq	%rax, %rbx	#, _1
# /usr/include/c++/11.3.0/bits/random.tcc:3366: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv	#
	movq	%rax, %rdx	#, _2
# /usr/include/c++/11.3.0/bits/random.tcc:3366: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	movq	%rbx, %rax	# _1, _1
	subq	%rdx, %rax	# _2, _1
# /usr/include/c++/11.3.0/bits/random.tcc:3366: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	testq	%rax, %rax	# _3
	js	.L74	#,
	pxor	%xmm0, %xmm0	# _4
	cvtsi2ssq	%rax, %xmm0	# _3, _4
	jmp	.L75	#
.L74:
	movq	%rax, %rdx	# _3, tmp97
	shrq	%rdx	# tmp97
	andl	$1, %eax	#, tmp98
	orq	%rax, %rdx	# tmp98, tmp97
	pxor	%xmm0, %xmm0	# tmp96
	cvtsi2ssq	%rdx, %xmm0	# tmp97, tmp96
	addss	%xmm0, %xmm0	# tmp96, _4
.L75:
# /usr/include/c++/11.3.0/bits/random.tcc:3366: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	mulss	-68(%rbp), %xmm0	# __tmp, _30
# /usr/include/c++/11.3.0/bits/random.tcc:3366: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	movss	-72(%rbp), %xmm1	# __sum, tmp100
	addss	%xmm1, %xmm0	# tmp100, tmp99
	movss	%xmm0, -72(%rbp)	# tmp99, __sum
# /usr/include/c++/11.3.0/bits/random.tcc:3367: 	  __tmp *= __r;
	movss	-68(%rbp), %xmm1	# __tmp, tmp102
	movss	.LC5(%rip), %xmm0	#, tmp103
	mulss	%xmm1, %xmm0	# tmp102, tmp101
	movss	%xmm0, -68(%rbp)	# tmp101, __tmp
# /usr/include/c++/11.3.0/bits/random.tcc:3364:       for (size_t __k = __m; __k != 0; --__k)
	subq	$1, -64(%rbp)	#, __k
.L73:
# /usr/include/c++/11.3.0/bits/random.tcc:3364:       for (size_t __k = __m; __k != 0; --__k)
	cmpq	$0, -64(%rbp)	#, __k
	jne	.L76	#,
# /usr/include/c++/11.3.0/bits/random.tcc:3369:       __ret = __sum / __tmp;
	movss	-72(%rbp), %xmm0	# __sum, tmp105
	divss	-68(%rbp), %xmm0	# __tmp, tmp104
	movss	%xmm0, -76(%rbp)	# tmp104, __ret
# /usr/include/c++/11.3.0/bits/random.tcc:3370:       if (__builtin_expect(__ret >= _RealType(1), 0))
	movss	-76(%rbp), %xmm0	# __ret, tmp106
	movss	.LC2(%rip), %xmm1	#, tmp107
	comiss	%xmm1, %xmm0	# tmp107, tmp106
	setnb	%al	#, _5
# /usr/include/c++/11.3.0/bits/random.tcc:3370:       if (__builtin_expect(__ret >= _RealType(1), 0))
	movzbl	%al, %eax	# _5, _6
# /usr/include/c++/11.3.0/bits/random.tcc:3370:       if (__builtin_expect(__ret >= _RealType(1), 0))
	testq	%rax, %rax	# _7
	je	.L77	#,
# /usr/include/c++/11.3.0/bits/random.tcc:3373: 	  __ret = std::nextafter(_RealType(1), _RealType(0));
	pxor	%xmm1, %xmm1	#
	movl	.LC2(%rip), %eax	#, tmp108
	movd	%eax, %xmm0	# tmp108,
	call	_ZSt9nextafterff	#
	movd	%xmm0, %eax	#, tmp109
	movl	%eax, -76(%rbp)	# tmp109, __ret
.L77:
# /usr/include/c++/11.3.0/bits/random.tcc:3379:       return __ret;
	movss	-76(%rbp), %xmm0	# __ret, _25
# /usr/include/c++/11.3.0/bits/random.tcc:3380:     }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4974:
	.size	_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_, .-_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv:
.LFB5019:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
# /usr/include/c++/11.3.0/bits/random.tcc:455:       if (_M_p >= state_size)
	movq	-24(%rbp), %rax	# this, tmp94
	movq	4992(%rax), %rax	# this_14(D)->_M_p, _1
# /usr/include/c++/11.3.0/bits/random.tcc:455:       if (_M_p >= state_size)
	cmpq	$623, %rax	#, _1
	jbe	.L80	#,
# /usr/include/c++/11.3.0/bits/random.tcc:456: 	_M_gen_rand();
	movq	-24(%rbp), %rax	# this, tmp95
	movq	%rax, %rdi	# tmp95,
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv	#
.L80:
# /usr/include/c++/11.3.0/bits/random.tcc:459:       result_type __z = _M_x[_M_p++];
	movq	-24(%rbp), %rax	# this, tmp96
	movq	4992(%rax), %rax	# this_14(D)->_M_p, _2
# /usr/include/c++/11.3.0/bits/random.tcc:459:       result_type __z = _M_x[_M_p++];
	leaq	1(%rax), %rcx	#, _4
	movq	-24(%rbp), %rdx	# this, tmp97
	movq	%rcx, 4992(%rdx)	# _4, this_14(D)->_M_p
# /usr/include/c++/11.3.0/bits/random.tcc:459:       result_type __z = _M_x[_M_p++];
	movq	-24(%rbp), %rdx	# this, tmp98
	movq	(%rdx,%rax,8), %rax	# this_14(D)->_M_x[_3], tmp99
	movq	%rax, -8(%rbp)	# tmp99, __z
# /usr/include/c++/11.3.0/bits/random.tcc:460:       __z ^= (__z >> __u) & __d;
	movq	-8(%rbp), %rax	# __z, tmp100
	shrq	$11, %rax	#, _5
# /usr/include/c++/11.3.0/bits/random.tcc:460:       __z ^= (__z >> __u) & __d;
	movl	%eax, %eax	# _5, _6
# /usr/include/c++/11.3.0/bits/random.tcc:460:       __z ^= (__z >> __u) & __d;
	xorq	%rax, -8(%rbp)	# _6, __z
# /usr/include/c++/11.3.0/bits/random.tcc:461:       __z ^= (__z << __s) & __b;
	movq	-8(%rbp), %rax	# __z, tmp101
	salq	$7, %rax	#, _7
# /usr/include/c++/11.3.0/bits/random.tcc:461:       __z ^= (__z << __s) & __b;
	andl	$2636928640, %eax	#, _8
# /usr/include/c++/11.3.0/bits/random.tcc:461:       __z ^= (__z << __s) & __b;
	xorq	%rax, -8(%rbp)	# _8, __z
# /usr/include/c++/11.3.0/bits/random.tcc:462:       __z ^= (__z << __t) & __c;
	movq	-8(%rbp), %rax	# __z, tmp102
	salq	$15, %rax	#, _9
# /usr/include/c++/11.3.0/bits/random.tcc:462:       __z ^= (__z << __t) & __c;
	andl	$4022730752, %eax	#, _10
# /usr/include/c++/11.3.0/bits/random.tcc:462:       __z ^= (__z << __t) & __c;
	xorq	%rax, -8(%rbp)	# _10, __z
# /usr/include/c++/11.3.0/bits/random.tcc:463:       __z ^= (__z >> __l);
	movq	-8(%rbp), %rax	# __z, tmp103
	shrq	$18, %rax	#, _11
# /usr/include/c++/11.3.0/bits/random.tcc:463:       __z ^= (__z >> __l);
	xorq	%rax, -8(%rbp)	# _11, __z
# /usr/include/c++/11.3.0/bits/random.tcc:465:       return __z;
	movq	-8(%rbp), %rax	# __z, _22
# /usr/include/c++/11.3.0/bits/random.tcc:466:     }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5019:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB5043:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)	# this, this
# /usr/include/c++/11.3.0/bits/random.tcc:398:       const _UIntType __upper_mask = (~_UIntType()) << __r;
	movq	$-2147483648, -40(%rbp)	#, __upper_mask
# /usr/include/c++/11.3.0/bits/random.tcc:399:       const _UIntType __lower_mask = ~__upper_mask;
	movq	$2147483647, -32(%rbp)	#, __lower_mask
# /usr/include/c++/11.3.0/bits/random.tcc:401:       for (size_t __k = 0; __k < (__n - __m); ++__k)
	movq	$0, -56(%rbp)	#, __k
# /usr/include/c++/11.3.0/bits/random.tcc:401:       for (size_t __k = 0; __k < (__n - __m); ++__k)
	jmp	.L83	#
.L86:
# /usr/include/c++/11.3.0/bits/random.tcc:403: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	movq	-72(%rbp), %rax	# this, tmp116
	movq	-56(%rbp), %rdx	# __k, tmp117
	movq	(%rax,%rdx,8), %rax	# this_44(D)->_M_x[__k_32], _1
# /usr/include/c++/11.3.0/bits/random.tcc:403: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	andq	$-2147483648, %rax	#, _1
	movq	%rax, %rcx	# _1, _2
# /usr/include/c++/11.3.0/bits/random.tcc:404: 			   | (_M_x[__k + 1] & __lower_mask));
	movq	-56(%rbp), %rax	# __k, tmp118
	leaq	1(%rax), %rdx	#, _3
# /usr/include/c++/11.3.0/bits/random.tcc:404: 			   | (_M_x[__k + 1] & __lower_mask));
	movq	-72(%rbp), %rax	# this, tmp119
	movq	(%rax,%rdx,8), %rax	# this_44(D)->_M_x[_3], _4
# /usr/include/c++/11.3.0/bits/random.tcc:404: 			   | (_M_x[__k + 1] & __lower_mask));
	andl	$2147483647, %eax	#, _5
# /usr/include/c++/11.3.0/bits/random.tcc:403: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	orq	%rcx, %rax	# _2, tmp120
	movq	%rax, -8(%rbp)	# tmp120, __y
# /usr/include/c++/11.3.0/bits/random.tcc:405: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	movq	-56(%rbp), %rax	# __k, tmp121
	leaq	397(%rax), %rdx	#, _6
# /usr/include/c++/11.3.0/bits/random.tcc:405: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	movq	-72(%rbp), %rax	# this, tmp122
	movq	(%rax,%rdx,8), %rdx	# this_44(D)->_M_x[_6], _7
# /usr/include/c++/11.3.0/bits/random.tcc:405: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	movq	-8(%rbp), %rax	# __y, tmp123
	shrq	%rax	# _8
# /usr/include/c++/11.3.0/bits/random.tcc:405: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	xorq	%rax, %rdx	# _8, _9
# /usr/include/c++/11.3.0/bits/random.tcc:406: 		       ^ ((__y & 0x01) ? __a : 0));
	movq	-8(%rbp), %rax	# __y, tmp124
	andl	$1, %eax	#, _10
# /usr/include/c++/11.3.0/bits/random.tcc:406: 		       ^ ((__y & 0x01) ? __a : 0));
	testq	%rax, %rax	# _10
	je	.L84	#,
# /usr/include/c++/11.3.0/bits/random.tcc:406: 		       ^ ((__y & 0x01) ? __a : 0));
	movl	$2567483615, %eax	#, iftmp.3_34
	jmp	.L85	#
.L84:
# /usr/include/c++/11.3.0/bits/random.tcc:406: 		       ^ ((__y & 0x01) ? __a : 0));
	movl	$0, %eax	#, iftmp.3_34
.L85:
# /usr/include/c++/11.3.0/bits/random.tcc:406: 		       ^ ((__y & 0x01) ? __a : 0));
	xorq	%rdx, %rax	# _9, iftmp.3_34
	movq	%rax, %rcx	# iftmp.3_34, _11
# /usr/include/c++/11.3.0/bits/random.tcc:405: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	movq	-72(%rbp), %rax	# this, tmp125
	movq	-56(%rbp), %rdx	# __k, tmp126
	movq	%rcx, (%rax,%rdx,8)	# _11, this_44(D)->_M_x[__k_32]
# /usr/include/c++/11.3.0/bits/random.tcc:401:       for (size_t __k = 0; __k < (__n - __m); ++__k)
	addq	$1, -56(%rbp)	#, __k
.L83:
# /usr/include/c++/11.3.0/bits/random.tcc:401:       for (size_t __k = 0; __k < (__n - __m); ++__k)
	cmpq	$226, -56(%rbp)	#, __k
	jbe	.L86	#,
# /usr/include/c++/11.3.0/bits/random.tcc:409:       for (size_t __k = (__n - __m); __k < (__n - 1); ++__k)
	movq	$227, -48(%rbp)	#, __k
# /usr/include/c++/11.3.0/bits/random.tcc:409:       for (size_t __k = (__n - __m); __k < (__n - 1); ++__k)
	jmp	.L87	#
.L90:
# /usr/include/c++/11.3.0/bits/random.tcc:411: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	movq	-72(%rbp), %rax	# this, tmp127
	movq	-48(%rbp), %rdx	# __k, tmp128
	movq	(%rax,%rdx,8), %rax	# this_44(D)->_M_x[__k_33], _12
# /usr/include/c++/11.3.0/bits/random.tcc:411: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	andq	$-2147483648, %rax	#, _12
	movq	%rax, %rcx	# _12, _13
# /usr/include/c++/11.3.0/bits/random.tcc:412: 			   | (_M_x[__k + 1] & __lower_mask));
	movq	-48(%rbp), %rax	# __k, tmp129
	leaq	1(%rax), %rdx	#, _14
# /usr/include/c++/11.3.0/bits/random.tcc:412: 			   | (_M_x[__k + 1] & __lower_mask));
	movq	-72(%rbp), %rax	# this, tmp130
	movq	(%rax,%rdx,8), %rax	# this_44(D)->_M_x[_14], _15
# /usr/include/c++/11.3.0/bits/random.tcc:412: 			   | (_M_x[__k + 1] & __lower_mask));
	andl	$2147483647, %eax	#, _16
# /usr/include/c++/11.3.0/bits/random.tcc:411: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	orq	%rcx, %rax	# _13, tmp131
	movq	%rax, -16(%rbp)	# tmp131, __y
# /usr/include/c++/11.3.0/bits/random.tcc:413: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	movq	-48(%rbp), %rax	# __k, tmp132
	leaq	-227(%rax), %rdx	#, _17
# /usr/include/c++/11.3.0/bits/random.tcc:413: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	movq	-72(%rbp), %rax	# this, tmp133
	movq	(%rax,%rdx,8), %rdx	# this_44(D)->_M_x[_17], _18
# /usr/include/c++/11.3.0/bits/random.tcc:413: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	movq	-16(%rbp), %rax	# __y, tmp134
	shrq	%rax	# _19
# /usr/include/c++/11.3.0/bits/random.tcc:413: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	xorq	%rax, %rdx	# _19, _20
# /usr/include/c++/11.3.0/bits/random.tcc:414: 		       ^ ((__y & 0x01) ? __a : 0));
	movq	-16(%rbp), %rax	# __y, tmp135
	andl	$1, %eax	#, _21
# /usr/include/c++/11.3.0/bits/random.tcc:414: 		       ^ ((__y & 0x01) ? __a : 0));
	testq	%rax, %rax	# _21
	je	.L88	#,
# /usr/include/c++/11.3.0/bits/random.tcc:414: 		       ^ ((__y & 0x01) ? __a : 0));
	movl	$2567483615, %eax	#, iftmp.4_35
	jmp	.L89	#
.L88:
# /usr/include/c++/11.3.0/bits/random.tcc:414: 		       ^ ((__y & 0x01) ? __a : 0));
	movl	$0, %eax	#, iftmp.4_35
.L89:
# /usr/include/c++/11.3.0/bits/random.tcc:414: 		       ^ ((__y & 0x01) ? __a : 0));
	xorq	%rdx, %rax	# _20, iftmp.4_35
	movq	%rax, %rcx	# iftmp.4_35, _22
# /usr/include/c++/11.3.0/bits/random.tcc:413: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	movq	-72(%rbp), %rax	# this, tmp136
	movq	-48(%rbp), %rdx	# __k, tmp137
	movq	%rcx, (%rax,%rdx,8)	# _22, this_44(D)->_M_x[__k_33]
# /usr/include/c++/11.3.0/bits/random.tcc:409:       for (size_t __k = (__n - __m); __k < (__n - 1); ++__k)
	addq	$1, -48(%rbp)	#, __k
.L87:
# /usr/include/c++/11.3.0/bits/random.tcc:409:       for (size_t __k = (__n - __m); __k < (__n - 1); ++__k)
	cmpq	$622, -48(%rbp)	#, __k
	jbe	.L90	#,
# /usr/include/c++/11.3.0/bits/random.tcc:417:       _UIntType __y = ((_M_x[__n - 1] & __upper_mask)
	movq	-72(%rbp), %rax	# this, tmp138
	movq	4984(%rax), %rax	# this_44(D)->_M_x[623], _23
# /usr/include/c++/11.3.0/bits/random.tcc:417:       _UIntType __y = ((_M_x[__n - 1] & __upper_mask)
	andq	$-2147483648, %rax	#, _23
	movq	%rax, %rdx	# _23, _24
# /usr/include/c++/11.3.0/bits/random.tcc:418: 		       | (_M_x[0] & __lower_mask));
	movq	-72(%rbp), %rax	# this, tmp139
	movq	(%rax), %rax	# this_44(D)->_M_x[0], _25
# /usr/include/c++/11.3.0/bits/random.tcc:418: 		       | (_M_x[0] & __lower_mask));
	andl	$2147483647, %eax	#, _26
# /usr/include/c++/11.3.0/bits/random.tcc:417:       _UIntType __y = ((_M_x[__n - 1] & __upper_mask)
	orq	%rdx, %rax	# _24, tmp140
	movq	%rax, -24(%rbp)	# tmp140, __y
# /usr/include/c++/11.3.0/bits/random.tcc:419:       _M_x[__n - 1] = (_M_x[__m - 1] ^ (__y >> 1)
	movq	-72(%rbp), %rax	# this, tmp141
	movq	3168(%rax), %rdx	# this_44(D)->_M_x[396], _27
# /usr/include/c++/11.3.0/bits/random.tcc:419:       _M_x[__n - 1] = (_M_x[__m - 1] ^ (__y >> 1)
	movq	-24(%rbp), %rax	# __y, tmp142
	shrq	%rax	# _28
# /usr/include/c++/11.3.0/bits/random.tcc:419:       _M_x[__n - 1] = (_M_x[__m - 1] ^ (__y >> 1)
	xorq	%rax, %rdx	# _28, _29
# /usr/include/c++/11.3.0/bits/random.tcc:420: 		       ^ ((__y & 0x01) ? __a : 0));
	movq	-24(%rbp), %rax	# __y, tmp143
	andl	$1, %eax	#, _30
# /usr/include/c++/11.3.0/bits/random.tcc:420: 		       ^ ((__y & 0x01) ? __a : 0));
	testq	%rax, %rax	# _30
	je	.L91	#,
# /usr/include/c++/11.3.0/bits/random.tcc:420: 		       ^ ((__y & 0x01) ? __a : 0));
	movl	$2567483615, %eax	#, iftmp.5_36
	jmp	.L92	#
.L91:
# /usr/include/c++/11.3.0/bits/random.tcc:420: 		       ^ ((__y & 0x01) ? __a : 0));
	movl	$0, %eax	#, iftmp.5_36
.L92:
# /usr/include/c++/11.3.0/bits/random.tcc:420: 		       ^ ((__y & 0x01) ? __a : 0));
	xorq	%rax, %rdx	# iftmp.5_36, _31
# /usr/include/c++/11.3.0/bits/random.tcc:419:       _M_x[__n - 1] = (_M_x[__m - 1] ^ (__y >> 1)
	movq	-72(%rbp), %rax	# this, tmp144
	movq	%rdx, 4984(%rax)	# _31, this_44(D)->_M_x[623]
# /usr/include/c++/11.3.0/bits/random.tcc:421:       _M_p = 0;
	movq	-72(%rbp), %rax	# this, tmp145
	movq	$0, 4992(%rax)	#, this_44(D)->_M_p
# /usr/include/c++/11.3.0/bits/random.tcc:422:     }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5043:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB5074:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# __initialize_p, __initialize_p
	movl	%esi, -8(%rbp)	# __priority, __priority
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:62: }
	cmpl	$1, -4(%rbp)	#, __initialize_p
	jne	.L95	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:62: }
	cmpl	$65535, -8(%rbp)	#, __priority
	jne	.L95	#,
# /usr/include/c++/11.3.0/iostream:74:   static ios_base::Init __ioinit;
	leaq	_ZStL8__ioinit(%rip), %rax	#, tmp82
	movq	%rax, %rdi	# tmp82,
	call	_ZNSt8ios_base4InitC1Ev@PLT	#
	leaq	__dso_handle(%rip), %rax	#, tmp83
	movq	%rax, %rdx	# tmp83,
	leaq	_ZStL8__ioinit(%rip), %rax	#, tmp84
	movq	%rax, %rsi	# tmp84,
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax	#, tmp86
	movq	%rax, %rdi	# tmp85,
	call	__cxa_atexit@PLT	#
.L95:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:62: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5074:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z12optimizationv, @function
_GLOBAL__sub_I__Z12optimizationv:
.LFB5075:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/compiler_vectorization/vectorization.cpp:62: }
	movl	$65535, %esi	#,
	movl	$1, %edi	#,
	call	_Z41__static_initialization_and_destruction_0ii	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5075:
	.size	_GLOBAL__sub_I__Z12optimizationv, .-_GLOBAL__sub_I__Z12optimizationv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z12optimizationv
	.section	.rodata
	.align 4
.LC2:
	.long	1065353216
	.align 4
.LC3:
	.long	0
	.align 16
.LC4:
	.long	0
	.long	-2147483648
	.long	16415
	.long	0
	.align 4
.LC5:
	.long	1333788672
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
