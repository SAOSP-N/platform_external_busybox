/* autogenerated by gensyscalls.py */

#ifdef BIONIC_L
# include <private/bionic_asm.h>
#else
# include <asm/unistd.h>
# include <asm/unistd.h>
# include <linux/err.h>
# include <machine/asm.h>
#endif

    .text
    .type swapon, @function
    .globl swapon
    .align 4
   
swapon:
    pushl   %ebx
    pushl   %ecx
    mov     12(%esp), %ebx
    mov     16(%esp), %ecx
    movl    $__NR_swapon, %eax
    int     $0x80
    cmpl    $-MAX_ERRNO, %eax
    jb      1f
    negl    %eax
    pushl   %eax
    call    __set_errno
    addl    $4, %esp
    orl     $-1, %eax
1:
    popl    %ecx
    popl    %ebx
    ret

