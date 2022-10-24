	.file	"sequence_sum.cpp"
# GNU C++20 (GCC) version 11.3.0 (x86_64-unknown-linux-gnu)
#	compiled by GNU C version 11.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O3 -std=c++20
	.text
	.section	.text._ZNSt13__future_base13_State_baseV217_M_complete_asyncEv,"axG",@progbits,_ZNSt13__future_base13_State_baseV217_M_complete_asyncEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt13__future_base13_State_baseV217_M_complete_asyncEv
	.type	_ZNSt13__future_base13_State_baseV217_M_complete_asyncEv, @function
_ZNSt13__future_base13_State_baseV217_M_complete_asyncEv:
.LFB4641:
	.cfi_startproc
# /usr/include/c++/11.3.0/future:580:       virtual void _M_complete_async() { }
	ret	
	.cfi_endproc
.LFE4641:
	.size	_ZNSt13__future_base13_State_baseV217_M_complete_asyncEv, .-_ZNSt13__future_base13_State_baseV217_M_complete_asyncEv
	.section	.text._ZNKSt13__future_base13_State_baseV221_M_is_deferred_futureEv,"axG",@progbits,_ZNKSt13__future_base13_State_baseV221_M_is_deferred_futureEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt13__future_base13_State_baseV221_M_is_deferred_futureEv
	.type	_ZNKSt13__future_base13_State_baseV221_M_is_deferred_futureEv, @function
_ZNKSt13__future_base13_State_baseV221_M_is_deferred_futureEv:
.LFB4642:
	.cfi_startproc
# /usr/include/c++/11.3.0/future:583:       virtual bool _M_is_deferred_future() const { return false; }
	xorl	%eax, %eax	#
	ret	
	.cfi_endproc
.LFE4642:
	.size	_ZNKSt13__future_base13_State_baseV221_M_is_deferred_futureEv, .-_ZNKSt13__future_base13_State_baseV221_M_is_deferred_futureEv
	.section	.text._ZZNSt9once_flag18_Prepare_executionC4IZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS3_12_Result_baseENS7_8_DeleterEEvEEPbEJPS4_SC_SD_EEvRS_OT_DpOT0_EUlvE_EERSI_ENUlvE_4_FUNEv,"axG",@progbits,_ZZNSt9once_flag18_Prepare_executionC4IZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS3_12_Result_baseENS7_8_DeleterEEvEEPbEJPS4_SC_SD_EEvRS_OT_DpOT0_EUlvE_EERSI_ENUlvE_4_FUNEv,comdat
	.p2align 4
	.weak	_ZZNSt9once_flag18_Prepare_executionC4IZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS3_12_Result_baseENS7_8_DeleterEEvEEPbEJPS4_SC_SD_EEvRS_OT_DpOT0_EUlvE_EERSI_ENUlvE_4_FUNEv
	.type	_ZZNSt9once_flag18_Prepare_executionC4IZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS3_12_Result_baseENS7_8_DeleterEEvEEPbEJPS4_SC_SD_EEvRS_OT_DpOT0_EUlvE_EERSI_ENUlvE_4_FUNEv, @function
_ZZNSt9once_flag18_Prepare_executionC4IZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS3_12_Result_baseENS7_8_DeleterEEvEEPbEJPS4_SC_SD_EEvRS_OT_DpOT0_EUlvE_EERSI_ENUlvE_4_FUNEv:
.LFB6955:
	.cfi_startproc
# /usr/include/c++/11.3.0/mutex:712: 	__once_call = [] { (*static_cast<_Callable*>(__once_callable))(); };
	movq	_ZSt15__once_callable@gottpoff(%rip), %rax	#, tmp100
	movq	%fs:(%rax), %rax	# __once_callable, __once_callable.29_2
# /usr/include/c++/11.3.0/mutex:775:       auto __callable = [&] {
	movq	(%rax), %rdx	# MEM[(const struct ._anon_129 *)__once_callable.29_2].____f, _7
# /usr/include/c++/11.3.0/mutex:777: 			std::forward<_Args>(__args)...);
	movq	24(%rax), %r8	# MEM[(const struct ._anon_129 *)__once_callable.29_2].____args#2, _4
	movq	16(%rax), %rsi	# MEM[(const struct ._anon_129 *)__once_callable.29_2].____args#1, _5
# /usr/include/c++/11.3.0/bits/invoke.h:74:       return ((*std::forward<_Tp>(__t)).*__f)(std::forward<_Args>(__args)...);
	movq	8(%rax), %rax	# MEM[(const struct ._anon_129 *)__once_callable.29_2].____args#0, MEM[(const struct ._anon_129 *)__once_callable.29_2].____args#0
	movq	(%rdx), %rcx	# _7->__pfn, _9
	movq	8(%rdx), %rdi	# _7->__delta, _7->__delta
	addq	(%rax), %rdi	# *_6, _34
	testb	$1, %cl	#, _9
	je	.L5	#,
	movq	(%rdi), %rax	# MEM[(int (*) () * *)_34], MEM[(int (*) () * *)_34]
	movq	-1(%rax,%rcx), %rcx	# *_18, _9
.L5:
	movq	(%r8), %rdx	# *_4,
	movq	(%rsi), %rsi	# *_5,
	jmp	*%rcx	# _9
	.cfi_endproc
.LFE6955:
	.size	_ZZNSt9once_flag18_Prepare_executionC4IZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS3_12_Result_baseENS7_8_DeleterEEvEEPbEJPS4_SC_SD_EEvRS_OT_DpOT0_EUlvE_EERSI_ENUlvE_4_FUNEv, .-_ZZNSt9once_flag18_Prepare_executionC4IZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS3_12_Result_baseENS7_8_DeleterEEvEEPbEJPS4_SC_SD_EEvRS_OT_DpOT0_EUlvE_EERSI_ENUlvE_4_FUNEv
	.section	.text._ZNSt15__exception_ptr12__dest_thunkISt12future_errorEEvPv,"axG",@progbits,_ZNSt15__exception_ptr12__dest_thunkISt12future_errorEEvPv,comdat
	.p2align 4
	.weak	_ZNSt15__exception_ptr12__dest_thunkISt12future_errorEEvPv
	.type	_ZNSt15__exception_ptr12__dest_thunkISt12future_errorEEvPv, @function
_ZNSt15__exception_ptr12__dest_thunkISt12future_errorEEvPv:
.LFB6975:
	.cfi_startproc
# /usr/include/c++/11.3.0/bits/exception_ptr.h:230:       { static_cast<_Ex*>(__x)->~_Ex(); }
	movq	(%rdi), %rax	# MEM[(struct future_error *)__x_4(D)].D.99185.D.64522._vptr.exception, MEM[(struct future_error *)__x_4(D)].D.99185.D.64522._vptr.exception
	jmp	*(%rax)	# *_1
	.cfi_endproc
.LFE6975:
	.size	_ZNSt15__exception_ptr12__dest_thunkISt12future_errorEEvPv, .-_ZNSt15__exception_ptr12__dest_thunkISt12future_errorEEvPv
	.section	.text._ZNSt13__future_base13_State_baseV2D2Ev,"axG",@progbits,_ZNSt13__future_base13_State_baseV2D5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt13__future_base13_State_baseV2D2Ev
	.type	_ZNSt13__future_base13_State_baseV2D2Ev, @function
_ZNSt13__future_base13_State_baseV2D2Ev:
.LFB7747:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7747
	leaq	16+_ZTVNSt13__future_base13_State_baseV2E(%rip), %rax	#, tmp91
	movq	%rax, (%rdi)	# tmp91, this_2(D)->_vptr._State_baseV2
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	8(%rdi), %rdi	# MEM[(struct _Result_base * &)this_2(D) + 8], _5
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rdi, %rdi	# _5
	je	.L16	#,
# /usr/include/c++/11.3.0/future:327:       virtual ~_State_baseV2() = default;
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	(%rdi), %rax	# _5->_vptr._Result_base, _5->_vptr._Result_base
	call	*(%rax)	# *_6
# /usr/include/c++/11.3.0/future:327:       virtual ~_State_baseV2() = default;
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L16:
	ret	
	.cfi_endproc
.LFE7747:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt13__future_base13_State_baseV2D2Ev,"aG",@progbits,_ZNSt13__future_base13_State_baseV2D5Ev,comdat
.LLSDA7747:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7747-.LLSDACSB7747
.LLSDACSB7747:
.LLSDACSE7747:
	.section	.text._ZNSt13__future_base13_State_baseV2D2Ev,"axG",@progbits,_ZNSt13__future_base13_State_baseV2D5Ev,comdat
	.size	_ZNSt13__future_base13_State_baseV2D2Ev, .-_ZNSt13__future_base13_State_baseV2D2Ev
	.weak	_ZNSt13__future_base13_State_baseV2D1Ev
	.set	_ZNSt13__future_base13_State_baseV2D1Ev,_ZNSt13__future_base13_State_baseV2D2Ev
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEE6_M_runEv,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEE6_M_runEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEE6_M_runEv
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEE6_M_runEv, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEE6_M_runEv:
.LFB8106:
	.cfi_startproc
# /usr/include/c++/11.3.0/bits/invoke.h:74:       return ((*std::forward<_Tp>(__t)).*__f)(std::forward<_Args>(__args)...);
	movq	16(%rdi), %rdx	# MEM[(struct  &)this_1(D) + 16].__pfn, _4
# /usr/include/c++/11.3.0/bits/std_thread.h:211: 	_M_run() { _M_func(); }
	movq	%rdi, %rax	# tmp98, this
# /usr/include/c++/11.3.0/bits/invoke.h:74:       return ((*std::forward<_Tp>(__t)).*__f)(std::forward<_Args>(__args)...);
	movq	24(%rdi), %rdi	# MEM[(struct  &)this_1(D) + 16].__delta, MEM[(struct  &)this_1(D) + 16].__delta
	addq	8(%rax), %rdi	# MEM[(struct _Async_state_impl * &)this_1(D) + 8], _28
	testb	$1, %dl	#, _4
	je	.L20	#,
	movq	(%rdi), %rax	# MEM[(int (*) () * *)_28], MEM[(int (*) () * *)_28]
	movq	-1(%rax,%rdx), %rdx	# *_13, _4
.L20:
	jmp	*%rdx	# _4
	.cfi_endproc
.LFE8106:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEE6_M_runEv, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEE6_M_runEv
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.type	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED2Ev, @function
_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB8108:
	.cfi_startproc
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:523:       ~_Sp_counted_ptr_inplace() noexcept { }
	ret	
	.cfi_endproc
.LFE8108:
	.size	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED2Ev, .-_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.weak	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED1Ev
	.set	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED1Ev,_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.type	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED2Ev, @function
_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB8115:
	.cfi_startproc
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:523:       ~_Sp_counted_ptr_inplace() noexcept { }
	ret	
	.cfi_endproc
.LFE8115:
	.size	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED2Ev, .-_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.weak	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED1Ev
	.set	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED1Ev,_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.section	.text._ZNKSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE21_M_is_deferred_futureEv,"axG",@progbits,_ZNKSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE21_M_is_deferred_futureEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE21_M_is_deferred_futureEv
	.type	_ZNKSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE21_M_is_deferred_futureEv, @function
_ZNKSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE21_M_is_deferred_futureEv:
.LFB8141:
	.cfi_startproc
# /usr/include/c++/11.3.0/future:1673:       virtual bool _M_is_deferred_future() const { return true; }
	movl	$1, %eax	#,
	ret	
	.cfi_endproc
.LFE8141:
	.size	_ZNKSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE21_M_is_deferred_futureEv, .-_ZNKSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE21_M_is_deferred_futureEv
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.type	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info, @function
_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:
.LFB8120:
	.cfi_startproc
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:554: 	    ||
	leaq	_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag(%rip), %rax	#, tmp88
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:546:       _M_get_deleter(const std::type_info& __ti) noexcept override
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
# /usr/include/c++/11.3.0/ext/aligned_buffer.h:104:         return static_cast<void*>(&_M_storage);
	leaq	16(%rdi), %r12	#, <retval>
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:554: 	    ||
	cmpq	%rax, %rsi	# tmp88, __ti
	je	.L27	#,
# /usr/include/c++/11.3.0/typeinfo:122:       return ((__name == __arg.__name)
	movq	8(%rsi), %rdi	# __ti_5(D)->__name, _7
# /usr/include/c++/11.3.0/typeinfo:123: 	      || (__name[0] != '*' &&
	leaq	_ZTSSt19_Sp_make_shared_tag(%rip), %rsi	#, tmp89
	cmpq	%rsi, %rdi	# tmp89, _7
	je	.L27	#,
	cmpb	$42, (%rdi)	#, *_7
	je	.L29	#,
# /usr/include/c++/11.3.0/typeinfo:124: 		  __builtin_strcmp (__name, __arg.__name) == 0));
	call	strcmp@PLT	#
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:562: 	return nullptr;
	testl	%eax, %eax	# tmp96
	movl	$0, %eax	#, tmp93
	cmovne	%rax, %r12	# <retval>,, tmp93, <retval>
.L27:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:563:       }
	movq	%r12, %rax	# <retval>,
	popq	%r12	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L29:
	.cfi_restore_state
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:562: 	return nullptr;
	xorl	%r12d, %r12d	# <retval>
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:563:       }
	movq	%r12, %rax	# <retval>,
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE8120:
	.size	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info, .-_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.section	.text._ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv,"axG",@progbits,_ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv
	.type	_ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv, @function
_ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv:
.LFB4836:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4836
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$72, %rsp	#,
	.cfi_def_cfa_offset 96
# /usr/include/c++/11.3.0/mutex:710: 	__once_callable = std::__addressof(__c);
	movq	_ZSt15__once_callable@gottpoff(%rip), %rbp	#, tmp112
# /usr/include/c++/11.3.0/mutex:712: 	__once_call = [] { (*static_cast<_Callable*>(__once_callable))(); };
	movq	_ZSt11__once_call@gottpoff(%rip), %rbx	#, tmp111
# /usr/include/c++/11.3.0/future:1698:     virtual void _M_complete_async() { _M_join(); }
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp116
	movq	%rax, 56(%rsp)	# tmp116, D.196491
	xorl	%eax, %eax	# tmp116
# /usr/include/c++/11.3.0/future:1700:     void _M_join() { std::call_once(_M_once, &thread::join, &_M_thread); }
	leaq	32(%rdi), %rax	#, tmp91
# /usr/include/c++/11.3.0/mutex:783:       if (int __e = __gthread_once(&__once._M_once, &__once_proxy))
	addq	$40, %rdi	#, _11
# /usr/include/c++/11.3.0/future:1700:     void _M_join() { std::call_once(_M_once, &thread::join, &_M_thread); }
	movq	$0, 24(%rsp)	#, D.193546.__delta
# /usr/include/c++/11.3.0/future:1700:     void _M_join() { std::call_once(_M_once, &thread::join, &_M_thread); }
	movq	%rax, 8(%rsp)	# tmp91, D.193547
# /usr/include/c++/11.3.0/future:1700:     void _M_join() { std::call_once(_M_once, &thread::join, &_M_thread); }
	movq	_ZNSt6thread4joinEv@GOTPCREL(%rip), %rax	#, tmp93
# /usr/include/c++/11.3.0/x86_64-unknown-linux-gnu/bits/gthr-default.h:699:   if (__gthread_active_p ())
	cmpq	$0, _ZL28__gthrw___pthread_key_createPjPFvPvE@GOTPCREL(%rip)	#,
# /usr/include/c++/11.3.0/future:1700:     void _M_join() { std::call_once(_M_once, &thread::join, &_M_thread); }
	movq	%rax, 16(%rsp)	# tmp93, D.193546.__pfn
# /usr/include/c++/11.3.0/mutex:775:       auto __callable = [&] {
	leaq	16(%rsp), %rax	#, tmp95
	movq	%rax, %xmm0	# tmp95, tmp95
	leaq	8(%rsp), %rax	#, tmp96
	movq	%rax, %xmm1	# tmp96, tmp96
# /usr/include/c++/11.3.0/mutex:710: 	__once_callable = std::__addressof(__c);
	leaq	32(%rsp), %rax	#, tmp98
# /usr/include/c++/11.3.0/mutex:775:       auto __callable = [&] {
	punpcklqdq	%xmm1, %xmm0	# tmp96, tmp94
	movaps	%xmm0, 32(%rsp)	# tmp94, MEM <vector(2) long unsigned int> [(void *)&__callable]
# /usr/include/c++/11.3.0/mutex:710: 	__once_callable = std::__addressof(__c);
	movq	%rax, %fs:0(%rbp)	# tmp98, __once_callable
# /usr/include/c++/11.3.0/mutex:712: 	__once_call = [] { (*static_cast<_Callable*>(__once_callable))(); };
	leaq	_ZZNSt9once_flag18_Prepare_executionC4IZSt9call_onceIMSt6threadFvvEJPS3_EEvRS_OT_DpOT0_EUlvE_EERS8_ENUlvE_4_FUNEv(%rip), %rax	#, tmp121
	movq	%rax, %fs:(%rbx)	# tmp121, __once_call
# /usr/include/c++/11.3.0/x86_64-unknown-linux-gnu/bits/gthr-default.h:699:   if (__gthread_active_p ())
	je	.L37	#,
# /usr/include/c++/11.3.0/x86_64-unknown-linux-gnu/bits/gthr-default.h:700:     return __gthrw_(pthread_once) (__once, __func);
	movq	__once_proxy@GOTPCREL(%rip), %rsi	#,
.LEHB0:
	call	_ZL20__gthrw_pthread_oncePiPFvvE@PLT	#
# /usr/include/c++/11.3.0/mutex:783:       if (int __e = __gthread_once(&__once._M_once, &__once_proxy))
	testl	%eax, %eax	# _12
	jne	.L33	#,
# /usr/include/c++/11.3.0/mutex:718:       __once_callable = nullptr;
	movq	$0, %fs:0(%rbp)	#, __once_callable
# /usr/include/c++/11.3.0/mutex:719:       __once_call = nullptr;
	movq	$0, %fs:(%rbx)	#, __once_call
# /usr/include/c++/11.3.0/future:1698:     virtual void _M_complete_async() { _M_join(); }
	movq	56(%rsp), %rax	# D.196491, tmp117
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp117
	jne	.L41	#,
	addq	$72, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
.L37:
	.cfi_restore_state
# /usr/include/c++/11.3.0/x86_64-unknown-linux-gnu/bits/gthr-default.h:702:     return -1;
	movl	$-1, %eax	#, _12
.L33:
# /usr/include/c++/11.3.0/mutex:784: 	__throw_system_error(__e);
	movl	%eax, %edi	# _12,
	call	_ZSt20__throw_system_errori@PLT	#
.LEHE0:
.L41:
# /usr/include/c++/11.3.0/future:1698:     virtual void _M_complete_async() { _M_join(); }
	call	__stack_chk_fail@PLT	#
.L38:
# /usr/include/c++/11.3.0/mutex:718:       __once_callable = nullptr;
	movq	%rax, %rdi	# tmp115, tmp109
.L35:
	movq	$0, %fs:0(%rbp)	#, __once_callable
# /usr/include/c++/11.3.0/mutex:719:       __once_call = nullptr;
	movq	$0, %fs:(%rbx)	#, __once_call
.LEHB1:
	call	_Unwind_Resume@PLT	#
.LEHE1:
	.cfi_endproc
.LFE4836:
	.section	.gcc_except_table._ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv,"aG",@progbits,_ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv,comdat
.LLSDA4836:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4836-.LLSDACSB4836
.LLSDACSB4836:
	.uleb128 .LEHB0-.LFB4836
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L38-.LFB4836
	.uleb128 0
	.uleb128 .LEHB1-.LFB4836
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE4836:
	.section	.text._ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv,"axG",@progbits,_ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv,comdat
	.size	_ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv, .-_ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv
	.section	.text._ZNSt13__future_base13_State_baseV2D0Ev,"axG",@progbits,_ZNSt13__future_base13_State_baseV2D5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt13__future_base13_State_baseV2D0Ev
	.type	_ZNSt13__future_base13_State_baseV2D0Ev, @function
_ZNSt13__future_base13_State_baseV2D0Ev:
.LFB7749:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7749
	leaq	16+_ZTVNSt13__future_base13_State_baseV2E(%rip), %rax	#, tmp91
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# /usr/include/c++/11.3.0/future:327:       virtual ~_State_baseV2() = default;
	movq	%rdi, %rbp	# tmp89, this
	movq	%rax, (%rdi)	# tmp91, this_2(D)->_vptr._State_baseV2
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	8(%rdi), %rdi	# MEM[(struct _Result_base * &)this_2(D) + 8], _4
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rdi, %rdi	# _4
	je	.L43	#,
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	(%rdi), %rax	# _4->_vptr._Result_base, _4->_vptr._Result_base
	call	*(%rax)	# *_5
.L43:
# /usr/include/c++/11.3.0/future:327:       virtual ~_State_baseV2() = default;
	movq	%rbp, %rdi	# this,
	movl	$32, %esi	#,
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT	#
	.cfi_endproc
.LFE7749:
	.section	.gcc_except_table._ZNSt13__future_base13_State_baseV2D0Ev,"aG",@progbits,_ZNSt13__future_base13_State_baseV2D5Ev,comdat
.LLSDA7749:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7749-.LLSDACSB7749
.LLSDACSB7749:
.LLSDACSE7749:
	.section	.text._ZNSt13__future_base13_State_baseV2D0Ev,"axG",@progbits,_ZNSt13__future_base13_State_baseV2D5Ev,comdat
	.size	_ZNSt13__future_base13_State_baseV2D0Ev, .-_ZNSt13__future_base13_State_baseV2D0Ev
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED0Ev,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.type	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED0Ev, @function
_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED0Ev:
.LFB8117:
	.cfi_startproc
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:523:       ~_Sp_counted_ptr_inplace() noexcept { }
	movl	$128, %esi	#,
	jmp	_ZdlPvm@PLT	#
	.cfi_endproc
.LFE8117:
	.size	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED0Ev, .-_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED0Ev,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.type	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED0Ev, @function
_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED0Ev:
.LFB8110:
	.cfi_startproc
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:523:       ~_Sp_counted_ptr_inplace() noexcept { }
	movl	$112, %esi	#,
	jmp	_ZdlPvm@PLT	#
	.cfi_endproc
.LFE8110:
	.size	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED0Ev, .-_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.section	.text._ZNSt13__future_base7_ResultIyED2Ev,"axG",@progbits,_ZNSt13__future_base7_ResultIyED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt13__future_base7_ResultIyED2Ev
	.type	_ZNSt13__future_base7_ResultIyED2Ev, @function
_ZNSt13__future_base7_ResultIyED2Ev:
.LFB8137:
	.cfi_startproc
# /usr/include/c++/11.3.0/future:241: 	}
	leaq	16+_ZTVNSt13__future_base7_ResultIyEE(%rip), %rax	#, tmp87
	movq	%rax, (%rdi)	# tmp87, this_3(D)->D.167089._vptr._Result_base
	jmp	_ZNSt13__future_base12_Result_baseD2Ev@PLT	#
	.cfi_endproc
.LFE8137:
	.size	_ZNSt13__future_base7_ResultIyED2Ev, .-_ZNSt13__future_base7_ResultIyED2Ev
	.weak	_ZNSt13__future_base7_ResultIyED1Ev
	.set	_ZNSt13__future_base7_ResultIyED1Ev,_ZNSt13__future_base7_ResultIyED2Ev
	.section	.text._ZNSt13__future_base7_ResultIyED0Ev,"axG",@progbits,_ZNSt13__future_base7_ResultIyED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt13__future_base7_ResultIyED0Ev
	.type	_ZNSt13__future_base7_ResultIyED0Ev, @function
_ZNSt13__future_base7_ResultIyED0Ev:
.LFB8139:
	.cfi_startproc
# /usr/include/c++/11.3.0/future:241: 	}
	leaq	16+_ZTVNSt13__future_base7_ResultIyEE(%rip), %rax	#, tmp87
# /usr/include/c++/11.3.0/future:237: 	~_Result()
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# /usr/include/c++/11.3.0/future:237: 	~_Result()
	movq	%rdi, %rbp	# tmp85, this
# /usr/include/c++/11.3.0/future:241: 	}
	movq	%rax, (%rdi)	# tmp87, this_2(D)->D.167089._vptr._Result_base
	call	_ZNSt13__future_base12_Result_baseD2Ev@PLT	#
	movq	%rbp, %rdi	# this,
	movl	$32, %esi	#,
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT	#
	.cfi_endproc
.LFE8139:
	.size	_ZNSt13__future_base7_ResultIyED0Ev, .-_ZNSt13__future_base7_ResultIyED0Ev
	.section	.text._ZNSt13__future_base21_Async_state_commonV2D2Ev,"axG",@progbits,_ZNSt13__future_base21_Async_state_commonV2D5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt13__future_base21_Async_state_commonV2D2Ev
	.type	_ZNSt13__future_base21_Async_state_commonV2D2Ev, @function
_ZNSt13__future_base21_Async_state_commonV2D2Ev:
.LFB7753:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7753
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# /usr/include/c++/11.3.0/future:1681:     ~_Async_state_commonV2() = default;
	leaq	16+_ZTVNSt13__future_base21_Async_state_commonV2E(%rip), %rax	#, tmp93
# /usr/include/c++/11.3.0/bits/std_thread.h:151:       if (joinable())
	cmpq	$0, 32(%rdi)	#, MEM[(const struct thread *)this_2(D) + 32B]._M_id._M_thread
# /usr/include/c++/11.3.0/future:1681:     ~_Async_state_commonV2() = default;
	movq	%rax, (%rdi)	# tmp93, this_2(D)->D.113293._vptr._State_baseV2
# /usr/include/c++/11.3.0/bits/std_thread.h:151:       if (joinable())
	jne	.L60	#,
# /usr/include/c++/11.3.0/future:327:       virtual ~_State_baseV2() = default;
	leaq	16+_ZTVNSt13__future_base13_State_baseV2E(%rip), %rax	#, tmp94
	movq	%rax, (%rdi)	# tmp94, MEM[(struct _State_baseV2 *)this_2(D)]._vptr._State_baseV2
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	8(%rdi), %rdi	# MEM[(struct _Result_base * &)this_2(D) + 8], _5
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rdi, %rdi	# _5
	je	.L53	#,
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	(%rdi), %rax	# _5->_vptr._Result_base, _5->_vptr._Result_base
	call	*(%rax)	# *_6
.L53:
# /usr/include/c++/11.3.0/future:1681:     ~_Async_state_commonV2() = default;
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
.L60:
	.cfi_restore_state
# /usr/include/c++/11.3.0/bits/std_thread.h:152: 	std::terminate();
	call	_ZSt9terminatev@PLT	#
	.cfi_endproc
.LFE7753:
	.section	.gcc_except_table._ZNSt13__future_base21_Async_state_commonV2D2Ev,"aG",@progbits,_ZNSt13__future_base21_Async_state_commonV2D5Ev,comdat
.LLSDA7753:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7753-.LLSDACSB7753
.LLSDACSB7753:
.LLSDACSE7753:
	.section	.text._ZNSt13__future_base21_Async_state_commonV2D2Ev,"axG",@progbits,_ZNSt13__future_base21_Async_state_commonV2D5Ev,comdat
	.size	_ZNSt13__future_base21_Async_state_commonV2D2Ev, .-_ZNSt13__future_base21_Async_state_commonV2D2Ev
	.weak	_ZNSt13__future_base21_Async_state_commonV2D1Ev
	.set	_ZNSt13__future_base21_Async_state_commonV2D1Ev,_ZNSt13__future_base21_Async_state_commonV2D2Ev
	.section	.text._ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE9_M_invokeERKSt9_Any_data,"axG",@progbits,_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE9_M_invokeERKSt9_Any_data,comdat
	.p2align 4
	.weak	_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE9_M_invokeERKSt9_Any_data
	.type	_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE9_M_invokeERKSt9_Any_data, @function
_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE9_M_invokeERKSt9_Any_data:
.LFB7960:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7960
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12	# tmp119, <retval>
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx	# tmp120, __functor
	subq	$32, %rsp	#,
	.cfi_def_cfa_offset 64
# /usr/include/c++/11.3.0/bits/unique_ptr.h:173:       pointer    _M_ptr() const { return std::get<0>(_M_t); }
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp125
	movq	%rax, 24(%rsp)	# tmp125, D.196535
	movq	(%rsi), %rax	# MEM[(const struct _Task_setter *)__functor_2(D)]._M_result, tmp125
	movq	(%rax), %rbp	# MEM[(struct _Result * const &)_11], _12
# /usr/include/c++/11.3.0/future:1386: 	    (*_M_result)->_M_set((*_M_fn)());
	movq	8(%rsi), %rax	# MEM[(const struct _Task_setter *)__functor_2(D)]._M_fn, _13
# /usr/include/c++/11.3.0/bits/invoke.h:61:     { return std::forward<_Fn>(__f)(std::forward<_Args>(__args)...); }
	movq	8(%rax), %rdx	# MEM[(long unsigned int &)_13 + 8], MEM[(long unsigned int &)_13 + 8]
	movq	16(%rax), %rsi	# MEM[(long unsigned int &)_13 + 16], MEM[(long unsigned int &)_13 + 16]
# /usr/include/c++/11.3.0/tuple:233:       _M_head(_Head_base& __b) noexcept { return __b._M_head_impl; }
	leaq	24(%rax), %rdi	#, tmp107
# /usr/include/c++/11.3.0/bits/invoke.h:61:     { return std::forward<_Fn>(__f)(std::forward<_Args>(__args)...); }
	movq	(%rax), %rcx	# MEM[(long unsigned int &)_13],
.LEHB2:
	call	*48(%rax)	# MEM[(long long unsigned int (*<T19552>) (const struct vector &, long unsigned int, long unsigned int, long unsigned int) &)_13 + 48]
.LEHE2:
# /usr/include/c++/11.3.0/future:257: 	  ::new (_M_storage._M_addr()) _Res(std::move(__res));
	movq	%rax, 16(%rbp)	# tmp121, MEM[(long long unsigned int *)_12 + 16B]
# /usr/include/c++/11.3.0/future:258: 	  _M_initialized = true;
	movb	$1, 24(%rbp)	#, _12->_M_initialized
.L66:
# /usr/include/c++/11.3.0/future:1396: 	return std::move(*_M_result);
	movq	(%rbx), %rax	# MEM[(const struct _Task_setter *)__functor_2(D)]._M_result, _20
# /usr/include/c++/11.3.0/tuple:301:       _Tuple_impl(_Tuple_impl&&) = default;
	movq	(%rax), %rdx	# MEM[(struct _Tuple_impl &)_20], SR.995
# /usr/include/c++/11.3.0/bits/unique_ptr.h:163:       { __u._M_ptr() = nullptr; }
	movq	$0, (%rax)	#, MEM[(struct _Result * &)_20]
# /usr/include/c++/11.3.0/tuple:200: 	: _M_head_impl(std::forward<_UHead>(__h)) { }
	movq	%rdx, (%r12)	# SR.995, MEM[(struct _Head_base *)_3(D)]._M_head_impl
# /usr/include/c++/11.3.0/bits/std_function.h:292:       }
	movq	24(%rsp), %rax	# D.196535, tmp126
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	jne	.L76	#,
	addq	$32, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movq	%r12, %rax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
.L76:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
.L70:
# /usr/include/c++/11.3.0/future:1388: 	__catch(const __cxxabiv1::__forced_unwind&)
	movq	%rax, %rdi	# tmp122, tmp111
	movq	%rdx, %rax	# tmp123, tmp110
.L62:
	subq	$1, %rax	#, tmp110
	jne	.L63	#,
	call	__cxa_begin_catch@PLT	#
.LEHB3:
# /usr/include/c++/11.3.0/future:1390: 	    __throw_exception_again; // will cause broken_promise
	call	__cxa_rethrow@PLT	#
.LEHE3:
.L63:
# /usr/include/c++/11.3.0/future:1392: 	__catch(...)
	call	__cxa_begin_catch@PLT	#
# /usr/include/c++/11.3.0/future:1394: 	    (*_M_result)->_M_error = current_exception();
	leaq	16(%rsp), %rbp	#, tmp118
	movq	%rbp, %rdi	# tmp118,
	call	_ZSt17current_exceptionv@PLT	#
# /usr/include/c++/11.3.0/bits/unique_ptr.h:173:       pointer    _M_ptr() const { return std::get<0>(_M_t); }
	movq	(%rbx), %rax	# MEM[(const struct _Task_setter *)__functor_2(D)]._M_result, MEM[(const struct _Task_setter *)__functor_2(D)]._M_result
# /usr/include/c++/11.3.0/bits/exception_ptr.h:117:       : _M_exception_object(__o._M_exception_object)
	movq	16(%rsp), %rcx	# D.196524._M_exception_object, _25
# /usr/include/c++/11.3.0/bits/unique_ptr.h:173:       pointer    _M_ptr() const { return std::get<0>(_M_t); }
	movq	(%rax), %rdx	# MEM[(struct _Result * const &)_23], _24
# /usr/include/c++/11.3.0/bits/exception_ptr.h:118:       { __o._M_exception_object = nullptr; }
	movq	$0, 16(%rsp)	#, D.196524._M_exception_object
# /usr/include/c++/11.3.0/bits/exception_ptr.h:217:       _M_exception_object = __other._M_exception_object;
	movq	8(%rdx), %rax	# MEM[(struct exception_ptr &)_24 + 8]._M_exception_object, _26
# /usr/include/c++/11.3.0/bits/exception_ptr.h:218:       __other._M_exception_object = __tmp;
	movq	%rcx, 8(%rdx)	# _25, MEM[(struct exception_ptr &)_24 + 8]._M_exception_object
# /usr/include/c++/11.3.0/bits/exception_ptr.h:217:       _M_exception_object = __other._M_exception_object;
	movq	%rax, 8(%rsp)	# _26, D.196523._M_exception_object
# /usr/include/c++/11.3.0/bits/exception_ptr.h:200:       if (_M_exception_object)
	testq	%rax, %rax	# _26
	je	.L64	#,
# /usr/include/c++/11.3.0/bits/exception_ptr.h:201: 	_M_release();
	leaq	8(%rsp), %rdi	#, tmp114
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L64:
# /usr/include/c++/11.3.0/bits/exception_ptr.h:200:       if (_M_exception_object)
	cmpq	$0, 16(%rsp)	#, D.196524._M_exception_object
	je	.L65	#,
# /usr/include/c++/11.3.0/bits/exception_ptr.h:201: 	_M_release();
	movq	%rbp, %rdi	# tmp118,
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L65:
.LEHB4:
# /usr/include/c++/11.3.0/future:1392: 	__catch(...)
	call	__cxa_end_catch@PLT	#
	jmp	.L66	#
.L69:
# /usr/include/c++/11.3.0/future:1388: 	__catch(const __cxxabiv1::__forced_unwind&)
	movq	%rax, %rbp	# tmp124, tmp116
.L67:
	call	__cxa_end_catch@PLT	#
	movq	%rbp, %rdi	# tmp116,
	call	_Unwind_Resume@PLT	#
.LEHE4:
	.cfi_endproc
.LFE7960:
	.section	.gcc_except_table._ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE9_M_invokeERKSt9_Any_data,"aG",@progbits,_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE9_M_invokeERKSt9_Any_data,comdat
	.align 4
.LLSDA7960:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT7960-.LLSDATTD7960
.LLSDATTD7960:
	.byte	0x1
	.uleb128 .LLSDACSE7960-.LLSDACSB7960
.LLSDACSB7960:
	.uleb128 .LEHB2-.LFB7960
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L70-.LFB7960
	.uleb128 0x3
	.uleb128 .LEHB3-.LFB7960
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L69-.LFB7960
	.uleb128 0
	.uleb128 .LEHB4-.LFB7960
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE7960:
	.byte	0x2
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align 4
	.long	0

	.long	DW.ref._ZTIN10__cxxabiv115__forced_unwindE-.
.LLSDATT7960:
	.section	.text._ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE9_M_invokeERKSt9_Any_data,"axG",@progbits,_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE9_M_invokeERKSt9_Any_data,comdat
	.size	_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE9_M_invokeERKSt9_Any_data, .-_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE9_M_invokeERKSt9_Any_data
	.section	.text._ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb,"axG",@progbits,_ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb
	.type	_ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb, @function
_ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb:
.LFB4640:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4640
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 48
# /usr/include/c++/11.3.0/future:569:       _M_do_set(function<_Ptr_type()>* __f, bool* __did_set)
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp102
	movq	%rax, 8(%rsp)	# tmp102, D.196541
	xorl	%eax, %eax	# tmp102
# /usr/include/c++/11.3.0/bits/std_function.h:588: 	if (_M_empty())
	cmpq	$0, 16(%rsi)	#, MEM[(const struct _Function_base *)__f_2(D)]._M_manager
	je	.L85	#,
	movq	%rdi, %rbx	# tmp99, this
	movq	%rdx, %rbp	# tmp101, __did_set
# /usr/include/c++/11.3.0/bits/std_function.h:590: 	return _M_invoker(_M_functor, std::forward<_ArgTypes>(__args)...);
	movq	%rsp, %rdi	#, tmp93
.LEHB5:
	call	*24(%rsi)	# MEM[(const struct function *)__f_2(D)]._M_invoker
.LEHE5:
# /usr/include/c++/11.3.0/bits/move.h:204:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	movq	8(%rbx), %rdi	# MEM[(struct _Result_base * &)this_5(D) + 8], _12
# /usr/include/c++/11.3.0/bits/move.h:205:       __a = _GLIBCXX_MOVE(__b);
	movq	(%rsp), %rax	# MEM[(struct _Result_base * &)&__res], MEM[(struct _Result_base * &)&__res]
# /usr/include/c++/11.3.0/future:575: 	*__did_set = true;
	movb	$1, 0(%rbp)	#, *__did_set_3(D)
# /usr/include/c++/11.3.0/bits/move.h:206:       __b = _GLIBCXX_MOVE(__tmp);
	movq	%rdi, (%rsp)	# _12, MEM[(struct _Result_base * &)&__res]
# /usr/include/c++/11.3.0/bits/move.h:205:       __a = _GLIBCXX_MOVE(__b);
	movq	%rax, 8(%rbx)	# MEM[(struct _Result_base * &)&__res], MEM[(struct _Result_base * &)this_5(D) + 8]
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rdi, %rdi	# _12
	je	.L77	#,
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	(%rdi), %rax	# _12->_vptr._Result_base, _12->_vptr._Result_base
	call	*(%rax)	# *_10
.L77:
# /usr/include/c++/11.3.0/future:577:       }
	movq	8(%rsp), %rax	# D.196541, tmp103
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp103
	jne	.L86	#,
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
.L85:
	.cfi_restore_state
.LEHB6:
# /usr/include/c++/11.3.0/bits/std_function.h:589: 	  __throw_bad_function_call();
	call	_ZSt25__throw_bad_function_callv@PLT	#
.LEHE6:
.L86:
# /usr/include/c++/11.3.0/future:577:       }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE4640:
	.section	.gcc_except_table._ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb,"aG",@progbits,_ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb,comdat
.LLSDA4640:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4640-.LLSDACSB4640
.LLSDACSB4640:
	.uleb128 .LEHB5-.LFB4640
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB4640
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE4640:
	.section	.text._ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb,"axG",@progbits,_ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb,comdat
	.size	_ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb, .-_ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEED2Ev,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEED2Ev
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEED2Ev, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEED2Ev:
.LFB8078:
	.cfi_startproc
# /usr/include/c++/11.3.0/bits/std_thread.h:201:       struct _State_impl : public _State
	leaq	16+_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE(%rip), %rax	#, tmp87
	movq	%rax, (%rdi)	# tmp87, this_3(D)->D.183695._vptr._State
	jmp	_ZNSt6thread6_StateD2Ev@PLT	#
	.cfi_endproc
.LFE8078:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEED2Ev, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEED2Ev
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEED1Ev
	.set	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEED1Ev,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEED2Ev
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEED0Ev,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEED0Ev
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEED0Ev, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEED0Ev:
.LFB8080:
	.cfi_startproc
	leaq	16+_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE(%rip), %rax	#, tmp87
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# /usr/include/c++/11.3.0/bits/std_thread.h:201:       struct _State_impl : public _State
	movq	%rdi, %rbp	# tmp85, this
	movq	%rax, (%rdi)	# tmp87, this_2(D)->D.183695._vptr._State
	call	_ZNSt6thread6_StateD2Ev@PLT	#
	movq	%rbp, %rdi	# this,
	movl	$32, %esi	#,
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT	#
	.cfi_endproc
.LFE8080:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEED0Ev, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEED0Ev
	.section	.text._ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation,"axG",@progbits,_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation,comdat
	.p2align 4
	.weak	_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation, @function
_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation:
.LFB7963:
	.cfi_startproc
# /usr/include/c++/11.3.0/bits/std_function.h:270: 	switch (__op)
	testl	%edx, %edx	# __op
	je	.L91	#,
	cmpl	$1, %edx	#, __op
	je	.L92	#,
# /usr/include/c++/11.3.0/bits/std_function.h:183: 	  switch (__op)
	cmpl	$2, %edx	#, __op
	je	.L96	#,
.L94:
# /usr/include/c++/11.3.0/bits/std_function.h:285:       }
	xorl	%eax, %eax	#
	ret	
	.p2align 4,,10
	.p2align 3
.L91:
# /usr/include/c++/11.3.0/bits/std_function.h:274: 	    __dest._M_access<const type_info*>() = &typeid(_Functor);
	leaq	_ZTINSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIyEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESC_mmmEEEEyEE(%rip), %rax	#, tmp94
	movq	%rax, (%rdi)	# tmp94, MEM[(const struct type_info * &)__dest_5(D)]
# /usr/include/c++/11.3.0/bits/std_function.h:285:       }
	xorl	%eax, %eax	#
	ret	
	.p2align 4,,10
	.p2align 3
.L92:
# /usr/include/c++/11.3.0/bits/std_function.h:278: 	    __dest._M_access<_Functor*>() = _Base::_M_get_pointer(__source);
	movq	%rsi, (%rdi)	# __source, MEM[(struct _Task_setter * &)__dest_5(D)]
# /usr/include/c++/11.3.0/bits/std_function.h:285:       }
	xorl	%eax, %eax	#
	ret	
	.p2align 4,,10
	.p2align 3
.L96:
	movdqu	(%rsi), %xmm0	# MEM[(const struct _Task_setter *)__source_4(D)], tmp95
	movups	%xmm0, (%rdi)	# tmp95, MEM[(struct _Task_setter *)__dest_5(D)]
# /usr/include/c++/11.3.0/bits/std_function.h:216: 	  }
	jmp	.L94	#
	.cfi_endproc
.LFE7963:
	.size	_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation, .-_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.type	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, @function
_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:
.LFB8119:
	.cfi_startproc
# /usr/include/c++/11.3.0/ext/new_allocator.h:145: 	::operator delete(__p
	movl	$128, %esi	#,
	jmp	_ZdlPvm@PLT	#
	.cfi_endproc
.LFE8119:
	.size	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, .-_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.type	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, @function
_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:
.LFB8112:
	.cfi_startproc
# /usr/include/c++/11.3.0/ext/new_allocator.h:145: 	::operator delete(__p
	movl	$112, %esi	#,
	jmp	_ZdlPvm@PLT	#
	.cfi_endproc
.LFE8112:
	.size	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, .-_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.text
	.p2align 4
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, @function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB8187:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# /usr/include/c++/11.3.0/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movq	(%rdi), %rax	# __os_1(D)->_vptr.basic_ostream, __os_1(D)->_vptr.basic_ostream
	movq	-24(%rax), %rax	# MEM[(long int *)_2 + -24B], MEM[(long int *)_2 + -24B]
	movq	240(%rdi,%rax), %r12	# MEM[(const struct __ctype_type * *)_5 + 240B], _14
# /usr/include/c++/11.3.0/bits/basic_ios.h:49:       if (!__f)
	testq	%r12, %r12	# _14
	je	.L104	#,
# /usr/include/c++/11.3.0/bits/locale_facets.h:877: 	if (_M_widen_ok)
	cmpb	$0, 56(%r12)	#, MEM[(const struct ctype *)_14]._M_widen_ok
	movq	%rdi, %rbp	# tmp99, __os
	je	.L101	#,
# /usr/include/c++/11.3.0/bits/locale_facets.h:878: 	  return _M_widen[static_cast<unsigned char>(__c)];
	movsbl	67(%r12), %esi	# MEM[(const struct ctype *)_14]._M_widen[10],
.L102:
# /usr/include/c++/11.3.0/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movq	%rbp, %rdi	# __os,
	call	_ZNSo3putEc@PLT	#
# /usr/include/c++/11.3.0/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
# /usr/include/c++/11.3.0/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movq	%rax, %rdi	# tmp101, _8
# /usr/include/c++/11.3.0/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	popq	%r12	#
	.cfi_def_cfa_offset 8
# /usr/include/c++/11.3.0/ostream:707:     { return __os.flush(); }
	jmp	_ZNSo5flushEv@PLT	#
.L101:
	.cfi_restore_state
# /usr/include/c++/11.3.0/bits/locale_facets.h:879: 	this->_M_widen_init();
	movq	%r12, %rdi	# _14,
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT	#
# /usr/include/c++/11.3.0/bits/locale_facets.h:880: 	return this->do_widen(__c);
	movq	(%r12), %rax	# MEM[(const struct ctype *)_14].D.72688._vptr.facet, MEM[(const struct ctype *)_14].D.72688._vptr.facet
	movl	$10, %esi	#,
	movq	%r12, %rdi	# _14,
	call	*48(%rax)	# MEM[(int (*) () *)_24 + 48B]
	movsbl	%al, %esi	# tmp100,
	jmp	.L102	#
.L104:
# /usr/include/c++/11.3.0/bits/basic_ios.h:50: 	__throw_bad_cast();
	call	_ZSt16__throw_bad_castv@PLT	#
	.cfi_endproc
.LFE8187:
	.size	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, .-_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	.section	.text._ZZNSt9once_flag18_Prepare_executionC4IZSt9call_onceIMSt6threadFvvEJPS3_EEvRS_OT_DpOT0_EUlvE_EERS8_ENUlvE_4_FUNEv,"axG",@progbits,_ZZNSt9once_flag18_Prepare_executionC4IZSt9call_onceIMSt6threadFvvEJPS3_EEvRS_OT_DpOT0_EUlvE_EERS8_ENUlvE_4_FUNEv,comdat
	.p2align 4
	.weak	_ZZNSt9once_flag18_Prepare_executionC4IZSt9call_onceIMSt6threadFvvEJPS3_EEvRS_OT_DpOT0_EUlvE_EERS8_ENUlvE_4_FUNEv
	.type	_ZZNSt9once_flag18_Prepare_executionC4IZSt9call_onceIMSt6threadFvvEJPS3_EEvRS_OT_DpOT0_EUlvE_EERS8_ENUlvE_4_FUNEv, @function
_ZZNSt9once_flag18_Prepare_executionC4IZSt9call_onceIMSt6threadFvvEJPS3_EEvRS_OT_DpOT0_EUlvE_EERS8_ENUlvE_4_FUNEv:
.LFB7036:
	.cfi_startproc
# /usr/include/c++/11.3.0/mutex:712: 	__once_call = [] { (*static_cast<_Callable*>(__once_callable))(); };
	movq	_ZSt15__once_callable@gottpoff(%rip), %rax	#, tmp96
	movq	%fs:(%rax), %rcx	# __once_callable, __once_callable.14_2
	movq	(%rcx), %rdx	# MEM[(struct  & *)__once_callable.14_2], _4
# /usr/include/c++/11.3.0/bits/invoke.h:74:       return ((*std::forward<_Tp>(__t)).*__f)(std::forward<_Args>(__args)...);
	movq	8(%rcx), %rcx	# MEM[(struct thread * & *)__once_callable.14_2 + 8B], MEM[(struct thread * & *)__once_callable.14_2 + 8B]
	movq	(%rdx), %rax	# _4->__pfn, _9
	movq	8(%rdx), %rdi	# _4->__delta, _4->__delta
	addq	(%rcx), %rdi	# *_5, _30
	testb	$1, %al	#, _9
	je	.L106	#,
	movq	(%rdi), %rdx	# MEM[(int (*) () * *)_30], MEM[(int (*) () * *)_30]
	movq	-1(%rdx,%rax), %rax	# *_18, _9
.L106:
	jmp	*%rax	# _9
	.cfi_endproc
.LFE7036:
	.size	_ZZNSt9once_flag18_Prepare_executionC4IZSt9call_onceIMSt6threadFvvEJPS3_EEvRS_OT_DpOT0_EUlvE_EERS8_ENUlvE_4_FUNEv, .-_ZZNSt9once_flag18_Prepare_executionC4IZSt9call_onceIMSt6threadFvvEJPS3_EEvRS_OT_DpOT0_EUlvE_EERS8_ENUlvE_4_FUNEv
	.section	.text._ZNSt13__future_base7_ResultIyE10_M_destroyEv,"axG",@progbits,_ZNSt13__future_base7_ResultIyE10_M_destroyEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt13__future_base7_ResultIyE10_M_destroyEv
	.type	_ZNSt13__future_base7_ResultIyE10_M_destroyEv, @function
_ZNSt13__future_base7_ResultIyE10_M_destroyEv:
.LFB8135:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# /usr/include/c++/11.3.0/future:262: 	void _M_destroy() { delete this; }
	movq	(%rdi), %rax	# this_3(D)->D.167089._vptr._Result_base, this_3(D)->D.167089._vptr._Result_base
	leaq	_ZNSt13__future_base7_ResultIyED0Ev(%rip), %rdx	#, tmp88
# /usr/include/c++/11.3.0/future:262: 	void _M_destroy() { delete this; }
	movq	%rdi, %rbp	# tmp90, this
# /usr/include/c++/11.3.0/future:262: 	void _M_destroy() { delete this; }
	movq	16(%rax), %rax	# MEM[(int (*) () *)_1 + 16B], _2
	cmpq	%rdx, %rax	# tmp88, _2
	jne	.L111	#,
# /usr/include/c++/11.3.0/future:241: 	}
	leaq	16+_ZTVNSt13__future_base7_ResultIyEE(%rip), %rax	#, tmp92
	movq	%rax, (%rdi)	# tmp92, this_3(D)->D.167089._vptr._Result_base
	call	_ZNSt13__future_base12_Result_baseD2Ev@PLT	#
	movq	%rbp, %rdi	# this,
	movl	$32, %esi	#,
# /usr/include/c++/11.3.0/future:262: 	void _M_destroy() { delete this; }
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
# /usr/include/c++/11.3.0/future:241: 	}
	jmp	_ZdlPvm@PLT	#
	.p2align 4,,10
	.p2align 3
.L111:
	.cfi_restore_state
# /usr/include/c++/11.3.0/future:262: 	void _M_destroy() { delete this; }
	popq	%rbp	#
	.cfi_def_cfa_offset 8
# /usr/include/c++/11.3.0/future:262: 	void _M_destroy() { delete this; }
	jmp	*%rax	# _2
	.cfi_endproc
.LFE8135:
	.size	_ZNSt13__future_base7_ResultIyE10_M_destroyEv, .-_ZNSt13__future_base7_ResultIyE10_M_destroyEv
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.type	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info, @function
_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:
.LFB8113:
	.cfi_startproc
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:554: 	    ||
	leaq	_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag(%rip), %rax	#, tmp88
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:546:       _M_get_deleter(const std::type_info& __ti) noexcept override
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
# /usr/include/c++/11.3.0/ext/aligned_buffer.h:104:         return static_cast<void*>(&_M_storage);
	leaq	16(%rdi), %r12	#, <retval>
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:554: 	    ||
	cmpq	%rax, %rsi	# tmp88, __ti
	je	.L113	#,
# /usr/include/c++/11.3.0/typeinfo:122:       return ((__name == __arg.__name)
	movq	8(%rsi), %rdi	# __ti_5(D)->__name, _7
# /usr/include/c++/11.3.0/typeinfo:123: 	      || (__name[0] != '*' &&
	leaq	_ZTSSt19_Sp_make_shared_tag(%rip), %rsi	#, tmp89
	cmpq	%rsi, %rdi	# tmp89, _7
	je	.L113	#,
	cmpb	$42, (%rdi)	#, *_7
	je	.L115	#,
# /usr/include/c++/11.3.0/typeinfo:124: 		  __builtin_strcmp (__name, __arg.__name) == 0));
	call	strcmp@PLT	#
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:562: 	return nullptr;
	testl	%eax, %eax	# tmp96
	movl	$0, %eax	#, tmp93
	cmovne	%rax, %r12	# <retval>,, tmp93, <retval>
.L113:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:563:       }
	movq	%r12, %rax	# <retval>,
	popq	%r12	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L115:
	.cfi_restore_state
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:562: 	return nullptr;
	xorl	%r12d, %r12d	# <retval>
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:563:       }
	movq	%r12, %rax	# <retval>,
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE8113:
	.size	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info, .-_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.section	.text._ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED2Ev,"axG",@progbits,_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED2Ev
	.type	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED2Ev, @function
_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED2Ev:
.LFB8082:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8082
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	16+_ZTVNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE(%rip), %rax	#, tmp108
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# tmp106, this
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# /usr/include/c++/11.3.0/future:1642:     class __future_base::_Deferred_state final
	movq	%rax, (%rdi)	# tmp108, this_2(D)->D.166744._vptr._State_baseV2
# /usr/include/c++/11.3.0/bits/stl_vector.h:680: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	64(%rdi), %rdi	# MEM[(struct vector *)this_2(D) + 64B].D.151183._M_impl.D.150495._M_start, _12
# /usr/include/c++/11.3.0/bits/stl_vector.h:353: 	if (__p)
	testq	%rdi, %rdi	# _12
	je	.L119	#,
# /usr/include/c++/11.3.0/bits/stl_vector.h:336: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	80(%rbx), %rsi	# MEM[(struct _Vector_base *)this_2(D) + 64B]._M_impl.D.150495._M_end_of_storage, tmp98
	subq	%rdi, %rsi	# _12, tmp98
# /usr/include/c++/11.3.0/ext/new_allocator.h:145: 	::operator delete(__p
	call	_ZdlPvm@PLT	#
.L119:
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	32(%rbx), %rbp	# MEM[(struct _Result * &)this_2(D) + 32], _8
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rbp, %rbp	# _8
	je	.L120	#,
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	0(%rbp), %rax	# MEM[(struct _Result_base *)_8]._vptr._Result_base, _9
	leaq	_ZNSt13__future_base7_ResultIyE10_M_destroyEv(%rip), %rcx	#, tmp100
	movq	(%rax), %rdx	# *_9, _10
	cmpq	%rcx, %rdx	# tmp100, _10
	jne	.L121	#,
# /usr/include/c++/11.3.0/future:262: 	void _M_destroy() { delete this; }
	movq	16(%rax), %rax	# MEM[(int (*) () *)_9 + 16B], _30
	leaq	_ZNSt13__future_base7_ResultIyED0Ev(%rip), %rdx	#, tmp101
	cmpq	%rdx, %rax	# tmp101, _30
	jne	.L122	#,
# /usr/include/c++/11.3.0/future:241: 	}
	leaq	16+_ZTVNSt13__future_base7_ResultIyEE(%rip), %rax	#, tmp110
	movq	%rbp, %rdi	# _8,
	movq	%rax, 0(%rbp)	# tmp110, _8->D.167089._vptr._Result_base
	call	_ZNSt13__future_base12_Result_baseD2Ev@PLT	#
	movl	$32, %esi	#,
	movq	%rbp, %rdi	# _8,
	call	_ZdlPvm@PLT	#
.L120:
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	8(%rbx), %rdi	# MEM[(struct _Result_base * &)this_2(D) + 8], _5
# /usr/include/c++/11.3.0/future:327:       virtual ~_State_baseV2() = default;
	leaq	16+_ZTVNSt13__future_base13_State_baseV2E(%rip), %rax	#, tmp111
	movq	%rax, (%rbx)	# tmp111, MEM[(struct _State_baseV2 *)this_2(D)]._vptr._State_baseV2
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rdi, %rdi	# _5
	je	.L118	#,
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	(%rdi), %rax	# _5->_vptr._Result_base, _5->_vptr._Result_base
	call	*(%rax)	# *_6
.L118:
# /usr/include/c++/11.3.0/future:1642:     class __future_base::_Deferred_state final
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L122:
	.cfi_restore_state
# /usr/include/c++/11.3.0/future:262: 	void _M_destroy() { delete this; }
	movq	%rbp, %rdi	# _8,
	call	*%rax	# _30
	jmp	.L120	#
	.p2align 4,,10
	.p2align 3
.L121:
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	%rbp, %rdi	# _8,
	call	*%rdx	# _10
	jmp	.L120	#
	.cfi_endproc
.LFE8082:
	.section	.gcc_except_table._ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED2Ev,"aG",@progbits,_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED5Ev,comdat
.LLSDA8082:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8082-.LLSDACSB8082
.LLSDACSB8082:
.LLSDACSE8082:
	.section	.text._ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED2Ev,"axG",@progbits,_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED5Ev,comdat
	.size	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED2Ev, .-_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED2Ev
	.weak	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED1Ev
	.set	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED1Ev,_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED2Ev
	.section	.text._ZNSt13__future_base21_Async_state_commonV2D0Ev,"axG",@progbits,_ZNSt13__future_base21_Async_state_commonV2D5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt13__future_base21_Async_state_commonV2D0Ev
	.type	_ZNSt13__future_base21_Async_state_commonV2D0Ev, @function
_ZNSt13__future_base21_Async_state_commonV2D0Ev:
.LFB7755:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7755
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# /usr/include/c++/11.3.0/future:1681:     ~_Async_state_commonV2() = default;
	leaq	16+_ZTVNSt13__future_base21_Async_state_commonV2E(%rip), %rax	#, tmp93
# /usr/include/c++/11.3.0/bits/std_thread.h:151:       if (joinable())
	cmpq	$0, 32(%rdi)	#, MEM[(const struct thread *)this_2(D) + 32B]._M_id._M_thread
# /usr/include/c++/11.3.0/future:1681:     ~_Async_state_commonV2() = default;
	movq	%rax, (%rdi)	# tmp93, this_2(D)->D.113293._vptr._State_baseV2
# /usr/include/c++/11.3.0/bits/std_thread.h:151:       if (joinable())
	jne	.L141	#,
# /usr/include/c++/11.3.0/future:327:       virtual ~_State_baseV2() = default;
	leaq	16+_ZTVNSt13__future_base13_State_baseV2E(%rip), %rax	#, tmp94
	movq	%rdi, %rbp	# tmp91, this
	movq	%rax, (%rdi)	# tmp94, MEM[(struct _State_baseV2 *)this_2(D)]._vptr._State_baseV2
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	8(%rdi), %rdi	# MEM[(struct _Result_base * &)this_2(D) + 8], _6
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rdi, %rdi	# _6
	je	.L136	#,
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	(%rdi), %rax	# _6->_vptr._Result_base, _6->_vptr._Result_base
	call	*(%rax)	# *_7
.L136:
# /usr/include/c++/11.3.0/future:1681:     ~_Async_state_commonV2() = default;
	movq	%rbp, %rdi	# this,
	movl	$48, %esi	#,
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT	#
.L141:
	.cfi_restore_state
# /usr/include/c++/11.3.0/bits/std_thread.h:152: 	std::terminate();
	call	_ZSt9terminatev@PLT	#
	.cfi_endproc
.LFE7755:
	.section	.gcc_except_table._ZNSt13__future_base21_Async_state_commonV2D0Ev,"aG",@progbits,_ZNSt13__future_base21_Async_state_commonV2D5Ev,comdat
.LLSDA7755:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7755-.LLSDACSB7755
.LLSDACSB7755:
.LLSDACSE7755:
	.section	.text._ZNSt13__future_base21_Async_state_commonV2D0Ev,"axG",@progbits,_ZNSt13__future_base21_Async_state_commonV2D5Ev,comdat
	.size	_ZNSt13__future_base21_Async_state_commonV2D0Ev, .-_ZNSt13__future_base21_Async_state_commonV2D0Ev
	.section	.text._ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE17_M_complete_asyncEv,"axG",@progbits,_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE17_M_complete_asyncEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE17_M_complete_asyncEv
	.type	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE17_M_complete_asyncEv, @function
_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE17_M_complete_asyncEv:
.LFB8140:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8140
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
# /usr/include/c++/11.3.0/bits/std_function.h:452: 	      _M_manager = &_My_handler::_M_manager;
	leaq	_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation(%rip), %rcx	#, tmp113
# /usr/include/c++/11.3.0/future:1660:       _M_complete_async()
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$136, %rsp	#,
	.cfi_def_cfa_offset 176
# /usr/include/c++/11.3.0/mutex:710: 	__once_callable = std::__addressof(__c);
	movq	_ZSt15__once_callable@gottpoff(%rip), %r13	#, tmp146
# /usr/include/c++/11.3.0/mutex:712: 	__once_call = [] { (*static_cast<_Callable*>(__once_callable))(); };
	movq	_ZSt11__once_call@gottpoff(%rip), %r12	#, tmp147
# /usr/include/c++/11.3.0/future:1660:       _M_complete_async()
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp152
	movq	%rax, 120(%rsp)	# tmp152, D.196708
	xorl	%eax, %eax	# tmp152
# /usr/include/c++/11.3.0/future:1668:         _M_set_result(_S_task_setter(_M_result, _M_fn), true);
	leaq	32(%rdi), %rax	#, tmp109
# /usr/include/c++/11.3.0/future:412: 		  std::__addressof(__res), std::__addressof(__did_set));
	leaq	80(%rsp), %rbp	#, tmp145
# /usr/include/c++/11.3.0/future:408: 	bool __did_set = false;
	movb	$0, 7(%rsp)	#, __did_set
# /usr/include/c++/11.3.0/future:1668:         _M_set_result(_S_task_setter(_M_result, _M_fn), true);
	movq	%rax, %xmm0	# tmp109, tmp109
# /usr/include/c++/11.3.0/future:1668:         _M_set_result(_S_task_setter(_M_result, _M_fn), true);
	leaq	40(%rdi), %rax	#, tmp110
# /usr/include/c++/11.3.0/future:412: 		  std::__addressof(__res), std::__addressof(__did_set));
	movq	%rbp, 16(%rsp)	# tmp145, D.196669
# /usr/include/c++/11.3.0/x86_64-unknown-linux-gnu/bits/gthr-default.h:699:   if (__gthread_active_p ())
	cmpq	$0, _ZL28__gthrw___pthread_key_createPjPFvPvE@GOTPCREL(%rip)	#,
	movq	%rax, %xmm1	# tmp110, tmp110
# /usr/include/c++/11.3.0/bits/std_function.h:452: 	      _M_manager = &_My_handler::_M_manager;
	leaq	_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE9_M_invokeERKSt9_Any_data(%rip), %rax	#, tmp112
# /usr/include/c++/11.3.0/future:411: 	call_once(_M_once, &_State_baseV2::_M_do_set, this,
	movq	%rdi, 8(%rsp)	# this, D.196668
	punpcklqdq	%xmm1, %xmm0	# tmp110, tmp108
# /usr/include/c++/11.3.0/bits/std_function.h:452: 	      _M_manager = &_My_handler::_M_manager;
	movq	%rax, %xmm2	# tmp112, tmp112
# /usr/include/c++/11.3.0/future:412: 		  std::__addressof(__res), std::__addressof(__did_set));
	leaq	7(%rsp), %rax	#, tmp114
# /usr/include/c++/11.3.0/future:411: 	call_once(_M_once, &_State_baseV2::_M_do_set, this,
	movq	$0, 40(%rsp)	#, D.196667.__delta
# /usr/include/c++/11.3.0/future:412: 		  std::__addressof(__res), std::__addressof(__did_set));
	movq	%rax, 24(%rsp)	# tmp114, D.196670
# /usr/include/c++/11.3.0/future:411: 	call_once(_M_once, &_State_baseV2::_M_do_set, this,
	leaq	_ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb(%rip), %rax	#, tmp159
	movaps	%xmm0, 80(%rsp)	# tmp108, MEM[(struct _Task_setter *)&D.190477]
# /usr/include/c++/11.3.0/bits/std_function.h:452: 	      _M_manager = &_My_handler::_M_manager;
	movq	%rcx, %xmm0	# tmp113, tmp113
# /usr/include/c++/11.3.0/future:411: 	call_once(_M_once, &_State_baseV2::_M_do_set, this,
	movq	%rax, 32(%rsp)	# tmp159, D.196667.__pfn
# /usr/include/c++/11.3.0/bits/std_function.h:452: 	      _M_manager = &_My_handler::_M_manager;
	punpcklqdq	%xmm2, %xmm0	# tmp112, tmp111
# /usr/include/c++/11.3.0/mutex:775:       auto __callable = [&] {
	leaq	32(%rsp), %rax	#, tmp118
# /usr/include/c++/11.3.0/bits/std_function.h:452: 	      _M_manager = &_My_handler::_M_manager;
	movaps	%xmm0, 96(%rsp)	# tmp111, MEM <vector(2) long unsigned int> [(void *)&D.190477 + 16B]
# /usr/include/c++/11.3.0/mutex:775:       auto __callable = [&] {
	movq	%rax, %xmm0	# tmp118, tmp118
	leaq	8(%rsp), %rax	#, tmp119
	movq	%rax, %xmm3	# tmp119, tmp119
	leaq	16(%rsp), %rax	#, tmp121
	punpcklqdq	%xmm3, %xmm0	# tmp119, tmp117
	movaps	%xmm0, 48(%rsp)	# tmp117, MEM <vector(2) long unsigned int> [(void *)&__callable]
	movq	%rax, %xmm0	# tmp121, tmp121
	leaq	24(%rsp), %rax	#, tmp122
	movq	%rax, %xmm4	# tmp122, tmp122
# /usr/include/c++/11.3.0/mutex:710: 	__once_callable = std::__addressof(__c);
	leaq	48(%rsp), %rax	#, tmp124
# /usr/include/c++/11.3.0/mutex:775:       auto __callable = [&] {
	punpcklqdq	%xmm4, %xmm0	# tmp122, tmp120
	movaps	%xmm0, 64(%rsp)	# tmp120, MEM <vector(2) long unsigned int> [(void *)&__callable + 16B]
# /usr/include/c++/11.3.0/mutex:710: 	__once_callable = std::__addressof(__c);
	movq	%rax, %fs:0(%r13)	# tmp124, __once_callable
# /usr/include/c++/11.3.0/mutex:712: 	__once_call = [] { (*static_cast<_Callable*>(__once_callable))(); };
	leaq	_ZZNSt9once_flag18_Prepare_executionC4IZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS3_12_Result_baseENS7_8_DeleterEEvEEPbEJPS4_SC_SD_EEvRS_OT_DpOT0_EUlvE_EERSI_ENUlvE_4_FUNEv(%rip), %rax	#, tmp164
	movq	%rax, %fs:(%r12)	# tmp164, __once_call
# /usr/include/c++/11.3.0/x86_64-unknown-linux-gnu/bits/gthr-default.h:699:   if (__gthread_active_p ())
	je	.L153	#,
# /usr/include/c++/11.3.0/x86_64-unknown-linux-gnu/bits/gthr-default.h:700:     return __gthrw_(pthread_once) (__once, __func);
	movq	__once_proxy@GOTPCREL(%rip), %rsi	#,
	movq	%rdi, %rbx	# tmp148, this
	addq	$24, %rdi	#, _23
.LEHB7:
	call	_ZL20__gthrw_pthread_oncePiPFvvE@PLT	#
.LEHE7:
# /usr/include/c++/11.3.0/mutex:783:       if (int __e = __gthread_once(&__once._M_once, &__once_proxy))
	testl	%eax, %eax	# _24
	jne	.L143	#,
# /usr/include/c++/11.3.0/mutex:718:       __once_callable = nullptr;
	movq	$0, %fs:0(%r13)	#, __once_callable
# /usr/include/c++/11.3.0/mutex:719:       __once_call = nullptr;
	movq	$0, %fs:(%r12)	#, __once_call
# /usr/include/c++/11.3.0/future:413: 	if (__did_set)
	cmpb	$0, 7(%rsp)	#, __did_set
	jne	.L145	#,
.L150:
# /usr/include/c++/11.3.0/bits/std_function.h:243:       if (_M_manager)
	movq	96(%rsp), %rax	# MEM[(struct _Function_base *)&D.190477]._M_manager, _8
# /usr/include/c++/11.3.0/bits/std_function.h:243:       if (_M_manager)
	testq	%rax, %rax	# _8
	je	.L142	#,
# /usr/include/c++/11.3.0/bits/std_function.h:244: 	_M_manager(_M_functor, _M_functor, __destroy_functor);
	movl	$3, %edx	#,
	movq	%rbp, %rsi	# tmp145,
	movq	%rbp, %rdi	# tmp145,
	call	*%rax	# _8
.L142:
# /usr/include/c++/11.3.0/future:1669:       }
	movq	120(%rsp), %rax	# D.196708, tmp153
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp153
	jne	.L160	#,
	addq	$136, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L145:
	.cfi_restore_state
# /usr/include/c++/11.3.0/bits/atomic_futex.h:277:       unsigned* __futex = (unsigned *)(void *)&_M_data;
	leaq	16(%rbx), %rdi	#, __futex
# /usr/include/c++/11.3.0/bits/atomic_base.h:499: 	return __atomic_exchange_n(&_M_i, __i, int(__m));
	movl	$1, %eax	#, tmp139
	xchgl	(%rdi), %eax	#,* __futex, _28
# /usr/include/c++/11.3.0/bits/atomic_futex.h:278:       if (_M_data.exchange(__val, __mo) & _Waiter_bit)
	testl	%eax, %eax	# _28
	jns	.L150	#,
.LEHB8:
# /usr/include/c++/11.3.0/bits/atomic_futex.h:279: 	_M_futex_notify_all(__futex);
	call	_ZNSt28__atomic_futex_unsigned_base19_M_futex_notify_allEPj@PLT	#
.LEHE8:
	jmp	.L150	#
.L153:
# /usr/include/c++/11.3.0/x86_64-unknown-linux-gnu/bits/gthr-default.h:702:     return -1;
	movl	$-1, %eax	#, _24
.L143:
# /usr/include/c++/11.3.0/mutex:784: 	__throw_system_error(__e);
	movl	%eax, %edi	# _24,
.LEHB9:
	call	_ZSt20__throw_system_errori@PLT	#
.LEHE9:
.L160:
# /usr/include/c++/11.3.0/future:1669:       }
	call	__stack_chk_fail@PLT	#
.L154:
# /usr/include/c++/11.3.0/bits/std_function.h:243:       if (_M_manager)
	movq	%rax, %r12	# tmp151, tmp135
	jmp	.L149	#
.L155:
.L148:
# /usr/include/c++/11.3.0/mutex:718:       __once_callable = nullptr;
	movq	$0, %fs:0(%r13)	#, __once_callable
# /usr/include/c++/11.3.0/mutex:719:       __once_call = nullptr;
	movq	$0, %fs:(%r12)	#, __once_call
	movq	%rax, %r12	# tmp136, tmp135
.L149:
# /usr/include/c++/11.3.0/bits/std_function.h:243:       if (_M_manager)
	movq	96(%rsp), %rax	# MEM[(struct _Function_base *)&D.190477]._M_manager, _9
# /usr/include/c++/11.3.0/bits/std_function.h:243:       if (_M_manager)
	testq	%rax, %rax	# _9
	je	.L151	#,
# /usr/include/c++/11.3.0/bits/std_function.h:244: 	_M_manager(_M_functor, _M_functor, __destroy_functor);
	movl	$3, %edx	#,
	movq	%rbp, %rsi	# tmp145,
	movq	%rbp, %rdi	# tmp145,
	call	*%rax	# _9
.L151:
	movq	%r12, %rdi	# tmp135,
.LEHB10:
	call	_Unwind_Resume@PLT	#
.LEHE10:
	.cfi_endproc
.LFE8140:
	.section	.gcc_except_table._ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE17_M_complete_asyncEv,"aG",@progbits,_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE17_M_complete_asyncEv,comdat
.LLSDA8140:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8140-.LLSDACSB8140
.LLSDACSB8140:
	.uleb128 .LEHB7-.LFB8140
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L155-.LFB8140
	.uleb128 0
	.uleb128 .LEHB8-.LFB8140
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L154-.LFB8140
	.uleb128 0
	.uleb128 .LEHB9-.LFB8140
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L155-.LFB8140
	.uleb128 0
	.uleb128 .LEHB10-.LFB8140
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE8140:
	.section	.text._ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE17_M_complete_asyncEv,"axG",@progbits,_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE17_M_complete_asyncEv,comdat
	.size	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE17_M_complete_asyncEv, .-_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE17_M_complete_asyncEv
	.section	.text._ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED2Ev,"axG",@progbits,_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED2Ev
	.type	_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED2Ev, @function
_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED2Ev:
.LFB8143:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8143
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# /usr/include/c++/11.3.0/future:1729:       }
	leaq	16+_ZTVNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE(%rip), %rax	#, tmp113
# /usr/include/c++/11.3.0/future:1725:       ~_Async_state_impl()
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# tmp111, this
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# /usr/include/c++/11.3.0/future:1727: 	if (_M_thread.joinable())
	cmpq	$0, 32(%rdi)	#, MEM[(const struct thread *)this_5(D) + 32B]._M_id._M_thread
# /usr/include/c++/11.3.0/future:1729:       }
	movq	%rax, (%rdi)	# tmp113, this_5(D)->D.165338.D.113293._vptr._State_baseV2
# /usr/include/c++/11.3.0/future:1727: 	if (_M_thread.joinable())
	jne	.L179	#,
.L162:
# /usr/include/c++/11.3.0/bits/stl_vector.h:680: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	80(%rbx), %rdi	# MEM[(struct vector *)this_5(D) + 80B].D.151183._M_impl.D.150495._M_start, _15
# /usr/include/c++/11.3.0/bits/stl_vector.h:353: 	if (__p)
	testq	%rdi, %rdi	# _15
	je	.L163	#,
# /usr/include/c++/11.3.0/bits/stl_vector.h:336: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	96(%rbx), %rsi	# MEM[(struct _Vector_base *)this_5(D) + 80B]._M_impl.D.150495._M_end_of_storage, tmp102
	subq	%rdi, %rsi	# _15, tmp102
# /usr/include/c++/11.3.0/ext/new_allocator.h:145: 	::operator delete(__p
	call	_ZdlPvm@PLT	#
.L163:
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	48(%rbx), %rbp	# MEM[(struct _Result * &)this_5(D) + 48], _11
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rbp, %rbp	# _11
	je	.L164	#,
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	0(%rbp), %rax	# MEM[(struct _Result_base *)_11]._vptr._Result_base, _12
	leaq	_ZNSt13__future_base7_ResultIyE10_M_destroyEv(%rip), %rcx	#, tmp104
	movq	(%rax), %rdx	# *_12, _13
	cmpq	%rcx, %rdx	# tmp104, _13
	jne	.L165	#,
# /usr/include/c++/11.3.0/future:262: 	void _M_destroy() { delete this; }
	movq	16(%rax), %rax	# MEM[(int (*) () *)_12 + 16B], _30
	leaq	_ZNSt13__future_base7_ResultIyED0Ev(%rip), %rdx	#, tmp105
	cmpq	%rdx, %rax	# tmp105, _30
	jne	.L166	#,
# /usr/include/c++/11.3.0/future:241: 	}
	leaq	16+_ZTVNSt13__future_base7_ResultIyEE(%rip), %rax	#, tmp115
	movq	%rbp, %rdi	# _11,
	movq	%rax, 0(%rbp)	# tmp115, _11->D.167089._vptr._Result_base
	call	_ZNSt13__future_base12_Result_baseD2Ev@PLT	#
	movl	$32, %esi	#,
	movq	%rbp, %rdi	# _11,
	call	_ZdlPvm@PLT	#
.L164:
# /usr/include/c++/11.3.0/future:1681:     ~_Async_state_commonV2() = default;
	leaq	16+_ZTVNSt13__future_base21_Async_state_commonV2E(%rip), %rax	#, tmp116
# /usr/include/c++/11.3.0/bits/std_thread.h:151:       if (joinable())
	cmpq	$0, 32(%rbx)	#, MEM[(const struct thread *)this_5(D) + 32B]._M_id._M_thread
# /usr/include/c++/11.3.0/future:1681:     ~_Async_state_commonV2() = default;
	movq	%rax, (%rbx)	# tmp116, MEM[(struct _Async_state_commonV2 *)this_5(D)].D.113293._vptr._State_baseV2
# /usr/include/c++/11.3.0/bits/std_thread.h:151:       if (joinable())
	jne	.L180	#,
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	8(%rbx), %rdi	# MEM[(struct _Result_base * &)this_5(D) + 8], _35
# /usr/include/c++/11.3.0/future:327:       virtual ~_State_baseV2() = default;
	leaq	16+_ZTVNSt13__future_base13_State_baseV2E(%rip), %rax	#, tmp117
	movq	%rax, (%rbx)	# tmp117, MEM[(struct _State_baseV2 *)this_5(D)]._vptr._State_baseV2
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rdi, %rdi	# _35
	je	.L161	#,
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	(%rdi), %rax	# _35->_vptr._Result_base, _35->_vptr._Result_base
	call	*(%rax)	# *_36
.L161:
# /usr/include/c++/11.3.0/future:1729:       }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L179:
	.cfi_restore_state
# /usr/include/c++/11.3.0/future:1728: 	  _M_thread.join();
	leaq	32(%rdi), %rdi	#, tmp101
	call	_ZNSt6thread4joinEv@PLT	#
	jmp	.L162	#
	.p2align 4,,10
	.p2align 3
.L166:
# /usr/include/c++/11.3.0/future:262: 	void _M_destroy() { delete this; }
	movq	%rbp, %rdi	# _11,
	call	*%rax	# _30
	jmp	.L164	#
	.p2align 4,,10
	.p2align 3
.L165:
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	%rbp, %rdi	# _11,
	call	*%rdx	# _13
	jmp	.L164	#
.L180:
# /usr/include/c++/11.3.0/bits/std_thread.h:152: 	std::terminate();
	call	_ZSt9terminatev@PLT	#
	.cfi_endproc
.LFE8143:
	.section	.gcc_except_table._ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED2Ev,"aG",@progbits,_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED5Ev,comdat
.LLSDA8143:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8143-.LLSDACSB8143
.LLSDACSB8143:
.LLSDACSE8143:
	.section	.text._ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED2Ev,"axG",@progbits,_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED5Ev,comdat
	.size	_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED2Ev, .-_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED2Ev
	.weak	_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED1Ev
	.set	_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED1Ev,_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED2Ev
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.type	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, @function
_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:
.LFB8111:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8111
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# /usr/include/c++/11.3.0/future:1642:     class __future_base::_Deferred_state final
	leaq	16+_ZTVNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE(%rip), %rax	#, tmp108
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:526:       _M_dispose() noexcept
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# tmp106, this
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# /usr/include/c++/11.3.0/future:1642:     class __future_base::_Deferred_state final
	movq	%rax, 16(%rdi)	# tmp108, MEM[(struct _Deferred_state *)this_2(D) + 16B].D.166744._vptr._State_baseV2
# /usr/include/c++/11.3.0/bits/stl_vector.h:680: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	80(%rdi), %rdi	# MEM[(struct vector *)this_2(D) + 80B].D.151183._M_impl.D.150495._M_start, _6
# /usr/include/c++/11.3.0/bits/stl_vector.h:353: 	if (__p)
	testq	%rdi, %rdi	# _6
	je	.L182	#,
# /usr/include/c++/11.3.0/bits/stl_vector.h:336: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	96(%rbx), %rsi	# MEM[(struct _Vector_base *)this_2(D) + 80B]._M_impl.D.150495._M_end_of_storage, tmp98
	subq	%rdi, %rsi	# _6, tmp98
# /usr/include/c++/11.3.0/ext/new_allocator.h:145: 	::operator delete(__p
	call	_ZdlPvm@PLT	#
.L182:
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	48(%rbx), %rbp	# MEM[(struct _Result * &)this_2(D) + 48], _11
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rbp, %rbp	# _11
	je	.L183	#,
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	0(%rbp), %rax	# MEM[(struct _Result_base *)_11]._vptr._Result_base, _12
	leaq	_ZNSt13__future_base7_ResultIyE10_M_destroyEv(%rip), %rcx	#, tmp100
	movq	(%rax), %rdx	# *_12, _13
	cmpq	%rcx, %rdx	# tmp100, _13
	jne	.L184	#,
# /usr/include/c++/11.3.0/future:262: 	void _M_destroy() { delete this; }
	movq	16(%rax), %rax	# MEM[(int (*) () *)_12 + 16B], _21
	leaq	_ZNSt13__future_base7_ResultIyED0Ev(%rip), %rdx	#, tmp101
	cmpq	%rdx, %rax	# tmp101, _21
	jne	.L185	#,
# /usr/include/c++/11.3.0/future:241: 	}
	leaq	16+_ZTVNSt13__future_base7_ResultIyEE(%rip), %rax	#, tmp110
	movq	%rbp, %rdi	# _11,
	movq	%rax, 0(%rbp)	# tmp110, _11->D.167089._vptr._Result_base
	call	_ZNSt13__future_base12_Result_baseD2Ev@PLT	#
	movl	$32, %esi	#,
	movq	%rbp, %rdi	# _11,
	call	_ZdlPvm@PLT	#
.L183:
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	24(%rbx), %rdi	# MEM[(struct _Result_base * &)this_2(D) + 24], _14
# /usr/include/c++/11.3.0/future:327:       virtual ~_State_baseV2() = default;
	leaq	16+_ZTVNSt13__future_base13_State_baseV2E(%rip), %rax	#, tmp111
	movq	%rax, 16(%rbx)	# tmp111, MEM[(struct _State_baseV2 *)this_2(D) + 16B]._vptr._State_baseV2
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rdi, %rdi	# _14
	je	.L181	#,
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	(%rdi), %rax	# _14->_vptr._Result_base, _14->_vptr._Result_base
	call	*(%rax)	# *_15
.L181:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:529:       }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L185:
	.cfi_restore_state
# /usr/include/c++/11.3.0/future:262: 	void _M_destroy() { delete this; }
	movq	%rbp, %rdi	# _11,
	call	*%rax	# _21
	jmp	.L183	#
	.p2align 4,,10
	.p2align 3
.L184:
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	%rbp, %rdi	# _11,
	call	*%rdx	# _13
	jmp	.L183	#
	.cfi_endproc
.LFE8111:
	.section	.gcc_except_table._ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"aG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
.LLSDA8111:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8111-.LLSDACSB8111
.LLSDACSB8111:
.LLSDACSE8111:
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
	.size	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, .-_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.section	.text._ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED0Ev,"axG",@progbits,_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED0Ev
	.type	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED0Ev, @function
_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED0Ev:
.LFB8084:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8084
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	16+_ZTVNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE(%rip), %rax	#, tmp108
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp	# tmp106, this
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# /usr/include/c++/11.3.0/future:1642:     class __future_base::_Deferred_state final
	movq	%rax, (%rdi)	# tmp108, this_2(D)->D.166744._vptr._State_baseV2
# /usr/include/c++/11.3.0/bits/stl_vector.h:680: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	64(%rdi), %rdi	# MEM[(struct vector *)this_2(D) + 64B].D.151183._M_impl.D.150495._M_start, _6
# /usr/include/c++/11.3.0/bits/stl_vector.h:353: 	if (__p)
	testq	%rdi, %rdi	# _6
	je	.L198	#,
# /usr/include/c++/11.3.0/bits/stl_vector.h:336: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	80(%rbp), %rsi	# MEM[(struct _Vector_base *)this_2(D) + 64B]._M_impl.D.150495._M_end_of_storage, tmp98
	subq	%rdi, %rsi	# _6, tmp98
# /usr/include/c++/11.3.0/ext/new_allocator.h:145: 	::operator delete(__p
	call	_ZdlPvm@PLT	#
.L198:
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	32(%rbp), %r12	# MEM[(struct _Result * &)this_2(D) + 32], _11
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%r12, %r12	# _11
	je	.L199	#,
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	(%r12), %rax	# MEM[(struct _Result_base *)_11]._vptr._Result_base, _12
	leaq	_ZNSt13__future_base7_ResultIyE10_M_destroyEv(%rip), %rcx	#, tmp100
	movq	(%rax), %rdx	# *_12, _13
	cmpq	%rcx, %rdx	# tmp100, _13
	jne	.L200	#,
# /usr/include/c++/11.3.0/future:262: 	void _M_destroy() { delete this; }
	movq	16(%rax), %rax	# MEM[(int (*) () *)_12 + 16B], _21
	leaq	_ZNSt13__future_base7_ResultIyED0Ev(%rip), %rdx	#, tmp101
	cmpq	%rdx, %rax	# tmp101, _21
	jne	.L201	#,
# /usr/include/c++/11.3.0/future:241: 	}
	leaq	16+_ZTVNSt13__future_base7_ResultIyEE(%rip), %rax	#, tmp110
	movq	%r12, %rdi	# _11,
	movq	%rax, (%r12)	# tmp110, _11->D.167089._vptr._Result_base
	call	_ZNSt13__future_base12_Result_baseD2Ev@PLT	#
	movl	$32, %esi	#,
	movq	%r12, %rdi	# _11,
	call	_ZdlPvm@PLT	#
.L199:
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	8(%rbp), %rdi	# MEM[(struct _Result_base * &)this_2(D) + 8], _14
# /usr/include/c++/11.3.0/future:327:       virtual ~_State_baseV2() = default;
	leaq	16+_ZTVNSt13__future_base13_State_baseV2E(%rip), %rax	#, tmp111
	movq	%rax, 0(%rbp)	# tmp111, MEM[(struct _State_baseV2 *)this_2(D)]._vptr._State_baseV2
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rdi, %rdi	# _14
	je	.L202	#,
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	(%rdi), %rax	# _14->_vptr._Result_base, _14->_vptr._Result_base
	call	*(%rax)	# *_15
.L202:
# /usr/include/c++/11.3.0/future:1642:     class __future_base::_Deferred_state final
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rdi	# this,
	movl	$96, %esi	#,
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT	#
	.p2align 4,,10
	.p2align 3
.L201:
	.cfi_restore_state
# /usr/include/c++/11.3.0/future:262: 	void _M_destroy() { delete this; }
	movq	%r12, %rdi	# _11,
	call	*%rax	# _21
	jmp	.L199	#
	.p2align 4,,10
	.p2align 3
.L200:
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	%r12, %rdi	# _11,
	call	*%rdx	# _13
	jmp	.L199	#
	.cfi_endproc
.LFE8084:
	.section	.gcc_except_table._ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED0Ev,"aG",@progbits,_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED5Ev,comdat
.LLSDA8084:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8084-.LLSDACSB8084
.LLSDACSB8084:
.LLSDACSE8084:
	.section	.text._ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED0Ev,"axG",@progbits,_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED5Ev,comdat
	.size	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED0Ev, .-_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED0Ev
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.type	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, @function
_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:
.LFB8118:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8118
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# /usr/include/c++/11.3.0/future:1729:       }
	leaq	16+_ZTVNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE(%rip), %rax	#, tmp114
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:526:       _M_dispose() noexcept
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# tmp112, this
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# /usr/include/c++/11.3.0/future:1727: 	if (_M_thread.joinable())
	cmpq	$0, 48(%rdi)	#, MEM[(const struct thread *)this_2(D) + 48B]._M_id._M_thread
# /usr/include/c++/11.3.0/future:1729:       }
	movq	%rax, 16(%rdi)	# tmp114, MEM[(struct _Async_state_impl *)this_2(D) + 16B].D.165338.D.113293._vptr._State_baseV2
# /usr/include/c++/11.3.0/future:1727: 	if (_M_thread.joinable())
	jne	.L231	#,
.L214:
# /usr/include/c++/11.3.0/bits/stl_vector.h:680: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	96(%rbx), %rdi	# MEM[(struct vector *)this_2(D) + 96B].D.151183._M_impl.D.150495._M_start, _8
# /usr/include/c++/11.3.0/bits/stl_vector.h:353: 	if (__p)
	testq	%rdi, %rdi	# _8
	je	.L215	#,
# /usr/include/c++/11.3.0/bits/stl_vector.h:336: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	112(%rbx), %rsi	# MEM[(struct _Vector_base *)this_2(D) + 96B]._M_impl.D.150495._M_end_of_storage, tmp103
	subq	%rdi, %rsi	# _8, tmp103
# /usr/include/c++/11.3.0/ext/new_allocator.h:145: 	::operator delete(__p
	call	_ZdlPvm@PLT	#
.L215:
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	64(%rbx), %rbp	# MEM[(struct _Result * &)this_2(D) + 64], _13
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rbp, %rbp	# _13
	je	.L216	#,
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	0(%rbp), %rax	# MEM[(struct _Result_base *)_13]._vptr._Result_base, _14
	leaq	_ZNSt13__future_base7_ResultIyE10_M_destroyEv(%rip), %rcx	#, tmp105
	movq	(%rax), %rdx	# *_14, _15
	cmpq	%rcx, %rdx	# tmp105, _15
	jne	.L217	#,
# /usr/include/c++/11.3.0/future:262: 	void _M_destroy() { delete this; }
	movq	16(%rax), %rax	# MEM[(int (*) () *)_14 + 16B], _21
	leaq	_ZNSt13__future_base7_ResultIyED0Ev(%rip), %rdx	#, tmp106
	cmpq	%rdx, %rax	# tmp106, _21
	jne	.L218	#,
# /usr/include/c++/11.3.0/future:241: 	}
	leaq	16+_ZTVNSt13__future_base7_ResultIyEE(%rip), %rax	#, tmp116
	movq	%rbp, %rdi	# _13,
	movq	%rax, 0(%rbp)	# tmp116, _13->D.167089._vptr._Result_base
	call	_ZNSt13__future_base12_Result_baseD2Ev@PLT	#
	movl	$32, %esi	#,
	movq	%rbp, %rdi	# _13,
	call	_ZdlPvm@PLT	#
.L216:
# /usr/include/c++/11.3.0/future:1681:     ~_Async_state_commonV2() = default;
	leaq	16+_ZTVNSt13__future_base21_Async_state_commonV2E(%rip), %rax	#, tmp117
# /usr/include/c++/11.3.0/bits/std_thread.h:151:       if (joinable())
	cmpq	$0, 48(%rbx)	#, MEM[(const struct thread *)this_2(D) + 48B]._M_id._M_thread
# /usr/include/c++/11.3.0/future:1681:     ~_Async_state_commonV2() = default;
	movq	%rax, 16(%rbx)	# tmp117, MEM[(struct _Async_state_commonV2 *)this_2(D) + 16B].D.113293._vptr._State_baseV2
# /usr/include/c++/11.3.0/bits/std_thread.h:151:       if (joinable())
	jne	.L232	#,
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	24(%rbx), %rdi	# MEM[(struct _Result_base * &)this_2(D) + 24], _26
# /usr/include/c++/11.3.0/future:327:       virtual ~_State_baseV2() = default;
	leaq	16+_ZTVNSt13__future_base13_State_baseV2E(%rip), %rax	#, tmp118
	movq	%rax, 16(%rbx)	# tmp118, MEM[(struct _State_baseV2 *)this_2(D) + 16B]._vptr._State_baseV2
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rdi, %rdi	# _26
	je	.L213	#,
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	(%rdi), %rax	# _26->_vptr._Result_base, _26->_vptr._Result_base
	call	*(%rax)	# *_27
.L213:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:529:       }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L231:
	.cfi_restore_state
# /usr/include/c++/11.3.0/future:1728: 	  _M_thread.join();
	leaq	48(%rdi), %rdi	#, tmp102
	call	_ZNSt6thread4joinEv@PLT	#
	jmp	.L214	#
	.p2align 4,,10
	.p2align 3
.L218:
# /usr/include/c++/11.3.0/future:262: 	void _M_destroy() { delete this; }
	movq	%rbp, %rdi	# _13,
	call	*%rax	# _21
	jmp	.L216	#
	.p2align 4,,10
	.p2align 3
.L217:
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	%rbp, %rdi	# _13,
	call	*%rdx	# _15
	jmp	.L216	#
.L232:
# /usr/include/c++/11.3.0/bits/std_thread.h:152: 	std::terminate();
	call	_ZSt9terminatev@PLT	#
	.cfi_endproc
.LFE8118:
	.section	.gcc_except_table._ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"aG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
.LLSDA8118:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8118-.LLSDACSB8118
.LLSDACSB8118:
.LLSDACSE8118:
	.section	.text._ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,"axG",@progbits,_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv,comdat
	.size	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, .-_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.section	.text._ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED0Ev,"axG",@progbits,_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED0Ev
	.type	_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED0Ev, @function
_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED0Ev:
.LFB8145:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8145
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
# /usr/include/c++/11.3.0/future:1729:       }
	leaq	16+_ZTVNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE(%rip), %rax	#, tmp113
# /usr/include/c++/11.3.0/future:1725:       ~_Async_state_impl()
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp	# tmp111, this
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# /usr/include/c++/11.3.0/future:1727: 	if (_M_thread.joinable())
	cmpq	$0, 32(%rdi)	#, MEM[(const struct thread *)this_2(D) + 32B]._M_id._M_thread
# /usr/include/c++/11.3.0/future:1729:       }
	movq	%rax, (%rdi)	# tmp113, this_2(D)->D.165338.D.113293._vptr._State_baseV2
# /usr/include/c++/11.3.0/future:1727: 	if (_M_thread.joinable())
	jne	.L251	#,
.L234:
# /usr/include/c++/11.3.0/bits/stl_vector.h:680: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	80(%rbp), %rdi	# MEM[(struct vector *)this_2(D) + 80B].D.151183._M_impl.D.150495._M_start, _8
# /usr/include/c++/11.3.0/bits/stl_vector.h:353: 	if (__p)
	testq	%rdi, %rdi	# _8
	je	.L235	#,
# /usr/include/c++/11.3.0/bits/stl_vector.h:336: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	96(%rbp), %rsi	# MEM[(struct _Vector_base *)this_2(D) + 80B]._M_impl.D.150495._M_end_of_storage, tmp102
	subq	%rdi, %rsi	# _8, tmp102
# /usr/include/c++/11.3.0/ext/new_allocator.h:145: 	::operator delete(__p
	call	_ZdlPvm@PLT	#
.L235:
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	48(%rbp), %r12	# MEM[(struct _Result * &)this_2(D) + 48], _13
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%r12, %r12	# _13
	je	.L236	#,
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	(%r12), %rax	# MEM[(struct _Result_base *)_13]._vptr._Result_base, _14
	leaq	_ZNSt13__future_base7_ResultIyE10_M_destroyEv(%rip), %rcx	#, tmp104
	movq	(%rax), %rdx	# *_14, _15
	cmpq	%rcx, %rdx	# tmp104, _15
	jne	.L237	#,
# /usr/include/c++/11.3.0/future:262: 	void _M_destroy() { delete this; }
	movq	16(%rax), %rax	# MEM[(int (*) () *)_14 + 16B], _21
	leaq	_ZNSt13__future_base7_ResultIyED0Ev(%rip), %rdx	#, tmp105
	cmpq	%rdx, %rax	# tmp105, _21
	jne	.L238	#,
# /usr/include/c++/11.3.0/future:241: 	}
	leaq	16+_ZTVNSt13__future_base7_ResultIyEE(%rip), %rax	#, tmp115
	movq	%r12, %rdi	# _13,
	movq	%rax, (%r12)	# tmp115, _13->D.167089._vptr._Result_base
	call	_ZNSt13__future_base12_Result_baseD2Ev@PLT	#
	movl	$32, %esi	#,
	movq	%r12, %rdi	# _13,
	call	_ZdlPvm@PLT	#
.L236:
# /usr/include/c++/11.3.0/future:1681:     ~_Async_state_commonV2() = default;
	leaq	16+_ZTVNSt13__future_base21_Async_state_commonV2E(%rip), %rax	#, tmp116
# /usr/include/c++/11.3.0/bits/std_thread.h:151:       if (joinable())
	cmpq	$0, 32(%rbp)	#, MEM[(const struct thread *)this_2(D) + 32B]._M_id._M_thread
# /usr/include/c++/11.3.0/future:1681:     ~_Async_state_commonV2() = default;
	movq	%rax, 0(%rbp)	# tmp116, MEM[(struct _Async_state_commonV2 *)this_2(D)].D.113293._vptr._State_baseV2
# /usr/include/c++/11.3.0/bits/std_thread.h:151:       if (joinable())
	jne	.L252	#,
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	8(%rbp), %rdi	# MEM[(struct _Result_base * &)this_2(D) + 8], _26
# /usr/include/c++/11.3.0/future:327:       virtual ~_State_baseV2() = default;
	leaq	16+_ZTVNSt13__future_base13_State_baseV2E(%rip), %rax	#, tmp117
	movq	%rax, 0(%rbp)	# tmp117, MEM[(struct _State_baseV2 *)this_2(D)]._vptr._State_baseV2
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rdi, %rdi	# _26
	je	.L240	#,
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	(%rdi), %rax	# _26->_vptr._Result_base, _26->_vptr._Result_base
	call	*(%rax)	# *_27
.L240:
# /usr/include/c++/11.3.0/future:1729:       }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rdi	# this,
	movl	$112, %esi	#,
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT	#
	.p2align 4,,10
	.p2align 3
.L251:
	.cfi_restore_state
# /usr/include/c++/11.3.0/future:1728: 	  _M_thread.join();
	leaq	32(%rdi), %rdi	#, tmp101
	call	_ZNSt6thread4joinEv@PLT	#
	jmp	.L234	#
	.p2align 4,,10
	.p2align 3
.L238:
# /usr/include/c++/11.3.0/future:262: 	void _M_destroy() { delete this; }
	movq	%r12, %rdi	# _13,
	call	*%rax	# _21
	jmp	.L236	#
	.p2align 4,,10
	.p2align 3
.L237:
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	%r12, %rdi	# _13,
	call	*%rdx	# _15
	jmp	.L236	#
.L252:
# /usr/include/c++/11.3.0/bits/std_thread.h:152: 	std::terminate();
	call	_ZSt9terminatev@PLT	#
	.cfi_endproc
.LFE8145:
	.section	.gcc_except_table._ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED0Ev,"aG",@progbits,_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED5Ev,comdat
.LLSDA8145:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8145-.LLSDACSB8145
.LLSDACSB8145:
.LLSDACSE8145:
	.section	.text._ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED0Ev,"axG",@progbits,_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED5Ev,comdat
	.size	_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED0Ev, .-_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED0Ev
	.text
	.p2align 4
	.globl	_Z14sequential_sumRKSt6vectorIsSaIsEEmm
	.type	_Z14sequential_sumRKSt6vectorIsSaIsEEmm, @function
_Z14sequential_sumRKSt6vectorIsSaIsEEmm:
.LFB6157:
	.cfi_startproc
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:12: {
	movq	%rsi, %rcx	# tmp198, lo
	movq	%rdx, %rsi	# tmp199, hi
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	cmpq	%rdx, %rcx	# hi, lo
	jnb	.L259	#,
	movq	%rdx, %r8	# hi, niters.1064
# /usr/include/c++/11.3.0/bits/stl_vector.h:1064: 	return *(this->_M_impl._M_start + __n);
	movq	(%rdi), %rdi	# vec_9(D)->D.151183._M_impl.D.150495._M_start, _10
	subq	%rcx, %r8	# lo, niters.1064
	leaq	-1(%r8), %rax	#, tmp144
	cmpq	$6, %rax	#, tmp144
	jbe	.L260	#,
	leaq	(%rdi,%rcx,2), %rax	#, ivtmp.1079
	pxor	%xmm2, %xmm2	# vect_sum_12.1074
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	pxor	%xmm6, %xmm6	# tmp150
	movq	%r8, %rdx	# niters.1064, bnd.1065
	shrq	$3, %rdx	#, bnd.1065
	pxor	%xmm4, %xmm4	# tmp159
	salq	$4, %rdx	#, tmp147
	addq	%rax, %rdx	# ivtmp.1079, _71
	.p2align 4,,10
	.p2align 3
.L256:
	movdqu	(%rax), %xmm0	# MEM <const vector(8) short int> [(const value_type &)_62], MEM <const vector(8) short int> [(const value_type &)_62]
	movdqa	%xmm6, %xmm3	# tmp150, tmp151
	addq	$16, %rax	#, ivtmp.1079
	pcmpgtw	%xmm0, %xmm3	# MEM <const vector(8) short int> [(const value_type &)_62], tmp151
	movdqa	%xmm0, %xmm1	# MEM <const vector(8) short int> [(const value_type &)_62], tmp152
	punpcklwd	%xmm3, %xmm1	# tmp151, tmp152
	punpckhwd	%xmm3, %xmm0	# tmp151, tmp156
	movdqa	%xmm4, %xmm3	# tmp159, tmp160
	pcmpgtd	%xmm0, %xmm3	# tmp156, tmp160
	movdqa	%xmm0, %xmm5	# tmp156, tmp161
	punpckldq	%xmm3, %xmm5	# tmp160, tmp161
	punpckhdq	%xmm3, %xmm0	# tmp160, tmp166
	movdqa	%xmm4, %xmm3	# tmp159, tmp171
	pcmpgtd	%xmm1, %xmm3	# tmp152, tmp171
	paddq	%xmm5, %xmm0	# tmp161, tmp167
	movdqa	%xmm1, %xmm5	# tmp152, tmp172
	punpckldq	%xmm3, %xmm5	# tmp171, tmp172
	punpckhdq	%xmm3, %xmm1	# tmp171, tmp177
	paddq	%xmm5, %xmm1	# tmp172, tmp178
	paddq	%xmm1, %xmm0	# tmp178, tmp179
	paddq	%xmm0, %xmm2	# tmp179, vect_sum_12.1074
	cmpq	%rdx, %rax	# _71, ivtmp.1079
	jne	.L256	#,
	movdqa	%xmm2, %xmm0	# vect_sum_12.1074, tmp181
	movq	%r8, %rdx	# niters.1064, niters_vector_mult_vf.1066
	psrldq	$8, %xmm0	#, tmp181
	andq	$-8, %rdx	#, niters_vector_mult_vf.1066
	paddq	%xmm0, %xmm2	# tmp181, tmp182
	addq	%rdx, %rcx	# niters_vector_mult_vf.1066, lo
	movq	%xmm2, %rax	# tmp182, <retval>
	cmpq	%rdx, %r8	# niters_vector_mult_vf.1066, niters.1064
	je	.L262	#,
.L255:
	movswq	(%rdi,%rcx,2), %r8	# *_15, *_15
# /usr/include/c++/11.3.0/bits/stl_vector.h:1064: 	return *(this->_M_impl._M_start + __n);
	leaq	(%rcx,%rcx), %rdx	#, _14
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	addq	%r8, %rax	# *_15, <retval>
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	leaq	1(%rcx), %r8	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	cmpq	%r8, %rsi	# i, hi
	jbe	.L253	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movswq	2(%rdi,%rdx), %r8	# *_57, *_57
	addq	%r8, %rax	# *_57, <retval>
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	leaq	2(%rcx), %r8	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	cmpq	%r8, %rsi	# i, hi
	jbe	.L253	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movswq	4(%rdi,%rdx), %r8	# *_65, *_65
	addq	%r8, %rax	# *_65, <retval>
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	leaq	3(%rcx), %r8	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	cmpq	%r8, %rsi	# i, hi
	jbe	.L253	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movswq	6(%rdi,%rdx), %r8	# *_73, *_73
	addq	%r8, %rax	# *_73, <retval>
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	leaq	4(%rcx), %r8	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	cmpq	%r8, %rsi	# i, hi
	jbe	.L253	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movswq	8(%rdi,%rdx), %r8	# *_81, *_81
	addq	%r8, %rax	# *_81, <retval>
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	leaq	5(%rcx), %r8	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	cmpq	%r8, %rsi	# i, hi
	jbe	.L253	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movswq	10(%rdi,%rdx), %r8	# *_89, *_89
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	addq	$6, %rcx	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	addq	%r8, %rax	# *_89, <retval>
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	cmpq	%rcx, %rsi	# i, hi
	jbe	.L253	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movswq	12(%rdi,%rdx), %rdx	# *_23, *_23
	addq	%rdx, %rax	# *_23, <retval>
	ret	
	.p2align 4,,10
	.p2align 3
.L259:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:13:     unsigned long long sum = 0;
	xorl	%eax, %eax	# <retval>
.L253:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:17: }
	ret	
	.p2align 4,,10
	.p2align 3
.L262:
	ret	
.L260:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:13:     unsigned long long sum = 0;
	xorl	%eax, %eax	# <retval>
	jmp	.L255	#
	.cfi_endproc
.LFE6157:
	.size	_Z14sequential_sumRKSt6vectorIsSaIsEEmm, .-_Z14sequential_sumRKSt6vectorIsSaIsEEmm
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv:
.LFB6945:
	.cfi_startproc
# /usr/include/c++/11.3.0/ext/atomicity.h:98:     if (__is_single_threaded())
	cmpb	$0, __libc_single_threaded(%rip)	#, __libc_single_threaded
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:161:       _M_release() noexcept
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:161:       _M_release() noexcept
	movq	%rdi, %rbp	# tmp103, this
# /usr/include/c++/11.3.0/ext/atomicity.h:98:     if (__is_single_threaded())
	je	.L264	#,
# /usr/include/c++/11.3.0/ext/atomicity.h:84:     _Atomic_word __result = *__mem;
	movl	8(%rdi), %eax	# MEM[(_Atomic_word *)this_3(D) + 8B], __result
# /usr/include/c++/11.3.0/ext/atomicity.h:85:     *__mem += __val;
	leal	-1(%rax), %edx	#, tmp97
	movl	%edx, 8(%rdi)	# tmp97, MEM[(_Atomic_word *)this_3(D) + 8B]
.L265:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:165: 	if (__gnu_cxx::__exchange_and_add_dispatch(&_M_use_count, -1) == 1)
	cmpl	$1, %eax	#, __result
	je	.L272	#,
.L263:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:187:       }
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L272:
	.cfi_restore_state
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:168: 	    _M_dispose();
	movq	0(%rbp), %rax	# this_3(D)->_vptr._Sp_counted_base, this_3(D)->_vptr._Sp_counted_base
	movq	%rbp, %rdi	# this,
	call	*16(%rax)	# MEM[(int (*) () *)_15 + 16B]
# /usr/include/c++/11.3.0/ext/atomicity.h:98:     if (__is_single_threaded())
	cmpb	$0, __libc_single_threaded(%rip)	#, __libc_single_threaded
	je	.L268	#,
# /usr/include/c++/11.3.0/ext/atomicity.h:84:     _Atomic_word __result = *__mem;
	movl	12(%rbp), %eax	# MEM[(_Atomic_word *)this_3(D) + 12B], __result
# /usr/include/c++/11.3.0/ext/atomicity.h:85:     *__mem += __val;
	leal	-1(%rax), %edx	#, tmp100
	movl	%edx, 12(%rbp)	# tmp100, MEM[(_Atomic_word *)this_3(D) + 12B]
.L269:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:180: 	    if (__gnu_cxx::__exchange_and_add_dispatch(&_M_weak_count,
	cmpl	$1, %eax	#, __result
	jne	.L263	#,
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:184: 	        _M_destroy();
	movq	0(%rbp), %rax	# this_3(D)->_vptr._Sp_counted_base, this_3(D)->_vptr._Sp_counted_base
	movq	%rbp, %rdi	# this,
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:187:       }
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:184: 	        _M_destroy();
	movq	24(%rax), %rax	# MEM[(int (*) () *)_24 + 24B], MEM[(int (*) () *)_24 + 24B]
	jmp	*%rax	# MEM[(int (*) () *)_24 + 24B]
	.p2align 4,,10
	.p2align 3
.L264:
	.cfi_restore_state
# /usr/include/c++/11.3.0/ext/atomicity.h:66:   { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
	movl	$-1, %eax	#, _9
	lock xaddl	%eax, 8(%rdi)	#, _9,
# /usr/include/c++/11.3.0/ext/atomicity.h:101:       return __exchange_and_add(__mem, __val);
	jmp	.L265	#
	.p2align 4,,10
	.p2align 3
.L268:
# /usr/include/c++/11.3.0/ext/atomicity.h:66:   { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
	movl	$-1, %eax	#, _21
	lock xaddl	%eax, 12(%rbp)	#, _21,
# /usr/include/c++/11.3.0/ext/atomicity.h:101:       return __exchange_and_add(__mem, __val);
	jmp	.L269	#
	.cfi_endproc
.LFE6945:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.section	.text._ZNSt6futureIyE3getEv,"axG",@progbits,_ZNSt6futureIyE3getEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6futureIyE3getEv
	.type	_ZNSt6futureIyE3getEv, @function
_ZNSt6futureIyE3getEv:
.LFB6794:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6794
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12	# tmp142, this
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$32, %rsp	#,
	.cfi_def_cfa_offset 64
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:1300:       { return _M_ptr != nullptr; }
	movq	(%rdi), %rbp	# MEM[(const struct __shared_ptr *)this_2(D)]._M_ptr, _17
# /usr/include/c++/11.3.0/future:802:       get()
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp146
	movq	%rax, 24(%rsp)	# tmp146, D.196870
	xorl	%eax, %eax	# tmp146
# /usr/include/c++/11.3.0/future:562:           if (!static_cast<bool>(__p))
	testq	%rbp, %rbp	# _17
	je	.L302	#,
# /usr/include/c++/11.3.0/future:333: 	_M_complete_async();
	movq	0(%rbp), %rax	# MEM[(struct _State_baseV2 *)_17]._vptr._State_baseV2, MEM[(struct _State_baseV2 *)_17]._vptr._State_baseV2
	movq	%rbp, %rdi	# _17,
.LEHB11:
	call	*16(%rax)	# MEM[(int (*) () *)_22 + 16B]
# /usr/include/c++/11.3.0/bits/atomic_base.h:481: 	return __atomic_load_n(&_M_i, int(__m));
	movl	16(%rbp), %edx	#, _26
# /usr/include/c++/11.3.0/future:336: 	_M_status._M_load_when_equal(_Status::__ready, memory_order_acquire);
	leaq	16(%rbp), %rbx	#, _24
# /usr/include/c++/11.3.0/bits/atomic_base.h:481: 	return __atomic_load_n(&_M_i, int(__m));
# /usr/include/c++/11.3.0/bits/atomic_futex.h:87:       return _M_data.load(__mo) & ~_Waiter_bit;
	andl	$2147483647, %edx	#, __assumed
# /usr/include/c++/11.3.0/bits/atomic_futex.h:210:       if ((__i & ~_Waiter_bit) == __val)
	cmpl	$1, %edx	#, __assumed
	jne	.L276	#,
	jmp	.L275	#
	.p2align 4,,10
	.p2align 3
.L303:
# /usr/include/c++/11.3.0/bits/atomic_futex.h:115: 	  if (!__ret || ((__operand == __assumed) == __equal))
	cmpb	$1, %al	#, _34
	jne	.L275	#,
.L276:
# /usr/include/c++/11.3.0/bits/atomic_base.h:666:       { return __atomic_fetch_or(&_M_i, __i, int(__m)); }
	lock orl	$-2147483648, (%rbx)	#,,* _24
# /usr/include/c++/11.3.0/bits/atomic_futex.h:110: 	  bool __ret = _M_futex_wait_until((unsigned*)(void*)&_M_data,
	xorl	%r9d, %r9d	#
	xorl	%r8d, %r8d	#
	xorl	%ecx, %ecx	#
	orl	$-2147483648, %edx	#, tmp121
	movq	%rbx, %rsi	# _24,
	movq	%rbx, %rdi	# _24,
	call	_ZNSt28__atomic_futex_unsigned_base19_M_futex_wait_untilEPjjbNSt6chrono8durationIlSt5ratioILl1ELl1EEEENS2_IlS3_ILl1ELl1000000000EEEE@PLT	#
.LEHE11:
# /usr/include/c++/11.3.0/bits/atomic_base.h:481: 	return __atomic_load_n(&_M_i, int(__m));
	movl	(%rbx), %edx	#* _24, _35
# /usr/include/c++/11.3.0/bits/atomic_futex.h:87:       return _M_data.load(__mo) & ~_Waiter_bit;
	andl	$2147483647, %edx	#, __assumed
# /usr/include/c++/11.3.0/bits/atomic_futex.h:115: 	  if (!__ret || ((__operand == __assumed) == __equal))
	cmpl	$1, %edx	#, __assumed
	jne	.L303	#,
.L275:
# /usr/include/c++/11.3.0/bits/unique_ptr.h:173:       pointer    _M_ptr() const { return std::get<0>(_M_t); }
	movq	8(%rbp), %rax	# MEM[(struct _Result_base * const &)_17 + 8], _28
# /usr/include/c++/11.3.0/bits/exception_ptr.h:92:       void* _M_exception_object;
	movq	8(%rax), %rdx	# MEM[(const struct exception_ptr &)_28 + 8]._M_exception_object, _19
# /usr/include/c++/11.3.0/bits/exception_ptr.h:162:       operator==(const exception_ptr&, const exception_ptr&) noexcept = default;
	testq	%rdx, %rdx	# _19
	je	.L304	#,
# /usr/include/c++/11.3.0/bits/exception_ptr.h:193: 	_M_addref();
	leaq	16(%rsp), %rbp	#, tmp126
# /usr/include/c++/11.3.0/bits/exception_ptr.h:190:     : _M_exception_object(__other._M_exception_object)
	movq	%rdx, 16(%rsp)	# _19, MEM[(struct exception_ptr *)&D.196834]._M_exception_object
# /usr/include/c++/11.3.0/bits/exception_ptr.h:193: 	_M_addref();
	movq	%rbp, %rdi	# tmp126,
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# /usr/include/c++/11.3.0/future:721:           rethrow_exception(__res._M_error);
	movq	%rbp, %rdi	# tmp126,
.LEHB12:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE12:
	.p2align 4,,10
	.p2align 3
.L304:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:733: 	_Sp_counted_base<_Lp>* __tmp = __r._M_pi;
	movq	8(%r12), %rbp	# MEM[(struct __shared_count &)this_2(D) + 8]._M_pi, __tmp
# /usr/include/c++/11.3.0/bits/move.h:206:       __b = _GLIBCXX_MOVE(__tmp);
	pxor	%xmm0, %xmm0	# tmp125
# /usr/include/c++/11.3.0/future:805:         return std::move(this->_M_get_result()._M_value());
	movq	16(%rax), %rax	# MEM[(type &)_28 + 16], <retval>
# /usr/include/c++/11.3.0/bits/move.h:206:       __b = _GLIBCXX_MOVE(__tmp);
	movups	%xmm0, (%r12)	# tmp125, MEM <vector(2) long unsigned int> [(void *)this_2(D)]
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	testq	%rbp, %rbp	# __tmp
	je	.L273	#,
# /usr/include/c++/11.3.0/ext/atomicity.h:98:     if (__is_single_threaded())
	cmpb	$0, __libc_single_threaded(%rip)	#, __libc_single_threaded
	je	.L284	#,
# /usr/include/c++/11.3.0/ext/atomicity.h:84:     _Atomic_word __result = *__mem;
	movl	8(%rbp), %edx	# MEM[(_Atomic_word *)__tmp_6 + 8B], __result
# /usr/include/c++/11.3.0/ext/atomicity.h:85:     *__mem += __val;
	leal	-1(%rdx), %ecx	#, tmp133
	movl	%ecx, 8(%rbp)	# tmp133, MEM[(_Atomic_word *)__tmp_6 + 8B]
.L285:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:165: 	if (__gnu_cxx::__exchange_and_add_dispatch(&_M_use_count, -1) == 1)
	cmpl	$1, %edx	#, __result
	je	.L305	#,
.L273:
# /usr/include/c++/11.3.0/future:806:       }
	movq	24(%rsp), %rdx	# D.196870, tmp147
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp147
	jne	.L306	#,
	addq	$32, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L305:
	.cfi_restore_state
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:168: 	    _M_dispose();
	movq	0(%rbp), %rdx	# __tmp_6->_vptr._Sp_counted_base, __tmp_6->_vptr._Sp_counted_base
	movq	%rax, 8(%rsp)	# <retval>, %sfp
	movq	%rbp, %rdi	# __tmp,
	call	*16(%rdx)	# MEM[(int (*) () *)_46 + 16B]
# /usr/include/c++/11.3.0/ext/atomicity.h:98:     if (__is_single_threaded())
	cmpb	$0, __libc_single_threaded(%rip)	#, __libc_single_threaded
	movq	8(%rsp), %rax	# %sfp, <retval>
	je	.L287	#,
# /usr/include/c++/11.3.0/ext/atomicity.h:84:     _Atomic_word __result = *__mem;
	movl	12(%rbp), %edx	# MEM[(_Atomic_word *)__tmp_6 + 12B], __result
# /usr/include/c++/11.3.0/ext/atomicity.h:85:     *__mem += __val;
	leal	-1(%rdx), %ecx	#, tmp136
	movl	%ecx, 12(%rbp)	# tmp136, MEM[(_Atomic_word *)__tmp_6 + 12B]
.L288:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:180: 	    if (__gnu_cxx::__exchange_and_add_dispatch(&_M_weak_count,
	cmpl	$1, %edx	#, __result
	jne	.L273	#,
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:184: 	        _M_destroy();
	movq	0(%rbp), %rdx	# __tmp_6->_vptr._Sp_counted_base, __tmp_6->_vptr._Sp_counted_base
	movq	%rax, 8(%rsp)	# <retval>, %sfp
	movq	%rbp, %rdi	# __tmp,
	call	*24(%rdx)	# MEM[(int (*) () *)_55 + 24B]
# /usr/include/c++/11.3.0/future:805:         return std::move(this->_M_get_result()._M_value());
	movq	8(%rsp), %rax	# %sfp, <retval>
	jmp	.L273	#
	.p2align 4,,10
	.p2align 3
.L284:
# /usr/include/c++/11.3.0/ext/atomicity.h:66:   { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
	movl	$-1, %edx	#, _43
	lock xaddl	%edx, 8(%rbp)	#, _43,
# /usr/include/c++/11.3.0/ext/atomicity.h:101:       return __exchange_and_add(__mem, __val);
	jmp	.L285	#
.L287:
# /usr/include/c++/11.3.0/ext/atomicity.h:66:   { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
	movl	$-1, %edx	#, _52
	lock xaddl	%edx, 12(%rbp)	#, _52,
# /usr/include/c++/11.3.0/ext/atomicity.h:101:       return __exchange_and_add(__mem, __val);
	jmp	.L288	#
.L306:
# /usr/include/c++/11.3.0/future:806:       }
	call	__stack_chk_fail@PLT	#
.L302:
# /usr/include/c++/11.3.0/future:563:             __throw_future_error((int)future_errc::no_state);
	movl	$3, %edi	#,
.LEHB13:
	call	_ZSt20__throw_future_errori@PLT	#
.LEHE13:
.L292:
# /usr/include/c++/11.3.0/bits/exception_ptr.h:200:       if (_M_exception_object)
	movq	%rax, %rbx	# tmp144, tmp130
	jmp	.L281	#
.L291:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:733: 	_Sp_counted_base<_Lp>* __tmp = __r._M_pi;
	movq	%rax, %rbp	# tmp145, tmp129
	jmp	.L283	#
.L281:
# /usr/include/c++/11.3.0/bits/exception_ptr.h:200:       if (_M_exception_object)
	cmpq	$0, 16(%rsp)	#, D.196834._M_exception_object
	je	.L282	#,
# /usr/include/c++/11.3.0/bits/exception_ptr.h:201: 	_M_release();
	movq	%rbp, %rdi	# tmp126,
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L282:
	movq	%rbx, %rbp	# tmp130, tmp129
.L283:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:733: 	_Sp_counted_base<_Lp>* __tmp = __r._M_pi;
	movq	8(%r12), %rdi	# MEM[(struct __shared_count &)this_2(D) + 8]._M_pi, __tmp
# /usr/include/c++/11.3.0/bits/move.h:206:       __b = _GLIBCXX_MOVE(__tmp);
	pxor	%xmm0, %xmm0	# tmp140
	movups	%xmm0, (%r12)	# tmp140, MEM <vector(2) long unsigned int> [(void *)this_2(D)]
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	testq	%rdi, %rdi	# __tmp
	je	.L289	#,
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:705: 	  _M_pi->_M_release();
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv	#
.L289:
	movq	%rbp, %rdi	# tmp129,
.LEHB14:
	call	_Unwind_Resume@PLT	#
.LEHE14:
	.cfi_endproc
.LFE6794:
	.section	.gcc_except_table._ZNSt6futureIyE3getEv,"aG",@progbits,_ZNSt6futureIyE3getEv,comdat
.LLSDA6794:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6794-.LLSDACSB6794
.LLSDACSB6794:
	.uleb128 .LEHB11-.LFB6794
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L291-.LFB6794
	.uleb128 0
	.uleb128 .LEHB12-.LFB6794
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L292-.LFB6794
	.uleb128 0
	.uleb128 .LEHB13-.LFB6794
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L291-.LFB6794
	.uleb128 0
	.uleb128 .LEHB14-.LFB6794
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE6794:
	.section	.text._ZNSt6futureIyE3getEv,"axG",@progbits,_ZNSt6futureIyE3getEv,comdat
	.size	_ZNSt6futureIyE3getEv, .-_ZNSt6futureIyE3getEv
	.section	.text._ZSt5asyncIRFyRKSt6vectorIsSaIsEEmmmEJS4_RmRKmmEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNSC_IT0_E4typeEEE4typeEESt6launchOSD_DpOSG_,"axG",@progbits,_ZSt5asyncIRFyRKSt6vectorIsSaIsEEmmmEJS4_RmRKmmEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNSC_IT0_E4typeEEE4typeEESt6launchOSD_DpOSG_,comdat
	.p2align 4
	.weak	_ZSt5asyncIRFyRKSt6vectorIsSaIsEEmmmEJS4_RmRKmmEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNSC_IT0_E4typeEEE4typeEESt6launchOSD_DpOSG_
	.type	_ZSt5asyncIRFyRKSt6vectorIsSaIsEEmmmEJS4_RmRKmmEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNSC_IT0_E4typeEEE4typeEESt6launchOSD_DpOSG_, @function
_ZSt5asyncIRFyRKSt6vectorIsSaIsEEmmmEJS4_RmRKmmEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNSC_IT0_E4typeEEE4typeEESt6launchOSD_DpOSG_:
.LFB6758:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6758
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r8, %r14	# tmp296, __args#1
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12	# tmp292, <retval>
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rcx, %rbx	# tmp295, __args#0
	subq	$104, %rsp	#,
	.cfi_def_cfa_offset 160
# /usr/include/c++/11.3.0/future:1757:     async(launch __policy, _Fn&& __fn, _Args&&... __args)
	movq	%rdx, 24(%rsp)	# tmp294, %sfp
	movq	160(%rsp), %r15	# __args#3, __args#3
	movq	%r9, (%rsp)	# tmp297, %sfp
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp323
	movq	%rax, 88(%rsp)	# tmp323, D.197090
	xorl	%eax, %eax	# tmp323
# /usr/include/c++/11.3.0/future:1764:       if ((__policy & launch::async) == launch::async)
	testb	$1, %sil	#, __policy
	jne	.L396	#,
.L308:
# /usr/include/c++/11.3.0/ext/new_allocator.h:127: 	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
	movl	$112, %edi	#,
.LEHB15:
	call	_Znwm@PLT	#
.LEHE15:
# /usr/include/c++/11.3.0/future:1649: 	: _M_result(new _Result<_Res>()),
	movl	$32, %edi	#,
# /usr/include/c++/11.3.0/ext/new_allocator.h:127: 	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
	movq	%rax, %rbp	# tmp321, __state$8$_M_pi
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:127:       : _M_use_count(1), _M_weak_count(1) { }
	movq	.LC0(%rip), %rax	#, tmp287
# /usr/include/c++/11.3.0/tuple:190:       : _M_head_impl() { }
	movq	$0, 24(%rbp)	#, MEM[(struct _Head_base *)_131 + 24B]._M_head_impl
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:127:       : _M_use_count(1), _M_weak_count(1) { }
	movq	%rax, 8(%rbp)	# tmp287, MEM <vector(2) int> [(int *)_131 + 8B]
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:515: 	: _M_impl(__a)
	leaq	16+_ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE(%rip), %rax	#, tmp351
	movq	%rax, 0(%rbp)	# tmp351, *_131.D.177337._vptr._Sp_counted_base
# /usr/include/c++/11.3.0/ext/aligned_buffer.h:104:         return static_cast<void*>(&_M_storage);
	leaq	16(%rbp), %rax	#, _126
	movq	%rax, 32(%rsp)	# _126, %sfp
# /usr/include/c++/11.3.0/future:1650: 	  _M_fn{{std::forward<_Args>(__args)...}}
	leaq	16+_ZTVNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE(%rip), %rax	#, tmp353
# /usr/include/c++/11.3.0/bits/atomic_base.h:338:       constexpr __atomic_base(__int_type __i) noexcept : _M_i (__i) { }
	movl	$0, 32(%rbp)	#, MEM[(struct __atomic_base *)_131 + 32B]._M_i
# /usr/include/c++/11.3.0/bits/atomic_base.h:199:       : __atomic_flag_base{ _S_init(__i) }
	movb	$0, 36(%rbp)	#, MEM[(struct atomic_flag *)_131 + 36B].D.83167._M_i
# /usr/include/c++/11.3.0/mutex:676:     constexpr once_flag() noexcept = default;
	movl	$0, 40(%rbp)	#, MEM[(struct once_flag *)_131 + 40B]._M_once
# /usr/include/c++/11.3.0/future:1650: 	  _M_fn{{std::forward<_Args>(__args)...}}
	movq	%rax, 16(%rbp)	# tmp353, MEM[(struct _Deferred_state *)_131 + 16B].D.166744._vptr._State_baseV2
.LEHB16:
# /usr/include/c++/11.3.0/future:1649: 	: _M_result(new _Result<_Res>()),
	call	_Znwm@PLT	#
.LEHE16:
# /usr/include/c++/11.3.0/future:235: 	_Result() noexcept : _M_initialized() { }
	movq	%rax, %rdi	# tmp290,
# /usr/include/c++/11.3.0/future:1649: 	: _M_result(new _Result<_Res>()),
	movq	%rax, %r13	# tmp322, tmp290
# /usr/include/c++/11.3.0/future:235: 	_Result() noexcept : _M_initialized() { }
	call	_ZNSt13__future_base12_Result_baseC2Ev@PLT	#
	leaq	16+_ZTVNSt13__future_base7_ResultIyEE(%rip), %rax	#, tmp354
# /usr/include/c++/11.3.0/tuple:200: 	: _M_head_impl(std::forward<_UHead>(__h)) { }
	movq	(%r15), %xmm0	# *__args#3_11(D), *__args#3_11(D)
# /usr/include/c++/11.3.0/bits/stl_vector.h:919:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movq	(%rbx), %rsi	# *__args#0_14(D).D.151183._M_impl.D.150495._M_start, _146
# /usr/include/c++/11.3.0/future:235: 	_Result() noexcept : _M_initialized() { }
	movq	%rax, 0(%r13)	# tmp354, MEM[(struct _Result *)_132].D.167089._vptr._Result_base
# /usr/include/c++/11.3.0/tuple:200: 	: _M_head_impl(std::forward<_UHead>(__h)) { }
	movq	(%rsp), %rax	# %sfp, __args#2
# /usr/include/c++/11.3.0/future:235: 	_Result() noexcept : _M_initialized() { }
	movb	$0, 24(%r13)	#, MEM[(struct _Result *)_132]._M_initialized
# /usr/include/c++/11.3.0/tuple:200: 	: _M_head_impl(std::forward<_UHead>(__h)) { }
	movhps	(%rax), %xmm0	# *__args#2_12(D), tmp243
	movq	(%r14), %rax	# *__args#1_13(D), *__args#1_13(D)
# /usr/include/c++/11.3.0/bits/unique_ptr.h:155:       __uniq_ptr_impl(pointer __p) : _M_t() { _M_ptr() = __p; }
	movq	%r13, 48(%rbp)	# tmp290, MEM[(struct _Result * &)_131 + 48]
# /usr/include/c++/11.3.0/tuple:200: 	: _M_head_impl(std::forward<_UHead>(__h)) { }
	movups	%xmm0, 56(%rbp)	# tmp243, MEM <vector(2) long unsigned int> [(long unsigned int *)_131 + 56B]
# /usr/include/c++/11.3.0/bits/stl_vector.h:98: 	: _M_start(), _M_finish(), _M_end_of_storage()
	pxor	%xmm0, %xmm0	# tmp247
# /usr/include/c++/11.3.0/tuple:200: 	: _M_head_impl(std::forward<_UHead>(__h)) { }
	movq	%rax, 72(%rbp)	# *__args#1_13(D), MEM[(struct _Head_base *)_131 + 72B]._M_head_impl
# /usr/include/c++/11.3.0/bits/stl_vector.h:919:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movq	8(%rbx), %rax	# *__args#0_14(D).D.151183._M_impl.D.150495._M_finish, _145
# /usr/include/c++/11.3.0/bits/stl_vector.h:98: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, 96(%rbp)	#, MEM[(struct _Vector_impl_data *)_131 + 80B]._M_end_of_storage
# /usr/include/c++/11.3.0/bits/stl_vector.h:346: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	movq	%rax, %rdx	# _145, _147
# /usr/include/c++/11.3.0/bits/stl_vector.h:98: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movups	%xmm0, 80(%rbp)	# tmp247, MEM <vector(2) long unsigned int> [(short int * *)_131 + 80B]
# /usr/include/c++/11.3.0/bits/stl_vector.h:346: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	subq	%rsi, %rdx	# _146, _147
	je	.L397	#,
# /usr/include/c++/11.3.0/ext/new_allocator.h:111: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movabsq	$9223372036854775806, %rax	#, tmp248
	movq	%rdx, %r14	# _147, prephitmp_7
	cmpq	%rax, %rdx	# tmp248, _147
	ja	.L398	#,
# /usr/include/c++/11.3.0/ext/new_allocator.h:127: 	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
	movq	%rdx, %rdi	# prephitmp_7,
.LEHB17:
	call	_Znwm@PLT	#
.LEHE17:
	movq	%rax, %rcx	# tmp310, iftmp.70_159
# /usr/include/c++/11.3.0/bits/stl_iterator.h:1011:       : _M_current(__i) { }
	movq	8(%rbx), %rax	# MEM[(const short int * const &)__args#0_14(D) + 8], _145
	movq	(%rbx), %rsi	# MEM[(const short int * const &)__args#0_14(D)], _146
# /usr/include/c++/11.3.0/bits/stl_algobase.h:429: 	  const ptrdiff_t _Num = __last - __first;
	movq	%rax, %rbx	# _145, prephitmp_31
	subq	%rsi, %rbx	# _146, prephitmp_31
.L325:
	movq	32(%rsp), %xmm0	# %sfp, _4
# /usr/include/c++/11.3.0/bits/stl_vector.h:361: 	this->_M_impl._M_start = this->_M_allocate(__n);
	movq	%rcx, %xmm1	# iftmp.70_159, tmp251
	movq	%rbp, %xmm3	# __state$8$_M_pi, __state$8$_M_pi
# /usr/include/c++/11.3.0/bits/stl_vector.h:363: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	addq	%rcx, %r14	# iftmp.70_159, tmp252
# /usr/include/c++/11.3.0/bits/stl_vector.h:361: 	this->_M_impl._M_start = this->_M_allocate(__n);
	punpcklqdq	%xmm1, %xmm1	# tmp251
# /usr/include/c++/11.3.0/bits/stl_vector.h:363: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	%r14, 96(%rbp)	# tmp252, MEM[(struct _Vector_base *)_131 + 80B]._M_impl.D.150495._M_end_of_storage
	punpcklqdq	%xmm3, %xmm0	# __state$8$_M_pi, _4
# /usr/include/c++/11.3.0/bits/stl_vector.h:361: 	this->_M_impl._M_start = this->_M_allocate(__n);
	movups	%xmm1, 80(%rbp)	# tmp251, MEM <vector(2) long unsigned int> [(short int * *)_131 + 80B]
# /usr/include/c++/11.3.0/bits/stl_algobase.h:430: 	  if (_Num)
	cmpq	%rax, %rsi	# _145, _146
	je	.L328	#,
# /usr/include/c++/11.3.0/bits/stl_algobase.h:431: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	movq	%rcx, %rdi	# iftmp.70_159,
	movq	%rbx, %rdx	# prephitmp_31,
	movaps	%xmm0, (%rsp)	# _4, %sfp
	call	memmove@PLT	#
	movdqa	(%rsp), %xmm0	# %sfp, _4
	movq	%rax, %rcx	#, iftmp.70_159
.L328:
# /usr/include/c++/11.3.0/tuple:193:       : _M_head_impl(__h) { }
	movq	24(%rsp), %rax	# %sfp, __fn
# /usr/include/c++/11.3.0/bits/stl_algobase.h:432: 	  return __result + _Num;
	addq	%rbx, %rcx	# prephitmp_31, tmp253
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:1152:       __shared_ptr(const __shared_ptr&) noexcept = default;
	movups	%xmm0, (%r12)	# _4, MEM <vector(2) long unsigned int> [(void *)_28(D)]
# /usr/include/c++/11.3.0/ext/atomicity.h:108:     if (__is_single_threaded())
	cmpb	$0, __libc_single_threaded(%rip)	#, __libc_single_threaded
# /usr/include/c++/11.3.0/bits/stl_algobase.h:432: 	  return __result + _Num;
	movq	%rcx, 88(%rbp)	# tmp253, MEM[(struct vector *)_131 + 80B].D.151183._M_impl.D.150495._M_finish
# /usr/include/c++/11.3.0/tuple:193:       : _M_head_impl(__h) { }
	movq	%rax, 104(%rbp)	# __fn, MEM[(struct _Head_base *)_131 + 104B]._M_head_impl
# /usr/include/c++/11.3.0/ext/atomicity.h:108:     if (__is_single_threaded())
	jne	.L399	#,
.L333:
# /usr/include/c++/11.3.0/ext/atomicity.h:71:   { __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
	lock addl	$1, 8(%rbp)	#,,
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:1300:       { return _M_ptr != nullptr; }
	movq	(%r12), %rdx	# MEM[(const struct __shared_ptr *)_28(D)]._M_ptr, prephitmp_37
# /usr/include/c++/11.3.0/ext/atomicity.h:71:   { __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
	jmp	.L334	#
	.p2align 4,,10
	.p2align 3
.L396:
# /usr/include/c++/11.3.0/ext/new_allocator.h:127: 	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
	movl	$128, %edi	#,
	movl	%esi, %r13d	# tmp293, __policy
.LEHB18:
	call	_Znwm@PLT	#
.LEHE18:
	movq	%rax, %rbp	# tmp298, __state$8$_M_pi
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:127:       : _M_use_count(1), _M_weak_count(1) { }
	movq	.LC0(%rip), %rax	#, tmp199
# /usr/include/c++/11.3.0/future:1716: 	: _M_result(new _Result<_Res>()),
	movl	$32, %edi	#,
# /usr/include/c++/11.3.0/tuple:190:       : _M_head_impl() { }
	movq	$0, 24(%rbp)	#, MEM[(struct _Head_base *)_73 + 24B]._M_head_impl
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:127:       : _M_use_count(1), _M_weak_count(1) { }
	movq	%rax, 8(%rbp)	# tmp199, MEM <vector(2) int> [(int *)_73 + 8B]
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:515: 	: _M_impl(__a)
	leaq	16+_ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE(%rip), %rax	#, tmp326
	movq	%rax, 0(%rbp)	# tmp326, *_73.D.176630._vptr._Sp_counted_base
# /usr/include/c++/11.3.0/ext/aligned_buffer.h:104:         return static_cast<void*>(&_M_storage);
	leaq	16(%rbp), %rax	#, _68
	movq	%rax, 40(%rsp)	# _68, %sfp
# /usr/include/c++/11.3.0/future:1717: 	  _M_fn{{std::forward<_Args>(__args)...}}
	leaq	16+_ZTVNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE(%rip), %rax	#, tmp328
# /usr/include/c++/11.3.0/bits/atomic_base.h:338:       constexpr __atomic_base(__int_type __i) noexcept : _M_i (__i) { }
	movl	$0, 32(%rbp)	#, MEM[(struct __atomic_base *)_73 + 32B]._M_i
# /usr/include/c++/11.3.0/bits/atomic_base.h:199:       : __atomic_flag_base{ _S_init(__i) }
	movb	$0, 36(%rbp)	#, MEM[(struct atomic_flag *)_73 + 36B].D.83167._M_i
# /usr/include/c++/11.3.0/mutex:676:     constexpr once_flag() noexcept = default;
	movl	$0, 40(%rbp)	#, MEM[(struct once_flag *)_73 + 40B]._M_once
# /usr/include/c++/11.3.0/bits/std_thread.h:86:       id() noexcept : _M_thread() { }
	movq	$0, 48(%rbp)	#, MEM[(struct id *)_73 + 48B]._M_thread
# /usr/include/c++/11.3.0/mutex:676:     constexpr once_flag() noexcept = default;
	movl	$0, 56(%rbp)	#, MEM[(struct once_flag *)_73 + 56B]._M_once
# /usr/include/c++/11.3.0/future:1717: 	  _M_fn{{std::forward<_Args>(__args)...}}
	movq	%rax, 16(%rbp)	# tmp328, MEM[(struct _Async_state_impl *)_73 + 16B].D.165338.D.113293._vptr._State_baseV2
.LEHB19:
# /usr/include/c++/11.3.0/future:1716: 	: _M_result(new _Result<_Res>()),
	call	_Znwm@PLT	#
.LEHE19:
# /usr/include/c++/11.3.0/future:235: 	_Result() noexcept : _M_initialized() { }
	movq	%rax, %rdi	# tmp202,
	movq	%rax, 32(%rsp)	# tmp202, %sfp
	call	_ZNSt13__future_base12_Result_baseC2Ev@PLT	#
	movq	32(%rsp), %rax	# %sfp, tmp202
	leaq	16+_ZTVNSt13__future_base7_ResultIyEE(%rip), %rcx	#, tmp329
# /usr/include/c++/11.3.0/tuple:200: 	: _M_head_impl(std::forward<_UHead>(__h)) { }
	movq	(%r15), %xmm0	# *__args#3_11(D), tmp204
# /usr/include/c++/11.3.0/bits/stl_vector.h:919:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movq	(%rbx), %rsi	# *__args#0_14(D).D.151183._M_impl.D.150495._M_start, _93
# /usr/include/c++/11.3.0/bits/stl_vector.h:98: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, 112(%rbp)	#, MEM[(struct _Vector_impl_data *)_73 + 96B]._M_end_of_storage
# /usr/include/c++/11.3.0/future:235: 	_Result() noexcept : _M_initialized() { }
	movq	%rcx, (%rax)	# tmp329, MEM[(struct _Result *)_75].D.167089._vptr._Result_base
# /usr/include/c++/11.3.0/future:235: 	_Result() noexcept : _M_initialized() { }
	movb	$0, 24(%rax)	#, MEM[(struct _Result *)_75]._M_initialized
# /usr/include/c++/11.3.0/bits/unique_ptr.h:155:       __uniq_ptr_impl(pointer __p) : _M_t() { _M_ptr() = __p; }
	movq	%rax, 64(%rbp)	# tmp202, MEM[(struct _Result * &)_73 + 64]
# /usr/include/c++/11.3.0/tuple:200: 	: _M_head_impl(std::forward<_UHead>(__h)) { }
	movq	(%rsp), %rax	# %sfp, __args#2
	movhps	(%rax), %xmm0	# *__args#2_12(D), tmp204
	movq	(%r14), %rax	# *__args#1_13(D), *__args#1_13(D)
	movups	%xmm0, 72(%rbp)	# tmp204, MEM <vector(2) long unsigned int> [(long unsigned int *)_73 + 72B]
# /usr/include/c++/11.3.0/bits/stl_vector.h:98: 	: _M_start(), _M_finish(), _M_end_of_storage()
	pxor	%xmm0, %xmm0	# tmp208
# /usr/include/c++/11.3.0/tuple:200: 	: _M_head_impl(std::forward<_UHead>(__h)) { }
	movq	%rax, 88(%rbp)	# *__args#1_13(D), MEM[(struct _Head_base *)_73 + 88B]._M_head_impl
# /usr/include/c++/11.3.0/bits/stl_vector.h:919:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movq	8(%rbx), %rax	# *__args#0_14(D).D.151183._M_impl.D.150495._M_finish, _92
# /usr/include/c++/11.3.0/bits/stl_vector.h:98: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movups	%xmm0, 96(%rbp)	# tmp208, MEM <vector(2) long unsigned int> [(short int * *)_73 + 96B]
# /usr/include/c++/11.3.0/bits/stl_vector.h:346: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	movq	%rax, %rdx	# _92, _94
	subq	%rsi, %rdx	# _93, _94
	je	.L353	#,
# /usr/include/c++/11.3.0/ext/new_allocator.h:111: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movabsq	$9223372036854775806, %rax	#, tmp209
	movq	%rdx, 32(%rsp)	# _94, %sfp
	cmpq	%rax, %rdx	# tmp209, _94
	ja	.L400	#,
	movq	%rdx, %rdi	# _94,
.LEHB20:
# /usr/include/c++/11.3.0/ext/new_allocator.h:127: 	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
.LEHE20:
	movq	%rax, %rcx	# tmp300, iftmp.70_106
# /usr/include/c++/11.3.0/bits/stl_iterator.h:1011:       : _M_current(__i) { }
	movq	8(%rbx), %rax	# MEM[(const short int * const &)__args#0_14(D) + 8], _92
	movq	(%rbx), %rsi	# MEM[(const short int * const &)__args#0_14(D)], _93
# /usr/include/c++/11.3.0/bits/stl_algobase.h:429: 	  const ptrdiff_t _Num = __last - __first;
	movq	%rax, %r8	# _92, prephitmp_53
	subq	%rsi, %r8	# _93, prephitmp_53
.L309:
# /usr/include/c++/11.3.0/bits/stl_vector.h:363: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	32(%rsp), %rdx	# %sfp, prephitmp_169
# /usr/include/c++/11.3.0/bits/stl_vector.h:361: 	this->_M_impl._M_start = this->_M_allocate(__n);
	movq	%rcx, %xmm0	# iftmp.70_106, tmp211
	punpcklqdq	%xmm0, %xmm0	# tmp211
# /usr/include/c++/11.3.0/bits/stl_vector.h:363: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	addq	%rcx, %rdx	# iftmp.70_106, prephitmp_169
# /usr/include/c++/11.3.0/bits/stl_vector.h:361: 	this->_M_impl._M_start = this->_M_allocate(__n);
	movups	%xmm0, 96(%rbp)	# tmp211, MEM <vector(2) long unsigned int> [(short int * *)_73 + 96B]
# /usr/include/c++/11.3.0/bits/stl_vector.h:363: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	movq	%rdx, 112(%rbp)	# tmp212, MEM[(struct _Vector_base *)_73 + 96B]._M_impl.D.150495._M_end_of_storage
# /usr/include/c++/11.3.0/bits/stl_algobase.h:430: 	  if (_Num)
	cmpq	%rsi, %rax	# _93, _92
	je	.L312	#,
# /usr/include/c++/11.3.0/bits/stl_algobase.h:431: 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
	movq	%r8, %rdx	# prephitmp_53,
	movq	%rcx, %rdi	# iftmp.70_106,
	movq	%r8, 32(%rsp)	# prephitmp_53, %sfp
	call	memmove@PLT	#
	movq	32(%rsp), %r8	# %sfp, prephitmp_53
	movq	%rax, %rcx	#, iftmp.70_106
.L312:
# /usr/include/c++/11.3.0/tuple:193:       : _M_head_impl(__h) { }
	movq	24(%rsp), %rax	# %sfp, __fn
# /usr/include/c++/11.3.0/bits/stl_algobase.h:432: 	  return __result + _Num;
	addq	%r8, %rcx	# prephitmp_53, tmp213
# /usr/include/c++/11.3.0/bits/std_thread.h:143: 	_M_start_thread(_State_ptr(new _State_impl<_Wrapper>(
	movl	$32, %edi	#,
# /usr/include/c++/11.3.0/bits/std_thread.h:86:       id() noexcept : _M_thread() { }
	movq	$0, 56(%rsp)	#, MEM[(struct id *)&D.196924]._M_thread
# /usr/include/c++/11.3.0/bits/stl_algobase.h:432: 	  return __result + _Num;
	movq	%rcx, 104(%rbp)	# tmp213, MEM[(struct vector *)_73 + 96B].D.151183._M_impl.D.150495._M_finish
# /usr/include/c++/11.3.0/tuple:193:       : _M_head_impl(__h) { }
	movq	%rax, 120(%rbp)	# __fn, MEM[(struct _Head_base *)_73 + 120B]._M_head_impl
.LEHB21:
# /usr/include/c++/11.3.0/bits/std_thread.h:143: 	_M_start_thread(_State_ptr(new _State_impl<_Wrapper>(
	call	_Znwm@PLT	#
.LEHE21:
# /usr/include/c++/11.3.0/bits/std_thread.h:207: 	  : _M_func{{std::forward<_Args>(__args)...}}
	leaq	16+_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE(%rip), %rsi	#, tmp337
# /usr/include/c++/11.3.0/tuple:200: 	: _M_head_impl(std::forward<_UHead>(__h)) { }
	leaq	_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE6_M_runEv(%rip), %rcx	#, tmp339
	movq	$0, 24(%rax)	#, MEM[(struct _Head_base *)_115 + 16B]._M_head_impl.__delta
# /usr/include/c++/11.3.0/bits/std_thread.h:143: 	_M_start_thread(_State_ptr(new _State_impl<_Wrapper>(
	movq	pthread_create@GOTPCREL(%rip), %rdx	#,
# /usr/include/c++/11.3.0/bits/std_thread.h:207: 	  : _M_func{{std::forward<_Args>(__args)...}}
	movq	%rsi, (%rax)	# tmp337, MEM[(struct _State_impl *)_115].D.183695._vptr._State
# /usr/include/c++/11.3.0/tuple:200: 	: _M_head_impl(std::forward<_UHead>(__h)) { }
	leaq	16(%rbp), %rsi	#, _68
# /usr/include/c++/11.3.0/bits/std_thread.h:143: 	_M_start_thread(_State_ptr(new _State_impl<_Wrapper>(
	leaq	56(%rsp), %rdi	#, tmp218
# /usr/include/c++/11.3.0/tuple:200: 	: _M_head_impl(std::forward<_UHead>(__h)) { }
	movq	%rsi, 8(%rax)	# _68, MEM[(struct _Head_base *)_115 + 8B]._M_head_impl
# /usr/include/c++/11.3.0/bits/std_thread.h:143: 	_M_start_thread(_State_ptr(new _State_impl<_Wrapper>(
	leaq	64(%rsp), %rsi	#, tmp217
# /usr/include/c++/11.3.0/tuple:200: 	: _M_head_impl(std::forward<_UHead>(__h)) { }
	movq	%rcx, 16(%rax)	# tmp339, MEM[(struct _Head_base *)_115 + 16B]._M_head_impl.__pfn
# /usr/include/c++/11.3.0/bits/unique_ptr.h:155:       __uniq_ptr_impl(pointer __p) : _M_t() { _M_ptr() = __p; }
	movq	%rax, 64(%rsp)	# tmp214, MEM[(struct _State * &)_148]
.LEHB22:
# /usr/include/c++/11.3.0/bits/std_thread.h:143: 	_M_start_thread(_State_ptr(new _State_impl<_Wrapper>(
	call	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@PLT	#
.LEHE22:
	movq	40(%rsp), %xmm0	# %sfp, _185
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	64(%rsp), %rdi	# MEM[(struct _State * &)_148], _117
	movq	%rbp, %xmm2	# __state$8$_M_pi, __state$8$_M_pi
	punpcklqdq	%xmm2, %xmm0	# __state$8$_M_pi, _185
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rdi, %rdi	# _117
	je	.L313	#,
# /usr/include/c++/11.3.0/bits/unique_ptr.h:85: 	delete __ptr;
	movq	(%rdi), %rax	# _117->_vptr._State, _117->_vptr._State
	movaps	%xmm0, (%rsp)	# _185, %sfp
	call	*8(%rax)	# MEM[(int (*) () *)_118 + 8B]
	movdqa	(%rsp), %xmm0	# %sfp, _185
.L313:
# /usr/include/c++/11.3.0/bits/std_thread.h:164:       if (joinable())
	cmpq	$0, 48(%rbp)	#, MEM[(const struct thread *)_73 + 48B]._M_id._M_thread
	jne	.L401	#,
# /usr/include/c++/11.3.0/bits/move.h:205:       __a = _GLIBCXX_MOVE(__b);
	movq	56(%rsp), %rax	# MEM[(struct id &)&D.196924], MEM[(struct id &)&D.196924]
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:1152:       __shared_ptr(const __shared_ptr&) noexcept = default;
	movups	%xmm0, (%r12)	# _185, MEM <vector(2) long unsigned int> [(void *)_28(D)]
# /usr/include/c++/11.3.0/ext/atomicity.h:108:     if (__is_single_threaded())
	cmpb	$0, __libc_single_threaded(%rip)	#, __libc_single_threaded
# /usr/include/c++/11.3.0/bits/move.h:205:       __a = _GLIBCXX_MOVE(__b);
	movq	%rax, 48(%rbp)	# MEM[(struct id &)&D.196924], MEM[(struct id *)_73 + 48B]
# /usr/include/c++/11.3.0/ext/atomicity.h:108:     if (__is_single_threaded())
	je	.L333	#,
.L399:
# /usr/include/c++/11.3.0/ext/atomicity.h:92:   { *__mem += __val; }
	addl	$1, 8(%rbp)	#, MEM[(_Atomic_word *)__state$8$_M_pi_86 + 8B]
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:1300:       { return _M_ptr != nullptr; }
	movq	(%r12), %rdx	# MEM[(const struct __shared_ptr *)_28(D)]._M_ptr, prephitmp_37
.L334:
# /usr/include/c++/11.3.0/future:562:           if (!static_cast<bool>(__p))
	testq	%rdx, %rdx	# prephitmp_37
	je	.L402	#,
# /usr/include/c++/11.3.0/bits/atomic_base.h:205:       return __atomic_test_and_set (&_M_i, int(__m));
	movl	$1, %eax	#, tmp265
	xchgb	20(%rdx), %al	#,, _198
# /usr/include/c++/11.3.0/future:464: 	if (_M_retrieved.test_and_set())
	testb	%al, %al	# _198
	jne	.L403	#,
# /usr/include/c++/11.3.0/ext/atomicity.h:98:     if (__is_single_threaded())
	cmpb	$0, __libc_single_threaded(%rip)	#, __libc_single_threaded
	je	.L340	#,
# /usr/include/c++/11.3.0/ext/atomicity.h:84:     _Atomic_word __result = *__mem;
	movl	8(%rbp), %eax	# MEM[(_Atomic_word *)__state$8$_M_pi_86 + 8B], __result
# /usr/include/c++/11.3.0/ext/atomicity.h:85:     *__mem += __val;
	leal	-1(%rax), %edx	#, tmp270
	movl	%edx, 8(%rbp)	# tmp270, MEM[(_Atomic_word *)__state$8$_M_pi_86 + 8B]
.L341:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:165: 	if (__gnu_cxx::__exchange_and_add_dispatch(&_M_use_count, -1) == 1)
	cmpl	$1, %eax	#, __result
	je	.L404	#,
.L307:
# /usr/include/c++/11.3.0/future:1786:     }
	movq	88(%rsp), %rax	# D.197090, tmp324
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp324
	jne	.L405	#,
	addq	$104, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rax	# <retval>,
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
.L353:
	.cfi_restore_state
	movq	$0, 32(%rsp)	#, %sfp
	xorl	%r8d, %r8d	# prephitmp_53
# /usr/include/c++/11.3.0/bits/stl_vector.h:346: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	xorl	%ecx, %ecx	# iftmp.70_106
	jmp	.L309	#
	.p2align 4,,10
	.p2align 3
.L397:
	xorl	%ebx, %ebx	# prephitmp_31
	xorl	%r14d, %r14d	# prephitmp_7
	xorl	%ecx, %ecx	# iftmp.70_159
	jmp	.L325	#
	.p2align 4,,10
	.p2align 3
.L404:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:168: 	    _M_dispose();
	movq	0(%rbp), %rax	# __state$8$_M_pi_86->_vptr._Sp_counted_base, __state$8$_M_pi_86->_vptr._Sp_counted_base
	movq	%rbp, %rdi	# __state$8$_M_pi,
	call	*16(%rax)	# MEM[(int (*) () *)_206 + 16B]
# /usr/include/c++/11.3.0/ext/atomicity.h:98:     if (__is_single_threaded())
	cmpb	$0, __libc_single_threaded(%rip)	#, __libc_single_threaded
	je	.L343	#,
# /usr/include/c++/11.3.0/ext/atomicity.h:84:     _Atomic_word __result = *__mem;
	movl	12(%rbp), %eax	# MEM[(_Atomic_word *)__state$8$_M_pi_86 + 12B], __result
# /usr/include/c++/11.3.0/ext/atomicity.h:85:     *__mem += __val;
	leal	-1(%rax), %edx	#, tmp273
	movl	%edx, 12(%rbp)	# tmp273, MEM[(_Atomic_word *)__state$8$_M_pi_86 + 12B]
.L344:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:180: 	    if (__gnu_cxx::__exchange_and_add_dispatch(&_M_weak_count,
	cmpl	$1, %eax	#, __result
	jne	.L307	#,
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:184: 	        _M_destroy();
	movq	0(%rbp), %rax	# __state$8$_M_pi_86->_vptr._Sp_counted_base, __state$8$_M_pi_86->_vptr._Sp_counted_base
	movq	%rbp, %rdi	# __state$8$_M_pi,
	call	*24(%rax)	# MEM[(int (*) () *)_215 + 24B]
# /usr/include/c++/11.3.0/future:1785:       return future<__async_result_of<_Fn, _Args...>>(std::move(__state));
	jmp	.L307	#
	.p2align 4,,10
	.p2align 3
.L340:
# /usr/include/c++/11.3.0/ext/atomicity.h:66:   { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
	movl	$-1, %eax	#, _203
	lock xaddl	%eax, 8(%rbp)	#, _203,
# /usr/include/c++/11.3.0/ext/atomicity.h:101:       return __exchange_and_add(__mem, __val);
	jmp	.L341	#
	.p2align 4,,10
	.p2align 3
.L343:
# /usr/include/c++/11.3.0/ext/atomicity.h:66:   { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
	movl	$-1, %eax	#, _212
	lock xaddl	%eax, 12(%rbp)	#, _212,
# /usr/include/c++/11.3.0/ext/atomicity.h:101:       return __exchange_and_add(__mem, __val);
	jmp	.L344	#
	.p2align 4,,10
	.p2align 3
.L400:
# /usr/include/c++/11.3.0/ext/new_allocator.h:115: 	    if (__n > (std::size_t(-1) / sizeof(_Tp)))
	testq	%rdx, %rdx	# _94
	js	.L406	#,
.LEHB23:
# /usr/include/c++/11.3.0/ext/new_allocator.h:117: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv@PLT	#
.LEHE23:
	.p2align 4,,10
	.p2align 3
.L398:
# /usr/include/c++/11.3.0/ext/new_allocator.h:115: 	    if (__n > (std::size_t(-1) / sizeof(_Tp)))
	testq	%rdx, %rdx	# _147
	js	.L407	#,
.LEHB24:
# /usr/include/c++/11.3.0/ext/new_allocator.h:117: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv@PLT	#
.LEHE24:
.L406:
.LEHB25:
# /usr/include/c++/11.3.0/ext/new_allocator.h:116: 	      std::__throw_bad_array_new_length();
	call	_ZSt28__throw_bad_array_new_lengthv@PLT	#
.LEHE25:
.L407:
.LEHB26:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT	#
.LEHE26:
.L405:
# /usr/include/c++/11.3.0/future:1786:     }
	call	__stack_chk_fail@PLT	#
.L403:
# /usr/include/c++/11.3.0/future:465: 	  __throw_future_error(int(future_errc::future_already_retrieved));
	movl	$1, %edi	#,
.LEHB27:
	call	_ZSt20__throw_future_errori@PLT	#
.L402:
# /usr/include/c++/11.3.0/future:563:             __throw_future_error((int)future_errc::no_state);
	movl	$3, %edi	#,
	call	_ZSt20__throw_future_errori@PLT	#
.LEHE27:
.L401:
# /usr/include/c++/11.3.0/bits/std_thread.h:165: 	std::terminate();
	call	_ZSt9terminatev@PLT	#
.L363:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	movq	%rax, %r13	# tmp313, tmp267
	jmp	.L337	#
.L360:
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	%rax, 32(%rsp)	# tmp302, %sfp
	movq	%rdx, 40(%rsp)	# tmp303, %sfp
	jmp	.L316	#
.L337:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	movq	8(%r12), %rdi	# MEM[(struct __shared_count *)_28(D) + 8B]._M_pi, _191
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	testq	%rdi, %rdi	# _191
	je	.L338	#,
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:705: 	  _M_pi->_M_release();
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv	#
.L338:
	movq	%rbp, %rdi	# __state$8$_M_pi,
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv	#
	movq	%r13, %rdi	# tmp267,
.LEHB28:
	call	_Unwind_Resume@PLT	#
.LEHE28:
.L316:
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	64(%rsp), %rdi	# MEM[(struct _State * &)_148], _120
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rdi, %rdi	# _120
	je	.L317	#,
# /usr/include/c++/11.3.0/bits/unique_ptr.h:85: 	delete __ptr;
	movq	(%rdi), %rax	# _120->_vptr._State, _120->_vptr._State
	call	*8(%rax)	# MEM[(int (*) () *)_121 + 8B]
.L317:
	movq	32(%rsp), %rax	# %sfp, tmp226
	movq	40(%rsp), %rdx	# %sfp, tmp228
.L318:
# /usr/include/c++/11.3.0/bits/stl_vector.h:680: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	96(%rbp), %rdi	# MEM[(struct vector *)_73 + 96B].D.151183._M_impl.D.150495._M_start, _83
# /usr/include/c++/11.3.0/bits/stl_vector.h:336: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	112(%rbp), %rsi	# MEM[(struct _Vector_base *)_73 + 96B]._M_impl.D.150495._M_end_of_storage, _85
	subq	%rdi, %rsi	# _83, _85
# /usr/include/c++/11.3.0/bits/stl_vector.h:353: 	if (__p)
	testq	%rdi, %rdi	# _83
	je	.L321	#,
	movq	%rdx, 40(%rsp)	# tmp228, %sfp
	movq	%rax, 32(%rsp)	# tmp226, %sfp
# /usr/include/c++/11.3.0/ext/new_allocator.h:145: 	::operator delete(__p
	call	_ZdlPvm@PLT	#
	movq	40(%rsp), %rdx	# %sfp, tmp228
	movq	32(%rsp), %rax	# %sfp, tmp226
.L321:
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	64(%rbp), %rdi	# MEM[(struct _Result * &)_73 + 64], _88
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rdi, %rdi	# _88
	je	.L323	#,
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	(%rdi), %rcx	# MEM[(struct _Result_base *)_88]._vptr._Result_base, MEM[(struct _Result_base *)_88]._vptr._Result_base
	movq	%rdx, 40(%rsp)	# tmp233, %sfp
	movq	%rax, 32(%rsp)	# tmp232, %sfp
	call	*(%rcx)	# *_89
	movq	40(%rsp), %rdx	# %sfp, tmp233
	movq	32(%rsp), %rax	# %sfp, tmp232
.L323:
# /usr/include/c++/11.3.0/future:1720: 	}
	leaq	16(%rbp), %rdi	#,
	movq	%rdx, 40(%rsp)	# tmp237, %sfp
	movq	%rax, 32(%rsp)	# tmp236, %sfp
	call	_ZNSt13__future_base21_Async_state_commonV2D2Ev	#
# /usr/include/c++/11.3.0/ext/new_allocator.h:145: 	::operator delete(__p
	movq	%rbp, %rdi	# __state$8$_M_pi,
	movl	$128, %esi	#,
	call	_ZdlPvm@PLT	#
	movq	32(%rsp), %rdi	# %sfp, tmp240
	movq	40(%rsp), %rdx	# %sfp, tmp237
.L324:
# /usr/include/c++/11.3.0/future:1772: 	  catch(const system_error& __e)
	subq	$1, %rdx	#, tmp241
	jne	.L395	#,
# /usr/include/c++/11.3.0/future:1772: 	  catch(const system_error& __e)
	call	__cxa_begin_catch@PLT	#
	movq	%rax, %rbp	# tmp316, _18
# /usr/include/c++/11.3.0/system_error:356:   { return error_condition(static_cast<int>(__e), generic_category()); }
	call	_ZNSt3_V216generic_categoryEv@PLT	#
# /usr/include/c++/11.3.0/system_error:232:     category() const noexcept { return *_M_cat; }
	movq	24(%rbp), %rdi	# MEM[(const struct error_code *)_18 + 16B]._M_cat, _217
# /usr/include/c++/11.3.0/system_error:480:     code() const noexcept { return _M_code; }
	leaq	16(%rbp), %r8	#, _34
# /usr/include/c++/11.3.0/system_error:370:     return (__lhs.category().equivalent(__lhs.value(), __rhs)
	movl	16(%rbp), %esi	# MEM[(const struct error_code *)_18 + 16B]._M_value, MEM[(const struct error_code *)_18 + 16B]._M_value
# /usr/include/c++/11.3.0/system_error:309:       { *this = make_error_condition(__e); }
	movq	%rax, 72(%rsp)	# tmp317, MEM <const struct error_category *> [(struct error_condition *)_148]
# /usr/include/c++/11.3.0/system_error:370:     return (__lhs.category().equivalent(__lhs.value(), __rhs)
	leaq	64(%rsp), %rdx	#, tmp277
	movq	(%rdi), %rax	# _217->_vptr.error_category, _217->_vptr.error_category
# /usr/include/c++/11.3.0/system_error:480:     code() const noexcept { return _M_code; }
	movq	%r8, 32(%rsp)	# _34, %sfp
# /usr/include/c++/11.3.0/system_error:309:       { *this = make_error_condition(__e); }
	movl	$11, 64(%rsp)	#, MEM <int> [(struct error_condition *)_148]
# /usr/include/c++/11.3.0/system_error:370:     return (__lhs.category().equivalent(__lhs.value(), __rhs)
	call	*48(%rax)	# MEM[(int (*) () *)_218 + 48B]
# /usr/include/c++/11.3.0/system_error:371: 	    || __rhs.category().equivalent(__lhs, __rhs.value()));
	movq	32(%rsp), %r8	# %sfp, _34
	testb	%al, %al	# tmp318
	je	.L346	#,
.L349:
# /usr/include/c++/11.3.0/future:1775: 		  || (__policy & launch::deferred) != launch::deferred)
	andb	$2, %r13b	#, __policy
	jne	.L392	#,
.L347:
.LEHB29:
# /usr/include/c++/11.3.0/future:1776: 		throw;
	call	__cxa_rethrow@PLT	#
.LEHE29:
.L355:
# /usr/include/c++/11.3.0/future:1772: 	  catch(const system_error& __e)
	movq	%rax, %rdi	# tmp314, tmp240
	jmp	.L324	#
.L357:
	jmp	.L323	#
.L350:
	call	__cxa_end_catch@PLT	#
	movq	%rbp, %rdi	# tmp285,
.L395:
.LEHB30:
	call	_Unwind_Resume@PLT	#
.LEHE30:
.L361:
# /usr/include/c++/11.3.0/future:327:       virtual ~_State_baseV2() = default;
	movq	%rax, %r12	# tmp312, tmp256
	jmp	.L331	#
.L362:
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	%rax, %r12	# tmp311, tmp257
.L329:
	movq	48(%rbp), %rdi	# MEM[(struct _Result * &)_131 + 48], _138
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rdi, %rdi	# _138
	je	.L331	#,
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	(%rdi), %rax	# MEM[(struct _Result_base *)_138]._vptr._Result_base, MEM[(struct _Result_base *)_138]._vptr._Result_base
	call	*(%rax)	# *_139
.L331:
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	24(%rbp), %rdi	# MEM[(struct _Result_base * &)_131 + 24], _141
# /usr/include/c++/11.3.0/future:327:       virtual ~_State_baseV2() = default;
	leaq	16+_ZTVNSt13__future_base13_State_baseV2E(%rip), %rax	#, tmp348
	movq	%rax, 16(%rbp)	# tmp348, MEM[(struct _State_baseV2 *)_131 + 16B]._vptr._State_baseV2
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rdi, %rdi	# _141
	je	.L332	#,
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	(%rdi), %rax	# _141->_vptr._Result_base, _141->_vptr._Result_base
	call	*(%rax)	# *_142
.L332:
# /usr/include/c++/11.3.0/ext/new_allocator.h:145: 	::operator delete(__p
	movq	%rbp, %rdi	# __state$8$_M_pi,
	movl	$112, %esi	#,
	call	_ZdlPvm@PLT	#
	movq	%r12, %rdi	# tmp256,
.LEHB31:
	call	_Unwind_Resume@PLT	#
.LEHE31:
.L359:
	jmp	.L318	#
.L358:
	jmp	.L321	#
.L346:
	movq	72(%rsp), %rdi	# MEM[(const struct error_category * *)_148], _225
# /usr/include/c++/11.3.0/system_error:371: 	    || __rhs.category().equivalent(__lhs, __rhs.value()));
	movl	64(%rsp), %edx	# MEM[(int *)_148],
	movq	%r8, %rsi	# _34,
	movq	(%rdi), %rax	# _225->_vptr.error_category, _225->_vptr.error_category
	call	*56(%rax)	# MEM[(int (*) () *)_227 + 56B]
# /usr/include/c++/11.3.0/system_error:371: 	    || __rhs.category().equivalent(__lhs, __rhs.value()));
	testb	%al, %al	# tmp319
	je	.L347	#,
	jmp	.L349	#
.L392:
# /usr/include/c++/11.3.0/future:1772: 	  catch(const system_error& __e)
	call	__cxa_end_catch@PLT	#
	jmp	.L308	#
.L356:
	movq	%rax, %rbp	# tmp320, tmp285
	jmp	.L350	#
	.cfi_endproc
.LFE6758:
	.section	.gcc_except_table._ZSt5asyncIRFyRKSt6vectorIsSaIsEEmmmEJS4_RmRKmmEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNSC_IT0_E4typeEEE4typeEESt6launchOSD_DpOSG_,"aG",@progbits,_ZSt5asyncIRFyRKSt6vectorIsSaIsEEmmmEJS4_RmRKmmEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNSC_IT0_E4typeEEE4typeEESt6launchOSD_DpOSG_,comdat
	.align 4
.LLSDA6758:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT6758-.LLSDATTD6758
.LLSDATTD6758:
	.byte	0x1
	.uleb128 .LLSDACSE6758-.LLSDACSB6758
.LLSDACSB6758:
	.uleb128 .LEHB15-.LFB6758
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB6758
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L361-.LFB6758
	.uleb128 0
	.uleb128 .LEHB17-.LFB6758
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L362-.LFB6758
	.uleb128 0
	.uleb128 .LEHB18-.LFB6758
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L355-.LFB6758
	.uleb128 0x3
	.uleb128 .LEHB19-.LFB6758
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L357-.LFB6758
	.uleb128 0x3
	.uleb128 .LEHB20-.LFB6758
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L358-.LFB6758
	.uleb128 0x3
	.uleb128 .LEHB21-.LFB6758
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L359-.LFB6758
	.uleb128 0x3
	.uleb128 .LEHB22-.LFB6758
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L360-.LFB6758
	.uleb128 0x3
	.uleb128 .LEHB23-.LFB6758
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L358-.LFB6758
	.uleb128 0x3
	.uleb128 .LEHB24-.LFB6758
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L362-.LFB6758
	.uleb128 0
	.uleb128 .LEHB25-.LFB6758
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L358-.LFB6758
	.uleb128 0x3
	.uleb128 .LEHB26-.LFB6758
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L362-.LFB6758
	.uleb128 0
	.uleb128 .LEHB27-.LFB6758
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L363-.LFB6758
	.uleb128 0
	.uleb128 .LEHB28-.LFB6758
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB6758
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L356-.LFB6758
	.uleb128 0
	.uleb128 .LEHB30-.LFB6758
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB6758
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
.LLSDACSE6758:
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align 4
	.long	DW.ref._ZTISt12system_error-.
.LLSDATT6758:
	.section	.text._ZSt5asyncIRFyRKSt6vectorIsSaIsEEmmmEJS4_RmRKmmEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNSC_IT0_E4typeEEE4typeEESt6launchOSD_DpOSG_,"axG",@progbits,_ZSt5asyncIRFyRKSt6vectorIsSaIsEEmmmEJS4_RmRKmmEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNSC_IT0_E4typeEEE4typeEESt6launchOSD_DpOSG_,comdat
	.size	_ZSt5asyncIRFyRKSt6vectorIsSaIsEEmmmEJS4_RmRKmmEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNSC_IT0_E4typeEEE4typeEESt6launchOSD_DpOSG_, .-_ZSt5asyncIRFyRKSt6vectorIsSaIsEEmmmEJS4_RmRKmmEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNSC_IT0_E4typeEEE4typeEESt6launchOSD_DpOSG_
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4
	.globl	_Z12parallel_sumRKSt6vectorIsSaIsEEmmm
	.type	_Z12parallel_sumRKSt6vectorIsSaIsEEmmm, @function
_Z12parallel_sumRKSt6vectorIsSaIsEEmmm:
.LFB6158:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6158
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rdx, %r12	# tmp299, hi
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp	# tmp297, vec
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$64, %rsp	#,
	.cfi_def_cfa_offset 112
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:20: {
	movq	%rsi, 8(%rsp)	# lo, lo
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:25:         sum = sequential_sum(vec, lo, hi);
	movq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp306
	movq	%rdx, 56(%rsp)	# tmp306, D.197217
	movq	%rsi, %rdx	# tmp298, tmp306
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:23:     if (depth > 3) // conquer
	cmpq	$3, %rcx	#, depth
	jbe	.L409	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	cmpq	%rdx, %r12	# tmp.1134, hi
	jbe	.L442	#,
# /usr/include/c++/11.3.0/bits/stl_vector.h:1064: 	return *(this->_M_impl._M_start + __n);
	movq	(%rdi), %rsi	# vec_16(D)->D.151183._M_impl.D.150495._M_start, _26
	movq	%r12, %rdi	# hi, niters.1131
	subq	%rdx, %rdi	# tmp.1134, niters.1131
	leaq	-1(%rdi), %rax	#, tmp203
	cmpq	$6, %rax	#, tmp203
	jbe	.L443	#,
	leaq	(%rsi,%rdx,2), %rax	#, ivtmp.1153
	pxor	%xmm2, %xmm2	# vect_sum_33.1141
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	pxor	%xmm6, %xmm6	# tmp209
	movq	%rdi, %rcx	# niters.1131, bnd.1132
	shrq	$3, %rcx	#, bnd.1132
	pxor	%xmm4, %xmm4	# tmp218
	salq	$4, %rcx	#, tmp206
	addq	%rax, %rcx	# ivtmp.1153, _188
	.p2align 4,,10
	.p2align 3
.L412:
	movdqu	(%rax), %xmm0	# MEM <const vector(8) short int> [(const value_type &)_134], MEM <const vector(8) short int> [(const value_type &)_134]
	movdqa	%xmm6, %xmm3	# tmp209, tmp210
	addq	$16, %rax	#, ivtmp.1153
	pcmpgtw	%xmm0, %xmm3	# MEM <const vector(8) short int> [(const value_type &)_134], tmp210
	movdqa	%xmm0, %xmm1	# MEM <const vector(8) short int> [(const value_type &)_134], tmp211
	punpcklwd	%xmm3, %xmm1	# tmp210, tmp211
	punpckhwd	%xmm3, %xmm0	# tmp210, tmp215
	movdqa	%xmm4, %xmm3	# tmp218, tmp219
	pcmpgtd	%xmm0, %xmm3	# tmp215, tmp219
	movdqa	%xmm0, %xmm5	# tmp215, tmp220
	punpckhdq	%xmm3, %xmm5	# tmp219, tmp220
	punpckldq	%xmm3, %xmm0	# tmp219, tmp225
	movdqa	%xmm4, %xmm3	# tmp218, tmp230
	pcmpgtd	%xmm1, %xmm3	# tmp211, tmp230
	paddq	%xmm5, %xmm0	# tmp220, tmp226
	movdqa	%xmm1, %xmm5	# tmp211, tmp231
	punpckhdq	%xmm3, %xmm5	# tmp230, tmp231
	punpckldq	%xmm3, %xmm1	# tmp230, tmp236
	paddq	%xmm5, %xmm1	# tmp231, tmp237
	paddq	%xmm1, %xmm0	# tmp237, tmp238
	paddq	%xmm0, %xmm2	# tmp238, vect_sum_33.1141
	cmpq	%rcx, %rax	# _188, ivtmp.1153
	jne	.L412	#,
	movdqa	%xmm2, %xmm0	# vect_sum_33.1141, tmp240
	movq	%rdi, %rcx	# niters.1131, niters_vector_mult_vf.1133
	psrldq	$8, %xmm0	#, tmp240
	andq	$-8, %rcx	#, niters_vector_mult_vf.1133
	paddq	%xmm0, %xmm2	# tmp240, tmp241
	addq	%rcx, %rdx	# niters_vector_mult_vf.1133, tmp.1134
	movq	%xmm2, %rax	# tmp241, <retval>
	cmpq	%rdi, %rcx	# niters.1131, niters_vector_mult_vf.1133
	je	.L408	#,
.L411:
	movswq	(%rsi,%rdx,2), %rdi	# *_29, *_29
# /usr/include/c++/11.3.0/bits/stl_vector.h:1064: 	return *(this->_M_impl._M_start + __n);
	leaq	(%rdx,%rdx), %rcx	#, _28
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	addq	%rdi, %rax	# *_29, <retval>
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	leaq	1(%rdx), %rdi	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	cmpq	%rdi, %r12	# i, hi
	jbe	.L408	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movswq	2(%rsi,%rcx), %rdi	# *_182, *_182
	addq	%rdi, %rax	# *_182, <retval>
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	leaq	2(%rdx), %rdi	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	cmpq	%rdi, %r12	# i, hi
	jbe	.L408	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movswq	4(%rsi,%rcx), %rdi	# *_190, *_190
	addq	%rdi, %rax	# *_190, <retval>
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	leaq	3(%rdx), %rdi	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	cmpq	%rdi, %r12	# i, hi
	jbe	.L408	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movswq	6(%rsi,%rcx), %rdi	# *_198, *_198
	addq	%rdi, %rax	# *_198, <retval>
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	leaq	4(%rdx), %rdi	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	cmpq	%rdi, %r12	# i, hi
	jbe	.L408	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movswq	8(%rsi,%rcx), %rdi	# *_206, *_206
	addq	%rdi, %rax	# *_206, <retval>
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	leaq	5(%rdx), %rdi	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	cmpq	%rdi, %r12	# i, hi
	jbe	.L408	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movswq	10(%rsi,%rcx), %rdi	# *_214, *_214
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	addq	$6, %rdx	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	addq	%rdi, %rax	# *_214, <retval>
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	cmpq	%rdx, %r12	# i, hi
	jbe	.L408	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movswq	12(%rsi,%rcx), %rdx	# *_170, *_170
	addq	%rdx, %rax	# *_170, <retval>
.L408:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:36: }
	movq	56(%rsp), %rdx	# D.197217, tmp307
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp307
	jne	.L465	#,
	addq	$64, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L409:
	.cfi_restore_state
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	movq	%r12, %rax	# hi, tmp255
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	leaq	1(%rcx), %r14	#, _6
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	leaq	32(%rsp), %rdi	#, tmp258
	movq	%rbp, %rcx	# vec,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	subq	%rdx, %rax	# tmp.1134, tmp255
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	movq	%r14, 24(%rsp)	# _6, MEM[(long unsigned int *)_118]
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 120
	movl	$1, %esi	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	shrq	%rax	# tmp256
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	addq	%rdx, %rax	# tmp.1134, tmp257
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	leaq	_Z12parallel_sumRKSt6vectorIsSaIsEEmmm(%rip), %rdx	#, tmp262
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	movq	%rax, 24(%rsp)	# tmp257, mid
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	leaq	32(%rsp), %r13	#, tmp295
	pushq	%r13	# tmp295
	.cfi_def_cfa_offset 128
	leaq	32(%rsp), %r9	#,
	leaq	24(%rsp), %r8	#,
.LEHB32:
	call	_ZSt5asyncIRFyRKSt6vectorIsSaIsEEmmmEJS4_RmRKmmEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNSC_IT0_E4typeEEE4typeEESt6launchOSD_DpOSG_	#
.LEHE32:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:31:         const unsigned long long right_sum = parallel_sum(vec, mid, hi, depth+1);
	popq	%rax	#
	.cfi_def_cfa_offset 120
	popq	%rdx	#
	.cfi_def_cfa_offset 112
	movq	%r14, %rcx	# _6,
	movq	16(%rsp), %rsi	# mid,
	movq	%r12, %rdx	# hi,
	movq	%rbp, %rdi	# vec,
.LEHB33:
	call	_Z12parallel_sumRKSt6vectorIsSaIsEEmmm	#
.LEHE33:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:1300:       { return _M_ptr != nullptr; }
	movq	32(%rsp), %r12	# MEM[(const struct __shared_ptr *)&left_sum]._M_ptr, _48
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:31:         const unsigned long long right_sum = parallel_sum(vec, mid, hi, depth+1);
	movq	%rax, %rbx	# tmp301, _20
# /usr/include/c++/11.3.0/future:562:           if (!static_cast<bool>(__p))
	testq	%r12, %r12	# _48
	je	.L466	#,
# /usr/include/c++/11.3.0/future:333: 	_M_complete_async();
	movq	(%r12), %rax	# MEM[(struct _State_baseV2 *)_48]._vptr._State_baseV2, MEM[(struct _State_baseV2 *)_48]._vptr._State_baseV2
	movq	%r12, %rdi	# _48,
.LEHB34:
	call	*16(%rax)	# MEM[(int (*) () *)_53 + 16B]
# /usr/include/c++/11.3.0/bits/atomic_base.h:481: 	return __atomic_load_n(&_M_i, int(__m));
	movl	16(%r12), %edx	#, _57
# /usr/include/c++/11.3.0/future:336: 	_M_status._M_load_when_equal(_Status::__ready, memory_order_acquire);
	leaq	16(%r12), %rbp	#, _55
# /usr/include/c++/11.3.0/bits/atomic_base.h:481: 	return __atomic_load_n(&_M_i, int(__m));
# /usr/include/c++/11.3.0/bits/atomic_futex.h:87:       return _M_data.load(__mo) & ~_Waiter_bit;
	andl	$2147483647, %edx	#, __assumed
	jmp	.L464	#
	.p2align 4,,10
	.p2align 3
.L467:
# /usr/include/c++/11.3.0/bits/atomic_base.h:666:       { return __atomic_fetch_or(&_M_i, __i, int(__m)); }
	lock orl	$-2147483648, 0(%rbp)	#,,* _55
# /usr/include/c++/11.3.0/bits/atomic_futex.h:110: 	  bool __ret = _M_futex_wait_until((unsigned*)(void*)&_M_data,
	xorl	%r9d, %r9d	#
	xorl	%r8d, %r8d	#
	xorl	%ecx, %ecx	#
	orl	$-2147483648, %edx	#, tmp266
	movq	%rbp, %rsi	# _55,
	movq	%rbp, %rdi	# _55,
	call	_ZNSt28__atomic_futex_unsigned_base19_M_futex_wait_untilEPjjbNSt6chrono8durationIlSt5ratioILl1ELl1EEEENS2_IlS3_ILl1ELl1000000000EEEE@PLT	#
.LEHE34:
# /usr/include/c++/11.3.0/bits/atomic_base.h:481: 	return __atomic_load_n(&_M_i, int(__m));
	movl	0(%rbp), %edx	#* _55, _66
# /usr/include/c++/11.3.0/bits/atomic_futex.h:87:       return _M_data.load(__mo) & ~_Waiter_bit;
	andl	$2147483647, %edx	#, __assumed
# /usr/include/c++/11.3.0/bits/atomic_futex.h:115: 	  if (!__ret || ((__operand == __assumed) == __equal))
	cmpb	$1, %al	#, tmp302
	jne	.L416	#,
.L464:
# /usr/include/c++/11.3.0/bits/atomic_futex.h:210:       if ((__i & ~_Waiter_bit) == __val)
	cmpl	$1, %edx	#, __assumed
	jne	.L467	#,
.L416:
# /usr/include/c++/11.3.0/bits/unique_ptr.h:173:       pointer    _M_ptr() const { return std::get<0>(_M_t); }
	movq	8(%r12), %rax	# MEM[(struct _Result_base * const &)_48 + 8], _59
# /usr/include/c++/11.3.0/bits/exception_ptr.h:92:       void* _M_exception_object;
	movq	8(%rax), %rdx	# MEM[(const struct exception_ptr &)_59 + 8]._M_exception_object, _50
# /usr/include/c++/11.3.0/bits/exception_ptr.h:162:       operator==(const exception_ptr&, const exception_ptr&) noexcept = default;
	testq	%rdx, %rdx	# _50
	je	.L468	#,
# /usr/include/c++/11.3.0/bits/exception_ptr.h:193: 	_M_addref();
	movq	%r13, %rdi	# tmp295,
# /usr/include/c++/11.3.0/bits/exception_ptr.h:190:     : _M_exception_object(__other._M_exception_object)
	movq	%rdx, 24(%rsp)	# _50, MEM[(struct exception_ptr *)_118]._M_exception_object
# /usr/include/c++/11.3.0/bits/exception_ptr.h:193: 	_M_addref();
	call	_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv@PLT	#
# /usr/include/c++/11.3.0/future:721:           rethrow_exception(__res._M_error);
	movq	%r13, %rdi	# tmp295,
.LEHB35:
	call	_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE@PLT	#
.LEHE35:
	.p2align 4,,10
	.p2align 3
.L468:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:733: 	_Sp_counted_base<_Lp>* __tmp = __r._M_pi;
	movq	40(%rsp), %rbp	# MEM[(struct __shared_count &)&left_sum + 8]._M_pi, __tmp
# /usr/include/c++/11.3.0/bits/move.h:206:       __b = _GLIBCXX_MOVE(__tmp);
	pxor	%xmm0, %xmm0	# tmp270
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:32:         sum = left_sum.get() + right_sum;
	addq	16(%rax), %rbx	# MEM[(type &)_59 + 16], _20
# /usr/include/c++/11.3.0/bits/move.h:206:       __b = _GLIBCXX_MOVE(__tmp);
	movaps	%xmm0, 32(%rsp)	# tmp270, MEM <vector(2) long unsigned int> [(void *)&left_sum]
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:32:         sum = left_sum.get() + right_sum;
	movq	%rbx, %rax	# _20, <retval>
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	testq	%rbp, %rbp	# __tmp
	je	.L408	#,
# /usr/include/c++/11.3.0/ext/atomicity.h:98:     if (__is_single_threaded())
	cmpb	$0, __libc_single_threaded(%rip)	#, __libc_single_threaded
	je	.L425	#,
# /usr/include/c++/11.3.0/ext/atomicity.h:84:     _Atomic_word __result = *__mem;
	movl	8(%rbp), %edx	# MEM[(_Atomic_word *)__tmp_46 + 8B], __result
# /usr/include/c++/11.3.0/ext/atomicity.h:85:     *__mem += __val;
	leal	-1(%rdx), %ecx	#, tmp278
	movl	%ecx, 8(%rbp)	# tmp278, MEM[(_Atomic_word *)__tmp_46 + 8B]
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:165: 	if (__gnu_cxx::__exchange_and_add_dispatch(&_M_use_count, -1) == 1)
	cmpl	$1, %edx	#, __result
	jne	.L408	#,
.L429:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:168: 	    _M_dispose();
	movq	0(%rbp), %rdx	# __tmp_46->_vptr._Sp_counted_base, __tmp_46->_vptr._Sp_counted_base
	movq	%rax, (%rsp)	# <retval>, %sfp
	movq	%rbp, %rdi	# __tmp,
	call	*16(%rdx)	# MEM[(int (*) () *)_77 + 16B]
# /usr/include/c++/11.3.0/ext/atomicity.h:98:     if (__is_single_threaded())
	cmpb	$0, __libc_single_threaded(%rip)	#, __libc_single_threaded
	movq	(%rsp), %rax	# %sfp, <retval>
	je	.L469	#,
# /usr/include/c++/11.3.0/ext/atomicity.h:84:     _Atomic_word __result = *__mem;
	movl	12(%rbp), %edx	# MEM[(_Atomic_word *)__tmp_46 + 12B], __result
# /usr/include/c++/11.3.0/ext/atomicity.h:85:     *__mem += __val;
	leal	-1(%rdx), %ecx	#, tmp281
	movl	%ecx, 12(%rbp)	# tmp281, MEM[(_Atomic_word *)__tmp_46 + 12B]
.L431:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:180: 	    if (__gnu_cxx::__exchange_and_add_dispatch(&_M_weak_count,
	cmpl	$1, %edx	#, __result
	je	.L470	#,
.L430:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	movq	40(%rsp), %rbp	# MEM[(struct __shared_count *)&left_sum + 8B]._M_pi, _35
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	testq	%rbp, %rbp	# _35
	je	.L408	#,
# /usr/include/c++/11.3.0/ext/atomicity.h:98:     if (__is_single_threaded())
	cmpb	$0, __libc_single_threaded(%rip)	#, __libc_single_threaded
	je	.L436	#,
# /usr/include/c++/11.3.0/ext/atomicity.h:84:     _Atomic_word __result = *__mem;
	movl	8(%rbp), %edx	# MEM[(_Atomic_word *)_35 + 8B], __result
# /usr/include/c++/11.3.0/ext/atomicity.h:85:     *__mem += __val;
	leal	-1(%rdx), %ecx	#, tmp287
	movl	%ecx, 8(%rbp)	# tmp287, MEM[(_Atomic_word *)_35 + 8B]
.L437:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:165: 	if (__gnu_cxx::__exchange_and_add_dispatch(&_M_use_count, -1) == 1)
	cmpl	$1, %edx	#, __result
	jne	.L408	#,
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:168: 	    _M_dispose();
	movq	0(%rbp), %rdx	# _35->_vptr._Sp_counted_base, _35->_vptr._Sp_counted_base
	movq	%rax, (%rsp)	# <retval>, %sfp
	movq	%rbp, %rdi	# _35,
	call	*16(%rdx)	# MEM[(int (*) () *)_95 + 16B]
# /usr/include/c++/11.3.0/ext/atomicity.h:98:     if (__is_single_threaded())
	cmpb	$0, __libc_single_threaded(%rip)	#, __libc_single_threaded
	movq	(%rsp), %rax	# %sfp, <retval>
	je	.L438	#,
# /usr/include/c++/11.3.0/ext/atomicity.h:84:     _Atomic_word __result = *__mem;
	movl	12(%rbp), %edx	# MEM[(_Atomic_word *)_35 + 12B], __result
# /usr/include/c++/11.3.0/ext/atomicity.h:85:     *__mem += __val;
	leal	-1(%rdx), %ecx	#, tmp290
	movl	%ecx, 12(%rbp)	# tmp290, MEM[(_Atomic_word *)_35 + 12B]
.L439:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:180: 	    if (__gnu_cxx::__exchange_and_add_dispatch(&_M_weak_count,
	cmpl	$1, %edx	#, __result
	jne	.L408	#,
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:184: 	        _M_destroy();
	movq	0(%rbp), %rdx	# _35->_vptr._Sp_counted_base, _35->_vptr._Sp_counted_base
	movq	%rax, (%rsp)	# <retval>, %sfp
	movq	%rbp, %rdi	# _35,
	call	*24(%rdx)	# MEM[(int (*) () *)_104 + 24B]
	movq	(%rsp), %rax	# %sfp, <retval>
	jmp	.L408	#
	.p2align 4,,10
	.p2align 3
.L442:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:13:     unsigned long long sum = 0;
	xorl	%eax, %eax	# <retval>
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:35:     return sum;
	jmp	.L408	#
.L443:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:13:     unsigned long long sum = 0;
	xorl	%eax, %eax	# <retval>
	jmp	.L411	#
.L425:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:165: 	if (__gnu_cxx::__exchange_and_add_dispatch(&_M_use_count, -1) == 1)
	lock subl	$1, 8(%rbp)	#,,
	jne	.L430	#,
	jmp	.L429	#
	.p2align 4,,10
	.p2align 3
.L436:
# /usr/include/c++/11.3.0/ext/atomicity.h:66:   { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
	movl	$-1, %edx	#, _92
	lock xaddl	%edx, 8(%rbp)	#, _92,
# /usr/include/c++/11.3.0/ext/atomicity.h:101:       return __exchange_and_add(__mem, __val);
	jmp	.L437	#
.L470:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:184: 	        _M_destroy();
	movq	0(%rbp), %rdx	# __tmp_46->_vptr._Sp_counted_base, __tmp_46->_vptr._Sp_counted_base
	movq	%rax, (%rsp)	# <retval>, %sfp
	movq	%rbp, %rdi	# __tmp,
	call	*24(%rdx)	# MEM[(int (*) () *)_86 + 24B]
	movq	(%rsp), %rax	# %sfp, <retval>
	jmp	.L430	#
.L438:
# /usr/include/c++/11.3.0/ext/atomicity.h:66:   { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
	movl	$-1, %edx	#, _101
	lock xaddl	%edx, 12(%rbp)	#, _101,
# /usr/include/c++/11.3.0/ext/atomicity.h:101:       return __exchange_and_add(__mem, __val);
	jmp	.L439	#
.L469:
# /usr/include/c++/11.3.0/ext/atomicity.h:66:   { return __atomic_fetch_add(__mem, __val, __ATOMIC_ACQ_REL); }
	movl	$-1, %edx	#, _83
	lock xaddl	%edx, 12(%rbp)	#, _83,
# /usr/include/c++/11.3.0/ext/atomicity.h:101:       return __exchange_and_add(__mem, __val);
	jmp	.L431	#
.L465:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:36: }
	call	__stack_chk_fail@PLT	#
.L466:
# /usr/include/c++/11.3.0/future:563:             __throw_future_error((int)future_errc::no_state);
	movl	$3, %edi	#,
.LEHB36:
	call	_ZSt20__throw_future_errori@PLT	#
.LEHE36:
.L445:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:733: 	_Sp_counted_base<_Lp>* __tmp = __r._M_pi;
	movq	%rax, %rbp	# tmp304, tmp274
	jmp	.L424	#
.L446:
# /usr/include/c++/11.3.0/bits/exception_ptr.h:200:       if (_M_exception_object)
	movq	%rax, %rbp	# tmp303, tmp275
	jmp	.L422	#
.L444:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	movq	%rax, %rbp	# tmp305, tmp285
	jmp	.L435	#
	.section	.gcc_except_table,"a",@progbits
.LLSDA6158:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6158-.LLSDACSB6158
.LLSDACSB6158:
	.uleb128 .LEHB32-.LFB6158
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB33-.LFB6158
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L444-.LFB6158
	.uleb128 0
	.uleb128 .LEHB34-.LFB6158
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L445-.LFB6158
	.uleb128 0
	.uleb128 .LEHB35-.LFB6158
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L446-.LFB6158
	.uleb128 0
	.uleb128 .LEHB36-.LFB6158
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L445-.LFB6158
	.uleb128 0
.LLSDACSE6158:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6158
	.type	_Z12parallel_sumRKSt6vectorIsSaIsEEmmm.cold, @function
_Z12parallel_sumRKSt6vectorIsSaIsEEmmm.cold:
.LFSB6158:
.L422:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
# /usr/include/c++/11.3.0/bits/exception_ptr.h:200:       if (_M_exception_object)
	cmpq	$0, 24(%rsp)	#, MEM[(struct exception_ptr *)_118]._M_exception_object
	je	.L424	#,
# /usr/include/c++/11.3.0/bits/exception_ptr.h:201: 	_M_release();
	movq	%r13, %rdi	# tmp295,
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L424:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:733: 	_Sp_counted_base<_Lp>* __tmp = __r._M_pi;
	movq	40(%rsp), %rdi	# MEM[(struct __shared_count &)&left_sum + 8]._M_pi, __tmp
# /usr/include/c++/11.3.0/bits/move.h:206:       __b = _GLIBCXX_MOVE(__tmp);
	pxor	%xmm0, %xmm0	# tmp284
	movaps	%xmm0, 32(%rsp)	# tmp284, MEM <vector(2) long unsigned int> [(void *)&left_sum]
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	testq	%rdi, %rdi	# __tmp
	je	.L435	#,
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:705: 	  _M_pi->_M_release();
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv	#
.L435:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	movq	40(%rsp), %rdi	# MEM[(struct __shared_count *)&left_sum + 8B]._M_pi, _36
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	testq	%rdi, %rdi	# _36
	je	.L440	#,
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:705: 	  _M_pi->_M_release();
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv	#
.L440:
	movq	%rbp, %rdi	# tmp285,
.LEHB37:
	call	_Unwind_Resume@PLT	#
.LEHE37:
	.cfi_endproc
.LFE6158:
	.section	.gcc_except_table
.LLSDAC6158:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6158-.LLSDACSBC6158
.LLSDACSBC6158:
	.uleb128 .LEHB37-.LCOLDB1
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
.LLSDACSEC6158:
	.section	.text.unlikely
	.text
	.size	_Z12parallel_sumRKSt6vectorIsSaIsEEmmm, .-_Z12parallel_sumRKSt6vectorIsSaIsEEmmm
	.section	.text.unlikely
	.size	_Z12parallel_sumRKSt6vectorIsSaIsEEmmm.cold, .-_Z12parallel_sumRKSt6vectorIsSaIsEEmmm.cold
.LCOLDE1:
	.text
.LHOTE1:
	.section	.rodata._ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.str1.1,"aMS",@progbits,1
.LC2:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_
	.type	_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_, @function
_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_:
.LFB7250:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15	# tmp144, __args#0
# /usr/include/c++/11.3.0/bits/stl_vector.h:1758: 	if (max_size() - size() < __n)
	movabsq	$4611686018427387903, %rdx	#, tmp125
# /usr/include/c++/11.3.0/bits/vector.tcc:426:       vector<_Tp, _Alloc>::
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
	movq	8(%rdi), %r12	# MEM[(short int * *)this_18(D) + 8B], _49
	movq	(%rdi), %r14	# MEM[(short int * *)this_18(D)], _48
# /usr/include/c++/11.3.0/bits/stl_vector.h:919:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movq	%r12, %rax	# _49, tmp123
	subq	%r14, %rax	# _48, tmp123
	sarq	%rax	# tmp124
# /usr/include/c++/11.3.0/bits/stl_vector.h:1758: 	if (max_size() - size() < __n)
	cmpq	%rdx, %rax	# tmp125, tmp124
	je	.L491	#,
	testq	%rax, %rax	# tmp124
	movl	$1, %edx	#, tmp147
	movq	%rdi, %rbp	# tmp142, this
	movq	%rsi, %r13	# tmp143, __position
	cmovne	%rax, %rdx	# tmp124,, tmp127
	xorl	%ecx, %ecx	# _13
	addq	%rdx, %rax	# tmp127, tmp128
# /usr/include/c++/11.3.0/bits/stl_iterator.h:1237:     { return __lhs.base() - __rhs.base(); }
	movq	%rsi, %rdx	# __position, _63
	setc	%cl	#, _13
	subq	%r14, %rdx	# _48, _63
# /usr/include/c++/11.3.0/bits/stl_vector.h:1762: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	testq	%rcx, %rcx	# _13
	jne	.L484	#,
# /usr/include/c++/11.3.0/bits/stl_vector.h:346: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	testq	%rax, %rax	# tmp128
	jne	.L476	#,
	xorl	%ebx, %ebx	# prephitmp_43
	xorl	%edi, %edi	# iftmp.70_37
.L482:
# /usr/include/c++/11.3.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	movzwl	(%r15), %eax	# *__args#0_24(D), *__args#0_24(D)
# /usr/include/c++/11.3.0/bits/stl_uninitialized.h:1009:       ptrdiff_t __count = __last - __first;
	subq	%r13, %r12	# __position, _61
# /usr/include/c++/11.3.0/bits/vector.tcc:464: 	      ++__new_finish;
	leaq	2(%rdi,%rdx), %r15	#, _82
	movq	%rdi, %xmm0	# iftmp.70_37, _41
# /usr/include/c++/11.3.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	movw	%ax, (%rdi,%rdx)	# *__args#0_24(D), *_2
# /usr/include/c++/11.3.0/bits/stl_uninitialized.h:1012:       return __result + __count;
	leaq	(%r15,%r12), %rax	#, tmp132
	movq	%rax, %xmm1	# tmp132, tmp132
	punpcklqdq	%xmm1, %xmm0	# tmp132, _41
	movaps	%xmm0, (%rsp)	# _41, %sfp
# /usr/include/c++/11.3.0/bits/stl_uninitialized.h:1010:       if (__count > 0)
	testq	%rdx, %rdx	# _63
	jg	.L492	#,
	testq	%r12, %r12	# _61
	jg	.L480	#,
# /usr/include/c++/11.3.0/bits/stl_vector.h:353: 	if (__p)
	testq	%r14, %r14	# _48
	jne	.L490	#,
.L481:
# /usr/include/c++/11.3.0/bits/vector.tcc:502:       this->_M_impl._M_start = __new_start;
	movdqa	(%rsp), %xmm2	# %sfp, _41
# /usr/include/c++/11.3.0/bits/vector.tcc:504:       this->_M_impl._M_end_of_storage = __new_start + __len;
	movq	%rbx, 16(%rbp)	# prephitmp_43, this_18(D)->D.151183._M_impl.D.150495._M_end_of_storage
# /usr/include/c++/11.3.0/bits/vector.tcc:502:       this->_M_impl._M_start = __new_start;
	movups	%xmm2, 0(%rbp)	# _41, MEM <vector(2) long unsigned int> [(short int * *)this_18(D)]
# /usr/include/c++/11.3.0/bits/vector.tcc:505:     }
	addq	$24, %rsp	#,
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
.L492:
	.cfi_restore_state
# /usr/include/c++/11.3.0/bits/stl_uninitialized.h:1011: 	__builtin_memmove(__result, __first, __count * sizeof(_Tp));
	movq	%r14, %rsi	# _48,
	call	memmove@PLT	#
# /usr/include/c++/11.3.0/bits/stl_uninitialized.h:1010:       if (__count > 0)
	testq	%r12, %r12	# _61
	jg	.L480	#,
.L490:
# /usr/include/c++/11.3.0/bits/vector.tcc:501: 		    this->_M_impl._M_end_of_storage - __old_start);
	movq	16(%rbp), %rsi	# this_18(D)->D.151183._M_impl.D.150495._M_end_of_storage, _12
# /usr/include/c++/11.3.0/ext/new_allocator.h:145: 	::operator delete(__p
	movq	%r14, %rdi	# _48,
# /usr/include/c++/11.3.0/bits/vector.tcc:501: 		    this->_M_impl._M_end_of_storage - __old_start);
	subq	%r14, %rsi	# _48, _12
# /usr/include/c++/11.3.0/ext/new_allocator.h:145: 	::operator delete(__p
	call	_ZdlPvm@PLT	#
	jmp	.L481	#
	.p2align 4,,10
	.p2align 3
.L480:
# /usr/include/c++/11.3.0/bits/stl_uninitialized.h:1011: 	__builtin_memmove(__result, __first, __count * sizeof(_Tp));
	movq	%r12, %rdx	# _61,
	movq	%r13, %rsi	# __position,
	movq	%r15, %rdi	# _82,
	call	memcpy@PLT	#
# /usr/include/c++/11.3.0/bits/stl_vector.h:353: 	if (__p)
	testq	%r14, %r14	# _48
	je	.L481	#,
	jmp	.L490	#
	.p2align 4,,10
	.p2align 3
.L484:
	movabsq	$9223372036854775806, %rbx	#, prephitmp_57
.L475:
# /usr/include/c++/11.3.0/ext/new_allocator.h:127: 	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
	movq	%rbx, %rdi	# prephitmp_57,
	movq	%rdx, (%rsp)	# _63, %sfp
	call	_Znwm@PLT	#
	movq	(%rsp), %rdx	# %sfp, _63
	movq	%rax, %rdi	# tmp145, iftmp.70_37
# /usr/include/c++/11.3.0/bits/vector.tcc:504:       this->_M_impl._M_end_of_storage = __new_start + __len;
	addq	%rax, %rbx	# iftmp.70_37, prephitmp_43
	jmp	.L482	#
	.p2align 4,,10
	.p2align 3
.L476:
# /usr/include/c++/11.3.0/ext/new_allocator.h:127: 	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
	movabsq	$4611686018427387903, %rcx	#, tmp146
	cmpq	%rcx, %rax	# tmp146, tmp128
	cmova	%rcx, %rax	# tmp128,, tmp146, tmp139
	leaq	(%rax,%rax), %rbx	#, prephitmp_57
	jmp	.L475	#
.L491:
# /usr/include/c++/11.3.0/bits/stl_vector.h:1759: 	  __throw_length_error(__N(__s));
	leaq	.LC2(%rip), %rdi	#, tmp126
	call	_ZSt20__throw_length_errorPKc@PLT	#
	.cfi_endproc
.LFE7250:
	.size	_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_, .-_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"Generating 100 000 000 random numbers"
	.align 8
.LC4:
	.string	"100 000 000 random numbers generated"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"Parallel sum: "
.LC6:
	.string	"\nParallel runtime: "
.LC7:
	.string	"ms"
.LC8:
	.string	"Sequential sum: "
.LC9:
	.string	"\nSequential runtime: "
	.section	.text.unlikely
.LCOLDB10:
	.section	.text.startup,"ax",@progbits
.LHOTB10:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB6167:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6167
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# /usr/include/c++/11.3.0/bits/stl_vector.h:98: 	: _M_start(), _M_finish(), _M_end_of_storage()
	pxor	%xmm0, %xmm0	# tmp212
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	movl	$37, %edx	#,
	leaq	.LC3(%rip), %rsi	#, tmp213
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:39: {
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	leaq	_ZSt4cout(%rip), %r13	#, tmp362
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:39: {
	pushq	%r12	#
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	movq	%r13, %rdi	# tmp362,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:39: {
	pushq	%rbx	#
	subq	$232, %rsp	#,
	.cfi_offset 12, -48
	.cfi_offset 3, -56
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:39: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp390
	movq	%rax, -56(%rbp)	# tmp390, D.197384
	xorl	%eax, %eax	# tmp390
# /usr/include/c++/11.3.0/bits/stl_vector.h:98: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, -64(%rbp)	#, MEM[(struct _Vector_impl_data *)&vec]._M_end_of_storage
# /usr/include/c++/11.3.0/bits/stl_vector.h:98: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movaps	%xmm0, -80(%rbp)	# tmp212, MEM <vector(2) long unsigned int> [(short int * *)&vec]
.LEHB38:
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/11.3.0/ostream:113: 	return __pf(*this);
	movq	%r13, %rdi	# tmp362,
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0	#
# /usr/include/c++/11.3.0/ostream:113: 	return __pf(*this);
	movq	$500000000, -232(%rbp)	#, %sfp
# /usr/include/c++/11.3.0/bits/vector.tcc:121: 	  _M_realloc_insert(end(), std::forward<_Args>(__args)...);
	leaq	-96(%rbp), %rbx	#, tmp370
	jmp	.L496	#
	.p2align 4,,10
	.p2align 3
.L568:
# /usr/include/c++/11.3.0/bits/stl_construct.h:97:     { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
	movw	%ax, (%rsi)	# tmp221, *_94
# /usr/include/c++/11.3.0/bits/vector.tcc:117: 	    ++this->_M_impl._M_finish;
	addq	$2, %rsi	#, tmp222
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:43:     for(size_t i = 0; i < 500'000'000; ++i)
	subq	$1, -232(%rbp)	#, %sfp
# /usr/include/c++/11.3.0/bits/vector.tcc:117: 	    ++this->_M_impl._M_finish;
	movq	%rsi, -72(%rbp)	# tmp222, vec.D.151183._M_impl.D.150495._M_finish
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:43:     for(size_t i = 0; i < 500'000'000; ++i)
	je	.L567	#,
.L496:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:45:         vec.push_back(rand()%256);
	call	rand@PLT	#
# /usr/include/c++/11.3.0/bits/vector.tcc:112: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	-72(%rbp), %rsi	# vec.D.151183._M_impl.D.150495._M_finish, _94
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:45:         vec.push_back(rand()%256);
	cltd
	shrl	$24, %edx	#, tmp218
	addl	%edx, %eax	# tmp218, tmp219
	movzbl	%al, %eax	# tmp219, tmp220
	subl	%edx, %eax	# tmp218, tmp221
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:45:         vec.push_back(rand()%256);
	movw	%ax, -96(%rbp)	# tmp221, MEM[(short int *)_98]
# /usr/include/c++/11.3.0/bits/vector.tcc:112: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmpq	-64(%rbp), %rsi	# vec.D.151183._M_impl.D.150495._M_end_of_storage, _94
	jne	.L568	#,
# /usr/include/c++/11.3.0/bits/vector.tcc:121: 	  _M_realloc_insert(end(), std::forward<_Args>(__args)...);
	leaq	-80(%rbp), %rdi	#, tmp224
	movq	%rbx, %rdx	# tmp370,
	call	_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:43:     for(size_t i = 0; i < 500'000'000; ++i)
	subq	$1, -232(%rbp)	#, %sfp
	jne	.L496	#,
.L567:
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	movl	$36, %edx	#,
	leaq	.LC4(%rip), %rsi	#, tmp225
	movq	%r13, %rdi	# tmp362,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/11.3.0/ostream:113: 	return __pf(*this);
	movq	%r13, %rdi	# tmp362,
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:49:     const auto start_time_parallel = std::chrono::steady_clock::now();
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	leaq	-128(%rbp), %rbx	#, tmp366
# /usr/include/c++/11.3.0/bits/stl_vector.h:919:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movq	-72(%rbp), %r12	# vec.D.151183._M_impl.D.150495._M_finish, vec.D.151183._M_impl.D.150495._M_finish
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	subq	$8, %rsp	#,
# /usr/include/c++/11.3.0/bits/stl_vector.h:919:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	subq	-80(%rbp), %r12	# vec.D.151183._M_impl.D.150495._M_start, tmp228
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	pushq	%rbx	# tmp366
	leaq	-80(%rbp), %r14	#, tmp369
	leaq	_Z12parallel_sumRKSt6vectorIsSaIsEEmmm(%rip), %r15	#, tmp365
# /usr/include/c++/11.3.0/bits/stl_vector.h:919:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sarq	%r12	# tmp230
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:49:     const auto start_time_parallel = std::chrono::steady_clock::now();
	movq	%rax, -248(%rbp)	# tmp372, %sfp
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	movq	%r14, %rcx	# tmp369,
	movq	%r15, %rdx	# tmp365,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	movq	%r12, %rax	# tmp230, tmp231
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	leaq	-144(%rbp), %rdi	#, tmp364
	leaq	-208(%rbp), %r9	#,
	movl	$1, %esi	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	shrq	%rax	# tmp231
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	leaq	-216(%rbp), %r8	#,
	movq	$0, -216(%rbp)	#, lo
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	movq	%rax, -208(%rbp)	# tmp231, mid
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	movq	$1, -128(%rbp)	#, MEM[(long unsigned int *)_101]
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	movq	%rdi, -256(%rbp)	# tmp364, %sfp
	movq	%rbx, -264(%rbp)	# tmp366, %sfp
	.cfi_escape 0x2e,0x10
	call	_ZSt5asyncIRFyRKSt6vectorIsSaIsEEmmmEJS4_RmRKmmEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNSC_IT0_E4typeEEE4typeEESt6launchOSD_DpOSG_	#
.LEHE38:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:31:         const unsigned long long right_sum = parallel_sum(vec, mid, hi, depth+1);
	movq	-208(%rbp), %rdx	# mid, mid.3_115
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	movq	%r12, %rax	# tmp230, tmp238
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	movq	%r14, %rcx	# tmp369,
	movq	%rbx, %rdi	# tmp366,
	leaq	-192(%rbp), %r9	#,
	leaq	-200(%rbp), %r8	#,
	movl	$1, %esi	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	movq	$2, -112(%rbp)	#, MEM[(long unsigned int *)_110]
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	subq	%rdx, %rax	# mid.3_115, tmp238
	movq	%rdx, -200(%rbp)	# mid.3_115, lo
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	shrq	%rax	# tmp239
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	addq	%rdx, %rax	# mid.3_115, tmp240
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	movq	%r15, %rdx	# tmp365,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	movq	%rax, -192(%rbp)	# tmp240, mid
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	leaq	-112(%rbp), %rax	#, tmp367
	movq	%rax, -240(%rbp)	# tmp367, %sfp
	movq	%rax, (%rsp)	#,
.LEHB39:
	call	_ZSt5asyncIRFyRKSt6vectorIsSaIsEEmmmEJS4_RmRKmmEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNSC_IT0_E4typeEEE4typeEESt6launchOSD_DpOSG_	#
.LEHE39:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:31:         const unsigned long long right_sum = parallel_sum(vec, mid, hi, depth+1);
	movq	-192(%rbp), %rdx	# mid, mid.3_137
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	movq	%r12, %rcx	# tmp230, tmp247
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	leaq	-96(%rbp), %rbx	#, tmp368
	movl	$1, %esi	#,
	movq	-240(%rbp), %rdi	# %sfp,
	leaq	-176(%rbp), %r9	#,
	movq	%rbx, (%rsp)	# tmp368,
	leaq	-184(%rbp), %r8	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	subq	%rdx, %rcx	# mid.3_137, tmp247
	movq	%rdx, -184(%rbp)	# mid.3_137, lo
	movq	%rcx, %rax	# tmp247, tmp247
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	movq	%r14, %rcx	# tmp369,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	movq	$3, -96(%rbp)	#, MEM[(long unsigned int *)_98]
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	shrq	%rax	# tmp248
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	addq	%rdx, %rax	# mid.3_137, tmp249
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	movq	%r15, %rdx	# tmp365,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	movq	%rax, -176(%rbp)	# tmp249, mid
.LEHB40:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	call	_ZSt5asyncIRFyRKSt6vectorIsSaIsEEmmmEJS4_RmRKmmEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNSC_IT0_E4typeEEE4typeEESt6launchOSD_DpOSG_	#
.LEHE40:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:31:         const unsigned long long right_sum = parallel_sum(vec, mid, hi, depth+1);
	movq	-176(%rbp), %rdx	# mid, mid.3_159
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	movq	%r12, %rax	# tmp230, tmp256
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	movq	%r14, %rcx	# tmp369,
	movq	%rbx, %rdi	# tmp368,
	leaq	-160(%rbp), %r9	#,
	movl	$1, %esi	#,
	leaq	-168(%rbp), %r8	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	movq	$4, -152(%rbp)	#, D.197312
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	subq	%rdx, %rax	# mid.3_159, tmp256
	movq	%rdx, -168(%rbp)	# mid.3_159, lo
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	shrq	%rax	# tmp257
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	addq	%rdx, %rax	# mid.3_159, tmp258
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	movq	%r15, %rdx	# tmp365,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:29:         const size_t mid = lo + (hi-lo)/2;
	movq	%rax, -160(%rbp)	# tmp258, mid
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	leaq	-152(%rbp), %rax	#, tmp263
	movq	%rax, (%rsp)	# tmp263,
.LEHB41:
	call	_ZSt5asyncIRFyRKSt6vectorIsSaIsEEmmmEJS4_RmRKmmEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNSC_IT0_E4typeEEE4typeEESt6launchOSD_DpOSG_	#
.LEHE41:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:31:         const unsigned long long right_sum = parallel_sum(vec, mid, hi, depth+1);
	movq	-160(%rbp), %rsi	# mid,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	popq	%rax	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:31:         const unsigned long long right_sum = parallel_sum(vec, mid, hi, depth+1);
	movl	$4, %ecx	#,
	movq	%r14, %rdi	# tmp369,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:30:         std::future<unsigned long long> left_sum = std::async(std::launch::async, parallel_sum, vec, lo, mid, depth+1);
	popq	%rdx	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:31:         const unsigned long long right_sum = parallel_sum(vec, mid, hi, depth+1);
	movq	%r12, %rdx	# tmp230,
.LEHB42:
	.cfi_escape 0x2e,0
	call	_Z12parallel_sumRKSt6vectorIsSaIsEEmmm	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:32:         sum = left_sum.get() + right_sum;
	movq	%rbx, %rdi	# tmp368,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:31:         const unsigned long long right_sum = parallel_sum(vec, mid, hi, depth+1);
	movq	%rax, %r12	# tmp373, _182
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:32:         sum = left_sum.get() + right_sum;
	call	_ZNSt6futureIyE3getEv	#
.LEHE42:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	movq	-88(%rbp), %rdi	# MEM[(struct __shared_count *)_98]._M_pi, _185
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:32:         sum = left_sum.get() + right_sum;
	addq	%rax, %r12	# tmp374, sum
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	testq	%rdi, %rdi	# _185
	je	.L497	#,
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:705: 	  _M_pi->_M_release();
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv	#
.L497:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:32:         sum = left_sum.get() + right_sum;
	movq	-240(%rbp), %rdi	# %sfp,
.LEHB43:
	call	_ZNSt6futureIyE3getEv	#
.LEHE43:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	movq	-104(%rbp), %rdi	# MEM[(struct __shared_count *)_110]._M_pi, _163
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:32:         sum = left_sum.get() + right_sum;
	addq	%rax, %r12	# tmp375, sum
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	testq	%rdi, %rdi	# _163
	je	.L502	#,
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:705: 	  _M_pi->_M_release();
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv	#
.L502:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:32:         sum = left_sum.get() + right_sum;
	movq	-264(%rbp), %rdi	# %sfp,
.LEHB44:
	call	_ZNSt6futureIyE3getEv	#
.LEHE44:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	movq	-120(%rbp), %rdi	# MEM[(struct __shared_count *)_101]._M_pi, _141
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:32:         sum = left_sum.get() + right_sum;
	addq	%rax, %r12	# tmp377, sum
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	testq	%rdi, %rdi	# _141
	je	.L506	#,
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:705: 	  _M_pi->_M_release();
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv	#
.L506:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:32:         sum = left_sum.get() + right_sum;
	movq	-256(%rbp), %rdi	# %sfp,
.LEHB45:
	call	_ZNSt6futureIyE3getEv	#
.LEHE45:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	movq	-136(%rbp), %rdi	# MEM[(struct __shared_count *)&left_sum + 8B]._M_pi, _119
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:32:         sum = left_sum.get() + right_sum;
	addq	%rax, %r12	# tmp379, sum
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	testq	%rdi, %rdi	# _119
	je	.L510	#,
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:705: 	  _M_pi->_M_release();
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv	#
.L510:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:51:     const auto end_time_parallel = std::chrono::steady_clock::now();
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT	#
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	movl	$14, %edx	#,
	leaq	.LC5(%rip), %rsi	#, tmp279
	movq	%r13, %rdi	# tmp362,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:51:     const auto end_time_parallel = std::chrono::steady_clock::now();
	movq	%rax, %rbx	# tmp381, end_time_parallel
.LEHB46:
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/11.3.0/ostream:206:       { return _M_insert(__n); }
	movq	%r12, %rsi	# sum,
	movq	%r13, %rdi	# tmp362,
	call	_ZNSo9_M_insertIyEERSoT_@PLT	#
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	movl	$19, %edx	#,
	leaq	.LC6(%rip), %rsi	#, tmp284
	movq	%rax, %rdi	# _31,
# /usr/include/c++/11.3.0/ostream:206:       { return _M_insert(__n); }
	movq	%rax, %r12	# tmp383, _31
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/11.3.0/chrono:227: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	movabsq	$4835703278458516699, %rdx	#, tmp288
# /usr/include/c++/11.3.0/chrono:666: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	movq	%rbx, %rcx	# end_time_parallel, end_time_parallel
# /usr/include/c++/11.3.0/ostream:167:       { return _M_insert(__n); }
	movq	%r12, %rdi	# _31,
# /usr/include/c++/11.3.0/chrono:666: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	-248(%rbp), %rcx	# %sfp, end_time_parallel
# /usr/include/c++/11.3.0/chrono:227: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	movq	%rcx, %rax	# tmp285, tmp391
	sarq	$63, %rcx	#, tmp290
	imulq	%rdx	# tmp288
	sarq	$18, %rdx	#, tmp289
	subq	%rcx, %rdx	# tmp290, tmp289
	movq	%rdx, %rsi	# tmp289, tmp286
# /usr/include/c++/11.3.0/ostream:167:       { return _M_insert(__n); }
	call	_ZNSo9_M_insertIlEERSoT_@PLT	#
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	leaq	.LC7(%rip), %r12	#, tmp363
	movl	$2, %edx	#,
	movq	%rax, %rdi	# _32,
# /usr/include/c++/11.3.0/ostream:167:       { return _M_insert(__n); }
	movq	%rax, %r14	# tmp384, _32
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	movq	%r12, %rsi	# tmp363,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/11.3.0/ostream:113: 	return __pf(*this);
	movq	%r14, %rdi	# _32,
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0	#
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:56:     const auto start_time_sequential = std::chrono::steady_clock::now();
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT	#
# /usr/include/c++/11.3.0/bits/stl_vector.h:919:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movq	-80(%rbp), %rsi	# vec.D.151183._M_impl.D.150495._M_start, _47
# /usr/include/c++/11.3.0/bits/stl_vector.h:919:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movq	-72(%rbp), %rdx	# vec.D.151183._M_impl.D.150495._M_finish, tmp292
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:56:     const auto start_time_sequential = std::chrono::steady_clock::now();
	movq	%rax, %rbx	# tmp385, start_time_sequential
# /usr/include/c++/11.3.0/bits/stl_vector.h:919:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	subq	%rsi, %rdx	# _47, tmp292
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	sarq	%rdx	# tmp294
	je	.L522	#,
	leaq	-1(%rdx), %rax	#, tmp295
	cmpq	$6, %rax	#, tmp295
	jbe	.L523	#,
	movq	%rdx, %rcx	# tmp294, bnd.1166
	pxor	%xmm3, %xmm3	# vect_sum_66.1169
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	pxor	%xmm6, %xmm6	# tmp300
	movq	%rsi, %rax	# _47, ivtmp.1185
	shrq	$3, %rcx	#, bnd.1166
	pxor	%xmm4, %xmm4	# tmp309
	salq	$4, %rcx	#, tmp297
	addq	%rsi, %rcx	# _47, _43
	.p2align 4,,10
	.p2align 3
.L516:
	movdqu	(%rax), %xmm0	# MEM <const vector(8) short int> [(const value_type &)_148], MEM <const vector(8) short int> [(const value_type &)_148]
	movdqa	%xmm6, %xmm2	# tmp300, tmp301
	addq	$16, %rax	#, ivtmp.1185
	pcmpgtw	%xmm0, %xmm2	# MEM <const vector(8) short int> [(const value_type &)_148], tmp301
	movdqa	%xmm0, %xmm1	# MEM <const vector(8) short int> [(const value_type &)_148], tmp302
	punpcklwd	%xmm2, %xmm1	# tmp301, tmp302
	punpckhwd	%xmm2, %xmm0	# tmp301, tmp306
	movdqa	%xmm4, %xmm2	# tmp309, tmp310
	pcmpgtd	%xmm0, %xmm2	# tmp306, tmp310
	movdqa	%xmm0, %xmm5	# tmp306, tmp311
	punpckhdq	%xmm2, %xmm5	# tmp310, tmp311
	punpckldq	%xmm2, %xmm0	# tmp310, tmp316
	movdqa	%xmm4, %xmm2	# tmp309, tmp321
	pcmpgtd	%xmm1, %xmm2	# tmp302, tmp321
	paddq	%xmm5, %xmm0	# tmp311, tmp317
	movdqa	%xmm1, %xmm5	# tmp302, tmp322
	punpckhdq	%xmm2, %xmm5	# tmp321, tmp322
	punpckldq	%xmm2, %xmm1	# tmp321, tmp327
	paddq	%xmm5, %xmm1	# tmp322, tmp328
	paddq	%xmm1, %xmm0	# tmp328, tmp329
	paddq	%xmm0, %xmm3	# tmp329, vect_sum_66.1169
	cmpq	%rax, %rcx	# ivtmp.1185, _43
	jne	.L516	#,
	movdqa	%xmm3, %xmm0	# vect_sum_66.1169, tmp331
	movq	%rdx, %rax	# tmp294, niters_vector_mult_vf.1167
	psrldq	$8, %xmm0	#, tmp331
	andq	$-8, %rax	#, niters_vector_mult_vf.1167
	paddq	%xmm0, %xmm3	# tmp331, tmp332
	movq	%xmm3, -232(%rbp)	# tmp332, %sfp
	testb	$7, %dl	#, tmp294
	je	.L514	#,
.L515:
	movswq	(%rsi,%rax,2), %rdi	# *_65, *_65
	addq	%rdi, -232(%rbp)	# *_65, %sfp
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	leaq	1(%rax), %rdi	#, i
# /usr/include/c++/11.3.0/bits/stl_vector.h:1064: 	return *(this->_M_impl._M_start + __n);
	leaq	(%rax,%rax), %rcx	#, _66
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movq	-232(%rbp), %r10	# %sfp, stmp_sum_43.1176
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	cmpq	%rdx, %rdi	# tmp294, i
	jnb	.L514	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movswq	2(%rsi,%rcx), %rdi	# *_294, *_294
	addq	%rdi, %r10	# *_294, stmp_sum_43.1176
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	leaq	2(%rax), %rdi	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movq	%r10, -232(%rbp)	# stmp_sum_43.1176, %sfp
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	cmpq	%rdi, %rdx	# i, tmp294
	jbe	.L514	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movswq	4(%rsi,%rcx), %rdi	# *_146, *_146
	addq	%rdi, %r10	# *_146, stmp_sum_43.1176
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	leaq	3(%rax), %rdi	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movq	%r10, -232(%rbp)	# stmp_sum_43.1176, %sfp
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	cmpq	%rdi, %rdx	# i, tmp294
	jbe	.L514	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movswq	6(%rsi,%rcx), %rdi	# *_130, *_130
	addq	%rdi, %r10	# *_130, stmp_sum_43.1176
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	leaq	4(%rax), %rdi	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movq	%r10, -232(%rbp)	# stmp_sum_43.1176, %sfp
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	cmpq	%rdi, %rdx	# i, tmp294
	jbe	.L514	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movswq	8(%rsi,%rcx), %rdi	# *_122, *_122
	addq	%rdi, %r10	# *_122, stmp_sum_43.1176
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	leaq	5(%rax), %rdi	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movq	%r10, -232(%rbp)	# stmp_sum_43.1176, %sfp
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	cmpq	%rdi, %rdx	# i, tmp294
	jbe	.L514	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movswq	10(%rsi,%rcx), %rdi	# *_107, *_107
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	addq	$6, %rax	#, i
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	addq	%rdi, %r10	# *_107, stmp_sum_43.1176
	movq	%r10, -232(%rbp)	# stmp_sum_43.1176, %sfp
	movq	%r10, %rdi	# stmp_sum_43.1176, stmp_sum_43.1176
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	cmpq	%rax, %rdx	# i, tmp294
	jbe	.L514	#,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:15:         sum += vec[i];
	movswq	12(%rsi,%rcx), %rax	# *_287, *_287
	addq	%rax, %rdi	# *_287, stmp_sum_43.1176
	movq	%rdi, -232(%rbp)	# stmp_sum_43.1176, %sfp
.L514:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:58:     const auto end_time_sequential = std::chrono::steady_clock::now();
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT	#
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	movl	$16, %edx	#,
	leaq	.LC8(%rip), %rsi	#, tmp346
	movq	%r13, %rdi	# tmp362,
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:58:     const auto end_time_sequential = std::chrono::steady_clock::now();
	movq	%rax, %r14	# tmp386, end_time_sequential
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/11.3.0/ostream:206:       { return _M_insert(__n); }
	movq	-232(%rbp), %rsi	# %sfp,
	movq	%r13, %rdi	# tmp362,
	call	_ZNSo9_M_insertIyEERSoT_@PLT	#
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	movl	$21, %edx	#,
	leaq	.LC9(%rip), %rsi	#, tmp349
	movq	%rax, %rdi	# _51,
# /usr/include/c++/11.3.0/ostream:206:       { return _M_insert(__n); }
	movq	%rax, %r15	# tmp387, _51
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/11.3.0/chrono:227: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	movabsq	$4835703278458516699, %rdx	#, tmp353
# /usr/include/c++/11.3.0/chrono:666: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	movq	%r14, %rcx	# end_time_sequential, end_time_sequential
# /usr/include/c++/11.3.0/ostream:167:       { return _M_insert(__n); }
	movq	%r15, %rdi	# _51,
# /usr/include/c++/11.3.0/chrono:666: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%rbx, %rcx	# start_time_sequential, end_time_sequential
# /usr/include/c++/11.3.0/chrono:227: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	movq	%rcx, %rax	# tmp350, tmp392
	sarq	$63, %rcx	#, tmp355
	imulq	%rdx	# tmp353
	sarq	$18, %rdx	#, tmp354
	subq	%rcx, %rdx	# tmp355, tmp354
	movq	%rdx, %rsi	# tmp354, tmp351
# /usr/include/c++/11.3.0/ostream:167:       { return _M_insert(__n); }
	call	_ZNSo9_M_insertIlEERSoT_@PLT	#
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	movl	$2, %edx	#,
	movq	%r12, %rsi	# tmp363,
	movq	%rax, %rdi	# _52,
# /usr/include/c++/11.3.0/ostream:167:       { return _M_insert(__n); }
	movq	%rax, %rbx	# tmp388, _52
# /usr/include/c++/11.3.0/ostream:616: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# /usr/include/c++/11.3.0/ostream:113: 	return __pf(*this);
	movq	%rbx, %rdi	# _52,
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0	#
.LEHE46:
# /usr/include/c++/11.3.0/bits/stl_vector.h:680: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	-80(%rbp), %rdi	# vec.D.151183._M_impl.D.150495._M_start, _57
# /usr/include/c++/11.3.0/bits/stl_vector.h:353: 	if (__p)
	testq	%rdi, %rdi	# _57
	je	.L519	#,
# /usr/include/c++/11.3.0/bits/stl_vector.h:336: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	-64(%rbp), %rsi	# MEM[(struct _Vector_base *)&vec]._M_impl.D.150495._M_end_of_storage, tmp357
	subq	%rdi, %rsi	# _57, tmp357
# /usr/include/c++/11.3.0/ext/new_allocator.h:145: 	::operator delete(__p
	call	_ZdlPvm@PLT	#
.L519:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:64: }
	movq	-56(%rbp), %rax	# D.197384, tmp393
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp393
	jne	.L569	#,
	leaq	-40(%rbp), %rsp	#,
	xorl	%eax, %eax	#
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
.L522:
	.cfi_restore_state
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:13:     unsigned long long sum = 0;
	movq	$0, -232(%rbp)	#, %sfp
	jmp	.L514	#
.L523:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:14:     for (size_t i = lo; i < hi; ++i)
	xorl	%eax, %eax	# niters_vector_mult_vf.1167
	jmp	.L515	#
.L569:
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:64: }
	call	__stack_chk_fail@PLT	#
.L524:
# /usr/include/c++/11.3.0/bits/stl_vector.h:680: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	%rax, %rbx	# tmp389, tmp281
	jmp	.L513	#
.L528:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	movq	%rax, %rbx	# tmp376, tmp270
	jmp	.L499	#
.L526:
	movq	%rax, %rbx	# tmp380, tmp274
	jmp	.L505	#
.L527:
	movq	%rax, %rbx	# tmp378, tmp269
	jmp	.L501	#
.L525:
	movq	%rax, %rbx	# tmp382, tmp277
	jmp	.L509	#
	.section	.gcc_except_table
.LLSDA6167:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6167-.LLSDACSB6167
.LLSDACSB6167:
	.uleb128 .LEHB38-.LFB6167
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L524-.LFB6167
	.uleb128 0
	.uleb128 .LEHB39-.LFB6167
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L525-.LFB6167
	.uleb128 0
	.uleb128 .LEHB40-.LFB6167
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L526-.LFB6167
	.uleb128 0
	.uleb128 .LEHB41-.LFB6167
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L527-.LFB6167
	.uleb128 0
	.uleb128 .LEHB42-.LFB6167
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L528-.LFB6167
	.uleb128 0
	.uleb128 .LEHB43-.LFB6167
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L527-.LFB6167
	.uleb128 0
	.uleb128 .LEHB44-.LFB6167
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L526-.LFB6167
	.uleb128 0
	.uleb128 .LEHB45-.LFB6167
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L525-.LFB6167
	.uleb128 0
	.uleb128 .LEHB46-.LFB6167
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L524-.LFB6167
	.uleb128 0
.LLSDACSE6167:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6167
	.type	main.cold, @function
main.cold:
.LFSB6167:
.L499:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -56
	.cfi_offset 6, -16
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	movq	-88(%rbp), %rdi	# MEM[(struct __shared_count *)_98]._M_pi, _187
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	testq	%rdi, %rdi	# _187
	je	.L501	#,
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:705: 	  _M_pi->_M_release();
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv	#
.L501:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	movq	-104(%rbp), %rdi	# MEM[(struct __shared_count *)_110]._M_pi, _165
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	testq	%rdi, %rdi	# _165
	je	.L505	#,
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:705: 	  _M_pi->_M_release();
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv	#
.L505:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	movq	-120(%rbp), %rdi	# MEM[(struct __shared_count *)_101]._M_pi, _143
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	testq	%rdi, %rdi	# _143
	je	.L509	#,
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:705: 	  _M_pi->_M_release();
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv	#
.L509:
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	movq	-136(%rbp), %rdi	# MEM[(struct __shared_count *)&left_sum + 8B]._M_pi, _121
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:704: 	if (_M_pi != nullptr)
	testq	%rdi, %rdi	# _121
	je	.L513	#,
# /usr/include/c++/11.3.0/bits/shared_ptr_base.h:705: 	  _M_pi->_M_release();
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv	#
.L513:
# /usr/include/c++/11.3.0/bits/stl_vector.h:680: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	-80(%rbp), %rdi	# vec.D.151183._M_impl.D.150495._M_start, _62
# /usr/include/c++/11.3.0/bits/stl_vector.h:336: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	-64(%rbp), %rsi	# MEM[(struct _Vector_base *)&vec]._M_impl.D.150495._M_end_of_storage, _64
	subq	%rdi, %rsi	# _62, _64
# /usr/include/c++/11.3.0/bits/stl_vector.h:353: 	if (__p)
	testq	%rdi, %rdi	# _62
	je	.L520	#,
# /usr/include/c++/11.3.0/ext/new_allocator.h:145: 	::operator delete(__p
	call	_ZdlPvm@PLT	#
.L520:
	movq	%rbx, %rdi	# tmp281,
.LEHB47:
	call	_Unwind_Resume@PLT	#
.LEHE47:
	.cfi_endproc
.LFE6167:
	.section	.gcc_except_table
.LLSDAC6167:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6167-.LLSDACSBC6167
.LLSDACSBC6167:
	.uleb128 .LEHB47-.LCOLDB10
	.uleb128 .LEHE47-.LEHB47
	.uleb128 0
	.uleb128 0
.LLSDACSEC6167:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE10:
	.section	.text.startup
.LHOTE10:
	.section	.rodata._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.str1.1,"aMS",@progbits,1
.LC11:
	.string	"basic_string::_M_create"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:
.LFB7299:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r8, %r14	# tmp145, __len2
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12	# tmp142, __pos
	addq	%rdx, %rsi	# __len1, _94
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
# /usr/include/c++/11.3.0/bits/basic_string.tcc:306:       size_type __new_capacity = length() + __len2 - __len1;
	movq	%r8, %rbp	# __len2, tmp115
# /usr/include/c++/11.3.0/bits/basic_string.tcc:300:     basic_string<_CharT, _Traits, _Alloc>::
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# tmp141, this
# /usr/include/c++/11.3.0/bits/basic_string.tcc:306:       size_type __new_capacity = length() + __len2 - __len1;
	subq	%rdx, %rbp	# __len1, tmp115
# /usr/include/c++/11.3.0/bits/basic_string.h:211: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	leaq	16(%rbx), %r13	#, _27
# /usr/include/c++/11.3.0/bits/basic_string.tcc:300:     basic_string<_CharT, _Traits, _Alloc>::
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# /usr/include/c++/11.3.0/bits/basic_string.h:927:       { return _M_string_length; }
	movq	8(%rdi), %rax	# MEM[(const struct basic_string *)this_17(D)]._M_string_length, _31
	movq	%rsi, 24(%rsp)	# _94, %sfp
# /usr/include/c++/11.3.0/bits/basic_string.tcc:304:       const size_type __how_much = length() - __pos - __len1;
	movq	%rax, %rdi	# _31, __how_much
# /usr/include/c++/11.3.0/bits/basic_string.tcc:306:       size_type __new_capacity = length() + __len2 - __len1;
	addq	%rax, %rbp	# _31, __new_capacity
# /usr/include/c++/11.3.0/bits/basic_string.tcc:304:       const size_type __how_much = length() - __pos - __len1;
	subq	%rsi, %rdi	# _94, __how_much
	movq	%rdi, 8(%rsp)	# __how_much, %sfp
# /usr/include/c++/11.3.0/bits/basic_string.h:978: 	return _M_is_local() ? size_type(_S_local_capacity)
	cmpq	(%rbx), %r13	# MEM[(const struct basic_string *)this_17(D)]._M_dataplus._M_p, _27
	je	.L583	#,
	movq	16(%rbx), %rax	# MEM[(const struct basic_string *)this_17(D)].D.55866._M_allocated_capacity, iftmp.48_21
.L571:
# /usr/include/c++/11.3.0/bits/basic_string.tcc:137:       if (__capacity > max_size())
	testq	%rbp, %rbp	# __new_capacity
	js	.L597	#,
# /usr/include/c++/11.3.0/bits/basic_string.tcc:143:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmpq	%rax, %rbp	# iftmp.48_21, __new_capacity
	jbe	.L573	#,
# /usr/include/c++/11.3.0/bits/basic_string.tcc:143:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	addq	%rax, %rax	# _53
# /usr/include/c++/11.3.0/bits/basic_string.tcc:143:       if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
	cmpq	%rax, %rbp	# _53, __new_capacity
	jnb	.L573	#,
# /usr/include/c++/11.3.0/bits/basic_string.tcc:147: 	  if (__capacity > max_size())
	testq	%rax, %rax	# _53
	js	.L574	#,
	movq	%rax, %rbp	# _53, __new_capacity
	.p2align 4,,10
	.p2align 3
.L573:
# /usr/include/c++/11.3.0/ext/new_allocator.h:111: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	movq	%rbp, %rdi	# __new_capacity, _56
	addq	$1, %rdi	#, _56
	js	.L574	#,
	movq	%rcx, 16(%rsp)	# __s, %sfp
# /usr/include/c++/11.3.0/ext/new_allocator.h:127: 	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
	call	_Znwm@PLT	#
# /usr/include/c++/11.3.0/bits/basic_string.tcc:309:       if (__pos)
	testq	%r12, %r12	# __pos
	movq	16(%rsp), %rcx	# %sfp, __s
# /usr/include/c++/11.3.0/ext/new_allocator.h:127: 	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
	movq	%rax, %r15	# tmp146, _64
# /usr/include/c++/11.3.0/bits/basic_string.tcc:309:       if (__pos)
	je	.L576	#,
# /usr/include/c++/11.3.0/bits/basic_string.h:195:       { return _M_dataplus._M_p; }
	movq	(%rbx), %rsi	# MEM[(const struct basic_string *)this_17(D)]._M_dataplus._M_p, _33
# /usr/include/c++/11.3.0/bits/basic_string.h:356: 	if (__n == 1)
	cmpq	$1, %r12	#, __pos
	je	.L598	#,
# /usr/include/c++/11.3.0/bits/char_traits.h:437: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	%r12, %rdx	# __pos,
	movq	%rax, %rdi	# _64,
	movq	%rcx, 16(%rsp)	# __s, %sfp
	call	memcpy@PLT	#
	movq	16(%rsp), %rcx	# %sfp, __s
.L576:
# /usr/include/c++/11.3.0/bits/basic_string.tcc:311:       if (__s && __len2)
	testq	%rcx, %rcx	# __s
	je	.L578	#,
	testq	%r14, %r14	# __len2
	je	.L578	#,
# /usr/include/c++/11.3.0/bits/basic_string.tcc:312: 	this->_S_copy(__r + __pos, __s, __len2);
	leaq	(%r15,%r12), %rdi	#, _7
# /usr/include/c++/11.3.0/bits/basic_string.h:356: 	if (__n == 1)
	cmpq	$1, %r14	#, __len2
	je	.L599	#,
# /usr/include/c++/11.3.0/bits/char_traits.h:437: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	%r14, %rdx	# __len2,
	movq	%rcx, %rsi	# __s,
	call	memcpy@PLT	#
.L578:
# /usr/include/c++/11.3.0/bits/basic_string.tcc:313:       if (__how_much)
	movq	8(%rsp), %rax	# %sfp, __how_much
# /usr/include/c++/11.3.0/bits/basic_string.h:195:       { return _M_dataplus._M_p; }
	movq	(%rbx), %r9	# MEM[(const struct basic_string *)this_17(D)]._M_dataplus._M_p, pretmp_93
# /usr/include/c++/11.3.0/bits/basic_string.tcc:313:       if (__how_much)
	testq	%rax, %rax	# __how_much
	je	.L580	#,
.L601:
# /usr/include/c++/11.3.0/bits/basic_string.tcc:315: 		      _M_data() + __pos + __len1, __how_much);
	movq	24(%rsp), %rsi	# %sfp, _94
# /usr/include/c++/11.3.0/bits/basic_string.tcc:314: 	this->_S_copy(__r + __pos + __len2,
	leaq	(%r12,%r14), %r8	#, tmp133
# /usr/include/c++/11.3.0/bits/basic_string.tcc:314: 	this->_S_copy(__r + __pos + __len2,
	leaq	(%r15,%r8), %rdi	#, _11
# /usr/include/c++/11.3.0/bits/basic_string.tcc:315: 		      _M_data() + __pos + __len1, __how_much);
	addq	%r9, %rsi	# pretmp_93, _94
# /usr/include/c++/11.3.0/bits/basic_string.h:356: 	if (__n == 1)
	cmpq	$1, %rax	#, __how_much
	je	.L600	#,
	movq	%rax, %rdx	# __how_much,
	movq	%r9, 16(%rsp)	# pretmp_93, %sfp
# /usr/include/c++/11.3.0/bits/char_traits.h:437: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	call	memcpy@PLT	#
	movq	16(%rsp), %r9	# %sfp, pretmp_93
.L580:
# /usr/include/c++/11.3.0/bits/basic_string.h:239: 	if (!_M_is_local())
	cmpq	%r9, %r13	# pretmp_93, _27
	je	.L582	#,
.L602:
# /usr/include/c++/11.3.0/bits/basic_string.h:245:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	16(%rbx), %rax	# this_17(D)->D.55866._M_allocated_capacity, tmp155
# /usr/include/c++/11.3.0/ext/new_allocator.h:145: 	::operator delete(__p
	movq	%r9, %rdi	# pretmp_93,
# /usr/include/c++/11.3.0/bits/basic_string.h:245:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	leaq	1(%rax), %rsi	#, tmp139
# /usr/include/c++/11.3.0/ext/new_allocator.h:145: 	::operator delete(__p
	call	_ZdlPvm@PLT	#
.L582:
# /usr/include/c++/11.3.0/bits/basic_string.h:187:       { _M_dataplus._M_p = __p; }
	movq	%r15, (%rbx)	# _64, this_17(D)->_M_dataplus._M_p
# /usr/include/c++/11.3.0/bits/basic_string.h:219:       { _M_allocated_capacity = __capacity; }
	movq	%rbp, 16(%rbx)	# __new_capacity, this_17(D)->D.55866._M_allocated_capacity
# /usr/include/c++/11.3.0/bits/basic_string.tcc:320:     }
	addq	$40, %rsp	#,
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
.L574:
	.cfi_restore_state
# /usr/include/c++/11.3.0/ext/new_allocator.h:117: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv@PLT	#
	.p2align 4,,10
	.p2align 3
.L583:
# /usr/include/c++/11.3.0/bits/basic_string.h:978: 	return _M_is_local() ? size_type(_S_local_capacity)
	movl	$15, %eax	#, iftmp.48_21
	jmp	.L571	#
	.p2align 4,,10
	.p2align 3
.L598:
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movzbl	(%rsi), %eax	# MEM[(const char_type &)_33], _32
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movb	%al, (%r15)	# _32, MEM[(char_type &)_64]
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	jmp	.L576	#
	.p2align 4,,10
	.p2align 3
.L599:
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movzbl	(%rcx), %eax	# MEM[(const char_type &)__s_28(D)], MEM[(const char_type &)__s_28(D)]
# /usr/include/c++/11.3.0/bits/basic_string.h:195:       { return _M_dataplus._M_p; }
	movq	(%rbx), %r9	# MEM[(const struct basic_string *)this_17(D)]._M_dataplus._M_p, pretmp_93
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movb	%al, (%rdi)	# MEM[(const char_type &)__s_28(D)], MEM[(char_type &)_7]
# /usr/include/c++/11.3.0/bits/basic_string.tcc:313:       if (__how_much)
	movq	8(%rsp), %rax	# %sfp, __how_much
	testq	%rax, %rax	# __how_much
	je	.L580	#,
	jmp	.L601	#
	.p2align 4,,10
	.p2align 3
.L600:
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movzbl	(%rsi), %eax	# MEM[(const char_type &)_9], _35
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movb	%al, (%rdi)	# _35, MEM[(char_type &)_11]
# /usr/include/c++/11.3.0/bits/basic_string.h:239: 	if (!_M_is_local())
	cmpq	%r9, %r13	# pretmp_93, _27
	jne	.L602	#,
	jmp	.L582	#
.L597:
# /usr/include/c++/11.3.0/bits/basic_string.tcc:138: 	std::__throw_length_error(__N("basic_string::_M_create"));
	leaq	.LC11(%rip), %rdi	#, tmp116
	call	_ZSt20__throw_length_errorPKc@PLT	#
	.cfi_endproc
.LFE7299:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.section	.rodata._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.str1.1,"aMS",@progbits,1
.LC12:
	.string	"basic_string::_M_replace"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:
.LFB7300:
	.cfi_startproc
# /usr/include/c++/11.3.0/bits/basic_string.h:330: 	if (this->max_size() - (this->size() - __n1) < __n2)
	movabsq	$9223372036854775807, %rax	#, tmp136
# /usr/include/c++/11.3.0/bits/basic_string.tcc:448:     basic_string<_CharT, _Traits, _Alloc>::
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r13	# tmp173, __len1
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
# /usr/include/c++/11.3.0/bits/basic_string.h:330: 	if (this->max_size() - (this->size() - __n1) < __n2)
	addq	%r13, %rax	# __len1, tmp135
# /usr/include/c++/11.3.0/bits/basic_string.tcc:448:     basic_string<_CharT, _Traits, _Alloc>::
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
# /usr/include/c++/11.3.0/bits/basic_string.h:921:       { return _M_string_length; }
	movq	8(%rdi), %rdx	# MEM[(const struct basic_string *)this_28(D)]._M_string_length, _43
# /usr/include/c++/11.3.0/bits/basic_string.h:330: 	if (this->max_size() - (this->size() - __n1) < __n2)
	subq	%rdx, %rax	# _43, tmp137
# /usr/include/c++/11.3.0/bits/basic_string.h:330: 	if (this->max_size() - (this->size() - __n1) < __n2)
	cmpq	%rax, %r8	# tmp137, __len2
	ja	.L647	#,
	movq	%r8, %rbp	# __len2, _119
# /usr/include/c++/11.3.0/bits/basic_string.h:195:       { return _M_dataplus._M_p; }
	movq	(%rdi), %rax	# MEM[(const struct basic_string *)this_28(D)]._M_dataplus._M_p, _40
	movq	%rcx, %r15	# tmp174, __s
# /usr/include/c++/11.3.0/bits/basic_string.h:211: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	leaq	16(%rdi), %rcx	#, tmp139
	subq	%r13, %rbp	# __len1, _119
	movq	%rdi, %r12	# tmp171, this
	movq	%r8, %r14	# tmp175, __len2
# /usr/include/c++/11.3.0/bits/basic_string.tcc:455:       const size_type __new_size = __old_size + __len2 - __len1;
	leaq	(%rdx,%rbp), %rbx	#, __new_size
# /usr/include/c++/11.3.0/bits/basic_string.h:978: 	return _M_is_local() ? size_type(_S_local_capacity)
	cmpq	%rcx, %rax	# tmp139, _40
	je	.L626	#,
	movq	16(%rdi), %rcx	# MEM[(const struct basic_string *)this_28(D)].D.55866._M_allocated_capacity, iftmp.48_31
.L605:
# /usr/include/c++/11.3.0/bits/basic_string.tcc:457:       if (__new_size <= this->capacity())
	cmpq	%rbx, %rcx	# __new_size, iftmp.48_31
	jb	.L606	#,
# /usr/include/c++/11.3.0/bits/basic_string.tcc:459: 	  pointer __p = this->_M_data() + __pos;
	leaq	(%rax,%rsi), %r8	#, __p
# /usr/include/c++/11.3.0/bits/basic_string.tcc:461: 	  const size_type __how_much = __old_size - __pos - __len1;
	movq	%rdx, %r9	# _43, __how_much
	addq	%r13, %rsi	# __len1, tmp140
	subq	%rsi, %r9	# tmp140, __how_much
# /usr/include/c++/11.3.0/bits/basic_string.h:348: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	cmpq	%r15, %rax	# __s, _40
	jbe	.L648	#,
.L607:
# /usr/include/c++/11.3.0/bits/basic_string.tcc:464: 	      if (__how_much && __len1 != __len2)
	testq	%r9, %r9	# __how_much
	je	.L610	#,
	cmpq	%r14, %r13	# __len2, __len1
	je	.L610	#,
# /usr/include/c++/11.3.0/bits/basic_string.tcc:465: 		this->_S_move(__p + __len2, __p + __len1, __how_much);
	leaq	(%r8,%r13), %rsi	#, _6
# /usr/include/c++/11.3.0/bits/basic_string.tcc:465: 		this->_S_move(__p + __len2, __p + __len1, __how_much);
	leaq	(%r8,%r14), %rdi	#, _7
# /usr/include/c++/11.3.0/bits/basic_string.h:365: 	if (__n == 1)
	cmpq	$1, %r9	#, __how_much
	je	.L649	#,
# /usr/include/c++/11.3.0/bits/char_traits.h:425: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	movq	%r9, %rdx	# __how_much,
	movq	%r8, 8(%rsp)	# __p, %sfp
	call	memmove@PLT	#
	movq	8(%rsp), %r8	# %sfp, __p
.L610:
# /usr/include/c++/11.3.0/bits/basic_string.tcc:466: 	      if (__len2)
	testq	%r14, %r14	# __len2
	je	.L613	#,
# /usr/include/c++/11.3.0/bits/basic_string.h:356: 	if (__n == 1)
	cmpq	$1, %r14	#, __len2
	je	.L646	#,
# /usr/include/c++/11.3.0/bits/char_traits.h:437: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	%r14, %rdx	# __len2,
	movq	%r15, %rsi	# __s,
	movq	%r8, %rdi	# __p,
	call	memcpy@PLT	#
.L613:
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movq	(%r12), %rax	# MEM[(const struct basic_string *)this_28(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)this_28(D)]._M_dataplus._M_p
# /usr/include/c++/11.3.0/bits/basic_string.h:191:       { _M_string_length = __length; }
	movq	%rbx, 8(%r12)	# __new_size, this_28(D)->_M_string_length
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movb	$0, (%rax,%rbx)	#, MEM[(char_type &)_59]
# /usr/include/c++/11.3.0/bits/basic_string.tcc:502:     }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rax	# this,
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
.L648:
	.cfi_restore_state
# /usr/include/c++/11.3.0/bits/basic_string.h:348: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	addq	%rdx, %rax	# _43, tmp141
# /usr/include/c++/11.3.0/bits/basic_string.h:348: 		|| less<const _CharT*>()(_M_data() + this->size(), __s));
	cmpq	%rax, %r15	# tmp141, __s
	ja	.L607	#,
# /usr/include/c++/11.3.0/bits/basic_string.tcc:472: 	      if (__len2 && __len2 <= __len1)
	leaq	-1(%r14), %rax	#, tmp142
	cmpq	%rax, %r13	# tmp142, __len1
	jbe	.L609	#,
# /usr/include/c++/11.3.0/bits/basic_string.h:365: 	if (__n == 1)
	cmpq	$1, %r14	#, __len2
	je	.L650	#,
# /usr/include/c++/11.3.0/bits/char_traits.h:425: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	movq	%r8, %rdi	# __p,
	movq	%r14, %rdx	# __len2,
	movq	%r15, %rsi	# __s,
	movq	%r9, 8(%rsp)	# __how_much, %sfp
	call	memmove@PLT	#
	movq	8(%rsp), %r9	# %sfp, __how_much
	movq	%rax, %r8	#, __p
.L609:
# /usr/include/c++/11.3.0/bits/basic_string.tcc:474: 	      if (__how_much && __len1 != __len2)
	testq	%r9, %r9	# __how_much
	je	.L616	#,
	cmpq	%r14, %r13	# __len2, __len1
	je	.L616	#,
# /usr/include/c++/11.3.0/bits/basic_string.tcc:475: 		this->_S_move(__p + __len2, __p + __len1, __how_much);
	leaq	(%r8,%r13), %rsi	#, _11
# /usr/include/c++/11.3.0/bits/basic_string.tcc:475: 		this->_S_move(__p + __len2, __p + __len1, __how_much);
	leaq	(%r8,%r14), %rdi	#, _12
# /usr/include/c++/11.3.0/bits/basic_string.h:365: 	if (__n == 1)
	cmpq	$1, %r9	#, __how_much
	je	.L651	#,
# /usr/include/c++/11.3.0/bits/char_traits.h:425: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	movq	%r9, %rdx	# __how_much,
	movq	%r8, 8(%rsp)	# __p, %sfp
	call	memmove@PLT	#
	movq	8(%rsp), %r8	# %sfp, __p
.L616:
# /usr/include/c++/11.3.0/bits/basic_string.tcc:476: 	      if (__len2 > __len1)
	cmpq	%r14, %r13	# __len2, __len1
	jnb	.L613	#,
# /usr/include/c++/11.3.0/bits/basic_string.tcc:478: 		  if (__s + __len2 <= __p + __len1)
	addq	%r8, %r13	# __p, _14
# /usr/include/c++/11.3.0/bits/basic_string.tcc:478: 		  if (__s + __len2 <= __p + __len1)
	leaq	(%r15,%r14), %rax	#, tmp156
# /usr/include/c++/11.3.0/bits/basic_string.tcc:478: 		  if (__s + __len2 <= __p + __len1)
	cmpq	%rax, %r13	# tmp156, _14
	jnb	.L652	#,
# /usr/include/c++/11.3.0/bits/basic_string.tcc:480: 		  else if (__s >= __p + __len1)
	cmpq	%r15, %r13	# __s, _14
	ja	.L621	#,
# /usr/include/c++/11.3.0/bits/basic_string.tcc:485: 		      this->_S_copy(__p, __p + __poff, __len2);
	leaq	(%r15,%rbp), %rsi	#, _18
# /usr/include/c++/11.3.0/bits/basic_string.h:356: 	if (__n == 1)
	cmpq	$1, %r14	#, __len2
	je	.L653	#,
# /usr/include/c++/11.3.0/bits/char_traits.h:437: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	movq	%r14, %rdx	# __len2,
	movq	%r8, %rdi	# __p,
	call	memcpy@PLT	#
# /usr/include/c++/11.3.0/bits/char_traits.h:437: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L613	#
	.p2align 4,,10
	.p2align 3
.L606:
# /usr/include/c++/11.3.0/bits/basic_string.tcc:498: 	this->_M_mutate(__pos, __len1, __s, __len2);
	movq	%r14, %r8	# __len2,
	movq	%r15, %rcx	# __s,
	movq	%r13, %rdx	# __len1,
	movq	%r12, %rdi	# this,
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm	#
	jmp	.L613	#
	.p2align 4,,10
	.p2align 3
.L646:
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movzbl	(%r15), %eax	# MEM[(const char_type &)__s_35(D)], _54
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movb	%al, (%r8)	# _54, MEM[(char_type &)__p_38]
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	jmp	.L613	#
	.p2align 4,,10
	.p2align 3
.L649:
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movzbl	(%rsi), %eax	# MEM[(const char_type &)_6], _50
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movb	%al, (%rdi)	# _50, MEM[(char_type &)_7]
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	jmp	.L610	#
	.p2align 4,,10
	.p2align 3
.L626:
# /usr/include/c++/11.3.0/bits/basic_string.h:978: 	return _M_is_local() ? size_type(_S_local_capacity)
	movl	$15, %ecx	#, iftmp.48_31
	jmp	.L605	#
	.p2align 4,,10
	.p2align 3
.L652:
# /usr/include/c++/11.3.0/bits/basic_string.h:365: 	if (__n == 1)
	cmpq	$1, %r14	#, __len2
	je	.L646	#,
# /usr/include/c++/11.3.0/bits/char_traits.h:425: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	movq	%r14, %rdx	# __len2,
	movq	%r15, %rsi	# __s,
	movq	%r8, %rdi	# __p,
	call	memmove@PLT	#
# /usr/include/c++/11.3.0/bits/char_traits.h:425: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	jmp	.L613	#
	.p2align 4,,10
	.p2align 3
.L651:
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movzbl	(%rsi), %eax	# MEM[(const char_type &)_11], _53
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movb	%al, (%rdi)	# _53, MEM[(char_type &)_12]
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	jmp	.L616	#
	.p2align 4,,10
	.p2align 3
.L650:
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movzbl	(%r15), %eax	# MEM[(const char_type &)__s_35(D)], _52
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movb	%al, (%r8)	# _52, MEM[(char_type &)__p_38]
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	jmp	.L609	#
	.p2align 4,,10
	.p2align 3
.L621:
# /usr/include/c++/11.3.0/bits/basic_string.tcc:489: 		      const size_type __nleft = (__p + __len1) - __s;
	subq	%r15, %r13	# __s, __nleft
# /usr/include/c++/11.3.0/bits/basic_string.h:365: 	if (__n == 1)
	cmpq	$1, %r13	#, __nleft
	je	.L654	#,
# /usr/include/c++/11.3.0/bits/char_traits.h:419: 	if (__n == 0)
	testq	%r13, %r13	# __nleft
	je	.L624	#,
# /usr/include/c++/11.3.0/bits/char_traits.h:425: 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
	movq	%r8, %rdi	# __p,
	movq	%r13, %rdx	# __nleft,
	movq	%r15, %rsi	# __s,
	call	memmove@PLT	#
	movq	%rax, %r8	#, __p
.L624:
# /usr/include/c++/11.3.0/bits/basic_string.tcc:491: 		      this->_S_copy(__p + __nleft, __p + __len2,
	movq	%r14, %rdx	# __len2, _20
# /usr/include/c++/11.3.0/bits/basic_string.tcc:491: 		      this->_S_copy(__p + __nleft, __p + __len2,
	leaq	(%r8,%r14), %rsi	#, _21
# /usr/include/c++/11.3.0/bits/basic_string.tcc:491: 		      this->_S_copy(__p + __nleft, __p + __len2,
	leaq	(%r8,%r13), %rdi	#, _22
	subq	%r13, %rdx	# __nleft, _20
# /usr/include/c++/11.3.0/bits/basic_string.h:356: 	if (__n == 1)
	cmpq	$1, %rdx	#, _20
	je	.L655	#,
# /usr/include/c++/11.3.0/bits/char_traits.h:431: 	if (__n == 0)
	testq	%rdx, %rdx	# _20
	je	.L613	#,
# /usr/include/c++/11.3.0/bits/char_traits.h:437: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	call	memcpy@PLT	#
# /usr/include/c++/11.3.0/bits/char_traits.h:437: 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
	jmp	.L613	#
.L654:
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movzbl	(%r15), %eax	# MEM[(const char_type &)__s_35(D)], _57
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movb	%al, (%r8)	# _57, MEM[(char_type &)__p_38]
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	jmp	.L624	#
.L655:
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movzbl	(%rsi), %eax	# MEM[(const char_type &)_21], _56
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movb	%al, (%rdi)	# _56, MEM[(char_type &)_22]
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	jmp	.L613	#
.L653:
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movzbl	(%rsi), %eax	# MEM[(const char_type &)_18], _55
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movb	%al, (%r8)	# _55, MEM[(char_type &)__p_38]
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	jmp	.L613	#
.L647:
# /usr/include/c++/11.3.0/bits/basic_string.h:331: 	  __throw_length_error(__N(__s));
	leaq	.LC12(%rip), %rdi	#, tmp138
	call	_ZSt20__throw_length_errorPKc@PLT	#
	.cfi_endproc
.LFE7300:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	.section	.rodata._ZNSt13__future_base13_State_baseV216_M_break_promiseESt10unique_ptrINS_12_Result_baseENS2_8_DeleterEE.str1.1,"aMS",@progbits,1
.LC13:
	.string	"std::future_error: "
	.section	.text._ZNSt13__future_base13_State_baseV216_M_break_promiseESt10unique_ptrINS_12_Result_baseENS2_8_DeleterEE,"axG",@progbits,_ZNSt13__future_base13_State_baseV216_M_break_promiseESt10unique_ptrINS_12_Result_baseENS2_8_DeleterEE,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt13__future_base13_State_baseV216_M_break_promiseESt10unique_ptrINS_12_Result_baseENS2_8_DeleterEE
	.type	_ZNSt13__future_base13_State_baseV216_M_break_promiseESt10unique_ptrINS_12_Result_baseENS2_8_DeleterEE, @function
_ZNSt13__future_base13_State_baseV216_M_break_promiseESt10unique_ptrINS_12_Result_baseENS2_8_DeleterEE:
.LFB4630:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4630
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	addq	$-128, %rsp	#,
	.cfi_def_cfa_offset 176
# /usr/include/c++/11.3.0/future:443:       _M_break_promise(_Ptr_type __res)
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp170
	movq	%rax, 120(%rsp)	# tmp170, D.197495
	xorl	%eax, %eax	# tmp170
# /usr/include/c++/11.3.0/future:445: 	if (static_cast<bool>(__res))
	cmpq	$0, (%rsi)	#, MEM[(struct _Result_base * const &)__res_3(D)]
	je	.L656	#,
	movq	%rdi, %rbx	# tmp163, this
	movq	%rsi, %rbp	# tmp164, __res
# /usr/include/c++/11.3.0/system_error:240:     { return category().message(value()); }
	leaq	48(%rsp), %r13	#, tmp119
# /usr/include/c++/11.3.0/future:84:   { return error_code(static_cast<int>(__errc), future_category()); }
	call	_ZSt15future_categoryv@PLT	#
# /usr/include/c++/11.3.0/system_error:240:     { return category().message(value()); }
	movl	$4, %edx	#,
	movq	%r13, %rdi	# tmp119,
# /usr/include/c++/11.3.0/future:84:   { return error_code(static_cast<int>(__errc), future_category()); }
	movq	%rax, %r12	# tmp165, _20
# /usr/include/c++/11.3.0/system_error:240:     { return category().message(value()); }
	movq	(%rax), %rax	# *_20._vptr.error_category, *_20._vptr.error_category
# /usr/include/c++/11.3.0/system_error:240:     { return category().message(value()); }
	movq	%r12, %rsi	# _20,
.LEHB48:
	call	*32(%rax)	# MEM[(int (*) () *)_47 + 32B]
.LEHE48:
# /usr/include/c++/11.3.0/bits/basic_string.h:1960: 	return _M_replace(_M_check(__pos, "basic_string::replace"),
	movl	$19, %r8d	#,
	xorl	%edx, %edx	#
	xorl	%esi, %esi	#
	leaq	.LC13(%rip), %rcx	#, tmp123
	movq	%r13, %rdi	# tmp119,
.LEHB49:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm	#
.LEHE49:
# /usr/include/c++/11.3.0/bits/basic_string.h:168: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	96(%rsp), %r14	#, tmp162
# /usr/include/c++/11.3.0/bits/basic_string.h:211: 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
	leaq	16(%rax), %rdx	#, _66
# /usr/include/c++/11.3.0/bits/basic_string.h:168: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%r14, 80(%rsp)	# tmp162, MEM[(struct _Alloc_hider *)&D.197457]._M_p
# /usr/include/c++/11.3.0/bits/basic_string.h:195:       { return _M_dataplus._M_p; }
	movq	(%rax), %rcx	# MEM[(const struct basic_string *)_75]._M_dataplus._M_p, _65
# /usr/include/c++/11.3.0/bits/basic_string.h:568: 	if (__str._M_is_local())
	cmpq	%rdx, %rcx	# _66, _65
	je	.L679	#,
# /usr/include/c++/11.3.0/bits/basic_string.h:187:       { _M_dataplus._M_p = __p; }
	movq	%rcx, 80(%rsp)	# _65, D.197457._M_dataplus._M_p
# /usr/include/c++/11.3.0/bits/basic_string.h:576: 	    _M_capacity(__str._M_allocated_capacity);
	movq	16(%rax), %rcx	# *_75.D.55866._M_allocated_capacity, _68
# /usr/include/c++/11.3.0/bits/basic_string.h:219:       { _M_allocated_capacity = __capacity; }
	movq	%rcx, 96(%rsp)	# _68, D.197457.D.55866._M_allocated_capacity
.L660:
# /usr/include/c++/11.3.0/bits/basic_string.h:927:       { return _M_string_length; }
	movq	8(%rax), %rcx	# MEM[(const struct basic_string *)_75]._M_string_length, _69
# /usr/include/c++/11.3.0/bits/char_traits.h:357:       { __c1 = __c2; }
	movb	$0, 16(%rax)	#, MEM[(char_type &)_75 + 16]
# /usr/include/c++/11.3.0/future:114:     : logic_error("std::future_error: " + __ec.message()), _M_code(__ec)
	leaq	16(%rsp), %r13	#, tmp161
	leaq	80(%rsp), %rsi	#, tmp126
	movq	%r13, %rdi	# tmp161,
# /usr/include/c++/11.3.0/bits/basic_string.h:191:       { _M_string_length = __length; }
	movq	%rcx, 88(%rsp)	# _69, D.197457._M_string_length
# /usr/include/c++/11.3.0/bits/basic_string.h:187:       { _M_dataplus._M_p = __p; }
	movq	%rdx, (%rax)	# _66, *_75._M_dataplus._M_p
# /usr/include/c++/11.3.0/bits/basic_string.h:191:       { _M_string_length = __length; }
	movq	$0, 8(%rax)	#, *_75._M_string_length
.LEHB50:
# /usr/include/c++/11.3.0/future:114:     : logic_error("std::future_error: " + __ec.message()), _M_code(__ec)
	call	_ZNSt11logic_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT	#
.LEHE50:
# /usr/include/c++/11.3.0/bits/basic_string.h:195:       { return _M_dataplus._M_p; }
	movq	80(%rsp), %rdi	# D.197457._M_dataplus._M_p, _50
# /usr/include/c++/11.3.0/bits/basic_string.h:239: 	if (!_M_is_local())
	cmpq	%r14, %rdi	# tmp162, _50
	je	.L661	#,
# /usr/include/c++/11.3.0/bits/basic_string.h:245:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	96(%rsp), %rax	# D.197457.D.55866._M_allocated_capacity, tmp175
	leaq	1(%rax), %rsi	#, tmp130
# /usr/include/c++/11.3.0/ext/new_allocator.h:145: 	::operator delete(__p
	call	_ZdlPvm@PLT	#
.L661:
# /usr/include/c++/11.3.0/bits/basic_string.h:195:       { return _M_dataplus._M_p; }
	movq	48(%rsp), %rdi	# D.197456._M_dataplus._M_p, _53
# /usr/include/c++/11.3.0/bits/basic_string.h:239: 	if (!_M_is_local())
	leaq	64(%rsp), %rax	#, tmp133
	cmpq	%rax, %rdi	# tmp133, _53
	je	.L662	#,
# /usr/include/c++/11.3.0/bits/basic_string.h:245:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	64(%rsp), %rax	# D.197456.D.55866._M_allocated_capacity, tmp176
	leaq	1(%rax), %rsi	#, tmp134
# /usr/include/c++/11.3.0/ext/new_allocator.h:145: 	::operator delete(__p
	call	_ZdlPvm@PLT	#
.L662:
# /usr/include/c++/11.3.0/future:114:     : logic_error("std::future_error: " + __ec.message()), _M_code(__ec)
	leaq	16+_ZTVSt12future_error(%rip), %r14	#, tmp136
# /usr/include/c++/11.3.0/bits/exception_ptr.h:243:       void* __e = __cxxabiv1::__cxa_allocate_exception(sizeof(_Ex));
	movl	$32, %edi	#,
# /usr/include/c++/11.3.0/future:114:     : logic_error("std::future_error: " + __ec.message()), _M_code(__ec)
	movq	%r12, 40(%rsp)	# _20, MEM <const struct error_category *> [(struct error_code *)&D.107199 + 24B]
# /usr/include/c++/11.3.0/future:114:     : logic_error("std::future_error: " + __ec.message()), _M_code(__ec)
	movq	%r14, 16(%rsp)	# tmp136, D.107199.D.99185.D.64522._vptr.exception
# /usr/include/c++/11.3.0/future:114:     : logic_error("std::future_error: " + __ec.message()), _M_code(__ec)
	movl	$4, 32(%rsp)	#, MEM <int> [(struct error_code *)&D.107199 + 16B]
# /usr/include/c++/11.3.0/bits/exception_ptr.h:243:       void* __e = __cxxabiv1::__cxa_allocate_exception(sizeof(_Ex));
	call	__cxa_allocate_exception@PLT	#
# /usr/include/c++/11.3.0/bits/exception_ptr.h:244:       (void) __cxxabiv1::__cxa_init_primary_exception(
	leaq	_ZNSt15__exception_ptr12__dest_thunkISt12future_errorEEvPv(%rip), %rdx	#, tmp137
	leaq	_ZTISt12future_error(%rip), %rsi	#, tmp138
# /usr/include/c++/11.3.0/bits/exception_ptr.h:243:       void* __e = __cxxabiv1::__cxa_allocate_exception(sizeof(_Ex));
	movq	%rax, %r12	# tmp167, __e
# /usr/include/c++/11.3.0/bits/exception_ptr.h:244:       (void) __cxxabiv1::__cxa_init_primary_exception(
	movq	%rax, %rdi	# __e,
	call	__cxa_init_primary_exception@PLT	#
# /usr/include/c++/11.3.0/future:95:   class future_error : public logic_error
	movq	%r13, %rsi	# tmp161,
	movq	%r12, %rdi	# __e,
	call	_ZNSt11logic_errorC2ERKS_@PLT	#
	movq	%r14, (%r12)	# tmp136, MEM[(struct future_error *)__e_42].D.99185.D.64522._vptr.exception
# /usr/include/c++/11.3.0/bits/exception_ptr.h:250:           return exception_ptr(__e);
	movq	%rsp, %r14	#, tmp142
	movq	%r12, %rsi	# __e,
# /usr/include/c++/11.3.0/future:95:   class future_error : public logic_error
	movdqa	32(%rsp), %xmm0	# MEM[(const struct future_error &)&D.107199]._M_code, tmp177
# /usr/include/c++/11.3.0/bits/exception_ptr.h:250:           return exception_ptr(__e);
	movq	%r14, %rdi	# tmp142,
# /usr/include/c++/11.3.0/future:95:   class future_error : public logic_error
	movups	%xmm0, 16(%r12)	# tmp177, MEM[(struct future_error *)__e_42]._M_code
# /usr/include/c++/11.3.0/bits/exception_ptr.h:250:           return exception_ptr(__e);
	call	_ZNSt15__exception_ptr13exception_ptrC1EPv@PLT	#
# /usr/include/c++/11.3.0/bits/unique_ptr.h:173:       pointer    _M_ptr() const { return std::get<0>(_M_t); }
	movq	0(%rbp), %rdx	# MEM[(struct _Result_base * const &)__res_3(D)], _19
# /usr/include/c++/11.3.0/bits/exception_ptr.h:117:       : _M_exception_object(__o._M_exception_object)
	movq	(%rsp), %rcx	# D.107202._M_exception_object, _17
# /usr/include/c++/11.3.0/bits/exception_ptr.h:118:       { __o._M_exception_object = nullptr; }
	movq	$0, (%rsp)	#, D.107202._M_exception_object
# /usr/include/c++/11.3.0/bits/exception_ptr.h:217:       _M_exception_object = __other._M_exception_object;
	movq	8(%rdx), %rax	# MEM[(struct exception_ptr &)_19 + 8]._M_exception_object, _18
# /usr/include/c++/11.3.0/bits/exception_ptr.h:218:       __other._M_exception_object = __tmp;
	movq	%rcx, 8(%rdx)	# _17, MEM[(struct exception_ptr &)_19 + 8]._M_exception_object
# /usr/include/c++/11.3.0/bits/exception_ptr.h:217:       _M_exception_object = __other._M_exception_object;
	movq	%rax, 8(%rsp)	# _18, D.194351._M_exception_object
# /usr/include/c++/11.3.0/bits/exception_ptr.h:200:       if (_M_exception_object)
	testq	%rax, %rax	# _18
	je	.L664	#,
# /usr/include/c++/11.3.0/bits/exception_ptr.h:201: 	_M_release();
	leaq	8(%rsp), %rdi	#, tmp155
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
# /usr/include/c++/11.3.0/bits/exception_ptr.h:200:       if (_M_exception_object)
	cmpq	$0, (%rsp)	#, D.107202._M_exception_object
	je	.L664	#,
# /usr/include/c++/11.3.0/bits/exception_ptr.h:201: 	_M_release();
	movq	%r14, %rdi	# tmp142,
	call	_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv@PLT	#
.L664:
# /usr/include/c++/11.3.0/future:448: 	      make_exception_ptr(future_error(future_errc::broken_promise));
	movq	%r13, %rdi	# tmp161,
	call	_ZNSt12future_errorD1Ev@PLT	#
# /usr/include/c++/11.3.0/bits/move.h:204:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	movq	8(%rbx), %rax	# MEM[(struct _Result_base * &)this_10(D) + 8], _14
# /usr/include/c++/11.3.0/bits/move.h:205:       __a = _GLIBCXX_MOVE(__b);
	movq	0(%rbp), %rdx	# MEM[(struct _Result_base * &)__res_3(D)], _15
# /usr/include/c++/11.3.0/bits/atomic_futex.h:277:       unsigned* __futex = (unsigned *)(void *)&_M_data;
	leaq	16(%rbx), %rdi	#, __futex
# /usr/include/c++/11.3.0/bits/move.h:205:       __a = _GLIBCXX_MOVE(__b);
	movq	%rdx, 8(%rbx)	# _15, MEM[(struct _Result_base * &)this_10(D) + 8]
# /usr/include/c++/11.3.0/bits/move.h:206:       __b = _GLIBCXX_MOVE(__tmp);
	movq	%rax, 0(%rbp)	# _14, MEM[(struct _Result_base * &)__res_3(D)]
# /usr/include/c++/11.3.0/bits/atomic_base.h:499: 	return __atomic_exchange_n(&_M_i, __i, int(__m));
	movl	$1, %eax	#, tmp158
	xchgl	(%rdi), %eax	#,* __futex, _11
# /usr/include/c++/11.3.0/bits/atomic_futex.h:278:       if (_M_data.exchange(__val, __mo) & _Waiter_bit)
	testl	%eax, %eax	# _11
	js	.L680	#,
.L656:
# /usr/include/c++/11.3.0/future:458:       }
	movq	120(%rsp), %rax	# D.197495, tmp172
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp172
	jne	.L678	#,
	subq	$-128, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L679:
	.cfi_restore_state
	movdqu	16(%rax), %xmm1	# MEM <__int128 unsigned> [(char * {ref-all})_75 + 16B], tmp174
	movaps	%xmm1, 96(%rsp)	# tmp174, MEM <__int128 unsigned> [(char * {ref-all})&D.197457 + 16B]
	jmp	.L660	#
	.p2align 4,,10
	.p2align 3
.L680:
# /usr/include/c++/11.3.0/bits/atomic_futex.h:279: 	_M_futex_notify_all(__futex);
	movq	120(%rsp), %rax	# D.197495, tmp171
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp171
	jne	.L678	#,
# /usr/include/c++/11.3.0/future:458:       }
	subq	$-128, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
.LEHB51:
# /usr/include/c++/11.3.0/bits/atomic_futex.h:279: 	_M_futex_notify_all(__futex);
	jmp	_ZNSt28__atomic_futex_unsigned_base19_M_futex_notify_allEPj@PLT	#
.L678:
	.cfi_restore_state
# /usr/include/c++/11.3.0/future:458:       }
	call	__stack_chk_fail@PLT	#
.L672:
# /usr/include/c++/11.3.0/bits/basic_string.h:195:       { return _M_dataplus._M_p; }
	movq	%rax, %rbp	# tmp169, tmp147
	jmp	.L667	#
.L673:
	movq	%rax, %rbp	# tmp168, tmp148
.L665:
	movq	80(%rsp), %rdi	# D.197457._M_dataplus._M_p, _56
# /usr/include/c++/11.3.0/bits/basic_string.h:239: 	if (!_M_is_local())
	cmpq	%r14, %rdi	# tmp162, _56
	je	.L667	#,
# /usr/include/c++/11.3.0/bits/basic_string.h:245:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	96(%rsp), %rax	# D.197457.D.55866._M_allocated_capacity, tmp178
	leaq	1(%rax), %rsi	#, tmp145
# /usr/include/c++/11.3.0/ext/new_allocator.h:145: 	::operator delete(__p
	call	_ZdlPvm@PLT	#
.L667:
# /usr/include/c++/11.3.0/bits/basic_string.h:195:       { return _M_dataplus._M_p; }
	movq	48(%rsp), %rdi	# D.197456._M_dataplus._M_p, _59
# /usr/include/c++/11.3.0/bits/basic_string.h:239: 	if (!_M_is_local())
	leaq	64(%rsp), %rax	#, tmp152
	cmpq	%rax, %rdi	# tmp152, _59
	je	.L668	#,
# /usr/include/c++/11.3.0/bits/basic_string.h:245:       { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
	movq	64(%rsp), %rax	# D.197456.D.55866._M_allocated_capacity, tmp179
	leaq	1(%rax), %rsi	#, tmp153
# /usr/include/c++/11.3.0/ext/new_allocator.h:145: 	::operator delete(__p
	call	_ZdlPvm@PLT	#
.L668:
	movq	%rbp, %rdi	# tmp147,
	call	_Unwind_Resume@PLT	#
.LEHE51:
	.cfi_endproc
.LFE4630:
	.section	.gcc_except_table
.LLSDA4630:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4630-.LLSDACSB4630
.LLSDACSB4630:
	.uleb128 .LEHB48-.LFB4630
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB49-.LFB4630
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L672-.LFB4630
	.uleb128 0
	.uleb128 .LEHB50-.LFB4630
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L673-.LFB4630
	.uleb128 0
	.uleb128 .LEHB51-.LFB4630
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
.LLSDACSE4630:
	.section	.text._ZNSt13__future_base13_State_baseV216_M_break_promiseESt10unique_ptrINS_12_Result_baseENS2_8_DeleterEE,"axG",@progbits,_ZNSt13__future_base13_State_baseV216_M_break_promiseESt10unique_ptrINS_12_Result_baseENS2_8_DeleterEE,comdat
	.size	_ZNSt13__future_base13_State_baseV216_M_break_promiseESt10unique_ptrINS_12_Result_baseENS2_8_DeleterEE, .-_ZNSt13__future_base13_State_baseV216_M_break_promiseESt10unique_ptrINS_12_Result_baseENS2_8_DeleterEE
	.section	.text._ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE6_M_runEv,"axG",@progbits,_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE6_M_runEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE6_M_runEv
	.type	_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE6_M_runEv, @function
_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE6_M_runEv:
.LFB7841:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7841
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
# /usr/include/c++/11.3.0/bits/std_function.h:452: 	      _M_manager = &_My_handler::_M_manager;
	leaq	_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation(%rip), %rcx	#, tmp123
# /usr/include/c++/11.3.0/future:1733:       _M_run()
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp	# tmp170, this
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	addq	$-128, %rsp	#,
	.cfi_def_cfa_offset 176
# /usr/include/c++/11.3.0/mutex:710: 	__once_callable = std::__addressof(__c);
	movq	_ZSt15__once_callable@gottpoff(%rip), %r13	#, tmp167
# /usr/include/c++/11.3.0/mutex:712: 	__once_call = [] { (*static_cast<_Callable*>(__once_callable))(); };
	movq	_ZSt11__once_call@gottpoff(%rip), %rbx	#, tmp169
# /usr/include/c++/11.3.0/future:1733:       _M_run()
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp178
	movq	%rax, 120(%rsp)	# tmp178, D.197550
	xorl	%eax, %eax	# tmp178
# /usr/include/c++/11.3.0/future:1737: 	    _M_set_result(_S_task_setter(_M_result, _M_fn));
	leaq	48(%rdi), %rax	#, tmp119
# /usr/include/c++/11.3.0/future:412: 		  std::__addressof(__res), std::__addressof(__did_set));
	leaq	80(%rsp), %r12	#, tmp166
# /usr/include/c++/11.3.0/future:408: 	bool __did_set = false;
	movb	$0, 7(%rsp)	#, __did_set
# /usr/include/c++/11.3.0/future:1737: 	    _M_set_result(_S_task_setter(_M_result, _M_fn));
	movq	%rax, %xmm0	# tmp119, tmp119
# /usr/include/c++/11.3.0/future:1737: 	    _M_set_result(_S_task_setter(_M_result, _M_fn));
	leaq	56(%rdi), %rax	#, tmp120
# /usr/include/c++/11.3.0/mutex:710: 	__once_callable = std::__addressof(__c);
	leaq	48(%rsp), %r14	#, tmp168
# /usr/include/c++/11.3.0/x86_64-unknown-linux-gnu/bits/gthr-default.h:699:   if (__gthread_active_p ())
	cmpq	$0, _ZL28__gthrw___pthread_key_createPjPFvPvE@GOTPCREL(%rip)	#,
	movq	%rax, %xmm1	# tmp120, tmp120
# /usr/include/c++/11.3.0/bits/std_function.h:452: 	      _M_manager = &_My_handler::_M_manager;
	leaq	_ZNSt17_Function_handlerIFSt10unique_ptrINSt13__future_base12_Result_baseENS2_8_DeleterEEvENS1_12_Task_setterIS0_INS1_7_ResultIyEES3_ENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESF_mmmEEEEyEEE9_M_invokeERKSt9_Any_data(%rip), %rax	#, tmp122
# /usr/include/c++/11.3.0/future:412: 		  std::__addressof(__res), std::__addressof(__did_set));
	movq	%r12, 16(%rsp)	# tmp166, D.197504
	punpcklqdq	%xmm1, %xmm0	# tmp120, tmp118
# /usr/include/c++/11.3.0/bits/std_function.h:452: 	      _M_manager = &_My_handler::_M_manager;
	movq	%rax, %xmm2	# tmp122, tmp122
# /usr/include/c++/11.3.0/future:412: 		  std::__addressof(__res), std::__addressof(__did_set));
	leaq	7(%rsp), %rax	#, tmp124
# /usr/include/c++/11.3.0/future:411: 	call_once(_M_once, &_State_baseV2::_M_do_set, this,
	movq	%rdi, 8(%rsp)	# this, D.197503
# /usr/include/c++/11.3.0/future:412: 		  std::__addressof(__res), std::__addressof(__did_set));
	movq	%rax, 24(%rsp)	# tmp124, D.197505
# /usr/include/c++/11.3.0/future:411: 	call_once(_M_once, &_State_baseV2::_M_do_set, this,
	leaq	_ZNSt13__future_base13_State_baseV29_M_do_setEPSt8functionIFSt10unique_ptrINS_12_Result_baseENS3_8_DeleterEEvEEPb(%rip), %rax	#, tmp185
	movaps	%xmm0, 80(%rsp)	# tmp118, MEM[(struct _Task_setter *)&D.181280]
# /usr/include/c++/11.3.0/bits/std_function.h:452: 	      _M_manager = &_My_handler::_M_manager;
	movq	%rcx, %xmm0	# tmp123, tmp123
# /usr/include/c++/11.3.0/future:411: 	call_once(_M_once, &_State_baseV2::_M_do_set, this,
	movq	%rax, 32(%rsp)	# tmp185, D.197502.__pfn
# /usr/include/c++/11.3.0/bits/std_function.h:452: 	      _M_manager = &_My_handler::_M_manager;
	punpcklqdq	%xmm2, %xmm0	# tmp122, tmp121
# /usr/include/c++/11.3.0/mutex:775:       auto __callable = [&] {
	leaq	32(%rsp), %rax	#, tmp128
# /usr/include/c++/11.3.0/bits/std_function.h:452: 	      _M_manager = &_My_handler::_M_manager;
	movaps	%xmm0, 96(%rsp)	# tmp121, MEM <vector(2) long unsigned int> [(void *)&D.181280 + 16B]
# /usr/include/c++/11.3.0/mutex:775:       auto __callable = [&] {
	movq	%rax, %xmm0	# tmp128, tmp128
	leaq	8(%rsp), %rax	#, tmp129
# /usr/include/c++/11.3.0/future:411: 	call_once(_M_once, &_State_baseV2::_M_do_set, this,
	movq	$0, 40(%rsp)	#, D.197502.__delta
# /usr/include/c++/11.3.0/mutex:775:       auto __callable = [&] {
	movq	%rax, %xmm3	# tmp129, tmp129
	leaq	16(%rsp), %rax	#, tmp131
	punpcklqdq	%xmm3, %xmm0	# tmp129, tmp127
	movaps	%xmm0, 48(%rsp)	# tmp127, MEM <vector(2) long unsigned int> [(void *)_17]
	movq	%rax, %xmm0	# tmp131, tmp131
	leaq	24(%rsp), %rax	#, tmp132
	movq	%rax, %xmm4	# tmp132, tmp132
# /usr/include/c++/11.3.0/mutex:712: 	__once_call = [] { (*static_cast<_Callable*>(__once_callable))(); };
	leaq	_ZZNSt9once_flag18_Prepare_executionC4IZSt9call_onceIMNSt13__future_base13_State_baseV2EFvPSt8functionIFSt10unique_ptrINS3_12_Result_baseENS7_8_DeleterEEvEEPbEJPS4_SC_SD_EEvRS_OT_DpOT0_EUlvE_EERSI_ENUlvE_4_FUNEv(%rip), %rax	#, tmp190
# /usr/include/c++/11.3.0/mutex:775:       auto __callable = [&] {
	punpcklqdq	%xmm4, %xmm0	# tmp132, tmp130
	movaps	%xmm0, 64(%rsp)	# tmp130, MEM <vector(2) long unsigned int> [(void *)_17]
# /usr/include/c++/11.3.0/mutex:710: 	__once_callable = std::__addressof(__c);
	movq	%r14, %fs:0(%r13)	# tmp168, __once_callable
# /usr/include/c++/11.3.0/mutex:712: 	__once_call = [] { (*static_cast<_Callable*>(__once_callable))(); };
	movq	%rax, %fs:(%rbx)	# tmp190, __once_call
# /usr/include/c++/11.3.0/x86_64-unknown-linux-gnu/bits/gthr-default.h:699:   if (__gthread_active_p ())
	je	.L700	#,
# /usr/include/c++/11.3.0/x86_64-unknown-linux-gnu/bits/gthr-default.h:700:     return __gthrw_(pthread_once) (__once, __func);
	movq	__once_proxy@GOTPCREL(%rip), %rsi	#,
	addq	$24, %rdi	#, _49
.LEHB52:
	call	_ZL20__gthrw_pthread_oncePiPFvvE@PLT	#
.LEHE52:
# /usr/include/c++/11.3.0/mutex:783:       if (int __e = __gthread_once(&__once._M_once, &__once_proxy))
	testl	%eax, %eax	# _50
	jne	.L682	#,
# /usr/include/c++/11.3.0/mutex:718:       __once_callable = nullptr;
	movq	$0, %fs:0(%r13)	#, __once_callable
# /usr/include/c++/11.3.0/mutex:719:       __once_call = nullptr;
	movq	$0, %fs:(%rbx)	#, __once_call
# /usr/include/c++/11.3.0/future:413: 	if (__did_set)
	cmpb	$0, 7(%rsp)	#, __did_set
	jne	.L720	#,
# /usr/include/c++/11.3.0/future:418:           __throw_future_error(int(future_errc::promise_already_satisfied));
	movl	$2, %edi	#,
.LEHB53:
	call	_ZSt20__throw_future_errori@PLT	#
.LEHE53:
	.p2align 4,,10
	.p2align 3
.L720:
# /usr/include/c++/11.3.0/bits/atomic_futex.h:277:       unsigned* __futex = (unsigned *)(void *)&_M_data;
	leaq	16(%rbp), %rdi	#, __futex
# /usr/include/c++/11.3.0/bits/atomic_base.h:499: 	return __atomic_exchange_n(&_M_i, __i, int(__m));
	movl	$1, %eax	#, tmp149
	xchgl	(%rdi), %eax	#,* __futex, _54
# /usr/include/c++/11.3.0/bits/atomic_futex.h:278:       if (_M_data.exchange(__val, __mo) & _Waiter_bit)
	testl	%eax, %eax	# _54
	js	.L688	#,
.L691:
# /usr/include/c++/11.3.0/bits/std_function.h:243:       if (_M_manager)
	movq	96(%rsp), %rax	# MEM[(struct _Function_base *)&D.181280]._M_manager, _14
# /usr/include/c++/11.3.0/bits/std_function.h:243:       if (_M_manager)
	testq	%rax, %rax	# _14
	je	.L681	#,
# /usr/include/c++/11.3.0/bits/std_function.h:244: 	_M_manager(_M_functor, _M_functor, __destroy_functor);
	movl	$3, %edx	#,
	movq	%r12, %rsi	# tmp166,
	movq	%r12, %rdi	# tmp166,
	call	*%rax	# _14
.L681:
# /usr/include/c++/11.3.0/future:1746:       }
	movq	120(%rsp), %rax	# D.197550, tmp179
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp179
	jne	.L721	#,
	subq	$-128, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L688:
	.cfi_restore_state
.LEHB54:
# /usr/include/c++/11.3.0/bits/atomic_futex.h:279: 	_M_futex_notify_all(__futex);
	call	_ZNSt28__atomic_futex_unsigned_base19_M_futex_notify_allEPj@PLT	#
.LEHE54:
	jmp	.L691	#
.L700:
# /usr/include/c++/11.3.0/x86_64-unknown-linux-gnu/bits/gthr-default.h:702:     return -1;
	movl	$-1, %eax	#, _50
.L682:
# /usr/include/c++/11.3.0/mutex:784: 	__throw_system_error(__e);
	movl	%eax, %edi	# _50,
.LEHB55:
	call	_ZSt20__throw_system_errori@PLT	#
.LEHE55:
.L721:
# /usr/include/c++/11.3.0/future:1746:       }
	call	__stack_chk_fail@PLT	#
.L701:
# /usr/include/c++/11.3.0/bits/std_function.h:243:       if (_M_manager)
	movq	%rax, %r13	# tmp174, tmp145
	movq	%rdx, %rbx	# tmp175, tmp147
	jmp	.L687	#
.L704:
.L686:
# /usr/include/c++/11.3.0/mutex:718:       __once_callable = nullptr;
	movq	$0, %fs:0(%r13)	#, __once_callable
	movq	%rax, %r13	# tmp146, tmp145
# /usr/include/c++/11.3.0/mutex:719:       __once_call = nullptr;
	movq	$0, %fs:(%rbx)	#, __once_call
	movq	%rdx, %rbx	# tmp148, tmp147
.L687:
# /usr/include/c++/11.3.0/bits/std_function.h:243:       if (_M_manager)
	movq	96(%rsp), %rax	# MEM[(struct _Function_base *)&D.181280]._M_manager, _21
# /usr/include/c++/11.3.0/bits/std_function.h:243:       if (_M_manager)
	testq	%rax, %rax	# _21
	je	.L692	#,
# /usr/include/c++/11.3.0/bits/std_function.h:244: 	_M_manager(_M_functor, _M_functor, __destroy_functor);
	movl	$3, %edx	#,
	movq	%r12, %rsi	# tmp166,
	movq	%r12, %rdi	# tmp166,
	call	*%rax	# _21
.L692:
# /usr/include/c++/11.3.0/future:1739: 	__catch (const __cxxabiv1::__forced_unwind&)
	subq	$1, %rbx	#, tmp147
	movq	%r13, %rdi	# tmp145,
	jne	.L719	#,
# /usr/include/c++/11.3.0/future:1739: 	__catch (const __cxxabiv1::__forced_unwind&)
	call	__cxa_begin_catch@PLT	#
# /usr/include/c++/11.3.0/bits/unique_ptr.h:173:       pointer    _M_ptr() const { return std::get<0>(_M_t); }
	movq	48(%rbp), %rax	# MEM[(struct _Result * const &)this_8(D) + 48], _22
# /usr/include/c++/11.3.0/future:1742: 	    if (static_cast<bool>(_M_result))
	testq	%rax, %rax	# _22
	je	.L694	#,
# /usr/include/c++/11.3.0/bits/unique_ptr.h:188: 	_M_ptr() = nullptr;
	movq	$0, 48(%rbp)	#, MEM[(struct _Result * &)this_8(D) + 48]
# /usr/include/c++/11.3.0/future:1743: 	      this->_M_break_promise(std::move(_M_result));
	movq	%r14, %rsi	# tmp168,
	movq	%rbp, %rdi	# this,
# /usr/include/c++/11.3.0/tuple:200: 	: _M_head_impl(std::forward<_UHead>(__h)) { }
	movq	%rax, 48(%rsp)	# _22, MEM[(struct _Head_base *)_17]._M_head_impl
.LEHB56:
# /usr/include/c++/11.3.0/future:1743: 	      this->_M_break_promise(std::move(_M_result));
	call	_ZNSt13__future_base13_State_baseV216_M_break_promiseESt10unique_ptrINS_12_Result_baseENS2_8_DeleterEE	#
.LEHE56:
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	48(%rsp), %rdi	# MEM[(struct _Result_base * &)_17], _23
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rdi, %rdi	# _23
	je	.L694	#,
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	(%rdi), %rax	# _23->_vptr._Result_base, _23->_vptr._Result_base
	call	*(%rax)	# *_24
.L694:
.LEHB57:
# /usr/include/c++/11.3.0/future:1744: 	    __throw_exception_again;
	call	__cxa_rethrow@PLT	#
.LEHE57:
.L696:
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	48(%rsp), %rdi	# MEM[(struct _Result_base * &)_17], _26
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	testq	%rdi, %rdi	# _26
	je	.L698	#,
# /usr/include/c++/11.3.0/future:212: 	void operator()(_Result_base* __fr) const { __fr->_M_destroy(); }
	movq	(%rdi), %rax	# _26->_vptr._Result_base, _26->_vptr._Result_base
	call	*(%rax)	# *_27
.L698:
# /usr/include/c++/11.3.0/future:1739: 	__catch (const __cxxabiv1::__forced_unwind&)
	call	__cxa_end_catch@PLT	#
	movq	%rbp, %rdi	# tmp161,
.L719:
.LEHB58:
	call	_Unwind_Resume@PLT	#
.LEHE58:
.L702:
# /usr/include/c++/11.3.0/bits/unique_ptr.h:360: 	if (__ptr != nullptr)
	movq	%rax, %rbp	# tmp176, tmp162
	jmp	.L696	#
.L703:
# /usr/include/c++/11.3.0/future:1739: 	__catch (const __cxxabiv1::__forced_unwind&)
	movq	%rax, %rbp	# tmp177, tmp161
	jmp	.L698	#
	.cfi_endproc
.LFE7841:
	.section	.gcc_except_table
	.align 4
.LLSDA7841:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT7841-.LLSDATTD7841
.LLSDATTD7841:
	.byte	0x1
	.uleb128 .LLSDACSE7841-.LLSDACSB7841
.LLSDACSB7841:
	.uleb128 .LEHB52-.LFB7841
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L704-.LFB7841
	.uleb128 0x3
	.uleb128 .LEHB53-.LFB7841
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L701-.LFB7841
	.uleb128 0x3
	.uleb128 .LEHB54-.LFB7841
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L701-.LFB7841
	.uleb128 0x3
	.uleb128 .LEHB55-.LFB7841
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L704-.LFB7841
	.uleb128 0x3
	.uleb128 .LEHB56-.LFB7841
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L702-.LFB7841
	.uleb128 0
	.uleb128 .LEHB57-.LFB7841
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L703-.LFB7841
	.uleb128 0
	.uleb128 .LEHB58-.LFB7841
	.uleb128 .LEHE58-.LEHB58
	.uleb128 0
	.uleb128 0
.LLSDACSE7841:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	DW.ref._ZTIN10__cxxabiv115__forced_unwindE-.
.LLSDATT7841:
	.section	.text._ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE6_M_runEv,"axG",@progbits,_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE6_M_runEv,comdat
	.size	_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE6_M_runEv, .-_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE6_M_runEv
	.section	.text.startup
	.p2align 4
	.type	_GLOBAL__sub_I__Z14sequential_sumRKSt6vectorIsSaIsEEmm, @function
_GLOBAL__sub_I__Z14sequential_sumRKSt6vectorIsSaIsEEmm:
.LFB8176:
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
# /home/christoph/Code/Algorithms-DataStructures/HighPerformanceComputing/Concurrency/sequence_sum.cpp:64: }
	popq	%rbp	#
	.cfi_def_cfa_offset 8
# /usr/include/c++/11.3.0/iostream:74:   static ios_base::Init __ioinit;
	leaq	__dso_handle(%rip), %rdx	#, tmp83
	jmp	__cxa_atexit@PLT	#
	.cfi_endproc
.LFE8176:
	.size	_GLOBAL__sub_I__Z14sequential_sumRKSt6vectorIsSaIsEEmm, .-_GLOBAL__sub_I__Z14sequential_sumRKSt6vectorIsSaIsEEmm
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z14sequential_sumRKSt6vectorIsSaIsEEmm
	.weak	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 32
	.type	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, 47
_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.string	"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE"
	.weak	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.data.rel.ro._ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,"awG",@progbits,_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, 16
_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
# <anonymous>:
	.quad	_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.weak	_ZTSSt19_Sp_make_shared_tag
	.section	.rodata._ZTSSt19_Sp_make_shared_tag,"aG",@progbits,_ZTSSt19_Sp_make_shared_tag,comdat
	.align 16
	.type	_ZTSSt19_Sp_make_shared_tag, @object
	.size	_ZTSSt19_Sp_make_shared_tag, 24
_ZTSSt19_Sp_make_shared_tag:
	.string	"St19_Sp_make_shared_tag"
	.weak	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 32
	.type	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, 52
_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE:
	.string	"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE"
	.weak	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.section	.data.rel.ro._ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,"awG",@progbits,_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, 24
_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
# <anonymous>:
	.quad	_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
# <anonymous>:
	.quad	_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE
	.weak	_ZTSNSt13__future_base13_State_baseV2E
	.section	.rodata._ZTSNSt13__future_base13_State_baseV2E,"aG",@progbits,_ZTSNSt13__future_base13_State_baseV2E,comdat
	.align 32
	.type	_ZTSNSt13__future_base13_State_baseV2E, @object
	.size	_ZTSNSt13__future_base13_State_baseV2E, 35
_ZTSNSt13__future_base13_State_baseV2E:
	.string	"NSt13__future_base13_State_baseV2E"
	.weak	_ZTINSt13__future_base13_State_baseV2E
	.section	.data.rel.ro._ZTINSt13__future_base13_State_baseV2E,"awG",@progbits,_ZTINSt13__future_base13_State_baseV2E,comdat
	.align 8
	.type	_ZTINSt13__future_base13_State_baseV2E, @object
	.size	_ZTINSt13__future_base13_State_baseV2E, 16
_ZTINSt13__future_base13_State_baseV2E:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
# <anonymous>:
	.quad	_ZTSNSt13__future_base13_State_baseV2E
	.weak	_ZTSNSt13__future_base21_Async_state_commonV2E
	.section	.rodata._ZTSNSt13__future_base21_Async_state_commonV2E,"aG",@progbits,_ZTSNSt13__future_base21_Async_state_commonV2E,comdat
	.align 32
	.type	_ZTSNSt13__future_base21_Async_state_commonV2E, @object
	.size	_ZTSNSt13__future_base21_Async_state_commonV2E, 43
_ZTSNSt13__future_base21_Async_state_commonV2E:
	.string	"NSt13__future_base21_Async_state_commonV2E"
	.weak	_ZTINSt13__future_base21_Async_state_commonV2E
	.section	.data.rel.ro._ZTINSt13__future_base21_Async_state_commonV2E,"awG",@progbits,_ZTINSt13__future_base21_Async_state_commonV2E,comdat
	.align 8
	.type	_ZTINSt13__future_base21_Async_state_commonV2E, @object
	.size	_ZTINSt13__future_base21_Async_state_commonV2E, 24
_ZTINSt13__future_base21_Async_state_commonV2E:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
# <anonymous>:
	.quad	_ZTSNSt13__future_base21_Async_state_commonV2E
# <anonymous>:
	.quad	_ZTINSt13__future_base13_State_baseV2E
	.weak	_ZTSNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE
	.section	.rodata._ZTSNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE,"aG",@progbits,_ZTSNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE,comdat
	.align 32
	.type	_ZTSNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE, @object
	.size	_ZTSNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE, 108
_ZTSNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE:
	.string	"NSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE"
	.weak	_ZTINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE
	.section	.data.rel.ro._ZTINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE,"awG",@progbits,_ZTINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE,comdat
	.align 8
	.type	_ZTINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE, @object
	.size	_ZTINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE, 24
_ZTINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
# <anonymous>:
	.quad	_ZTSNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE
# <anonymous>:
	.quad	_ZTINSt13__future_base21_Async_state_commonV2E
	.weak	_ZTSNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE
	.section	.rodata._ZTSNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE,"aG",@progbits,_ZTSNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE,comdat
	.align 32
	.type	_ZTSNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE, @object
	.size	_ZTSNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE, 106
_ZTSNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE:
	.string	"NSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE"
	.weak	_ZTINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE
	.section	.data.rel.ro._ZTINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE,"awG",@progbits,_ZTINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE,comdat
	.align 8
	.type	_ZTINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE, @object
	.size	_ZTINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE, 24
_ZTINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
# <anonymous>:
	.quad	_ZTSNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE
# <anonymous>:
	.quad	_ZTINSt13__future_base13_State_baseV2E
	.weak	_ZTSNSt13__future_base7_ResultIyEE
	.section	.rodata._ZTSNSt13__future_base7_ResultIyEE,"aG",@progbits,_ZTSNSt13__future_base7_ResultIyEE,comdat
	.align 16
	.type	_ZTSNSt13__future_base7_ResultIyEE, @object
	.size	_ZTSNSt13__future_base7_ResultIyEE, 31
_ZTSNSt13__future_base7_ResultIyEE:
	.string	"NSt13__future_base7_ResultIyEE"
	.weak	_ZTINSt13__future_base7_ResultIyEE
	.section	.data.rel.ro._ZTINSt13__future_base7_ResultIyEE,"awG",@progbits,_ZTINSt13__future_base7_ResultIyEE,comdat
	.align 8
	.type	_ZTINSt13__future_base7_ResultIyEE, @object
	.size	_ZTINSt13__future_base7_ResultIyEE, 24
_ZTINSt13__future_base7_ResultIyEE:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
# <anonymous>:
	.quad	_ZTSNSt13__future_base7_ResultIyEE
# <anonymous>:
	.quad	_ZTINSt13__future_base12_Result_baseE
	.weak	_ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 32
	.type	_ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE, 173
_ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE:
	.string	"St23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE"
	.weak	_ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE
	.section	.data.rel.ro._ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE,"awG",@progbits,_ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE, 24
_ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
# <anonymous>:
	.quad	_ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE
# <anonymous>:
	.quad	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.weak	_ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE
	.section	.rodata._ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE,"aG",@progbits,_ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 32
	.type	_ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE, 171
_ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE:
	.string	"St23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE"
	.weak	_ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE
	.section	.data.rel.ro._ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE,"awG",@progbits,_ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE, 24
_ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
# <anonymous>:
	.quad	_ZTSSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE
# <anonymous>:
	.quad	_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE
	.weak	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE
	.section	.rodata._ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE,"aG",@progbits,_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE,comdat
	.align 32
	.type	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE, @object
	.size	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE, 150
_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE:
	.string	"NSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE"
	.weak	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE
	.section	.data.rel.ro._ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE,"awG",@progbits,_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE,comdat
	.align 8
	.type	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE, @object
	.size	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE, 24
_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
# <anonymous>:
	.quad	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE
# <anonymous>:
	.quad	_ZTINSt6thread6_StateE
	.weak	_ZTSNSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIyEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESC_mmmEEEEyEE
	.section	.rodata._ZTSNSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIyEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESC_mmmEEEEyEE,"aG",@progbits,_ZTSNSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIyEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESC_mmmEEEEyEE,comdat
	.align 32
	.type	_ZTSNSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIyEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESC_mmmEEEEyEE, @object
	.size	_ZTSNSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIyEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESC_mmmEEEEyEE, 161
_ZTSNSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIyEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESC_mmmEEEEyEE:
	.string	"NSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIyEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESC_mmmEEEEyEE"
	.weak	_ZTINSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIyEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESC_mmmEEEEyEE
	.section	.data.rel.ro._ZTINSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIyEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESC_mmmEEEEyEE,"awG",@progbits,_ZTINSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIyEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESC_mmmEEEEyEE,comdat
	.align 8
	.type	_ZTINSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIyEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESC_mmmEEEEyEE, @object
	.size	_ZTINSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIyEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESC_mmmEEEEyEE, 16
_ZTINSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIyEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESC_mmmEEEEyEE:
# <anonymous>:
# <anonymous>:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
# <anonymous>:
	.quad	_ZTSNSt13__future_base12_Task_setterISt10unique_ptrINS_7_ResultIyEENS_12_Result_base8_DeleterEENSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmESC_mmmEEEEyEE
	.weak	_ZTVNSt13__future_base13_State_baseV2E
	.section	.data.rel.ro.local._ZTVNSt13__future_base13_State_baseV2E,"awG",@progbits,_ZTVNSt13__future_base13_State_baseV2E,comdat
	.align 8
	.type	_ZTVNSt13__future_base13_State_baseV2E, @object
	.size	_ZTVNSt13__future_base13_State_baseV2E, 48
_ZTVNSt13__future_base13_State_baseV2E:
	.quad	0
	.quad	_ZTINSt13__future_base13_State_baseV2E
	.quad	_ZNSt13__future_base13_State_baseV2D1Ev
	.quad	_ZNSt13__future_base13_State_baseV2D0Ev
	.quad	_ZNSt13__future_base13_State_baseV217_M_complete_asyncEv
	.quad	_ZNKSt13__future_base13_State_baseV221_M_is_deferred_futureEv
	.weak	_ZTVNSt13__future_base21_Async_state_commonV2E
	.section	.data.rel.ro.local._ZTVNSt13__future_base21_Async_state_commonV2E,"awG",@progbits,_ZTVNSt13__future_base21_Async_state_commonV2E,comdat
	.align 8
	.type	_ZTVNSt13__future_base21_Async_state_commonV2E, @object
	.size	_ZTVNSt13__future_base21_Async_state_commonV2E, 48
_ZTVNSt13__future_base21_Async_state_commonV2E:
	.quad	0
	.quad	_ZTINSt13__future_base21_Async_state_commonV2E
	.quad	_ZNSt13__future_base21_Async_state_commonV2D1Ev
	.quad	_ZNSt13__future_base21_Async_state_commonV2D0Ev
	.quad	_ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv
	.quad	_ZNKSt13__future_base13_State_baseV221_M_is_deferred_futureEv
	.weak	_ZTVNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE
	.section	.data.rel.ro.local._ZTVNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE,"awG",@progbits,_ZTVNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE,comdat
	.align 8
	.type	_ZTVNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE, @object
	.size	_ZTVNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE, 48
_ZTVNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE:
	.quad	0
	.quad	_ZTINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE
	.quad	_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED1Ev
	.quad	_ZNSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED0Ev
	.quad	_ZNSt13__future_base21_Async_state_commonV217_M_complete_asyncEv
	.quad	_ZNKSt13__future_base13_State_baseV221_M_is_deferred_futureEv
	.weak	_ZTVNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE
	.section	.data.rel.ro.local._ZTVNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE,"awG",@progbits,_ZTVNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE,comdat
	.align 8
	.type	_ZTVNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE, @object
	.size	_ZTVNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE, 48
_ZTVNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE:
	.quad	0
	.quad	_ZTINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyEE
	.quad	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED1Ev
	.quad	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyED0Ev
	.quad	_ZNSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE17_M_complete_asyncEv
	.quad	_ZNKSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES6_mmmEEEEyE21_M_is_deferred_futureEv
	.weak	_ZTVNSt13__future_base7_ResultIyEE
	.section	.data.rel.ro.local._ZTVNSt13__future_base7_ResultIyEE,"awG",@progbits,_ZTVNSt13__future_base7_ResultIyEE,comdat
	.align 8
	.type	_ZTVNSt13__future_base7_ResultIyEE, @object
	.size	_ZTVNSt13__future_base7_ResultIyEE, 40
_ZTVNSt13__future_base7_ResultIyEE:
	.quad	0
	.quad	_ZTINSt13__future_base7_ResultIyEE
	.quad	_ZNSt13__future_base7_ResultIyE10_M_destroyEv
	.quad	_ZNSt13__future_base7_ResultIyED1Ev
	.quad	_ZNSt13__future_base7_ResultIyED0Ev
	.weak	_ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE
	.section	.data.rel.ro.local._ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE,"awG",@progbits,_ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE, 56
_ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE:
	.quad	0
	.quad	_ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED1Ev
	.quad	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.quad	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.quad	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.quad	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base17_Async_state_implINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.weak	_ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE
	.section	.data.rel.ro.local._ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE,"awG",@progbits,_ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE,comdat
	.align 8
	.type	_ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE, @object
	.size	_ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE, 56
_ZTVSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE:
	.quad	0
	.quad	_ZTISt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE
	.quad	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED1Ev
	.quad	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EED0Ev
	.quad	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
	.quad	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv
	.quad	_ZNSt23_Sp_counted_ptr_inplaceINSt13__future_base15_Deferred_stateINSt6thread8_InvokerISt5tupleIJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEESaISE_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
	.weak	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE
	.section	.data.rel.ro.local._ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE,"awG",@progbits,_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE,comdat
	.align 8
	.type	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE, @object
	.size	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE, 40
_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE:
	.quad	0
	.quad	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEEE
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEED1Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEED0Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMNSt13__future_base17_Async_state_implINS1_IS2_IJPFyRKSt6vectorIsSaIsEEmmmES7_mmmEEEEyEEFvvEPSE_EEEEE6_M_runEv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.weak	_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
	.section	.rodata._ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag,"aG",@progbits,_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag,comdat
	.align 8
	.type	_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag, @gnu_unique_object
	.size	_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag, 16
_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag:
	.zero	16
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.weakref	_ZL20__gthrw_pthread_oncePiPFvvE,pthread_once
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	1
	.long	1
	.hidden	DW.ref._ZTIN10__cxxabiv115__forced_unwindE
	.weak	DW.ref._ZTIN10__cxxabiv115__forced_unwindE
	.section	.data.rel.local.DW.ref._ZTIN10__cxxabiv115__forced_unwindE,"awG",@progbits,DW.ref._ZTIN10__cxxabiv115__forced_unwindE,comdat
	.align 8
	.type	DW.ref._ZTIN10__cxxabiv115__forced_unwindE, @object
	.size	DW.ref._ZTIN10__cxxabiv115__forced_unwindE, 8
DW.ref._ZTIN10__cxxabiv115__forced_unwindE:
	.quad	_ZTIN10__cxxabiv115__forced_unwindE
	.hidden	DW.ref._ZTISt12system_error
	.weak	DW.ref._ZTISt12system_error
	.section	.data.rel.local.DW.ref._ZTISt12system_error,"awG",@progbits,DW.ref._ZTISt12system_error,comdat
	.align 8
	.type	DW.ref._ZTISt12system_error, @object
	.size	DW.ref._ZTISt12system_error, 8
DW.ref._ZTISt12system_error:
	.quad	_ZTISt12system_error
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
