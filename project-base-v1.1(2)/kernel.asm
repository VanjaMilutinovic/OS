
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	16813103          	ld	sp,360(sp) # 80009168 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	4fd040ef          	jal	ra,80004d18 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <interruptvec>:
.global interrupt
.global interruptvec
.align 4
interruptvec:
    #pomeriti sp
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    #pushall
    sd x0, 0x00(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 0x08(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 0x10(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 0x18(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 0x20(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 0x28(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 0x30(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 0x38(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 0x40(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 0x48(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 0x50(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 0x58(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 0x60(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 0x68(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 0x70(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 0x78(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 0x80(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 0x88(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 0x90(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 0x98(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 0xa0(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 0xa8(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 0xb0(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 0xb8(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 0xc0(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 0xc8(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 0xd0(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 0xd8(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 0xe0(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 0xe8(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 0xf0(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 0xf8(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)
    #switch
    call interrupt
    80001088:	60d020ef          	jal	ra,80003e94 <interrupt>
    #popall
     ld x0, 0x00(sp)
    8000108c:	00013003          	ld	zero,0(sp)
     ld x1, 0x08(sp)
    80001090:	00813083          	ld	ra,8(sp)
     ld x2, 0x10(sp)
    80001094:	01013103          	ld	sp,16(sp)
     ld x3, 0x18(sp)
    80001098:	01813183          	ld	gp,24(sp)
     ld x4, 0x20(sp)
    8000109c:	02013203          	ld	tp,32(sp)
     ld x5, 0x28(sp)
    800010a0:	02813283          	ld	t0,40(sp)
     ld x6, 0x30(sp)
    800010a4:	03013303          	ld	t1,48(sp)
     ld x7, 0x38(sp)
    800010a8:	03813383          	ld	t2,56(sp)
     ld x8, 0x40(sp)
    800010ac:	04013403          	ld	s0,64(sp)
     ld x9, 0x48(sp)
    800010b0:	04813483          	ld	s1,72(sp)
     ld x10, 0x50(sp)
    800010b4:	05013503          	ld	a0,80(sp)
     ld x11, 0x58(sp)
    800010b8:	05813583          	ld	a1,88(sp)
     ld x12, 0x60(sp)
    800010bc:	06013603          	ld	a2,96(sp)
     ld x13, 0x68(sp)
    800010c0:	06813683          	ld	a3,104(sp)
     ld x14, 0x70(sp)
    800010c4:	07013703          	ld	a4,112(sp)
     ld x15, 0x78(sp)
    800010c8:	07813783          	ld	a5,120(sp)
     ld x16, 0x80(sp)
    800010cc:	08013803          	ld	a6,128(sp)
     ld x17, 0x88(sp)
    800010d0:	08813883          	ld	a7,136(sp)
     ld x18, 0x90(sp)
    800010d4:	09013903          	ld	s2,144(sp)
     ld x19, 0x98(sp)
    800010d8:	09813983          	ld	s3,152(sp)
     ld x20, 0xa0(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
     ld x21, 0xa8(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
     ld x22, 0xb0(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
     ld x23, 0xb8(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
     ld x24, 0xc0(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
     ld x25, 0xc8(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
     ld x26, 0xd0(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
     ld x27, 0xd8(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
     ld x28, 0xe0(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
     ld x29, 0xe8(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
     ld x30, 0xf0(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
     ld x31, 0xf8(sp)
    80001108:	0f813f83          	ld	t6,248(sp)
     #restore sp
     addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256
     #return
    80001110:	10200073          	sret
	...

0000000080001120 <_ZN7CThread13contextSwitchEPNS_7ContextES1_>:
.global _ZN7CThread13contextSwitchEPNS_7ContextES1_
.type _ZN7CThread13contextSwitchEPNS_7ContextES1_, @function
_ZN7CThread13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001120:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001124:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001128:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000112c:	0085b103          	ld	sp,8(a1)

    80001130:	00008067          	ret

0000000080001134 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001134:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001138:	00b29a63          	bne	t0,a1,8000114c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000113c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001140:	fe029ae3          	bnez	t0,80001134 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001144:	00000513          	li	a0,0
    jr ra                  # Return.
    80001148:	00008067          	ret

000000008000114c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000114c:	00100513          	li	a0,1
    80001150:	00008067          	ret

0000000080001154 <_Z8mem_freePv>:
// Created by os on 5/29/22.
//

#include "../h/syscall_c.h"

int mem_free(void * param) {
    80001154:	ff010113          	addi	sp,sp,-16
    80001158:	00813423          	sd	s0,8(sp)
    8000115c:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0"::"r"(param));
    80001160:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x02");
    80001164:	00200513          	li	a0,2
    asm volatile("ecall");
    80001168:	00000073          	ecall
    return 0;
}
    8000116c:	00000513          	li	a0,0
    80001170:	00813403          	ld	s0,8(sp)
    80001174:	01010113          	addi	sp,sp,16
    80001178:	00008067          	ret

000000008000117c <_Z9mem_allocm>:

void *mem_alloc(size_t size) {
    8000117c:	ff010113          	addi	sp,sp,-16
    80001180:	00813423          	sd	s0,8(sp)
    80001184:	01010413          	addi	s0,sp,16
    //1-size poravnati na blokove
    //MEM_BLOCK_SIZE
    int brBlokova = size/MEM_BLOCK_SIZE;
    80001188:	00655793          	srli	a5,a0,0x6
    8000118c:	0007879b          	sext.w	a5,a5
    if (size % MEM_BLOCK_SIZE >0) brBlokova++;
    80001190:	03f57513          	andi	a0,a0,63
    80001194:	00050463          	beqz	a0,8000119c <_Z9mem_allocm+0x20>
    80001198:	0017879b          	addiw	a5,a5,1
    size_t param = brBlokova*MEM_BLOCK_SIZE;
    8000119c:	00679793          	slli	a5,a5,0x6
    //2-vraca pointer na alociranu mem ili null
    asm volatile("mv a1, %0"::"r"(param));
    800011a0:	00078593          	mv	a1,a5
    asm volatile("li a0, 0x01");
    800011a4:	00100513          	li	a0,1
    asm volatile("ecall");
    800011a8:	00000073          	ecall
    void* ret;
    asm volatile("mv %0, a0":"=r"(ret));
    800011ac:	00050513          	mv	a0,a0
    return ret;
}
    800011b0:	00813403          	ld	s0,8(sp)
    800011b4:	01010113          	addi	sp,sp,16
    800011b8:	00008067          	ret

00000000800011bc <_Z13thread_createPP7CThreadPFvPvES2_>:

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    800011bc:	fe010113          	addi	sp,sp,-32
    800011c0:	00113c23          	sd	ra,24(sp)
    800011c4:	00813823          	sd	s0,16(sp)
    800011c8:	00913423          	sd	s1,8(sp)
    800011cc:	01213023          	sd	s2,0(sp)
    800011d0:	02010413          	addi	s0,sp,32
    800011d4:	00050493          	mv	s1,a0
    asm volatile("mv a3, %0"::"r"(arg));
    800011d8:	00060693          	mv	a3,a2
    asm volatile("mv a2, %0"::"r"(start_routine));
    800011dc:	00058613          	mv	a2,a1
    asm volatile("mv a1, %0"::"r"(handle));
    800011e0:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x11");
    800011e4:	01100513          	li	a0,17
    asm volatile("ecall");
    800011e8:	00000073          	ecall

    int ret;
    asm volatile("mv %0, a0":"=r"(ret));
    800011ec:	00050913          	mv	s2,a0
    800011f0:	0009091b          	sext.w	s2,s2
    Scheduler::getInstance().put(*(handle));
    800011f4:	00001097          	auipc	ra,0x1
    800011f8:	8d0080e7          	jalr	-1840(ra) # 80001ac4 <_ZN9Scheduler11getInstanceEv>
    800011fc:	0004b503          	ld	a0,0(s1)
    80001200:	00000097          	auipc	ra,0x0
    80001204:	7f8080e7          	jalr	2040(ra) # 800019f8 <_ZN9Scheduler3putEP7CThread>

    return ret;

}
    80001208:	00090513          	mv	a0,s2
    8000120c:	01813083          	ld	ra,24(sp)
    80001210:	01013403          	ld	s0,16(sp)
    80001214:	00813483          	ld	s1,8(sp)
    80001218:	00013903          	ld	s2,0(sp)
    8000121c:	02010113          	addi	sp,sp,32
    80001220:	00008067          	ret

0000000080001224 <_Z15thread_dispatchv>:

void thread_dispatch (){
    80001224:	ff010113          	addi	sp,sp,-16
    80001228:	00813423          	sd	s0,8(sp)
    8000122c:	01010413          	addi	s0,sp,16
    asm volatile("li a0, 0x13");
    80001230:	01300513          	li	a0,19
    asm volatile("ecall");
    80001234:	00000073          	ecall
}
    80001238:	00813403          	ld	s0,8(sp)
    8000123c:	01010113          	addi	sp,sp,16
    80001240:	00008067          	ret

0000000080001244 <_Z12thread_startP7CThread>:

void thread_start(thread_t handle) {
    80001244:	ff010113          	addi	sp,sp,-16
    80001248:	00813423          	sd	s0,8(sp)
    8000124c:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0"::"r"(handle));
    80001250:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x14");
    80001254:	01400513          	li	a0,20
    asm volatile("ecall");
    80001258:	00000073          	ecall

}
    8000125c:	00813403          	ld	s0,8(sp)
    80001260:	01010113          	addi	sp,sp,16
    80001264:	00008067          	ret

0000000080001268 <_Z11thread_exitv>:

int thread_exit() {
    80001268:	ff010113          	addi	sp,sp,-16
    8000126c:	00813423          	sd	s0,8(sp)
    80001270:	01010413          	addi	s0,sp,16
    asm volatile("li a0, 0x12");
    80001274:	01200513          	li	a0,18
    asm volatile("ecall");
    80001278:	00000073          	ecall
    int ret;
    asm volatile("mv %0, a0":"=r"(ret));
    8000127c:	00050513          	mv	a0,a0
    return ret;
}
    80001280:	0005051b          	sext.w	a0,a0
    80001284:	00813403          	ld	s0,8(sp)
    80001288:	01010113          	addi	sp,sp,16
    8000128c:	00008067          	ret

0000000080001290 <_Z8sem_openPP10CSemaphorej>:

int sem_open(sem_t *handle, unsigned int init) {
    80001290:	ff010113          	addi	sp,sp,-16
    80001294:	00813423          	sd	s0,8(sp)
    80001298:	01010413          	addi	s0,sp,16
    asm volatile("mv a2, %0"::"r"(init));
    8000129c:	00058613          	mv	a2,a1
    asm volatile("mv a1, %0"::"r"(handle));
    800012a0:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x21");
    800012a4:	02100513          	li	a0,33
    asm volatile("ecall");
    800012a8:	00000073          	ecall

    int ret;
    asm volatile("mv %0, a0":"=r"(ret));
    800012ac:	00050513          	mv	a0,a0
    return ret;
}
    800012b0:	0005051b          	sext.w	a0,a0
    800012b4:	00813403          	ld	s0,8(sp)
    800012b8:	01010113          	addi	sp,sp,16
    800012bc:	00008067          	ret

00000000800012c0 <_Z9sem_closeP10CSemaphore>:

int sem_close(sem_t handle) {
    800012c0:	ff010113          	addi	sp,sp,-16
    800012c4:	00813423          	sd	s0,8(sp)
    800012c8:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0"::"r"(handle));
    800012cc:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x22");
    800012d0:	02200513          	li	a0,34
    asm volatile("ecall");
    800012d4:	00000073          	ecall

    int ret;
    asm volatile("mv %0, a0":"=r"(ret));
    800012d8:	00050513          	mv	a0,a0
    return ret;
}
    800012dc:	0005051b          	sext.w	a0,a0
    800012e0:	00813403          	ld	s0,8(sp)
    800012e4:	01010113          	addi	sp,sp,16
    800012e8:	00008067          	ret

00000000800012ec <_Z8sem_waitP10CSemaphore>:

int sem_wait(sem_t id) {
    800012ec:	ff010113          	addi	sp,sp,-16
    800012f0:	00813423          	sd	s0,8(sp)
    800012f4:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0"::"r"(id));
    800012f8:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x23");
    800012fc:	02300513          	li	a0,35
    asm volatile("ecall");
    80001300:	00000073          	ecall

    int ret;
    asm volatile("mv %0, a0":"=r"(ret));
    80001304:	00050513          	mv	a0,a0
    return ret;
}
    80001308:	0005051b          	sext.w	a0,a0
    8000130c:	00813403          	ld	s0,8(sp)
    80001310:	01010113          	addi	sp,sp,16
    80001314:	00008067          	ret

0000000080001318 <_Z10sem_signalP10CSemaphore>:

int sem_signal(sem_t id) {
    80001318:	ff010113          	addi	sp,sp,-16
    8000131c:	00813423          	sd	s0,8(sp)
    80001320:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0"::"r"(id));
    80001324:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x24");
    80001328:	02400513          	li	a0,36
    asm volatile("ecall");
    8000132c:	00000073          	ecall

    int ret;
    asm volatile("mv %0, a0":"=r"(ret));
    80001330:	00050513          	mv	a0,a0
    return ret;
}
    80001334:	0005051b          	sext.w	a0,a0
    80001338:	00813403          	ld	s0,8(sp)
    8000133c:	01010113          	addi	sp,sp,16
    80001340:	00008067          	ret

0000000080001344 <_Z10time_sleepm>:

int time_sleep(time_t time) {
    80001344:	ff010113          	addi	sp,sp,-16
    80001348:	00813423          	sd	s0,8(sp)
    8000134c:	01010413          	addi	s0,sp,16
    if(time ==0) return -1;
    80001350:	02050063          	beqz	a0,80001370 <_Z10time_sleepm+0x2c>
    asm volatile("mv a1, %0"::"r"(time));
    80001354:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x31");
    80001358:	03100513          	li	a0,49
    asm volatile("ecall");
    8000135c:	00000073          	ecall
    return 0;
    80001360:	00000513          	li	a0,0
}
    80001364:	00813403          	ld	s0,8(sp)
    80001368:	01010113          	addi	sp,sp,16
    8000136c:	00008067          	ret
    if(time ==0) return -1;
    80001370:	fff00513          	li	a0,-1
    80001374:	ff1ff06f          	j	80001364 <_Z10time_sleepm+0x20>

0000000080001378 <_Z4getcv>:

char getc() {
    80001378:	ff010113          	addi	sp,sp,-16
    8000137c:	00813423          	sd	s0,8(sp)
    80001380:	01010413          	addi	s0,sp,16
    asm volatile("li a0, 0x41");
    80001384:	04100513          	li	a0,65
    asm volatile("ecall");
    80001388:	00000073          	ecall
    char ret;
    asm volatile("mv %0, a0":"=r"(ret));
    8000138c:	00050513          	mv	a0,a0
    return ret;
}
    80001390:	0ff57513          	andi	a0,a0,255
    80001394:	00813403          	ld	s0,8(sp)
    80001398:	01010113          	addi	sp,sp,16
    8000139c:	00008067          	ret

00000000800013a0 <_Z4putcc>:

void putc(char c) {
    800013a0:	ff010113          	addi	sp,sp,-16
    800013a4:	00813423          	sd	s0,8(sp)
    800013a8:	01010413          	addi	s0,sp,16
    asm volatile("mv a1, %0"::"r"(c));
    800013ac:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x42");
    800013b0:	04200513          	li	a0,66
    asm volatile("ecall");
    800013b4:	00000073          	ecall
}
    800013b8:	00813403          	ld	s0,8(sp)
    800013bc:	01010113          	addi	sp,sp,16
    800013c0:	00008067          	ret

00000000800013c4 <_Z4userv>:

void user(){
    800013c4:	ff010113          	addi	sp,sp,-16
    800013c8:	00813423          	sd	s0,8(sp)
    800013cc:	01010413          	addi	s0,sp,16
    asm volatile("li a0,0x51");
    800013d0:	05100513          	li	a0,81
    asm volatile("ecall");
    800013d4:	00000073          	ecall
}
    800013d8:	00813403          	ld	s0,8(sp)
    800013dc:	01010113          	addi	sp,sp,16
    800013e0:	00008067          	ret

00000000800013e4 <_Z4privv>:
void priv(){
    800013e4:	ff010113          	addi	sp,sp,-16
    800013e8:	00813423          	sd	s0,8(sp)
    800013ec:	01010413          	addi	s0,sp,16
    asm volatile("li a0,0x52");
    800013f0:	05200513          	li	a0,82
    asm volatile("ecall");
    800013f4:	00000073          	ecall
}
    800013f8:	00813403          	ld	s0,8(sp)
    800013fc:	01010113          	addi	sp,sp,16
    80001400:	00008067          	ret

0000000080001404 <_ZN7CThreadC1EPFvPvES0_>:
CThread* CThread::running = nullptr;
CThread* CThread::main = nullptr;
CThread* CThread::idle = nullptr;
int CThread::time = 0;

CThread::CThread(void(*start_routine)(void*), void* arg ){
    80001404:	ff010113          	addi	sp,sp,-16
    80001408:	00813423          	sd	s0,8(sp)
    8000140c:	01010413          	addi	s0,sp,16
    80001410:	00052023          	sw	zero,0(a0)
    80001414:	00053423          	sd	zero,8(a0)
    80001418:	00052823          	sw	zero,16(a0)
    8000141c:	02053423          	sd	zero,40(a0)
    body=start_routine;
    80001420:	00b53c23          	sd	a1,24(a0)
    this->args=arg;
    80001424:	02c53023          	sd	a2,32(a0)
    status=READY;
}
    80001428:	00813403          	ld	s0,8(sp)
    8000142c:	01010113          	addi	sp,sp,16
    80001430:	00008067          	ret

0000000080001434 <_ZN7CThread12createThreadEPPS_PFvPvES2_>:

int CThread::createThread(CThread** handle, CThread::Body body, void *args) {
    80001434:	fd010113          	addi	sp,sp,-48
    80001438:	02113423          	sd	ra,40(sp)
    8000143c:	02813023          	sd	s0,32(sp)
    80001440:	00913c23          	sd	s1,24(sp)
    80001444:	01213823          	sd	s2,16(sp)
    80001448:	01313423          	sd	s3,8(sp)
    8000144c:	01413023          	sd	s4,0(sp)
    80001450:	03010413          	addi	s0,sp,48
    80001454:	00050493          	mv	s1,a0
    80001458:	00058993          	mv	s3,a1
    8000145c:	00060a13          	mv	s4,a2


class CThread {
public:
    using Body = void(*)(void*);
    overrideNew;
    80001460:	00002097          	auipc	ra,0x2
    80001464:	724080e7          	jalr	1828(ra) # 80003b84 <_ZN15MemoryAllocator11getInstanceEv>
    80001468:	04000593          	li	a1,64
    8000146c:	00002097          	auipc	ra,0x2
    80001470:	594080e7          	jalr	1428(ra) # 80003a00 <_ZN15MemoryAllocator8allocateEm>
    80001474:	00050913          	mv	s2,a0
    *handle = new CThread(body, args);
    80001478:	000a0613          	mv	a2,s4
    8000147c:	00098593          	mv	a1,s3
    80001480:	00000097          	auipc	ra,0x0
    80001484:	f84080e7          	jalr	-124(ra) # 80001404 <_ZN7CThreadC1EPFvPvES0_>
    80001488:	0124b023          	sd	s2,0(s1)
    (*handle)->stack =MemoryAllocator::getInstance().allocate(DEFAULT_STACK_SIZE);
    8000148c:	00002097          	auipc	ra,0x2
    80001490:	6f8080e7          	jalr	1784(ra) # 80003b84 <_ZN15MemoryAllocator11getInstanceEv>
    80001494:	0004b903          	ld	s2,0(s1)
    80001498:	000015b7          	lui	a1,0x1
    8000149c:	00002097          	auipc	ra,0x2
    800014a0:	564080e7          	jalr	1380(ra) # 80003a00 <_ZN15MemoryAllocator8allocateEm>
    800014a4:	02a93423          	sd	a0,40(s2)
    if((*handle)->stack== nullptr)return -1;
    800014a8:	0004b703          	ld	a4,0(s1)
    800014ac:	02873783          	ld	a5,40(a4)
    800014b0:	04078c63          	beqz	a5,80001508 <_ZN7CThread12createThreadEPPS_PFvPvES2_+0xd4>
    (*handle)->context.sp=(uint64)(*handle)->stack+DEFAULT_STACK_SIZE;
    800014b4:	000016b7          	lui	a3,0x1
    800014b8:	00d787b3          	add	a5,a5,a3
    800014bc:	02f73c23          	sd	a5,56(a4)
    (*handle)->context.ra=(uint64)&wrapper;
    800014c0:	0004b783          	ld	a5,0(s1)
    800014c4:	00000717          	auipc	a4,0x0
    800014c8:	19c70713          	addi	a4,a4,412 # 80001660 <_ZN7CThread7wrapperEv>
    800014cc:	02e7b823          	sd	a4,48(a5)
    if ((*handle)->context.ra ==0 || (*handle)->context.sp ==0) return -1;
    800014d0:	0004b783          	ld	a5,0(s1)
    800014d4:	0307b703          	ld	a4,48(a5)
    800014d8:	02070c63          	beqz	a4,80001510 <_ZN7CThread12createThreadEPPS_PFvPvES2_+0xdc>
    800014dc:	0387b783          	ld	a5,56(a5)
    800014e0:	02078c63          	beqz	a5,80001518 <_ZN7CThread12createThreadEPPS_PFvPvES2_+0xe4>
    return 0;
    800014e4:	00000513          	li	a0,0
}
    800014e8:	02813083          	ld	ra,40(sp)
    800014ec:	02013403          	ld	s0,32(sp)
    800014f0:	01813483          	ld	s1,24(sp)
    800014f4:	01013903          	ld	s2,16(sp)
    800014f8:	00813983          	ld	s3,8(sp)
    800014fc:	00013a03          	ld	s4,0(sp)
    80001500:	03010113          	addi	sp,sp,48
    80001504:	00008067          	ret
    if((*handle)->stack== nullptr)return -1;
    80001508:	fff00513          	li	a0,-1
    8000150c:	fddff06f          	j	800014e8 <_ZN7CThread12createThreadEPPS_PFvPvES2_+0xb4>
    if ((*handle)->context.ra ==0 || (*handle)->context.sp ==0) return -1;
    80001510:	fff00513          	li	a0,-1
    80001514:	fd5ff06f          	j	800014e8 <_ZN7CThread12createThreadEPPS_PFvPvES2_+0xb4>
    80001518:	fff00513          	li	a0,-1
    8000151c:	fcdff06f          	j	800014e8 <_ZN7CThread12createThreadEPPS_PFvPvES2_+0xb4>

0000000080001520 <_ZN7CThread9isFinisedEv>:
        MemoryAllocator::getInstance().deallocate(old->stack);
        MemoryAllocator::getInstance().deallocate( old);
    }
}

bool CThread::isFinised() {
    80001520:	ff010113          	addi	sp,sp,-16
    80001524:	00813423          	sd	s0,8(sp)
    80001528:	01010413          	addi	s0,sp,16
    return status==Status::FINISHED;
    8000152c:	01052503          	lw	a0,16(a0)
    80001530:	fff50513          	addi	a0,a0,-1
}
    80001534:	00153513          	seqz	a0,a0
    80001538:	00813403          	ld	s0,8(sp)
    8000153c:	01010113          	addi	sp,sp,16
    80001540:	00008067          	ret

0000000080001544 <_ZN7CThread8dispatchEv>:
void CThread::dispatch() {
    80001544:	fe010113          	addi	sp,sp,-32
    80001548:	00113c23          	sd	ra,24(sp)
    8000154c:	00813823          	sd	s0,16(sp)
    80001550:	00913423          	sd	s1,8(sp)
    80001554:	01213023          	sd	s2,0(sp)
    80001558:	02010413          	addi	s0,sp,32
    CThread* old = running;
    8000155c:	00008917          	auipc	s2,0x8
    80001560:	ca490913          	addi	s2,s2,-860 # 80009200 <_ZN7CThread7runningE>
    80001564:	00093483          	ld	s1,0(s2)
    running= Scheduler::getInstance().get();
    80001568:	00000097          	auipc	ra,0x0
    8000156c:	55c080e7          	jalr	1372(ra) # 80001ac4 <_ZN9Scheduler11getInstanceEv>
    80001570:	00000097          	auipc	ra,0x0
    80001574:	4f0080e7          	jalr	1264(ra) # 80001a60 <_ZN9Scheduler3getEv>
    80001578:	00a93023          	sd	a0,0(s2)
    if(old->status!=FINISHED && old->status!=BLOCKED && old->status!=SLEEP)
    8000157c:	0104a783          	lw	a5,16(s1)
    80001580:	00100713          	li	a4,1
    80001584:	00e78a63          	beq	a5,a4,80001598 <_ZN7CThread8dispatchEv+0x54>
    80001588:	00300713          	li	a4,3
    8000158c:	00e78663          	beq	a5,a4,80001598 <_ZN7CThread8dispatchEv+0x54>
    80001590:	00200713          	li	a4,2
    80001594:	04e79263          	bne	a5,a4,800015d8 <_ZN7CThread8dispatchEv+0x94>
    contextSwitch(&old->context, &running->context);
    80001598:	00008597          	auipc	a1,0x8
    8000159c:	c685b583          	ld	a1,-920(a1) # 80009200 <_ZN7CThread7runningE>
    800015a0:	03058593          	addi	a1,a1,48
    800015a4:	03048513          	addi	a0,s1,48
    800015a8:	00000097          	auipc	ra,0x0
    800015ac:	b78080e7          	jalr	-1160(ra) # 80001120 <_ZN7CThread13contextSwitchEPNS_7ContextES1_>
    if(old->isFinised()){
    800015b0:	00048513          	mv	a0,s1
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	f6c080e7          	jalr	-148(ra) # 80001520 <_ZN7CThread9isFinisedEv>
    800015bc:	02051a63          	bnez	a0,800015f0 <_ZN7CThread8dispatchEv+0xac>
}
    800015c0:	01813083          	ld	ra,24(sp)
    800015c4:	01013403          	ld	s0,16(sp)
    800015c8:	00813483          	ld	s1,8(sp)
    800015cc:	00013903          	ld	s2,0(sp)
    800015d0:	02010113          	addi	sp,sp,32
    800015d4:	00008067          	ret
        Scheduler::getInstance().put(old);
    800015d8:	00000097          	auipc	ra,0x0
    800015dc:	4ec080e7          	jalr	1260(ra) # 80001ac4 <_ZN9Scheduler11getInstanceEv>
    800015e0:	00048513          	mv	a0,s1
    800015e4:	00000097          	auipc	ra,0x0
    800015e8:	414080e7          	jalr	1044(ra) # 800019f8 <_ZN9Scheduler3putEP7CThread>
    800015ec:	fadff06f          	j	80001598 <_ZN7CThread8dispatchEv+0x54>
        MemoryAllocator::getInstance().deallocate(old->stack);
    800015f0:	00002097          	auipc	ra,0x2
    800015f4:	594080e7          	jalr	1428(ra) # 80003b84 <_ZN15MemoryAllocator11getInstanceEv>
    800015f8:	0284b583          	ld	a1,40(s1)
    800015fc:	00002097          	auipc	ra,0x2
    80001600:	4e0080e7          	jalr	1248(ra) # 80003adc <_ZN15MemoryAllocator10deallocateEPv>
        MemoryAllocator::getInstance().deallocate( old);
    80001604:	00002097          	auipc	ra,0x2
    80001608:	580080e7          	jalr	1408(ra) # 80003b84 <_ZN15MemoryAllocator11getInstanceEv>
    8000160c:	00048593          	mv	a1,s1
    80001610:	00002097          	auipc	ra,0x2
    80001614:	4cc080e7          	jalr	1228(ra) # 80003adc <_ZN15MemoryAllocator10deallocateEPv>
}
    80001618:	fa9ff06f          	j	800015c0 <_ZN7CThread8dispatchEv+0x7c>

000000008000161c <_ZN7CThread11setFinishedEv>:

void CThread::setFinished() {
    8000161c:	ff010113          	addi	sp,sp,-16
    80001620:	00813423          	sd	s0,8(sp)
    80001624:	01010413          	addi	s0,sp,16
    status=Status::FINISHED;
    80001628:	00100793          	li	a5,1
    8000162c:	00f52823          	sw	a5,16(a0)
}
    80001630:	00813403          	ld	s0,8(sp)
    80001634:	01010113          	addi	sp,sp,16
    80001638:	00008067          	ret

000000008000163c <_ZN7CThread10popSppSpieEv>:

void CThread::popSppSpie()
{
    8000163c:	ff010113          	addi	sp,sp,-16
    80001640:	00813423          	sd	s0,8(sp)
    80001644:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001648:	14109073          	csrw	sepc,ra
    //ubij tajmer ...
    __asm__ volatile ("csrc sip, 0x02");
    8000164c:	14417073          	csrci	sip,2

    __asm__ volatile ("sret");
    80001650:	10200073          	sret
}
    80001654:	00813403          	ld	s0,8(sp)
    80001658:	01010113          	addi	sp,sp,16
    8000165c:	00008067          	ret

0000000080001660 <_ZN7CThread7wrapperEv>:
void CThread::wrapper() {
    80001660:	fe010113          	addi	sp,sp,-32
    80001664:	00113c23          	sd	ra,24(sp)
    80001668:	00813823          	sd	s0,16(sp)
    8000166c:	00913423          	sd	s1,8(sp)
    80001670:	02010413          	addi	s0,sp,32
    popSppSpie();
    80001674:	00000097          	auipc	ra,0x0
    80001678:	fc8080e7          	jalr	-56(ra) # 8000163c <_ZN7CThread10popSppSpieEv>
    running->body(running->args);
    8000167c:	00008497          	auipc	s1,0x8
    80001680:	b8448493          	addi	s1,s1,-1148 # 80009200 <_ZN7CThread7runningE>
    80001684:	0004b783          	ld	a5,0(s1)
    80001688:	0187b703          	ld	a4,24(a5)
    8000168c:	0207b503          	ld	a0,32(a5)
    80001690:	000700e7          	jalr	a4
    running->setFinished();
    80001694:	0004b503          	ld	a0,0(s1)
    80001698:	00000097          	auipc	ra,0x0
    8000169c:	f84080e7          	jalr	-124(ra) # 8000161c <_ZN7CThread11setFinishedEv>
    asm volatile("li a0,0x13");
    800016a0:	01300513          	li	a0,19
    asm volatile("ecall");
    800016a4:	00000073          	ecall
}
    800016a8:	01813083          	ld	ra,24(sp)
    800016ac:	01013403          	ld	s0,16(sp)
    800016b0:	00813483          	ld	s1,8(sp)
    800016b4:	02010113          	addi	sp,sp,32
    800016b8:	00008067          	ret

00000000800016bc <_ZN7CThreadC1Ev>:

CThread::CThread() {
    800016bc:	ff010113          	addi	sp,sp,-16
    800016c0:	00813423          	sd	s0,8(sp)
    800016c4:	01010413          	addi	s0,sp,16
    800016c8:	00052023          	sw	zero,0(a0)
    800016cc:	00053423          	sd	zero,8(a0)
    800016d0:	00052823          	sw	zero,16(a0)
    800016d4:	00053c23          	sd	zero,24(a0)
    800016d8:	02053023          	sd	zero,32(a0)
    800016dc:	02053423          	sd	zero,40(a0)
    status = READY;
    body = 0;
    args = 0;
    context.ra = 0;
    800016e0:	02053823          	sd	zero,48(a0)
    context.sp = 0;
    800016e4:	02053c23          	sd	zero,56(a0)
    stack = 0;

}
    800016e8:	00813403          	ld	s0,8(sp)
    800016ec:	01010113          	addi	sp,sp,16
    800016f0:	00008067          	ret

00000000800016f4 <_ZN7CThread7popregsEv>:

void CThread::popregs() {
    800016f4:	ff010113          	addi	sp,sp,-16
    800016f8:	00813423          	sd	s0,8(sp)
    800016fc:	01010413          	addi	s0,sp,16
// Pop all registers
    asm volatile("ld x3, 0x18(sp)");
    80001700:	01813183          	ld	gp,24(sp)
    asm volatile("ld x4, 0x20(sp)");
    80001704:	02013203          	ld	tp,32(sp)
    asm volatile("ld x5, 0x28(sp)");
    80001708:	02813283          	ld	t0,40(sp)
    asm volatile("ld x6, 0x30(sp)");
    8000170c:	03013303          	ld	t1,48(sp)
    asm volatile("ld x7, 0x38(sp)");
    80001710:	03813383          	ld	t2,56(sp)
    asm volatile("ld x8, 0x40(sp)");
    80001714:	04013403          	ld	s0,64(sp)
    asm volatile("ld x9, 0x48(sp)");
    80001718:	04813483          	ld	s1,72(sp)
    asm volatile("ld x10, 0x50(sp)");
    8000171c:	05013503          	ld	a0,80(sp)
    asm volatile("ld x11, 0x58(sp)");
    80001720:	05813583          	ld	a1,88(sp)
    asm volatile("ld x12, 0x60(sp)");
    80001724:	06013603          	ld	a2,96(sp)
    asm volatile("ld x13, 0x68(sp)");
    80001728:	06813683          	ld	a3,104(sp)
    asm volatile("ld x14, 0x70(sp)");
    8000172c:	07013703          	ld	a4,112(sp)
    asm volatile("ld x15, 0x78(sp)");
    80001730:	07813783          	ld	a5,120(sp)
    asm volatile("ld x16, 0x80(sp)");
    80001734:	08013803          	ld	a6,128(sp)
    asm volatile("ld x17, 0x88(sp)");
    80001738:	08813883          	ld	a7,136(sp)
    asm volatile("ld x18, 0x90(sp)");
    8000173c:	09013903          	ld	s2,144(sp)
    asm volatile("ld x19, 0x98(sp)");
    80001740:	09813983          	ld	s3,152(sp)
    asm volatile("ld x20, 0xa0(sp)");
    80001744:	0a013a03          	ld	s4,160(sp)
    asm volatile("ld x21, 0xa8(sp)");
    80001748:	0a813a83          	ld	s5,168(sp)
    asm volatile("ld x22, 0xb0(sp)");
    8000174c:	0b013b03          	ld	s6,176(sp)
    asm volatile("ld x23, 0xb8(sp)");
    80001750:	0b813b83          	ld	s7,184(sp)
    asm volatile("ld x24, 0xc0(sp)");
    80001754:	0c013c03          	ld	s8,192(sp)
    asm volatile("ld x25, 0xc8(sp)");
    80001758:	0c813c83          	ld	s9,200(sp)
    asm volatile("ld x26, 0xd0(sp)");
    8000175c:	0d013d03          	ld	s10,208(sp)
    asm volatile("ld x27, 0xd8(sp)");
    80001760:	0d813d83          	ld	s11,216(sp)
    asm volatile("ld x28, 0xe0(sp)");
    80001764:	0e013e03          	ld	t3,224(sp)
    asm volatile("ld x29, 0xe8(sp)");
    80001768:	0e813e83          	ld	t4,232(sp)
    asm volatile("ld x30, 0xf0(sp)");
    8000176c:	0f013f03          	ld	t5,240(sp)
    asm volatile("ld x31, 0xf8(sp)");
    80001770:	0f813f83          	ld	t6,248(sp)
    asm volatile("addi sp, sp, 256");
    80001774:	10010113          	addi	sp,sp,256
}
    80001778:	00813403          	ld	s0,8(sp)
    8000177c:	01010113          	addi	sp,sp,16
    80001780:	00008067          	ret

0000000080001784 <_ZN7CThread8pushregsEv>:

void CThread::pushregs() {
    80001784:	ff010113          	addi	sp,sp,-16
    80001788:	00813423          	sd	s0,8(sp)
    8000178c:	01010413          	addi	s0,sp,16
    asm volatile("addi sp, sp, -256");
    80001790:	f0010113          	addi	sp,sp,-256
    asm volatile("sd x3, 0x18(sp)");
    80001794:	00313c23          	sd	gp,24(sp)
    asm volatile("sd x4, 0x20(sp)");
    80001798:	02413023          	sd	tp,32(sp)
    asm volatile("sd x5, 0x28(sp)");
    8000179c:	02513423          	sd	t0,40(sp)
    asm volatile("sd x6, 0x30(sp)");
    800017a0:	02613823          	sd	t1,48(sp)
    asm volatile("sd x7, 0x38(sp)");
    800017a4:	02713c23          	sd	t2,56(sp)
    asm volatile("sd x8, 0x40(sp)");
    800017a8:	04813023          	sd	s0,64(sp)
    asm volatile("sd x9, 0x48(sp)");
    800017ac:	04913423          	sd	s1,72(sp)
    asm volatile("sd x10, 0x50(sp)");
    800017b0:	04a13823          	sd	a0,80(sp)
    asm volatile("sd x11, 0x58(sp)");
    800017b4:	04b13c23          	sd	a1,88(sp)
    asm volatile("sd x12, 0x60(sp)");
    800017b8:	06c13023          	sd	a2,96(sp)
    asm volatile("sd x13, 0x68(sp)");
    800017bc:	06d13423          	sd	a3,104(sp)
    asm volatile("sd x14, 0x70(sp)");
    800017c0:	06e13823          	sd	a4,112(sp)
    asm volatile("sd x15, 0x78(sp)");
    800017c4:	06f13c23          	sd	a5,120(sp)
    asm volatile("sd x16, 0x80(sp)");
    800017c8:	09013023          	sd	a6,128(sp)
    asm volatile("sd x17, 0x88(sp)");
    800017cc:	09113423          	sd	a7,136(sp)
    asm volatile("sd x18, 0x90(sp)");
    800017d0:	09213823          	sd	s2,144(sp)
    asm volatile("sd x19, 0x98(sp)");
    800017d4:	09313c23          	sd	s3,152(sp)
    asm volatile("sd x20, 0xa0(sp)");
    800017d8:	0b413023          	sd	s4,160(sp)
    asm volatile("sd x21, 0xa8(sp)");
    800017dc:	0b513423          	sd	s5,168(sp)
    asm volatile("sd x22, 0xb0(sp)");
    800017e0:	0b613823          	sd	s6,176(sp)
    asm volatile("sd x23, 0xb8(sp)");
    800017e4:	0b713c23          	sd	s7,184(sp)
    asm volatile("sd x24, 0xc0(sp)");
    800017e8:	0d813023          	sd	s8,192(sp)
    asm volatile("sd x25, 0xc8(sp)");
    800017ec:	0d913423          	sd	s9,200(sp)
    asm volatile("sd x26, 0xd0(sp)");
    800017f0:	0da13823          	sd	s10,208(sp)
    asm volatile("sd x27, 0xd8(sp)");
    800017f4:	0db13c23          	sd	s11,216(sp)
    asm volatile("sd x28, 0xe0(sp)");
    800017f8:	0fc13023          	sd	t3,224(sp)
    asm volatile("sd x29, 0xe8(sp)");
    800017fc:	0fd13423          	sd	t4,232(sp)
    asm volatile("sd x30, 0xf0(sp)");
    80001800:	0fe13823          	sd	t5,240(sp)
    asm volatile("sd x31, 0xf8(sp)");
    80001804:	0ff13c23          	sd	t6,248(sp)
}
    80001808:	00813403          	ld	s0,8(sp)
    8000180c:	01010113          	addi	sp,sp,16
    80001810:	00008067          	ret

0000000080001814 <_ZN7CThread5yieldEv>:

void CThread::yield()
{
    80001814:	ff010113          	addi	sp,sp,-16
    80001818:	00113423          	sd	ra,8(sp)
    8000181c:	00813023          	sd	s0,0(sp)
    80001820:	01010413          	addi	s0,sp,16
    // Push all registers
    pushregs();
    80001824:	00000097          	auipc	ra,0x0
    80001828:	f60080e7          	jalr	-160(ra) # 80001784 <_ZN7CThread8pushregsEv>

    // Switch context as suitable
    dispatch();
    8000182c:	00000097          	auipc	ra,0x0
    80001830:	d18080e7          	jalr	-744(ra) # 80001544 <_ZN7CThread8dispatchEv>

    popregs();
    80001834:	00000097          	auipc	ra,0x0
    80001838:	ec0080e7          	jalr	-320(ra) # 800016f4 <_ZN7CThread7popregsEv>
}
    8000183c:	00813083          	ld	ra,8(sp)
    80001840:	00013403          	ld	s0,0(sp)
    80001844:	01010113          	addi	sp,sp,16
    80001848:	00008067          	ret

000000008000184c <_ZN9GetBufferC1Ei>:
// Created by os on 6/30/22.
//

#include "../h/GetBuffer.h"
GetBuffer* GetBuffer::getBuffer = nullptr;
GetBuffer::GetBuffer(int _cap){
    8000184c:	fe010113          	addi	sp,sp,-32
    80001850:	00113c23          	sd	ra,24(sp)
    80001854:	00813823          	sd	s0,16(sp)
    80001858:	00913423          	sd	s1,8(sp)
    8000185c:	02010413          	addi	s0,sp,32
    80001860:	00050493          	mv	s1,a0
    cap=_cap;
    80001864:	00b52023          	sw	a1,0(a0)
    head=0;
    80001868:	00052823          	sw	zero,16(a0)
    tail=0;
    8000186c:	00052a23          	sw	zero,20(a0)
    buffer =(char*) MemoryAllocator::getInstance().allocate(cap*sizeof (char));
    80001870:	00002097          	auipc	ra,0x2
    80001874:	314080e7          	jalr	788(ra) # 80003b84 <_ZN15MemoryAllocator11getInstanceEv>
    80001878:	0004a583          	lw	a1,0(s1)
    8000187c:	00002097          	auipc	ra,0x2
    80001880:	184080e7          	jalr	388(ra) # 80003a00 <_ZN15MemoryAllocator8allocateEm>
    80001884:	00a4b423          	sd	a0,8(s1)
    space = cap;
    80001888:	0004a783          	lw	a5,0(s1)
    8000188c:	00f4ac23          	sw	a5,24(s1)
    sem_open(&itemAvailable, 0);
    80001890:	00000593          	li	a1,0
    80001894:	02048513          	addi	a0,s1,32
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	9f8080e7          	jalr	-1544(ra) # 80001290 <_Z8sem_openPP10CSemaphorej>
}
    800018a0:	01813083          	ld	ra,24(sp)
    800018a4:	01013403          	ld	s0,16(sp)
    800018a8:	00813483          	ld	s1,8(sp)
    800018ac:	02010113          	addi	sp,sp,32
    800018b0:	00008067          	ret

00000000800018b4 <_ZN9GetBufferD1Ev>:

GetBuffer::~GetBuffer() {
    800018b4:	fe010113          	addi	sp,sp,-32
    800018b8:	00113c23          	sd	ra,24(sp)
    800018bc:	00813823          	sd	s0,16(sp)
    800018c0:	00913423          	sd	s1,8(sp)
    800018c4:	02010413          	addi	s0,sp,32
    800018c8:	00050493          	mv	s1,a0
    mem_free(buffer);
    800018cc:	00853503          	ld	a0,8(a0)
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	884080e7          	jalr	-1916(ra) # 80001154 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800018d8:	0204b503          	ld	a0,32(s1)
    800018dc:	00000097          	auipc	ra,0x0
    800018e0:	9e4080e7          	jalr	-1564(ra) # 800012c0 <_Z9sem_closeP10CSemaphore>
}
    800018e4:	01813083          	ld	ra,24(sp)
    800018e8:	01013403          	ld	s0,16(sp)
    800018ec:	00813483          	ld	s1,8(sp)
    800018f0:	02010113          	addi	sp,sp,32
    800018f4:	00008067          	ret

00000000800018f8 <_ZN9GetBuffer3putEc>:

void GetBuffer::put(char val) {
    if(space>0)space--;
    800018f8:	01852783          	lw	a5,24(a0)
    800018fc:	04f05e63          	blez	a5,80001958 <_ZN9GetBuffer3putEc+0x60>
void GetBuffer::put(char val) {
    80001900:	ff010113          	addi	sp,sp,-16
    80001904:	00113423          	sd	ra,8(sp)
    80001908:	00813023          	sd	s0,0(sp)
    8000190c:	01010413          	addi	s0,sp,16
    if(space>0)space--;
    80001910:	fff7879b          	addiw	a5,a5,-1
    80001914:	00f52c23          	sw	a5,24(a0)
    else return;
    buffer[tail] = val;
    80001918:	00853783          	ld	a5,8(a0)
    8000191c:	01452703          	lw	a4,20(a0)
    80001920:	00e787b3          	add	a5,a5,a4
    80001924:	00b78023          	sb	a1,0(a5)
    tail = (tail + 1) % cap;
    80001928:	01452783          	lw	a5,20(a0)
    8000192c:	0017879b          	addiw	a5,a5,1
    80001930:	00052703          	lw	a4,0(a0)
    80001934:	02e7e7bb          	remw	a5,a5,a4
    80001938:	00f52a23          	sw	a5,20(a0)

    itemAvailable->signal();
    8000193c:	02053503          	ld	a0,32(a0)
    80001940:	00002097          	auipc	ra,0x2
    80001944:	398080e7          	jalr	920(ra) # 80003cd8 <_ZN10CSemaphore6signalEv>
}
    80001948:	00813083          	ld	ra,8(sp)
    8000194c:	00013403          	ld	s0,0(sp)
    80001950:	01010113          	addi	sp,sp,16
    80001954:	00008067          	ret
    80001958:	00008067          	ret

000000008000195c <_ZN9GetBuffer3getEv>:

char GetBuffer::get() {
    8000195c:	fe010113          	addi	sp,sp,-32
    80001960:	00113c23          	sd	ra,24(sp)
    80001964:	00813823          	sd	s0,16(sp)
    80001968:	00913423          	sd	s1,8(sp)
    8000196c:	02010413          	addi	s0,sp,32
    80001970:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80001974:	02053503          	ld	a0,32(a0)
    80001978:	00002097          	auipc	ra,0x2
    8000197c:	2c4080e7          	jalr	708(ra) # 80003c3c <_ZN10CSemaphore4waitEv>

    char ret = buffer[head];
    80001980:	0084b703          	ld	a4,8(s1)
    80001984:	0104a783          	lw	a5,16(s1)
    80001988:	00f70733          	add	a4,a4,a5
    8000198c:	00074503          	lbu	a0,0(a4)
    head = (head + 1) % cap;
    80001990:	0017879b          	addiw	a5,a5,1
    80001994:	0004a703          	lw	a4,0(s1)
    80001998:	02e7e7bb          	remw	a5,a5,a4
    8000199c:	00f4a823          	sw	a5,16(s1)

    space++;
    800019a0:	0184a783          	lw	a5,24(s1)
    800019a4:	0017879b          	addiw	a5,a5,1
    800019a8:	00f4ac23          	sw	a5,24(s1)

    return ret;
}
    800019ac:	01813083          	ld	ra,24(sp)
    800019b0:	01013403          	ld	s0,16(sp)
    800019b4:	00813483          	ld	s1,8(sp)
    800019b8:	02010113          	addi	sp,sp,32
    800019bc:	00008067          	ret

00000000800019c0 <_ZN9GetBuffer6getCntEv>:

int GetBuffer::getCnt() {
    800019c0:	ff010113          	addi	sp,sp,-16
    800019c4:	00813423          	sd	s0,8(sp)
    800019c8:	01010413          	addi	s0,sp,16
    int ret;

    if (tail >= head) {
    800019cc:	01452783          	lw	a5,20(a0)
    800019d0:	01052703          	lw	a4,16(a0)
    800019d4:	00e7ca63          	blt	a5,a4,800019e8 <_ZN9GetBuffer6getCntEv+0x28>
        ret = tail - head;
    800019d8:	40e7853b          	subw	a0,a5,a4
        ret = cap - head + tail;
    }


    return ret;
    800019dc:	00813403          	ld	s0,8(sp)
    800019e0:	01010113          	addi	sp,sp,16
    800019e4:	00008067          	ret
        ret = cap - head + tail;
    800019e8:	00052503          	lw	a0,0(a0)
    800019ec:	40e5053b          	subw	a0,a0,a4
    800019f0:	00f5053b          	addw	a0,a0,a5
    800019f4:	fe9ff06f          	j	800019dc <_ZN9GetBuffer6getCntEv+0x1c>

00000000800019f8 <_ZN9Scheduler3putEP7CThread>:

#include "../h/Scheduler.h"
CThread* Scheduler::tail = nullptr;
CThread* Scheduler::head = nullptr;

void Scheduler::put(CThread *thread) {
    800019f8:	ff010113          	addi	sp,sp,-16
    800019fc:	00813423          	sd	s0,8(sp)
    80001a00:	01010413          	addi	s0,sp,16
    if(CThread::idle == thread) return;
    80001a04:	00007797          	auipc	a5,0x7
    80001a08:	7447b783          	ld	a5,1860(a5) # 80009148 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a0c:	0007b783          	ld	a5,0(a5)
    80001a10:	02a78663          	beq	a5,a0,80001a3c <_ZN9Scheduler3putEP7CThread+0x44>
    thread->status=CThread::READY;
    80001a14:	00052823          	sw	zero,16(a0)
    if(head == nullptr){
    80001a18:	00008797          	auipc	a5,0x8
    80001a1c:	8107b783          	ld	a5,-2032(a5) # 80009228 <_ZN9Scheduler4headE>
    80001a20:	02078463          	beqz	a5,80001a48 <_ZN9Scheduler3putEP7CThread+0x50>
        head=tail=thread;
        thread->next= nullptr;
        return;
    }
    else{
        tail->next=thread;
    80001a24:	00008797          	auipc	a5,0x8
    80001a28:	80478793          	addi	a5,a5,-2044 # 80009228 <_ZN9Scheduler4headE>
    80001a2c:	0087b703          	ld	a4,8(a5)
    80001a30:	00a73423          	sd	a0,8(a4)
        tail=tail->next;
    80001a34:	00a7b423          	sd	a0,8(a5)
        tail->next= nullptr;
    80001a38:	00053423          	sd	zero,8(a0)
    }
}
    80001a3c:	00813403          	ld	s0,8(sp)
    80001a40:	01010113          	addi	sp,sp,16
    80001a44:	00008067          	ret
        head=tail=thread;
    80001a48:	00007797          	auipc	a5,0x7
    80001a4c:	7e078793          	addi	a5,a5,2016 # 80009228 <_ZN9Scheduler4headE>
    80001a50:	00a7b423          	sd	a0,8(a5)
    80001a54:	00a7b023          	sd	a0,0(a5)
        thread->next= nullptr;
    80001a58:	00053423          	sd	zero,8(a0)
        return;
    80001a5c:	fe1ff06f          	j	80001a3c <_ZN9Scheduler3putEP7CThread+0x44>

0000000080001a60 <_ZN9Scheduler3getEv>:

CThread *Scheduler::get() {
    80001a60:	ff010113          	addi	sp,sp,-16
    80001a64:	00813423          	sd	s0,8(sp)
    80001a68:	01010413          	addi	s0,sp,16
    if(head== nullptr)return CThread::idle;
    80001a6c:	00007517          	auipc	a0,0x7
    80001a70:	7bc53503          	ld	a0,1980(a0) # 80009228 <_ZN9Scheduler4headE>
    80001a74:	02050663          	beqz	a0,80001aa0 <_ZN9Scheduler3getEv+0x40>
    if(tail==head){
    80001a78:	00007797          	auipc	a5,0x7
    80001a7c:	7b87b783          	ld	a5,1976(a5) # 80009230 <_ZN9Scheduler4tailE>
    80001a80:	02f50863          	beq	a0,a5,80001ab0 <_ZN9Scheduler3getEv+0x50>
        tail= nullptr;
        head= nullptr;
        return thr;
    }
    CThread *thr=head;
    head=head->next;
    80001a84:	00853783          	ld	a5,8(a0)
    80001a88:	00007717          	auipc	a4,0x7
    80001a8c:	7af73023          	sd	a5,1952(a4) # 80009228 <_ZN9Scheduler4headE>
    thr->next= nullptr;
    80001a90:	00053423          	sd	zero,8(a0)
    return thr;

}
    80001a94:	00813403          	ld	s0,8(sp)
    80001a98:	01010113          	addi	sp,sp,16
    80001a9c:	00008067          	ret
    if(head== nullptr)return CThread::idle;
    80001aa0:	00007797          	auipc	a5,0x7
    80001aa4:	6a87b783          	ld	a5,1704(a5) # 80009148 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001aa8:	0007b503          	ld	a0,0(a5)
    80001aac:	fe9ff06f          	j	80001a94 <_ZN9Scheduler3getEv+0x34>
        tail= nullptr;
    80001ab0:	00007797          	auipc	a5,0x7
    80001ab4:	77878793          	addi	a5,a5,1912 # 80009228 <_ZN9Scheduler4headE>
    80001ab8:	0007b423          	sd	zero,8(a5)
        head= nullptr;
    80001abc:	0007b023          	sd	zero,0(a5)
        return thr;
    80001ac0:	fd5ff06f          	j	80001a94 <_ZN9Scheduler3getEv+0x34>

0000000080001ac4 <_ZN9Scheduler11getInstanceEv>:

Scheduler &Scheduler::getInstance() {
    80001ac4:	ff010113          	addi	sp,sp,-16
    80001ac8:	00813423          	sd	s0,8(sp)
    80001acc:	01010413          	addi	s0,sp,16
    static Scheduler instance;
    80001ad0:	00007797          	auipc	a5,0x7
    80001ad4:	7687c783          	lbu	a5,1896(a5) # 80009238 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    80001ad8:	00079863          	bnez	a5,80001ae8 <_ZN9Scheduler11getInstanceEv+0x24>
    80001adc:	00100793          	li	a5,1
    80001ae0:	00007717          	auipc	a4,0x7
    80001ae4:	74f70c23          	sb	a5,1880(a4) # 80009238 <_ZGVZN9Scheduler11getInstanceEvE8instance>
    return instance;
}
    80001ae8:	00007517          	auipc	a0,0x7
    80001aec:	75850513          	addi	a0,a0,1880 # 80009240 <_ZZN9Scheduler11getInstanceEvE8instance>
    80001af0:	00813403          	ld	s0,8(sp)
    80001af4:	01010113          	addi	sp,sp,16
    80001af8:	00008067          	ret

0000000080001afc <_ZN9SchedulerC1Ev>:

    80001afc:	ff010113          	addi	sp,sp,-16
    80001b00:	00813423          	sd	s0,8(sp)
    80001b04:	01010413          	addi	s0,sp,16
    80001b08:	00813403          	ld	s0,8(sp)
    80001b0c:	01010113          	addi	sp,sp,16
    80001b10:	00008067          	ret

0000000080001b14 <_Z9sleepyRunPv>:

#include "printing.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    80001b14:	fe010113          	addi	sp,sp,-32
    80001b18:	00113c23          	sd	ra,24(sp)
    80001b1c:	00813823          	sd	s0,16(sp)
    80001b20:	00913423          	sd	s1,8(sp)
    80001b24:	01213023          	sd	s2,0(sp)
    80001b28:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80001b2c:	00053903          	ld	s2,0(a0)
    int i = 6;
    80001b30:	00600493          	li	s1,6
    while (--i > 0) {
    80001b34:	fff4849b          	addiw	s1,s1,-1
    80001b38:	04905463          	blez	s1,80001b80 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    80001b3c:	00005517          	auipc	a0,0x5
    80001b40:	4e450513          	addi	a0,a0,1252 # 80007020 <CONSOLE_STATUS+0x10>
    80001b44:	00003097          	auipc	ra,0x3
    80001b48:	810080e7          	jalr	-2032(ra) # 80004354 <_Z11printStringPKc>
        printInt(sleep_time);
    80001b4c:	00000613          	li	a2,0
    80001b50:	00a00593          	li	a1,10
    80001b54:	0009051b          	sext.w	a0,s2
    80001b58:	00003097          	auipc	ra,0x3
    80001b5c:	994080e7          	jalr	-1644(ra) # 800044ec <_Z8printIntiii>
        printString(" !\n");
    80001b60:	00005517          	auipc	a0,0x5
    80001b64:	4c850513          	addi	a0,a0,1224 # 80007028 <CONSOLE_STATUS+0x18>
    80001b68:	00002097          	auipc	ra,0x2
    80001b6c:	7ec080e7          	jalr	2028(ra) # 80004354 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80001b70:	00090513          	mv	a0,s2
    80001b74:	fffff097          	auipc	ra,0xfffff
    80001b78:	7d0080e7          	jalr	2000(ra) # 80001344 <_Z10time_sleepm>
    while (--i > 0) {
    80001b7c:	fb9ff06f          	j	80001b34 <_Z9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80001b80:	00a00793          	li	a5,10
    80001b84:	02f95933          	divu	s2,s2,a5
    80001b88:	fff90913          	addi	s2,s2,-1
    80001b8c:	00007797          	auipc	a5,0x7
    80001b90:	6bc78793          	addi	a5,a5,1724 # 80009248 <_ZN19ConsumerProducerCPP9threadEndE>
    80001b94:	01278933          	add	s2,a5,s2
    80001b98:	00100793          	li	a5,1
    80001b9c:	00f90423          	sb	a5,8(s2)
}
    80001ba0:	01813083          	ld	ra,24(sp)
    80001ba4:	01013403          	ld	s0,16(sp)
    80001ba8:	00813483          	ld	s1,8(sp)
    80001bac:	00013903          	ld	s2,0(sp)
    80001bb0:	02010113          	addi	sp,sp,32
    80001bb4:	00008067          	ret

0000000080001bb8 <_Z7idleFunPv>:
#include "../h/GetBuffer.h"
#include "../test/Threads_CPP_API_test.hpp"

extern "C" void interruptvec();

void idleFun(void*){
    80001bb8:	ff010113          	addi	sp,sp,-16
    80001bbc:	00113423          	sd	ra,8(sp)
    80001bc0:	00813023          	sd	s0,0(sp)
    80001bc4:	01010413          	addi	s0,sp,16
    80001bc8:	00c0006f          	j	80001bd4 <_Z7idleFunPv+0x1c>
    while(1){
        if(!Scheduler::getInstance().headNull()) thread_dispatch();
    80001bcc:	fffff097          	auipc	ra,0xfffff
    80001bd0:	658080e7          	jalr	1624(ra) # 80001224 <_Z15thread_dispatchv>
    80001bd4:	00000097          	auipc	ra,0x0
    80001bd8:	ef0080e7          	jalr	-272(ra) # 80001ac4 <_ZN9Scheduler11getInstanceEv>
    Scheduler();
    static CThread *tail;
    static CThread *head;

public:
    static bool headNull(){return head==nullptr;}
    80001bdc:	00007797          	auipc	a5,0x7
    80001be0:	57c7b783          	ld	a5,1404(a5) # 80009158 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001be4:	0007b783          	ld	a5,0(a5)
    80001be8:	fe0792e3          	bnez	a5,80001bcc <_Z7idleFunPv+0x14>
    80001bec:	fe9ff06f          	j	80001bd4 <_Z7idleFunPv+0x1c>

0000000080001bf0 <_Z4funAPv>:
    while (1);

    return 0;
}

void funA(void*){
    80001bf0:	ff010113          	addi	sp,sp,-16
    80001bf4:	00113423          	sd	ra,8(sp)
    80001bf8:	00813023          	sd	s0,0(sp)
    80001bfc:	01010413          	addi	s0,sp,16
    while(1) {
        putc('A');
    80001c00:	04100513          	li	a0,65
    80001c04:	fffff097          	auipc	ra,0xfffff
    80001c08:	79c080e7          	jalr	1948(ra) # 800013a0 <_Z4putcc>
        time_sleep(5);
    80001c0c:	00500513          	li	a0,5
    80001c10:	fffff097          	auipc	ra,0xfffff
    80001c14:	734080e7          	jalr	1844(ra) # 80001344 <_Z10time_sleepm>
    while(1) {
    80001c18:	fe9ff06f          	j	80001c00 <_Z4funAPv+0x10>

0000000080001c1c <_Z4funBPv>:
    }
}
void funB(void*){
    80001c1c:	ff010113          	addi	sp,sp,-16
    80001c20:	00113423          	sd	ra,8(sp)
    80001c24:	00813023          	sd	s0,0(sp)
    80001c28:	01010413          	addi	s0,sp,16
    while(1) {
        putc('B');
    80001c2c:	04200513          	li	a0,66
    80001c30:	fffff097          	auipc	ra,0xfffff
    80001c34:	770080e7          	jalr	1904(ra) # 800013a0 <_Z4putcc>
        time_sleep(5);
    80001c38:	00500513          	li	a0,5
    80001c3c:	fffff097          	auipc	ra,0xfffff
    80001c40:	708080e7          	jalr	1800(ra) # 80001344 <_Z10time_sleepm>
    while(1) {
    80001c44:	fe9ff06f          	j	80001c2c <_Z4funBPv+0x10>

0000000080001c48 <_Z4funEPv>:
    }
}
void funE(void*){
    80001c48:	ff010113          	addi	sp,sp,-16
    80001c4c:	00113423          	sd	ra,8(sp)
    80001c50:	00813023          	sd	s0,0(sp)
    80001c54:	01010413          	addi	s0,sp,16
    while(1){
        char c = Console::getc();
    80001c58:	00002097          	auipc	ra,0x2
    80001c5c:	9f0080e7          	jalr	-1552(ra) # 80003648 <_ZN7Console4getcEv>
        Console::putc(c);
    80001c60:	00002097          	auipc	ra,0x2
    80001c64:	a10080e7          	jalr	-1520(ra) # 80003670 <_ZN7Console4putcEc>
    while(1){
    80001c68:	ff1ff06f          	j	80001c58 <_Z4funEPv+0x10>

0000000080001c6c <_ZN19ConsumerProducerCPP20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    80001c6c:	f8010113          	addi	sp,sp,-128
    80001c70:	06113c23          	sd	ra,120(sp)
    80001c74:	06813823          	sd	s0,112(sp)
    80001c78:	06913423          	sd	s1,104(sp)
    80001c7c:	07213023          	sd	s2,96(sp)
    80001c80:	05313c23          	sd	s3,88(sp)
    80001c84:	05413823          	sd	s4,80(sp)
    80001c88:	05513423          	sd	s5,72(sp)
    80001c8c:	05613023          	sd	s6,64(sp)
    80001c90:	03713c23          	sd	s7,56(sp)
    80001c94:	03813823          	sd	s8,48(sp)
    80001c98:	03913423          	sd	s9,40(sp)
    80001c9c:	08010413          	addi	s0,sp,128
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    80001ca0:	00010c13          	mv	s8,sp
        printString("Unesite broj proizvodjaca?\n");
    80001ca4:	00005517          	auipc	a0,0x5
    80001ca8:	38c50513          	addi	a0,a0,908 # 80007030 <CONSOLE_STATUS+0x20>
    80001cac:	00002097          	auipc	ra,0x2
    80001cb0:	6a8080e7          	jalr	1704(ra) # 80004354 <_Z11printStringPKc>
        getString(input, 30);
    80001cb4:	01e00593          	li	a1,30
    80001cb8:	f8040493          	addi	s1,s0,-128
    80001cbc:	00048513          	mv	a0,s1
    80001cc0:	00002097          	auipc	ra,0x2
    80001cc4:	710080e7          	jalr	1808(ra) # 800043d0 <_Z9getStringPci>
        threadNum = stringToInt(input);
    80001cc8:	00048513          	mv	a0,s1
    80001ccc:	00002097          	auipc	ra,0x2
    80001cd0:	7d0080e7          	jalr	2000(ra) # 8000449c <_Z11stringToIntPKc>
    80001cd4:	00050993          	mv	s3,a0
        printString("Unesite velicinu bafera?\n");
    80001cd8:	00005517          	auipc	a0,0x5
    80001cdc:	37850513          	addi	a0,a0,888 # 80007050 <CONSOLE_STATUS+0x40>
    80001ce0:	00002097          	auipc	ra,0x2
    80001ce4:	674080e7          	jalr	1652(ra) # 80004354 <_Z11printStringPKc>
        getString(input, 30);
    80001ce8:	01e00593          	li	a1,30
    80001cec:	00048513          	mv	a0,s1
    80001cf0:	00002097          	auipc	ra,0x2
    80001cf4:	6e0080e7          	jalr	1760(ra) # 800043d0 <_Z9getStringPci>
        n = stringToInt(input);
    80001cf8:	00048513          	mv	a0,s1
    80001cfc:	00002097          	auipc	ra,0x2
    80001d00:	7a0080e7          	jalr	1952(ra) # 8000449c <_Z11stringToIntPKc>
    80001d04:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    80001d08:	00005517          	auipc	a0,0x5
    80001d0c:	36850513          	addi	a0,a0,872 # 80007070 <CONSOLE_STATUS+0x60>
    80001d10:	00002097          	auipc	ra,0x2
    80001d14:	644080e7          	jalr	1604(ra) # 80004354 <_Z11printStringPKc>
    80001d18:	00000613          	li	a2,0
    80001d1c:	00a00593          	li	a1,10
    80001d20:	00098513          	mv	a0,s3
    80001d24:	00002097          	auipc	ra,0x2
    80001d28:	7c8080e7          	jalr	1992(ra) # 800044ec <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    80001d2c:	00005517          	auipc	a0,0x5
    80001d30:	35c50513          	addi	a0,a0,860 # 80007088 <CONSOLE_STATUS+0x78>
    80001d34:	00002097          	auipc	ra,0x2
    80001d38:	620080e7          	jalr	1568(ra) # 80004354 <_Z11printStringPKc>
    80001d3c:	00000613          	li	a2,0
    80001d40:	00a00593          	li	a1,10
    80001d44:	00048513          	mv	a0,s1
    80001d48:	00002097          	auipc	ra,0x2
    80001d4c:	7a4080e7          	jalr	1956(ra) # 800044ec <_Z8printIntiii>
        printString(".\n");
    80001d50:	00005517          	auipc	a0,0x5
    80001d54:	35050513          	addi	a0,a0,848 # 800070a0 <CONSOLE_STATUS+0x90>
    80001d58:	00002097          	auipc	ra,0x2
    80001d5c:	5fc080e7          	jalr	1532(ra) # 80004354 <_Z11printStringPKc>
        if(threadNum > n) {
    80001d60:	0334c463          	blt	s1,s3,80001d88 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x11c>
        } else if (threadNum < 1) {
    80001d64:	03305c63          	blez	s3,80001d9c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x130>
        BufferCPP *buffer = new BufferCPP(n);
    80001d68:	03800513          	li	a0,56
    80001d6c:	00001097          	auipc	ra,0x1
    80001d70:	580080e7          	jalr	1408(ra) # 800032ec <_Znwm>
    80001d74:	00050a93          	mv	s5,a0
    80001d78:	00048593          	mv	a1,s1
    80001d7c:	00003097          	auipc	ra,0x3
    80001d80:	884080e7          	jalr	-1916(ra) # 80004600 <_ZN9BufferCPPC1Ei>
    80001d84:	0300006f          	j	80001db4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x148>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80001d88:	00005517          	auipc	a0,0x5
    80001d8c:	32050513          	addi	a0,a0,800 # 800070a8 <CONSOLE_STATUS+0x98>
    80001d90:	00002097          	auipc	ra,0x2
    80001d94:	5c4080e7          	jalr	1476(ra) # 80004354 <_Z11printStringPKc>
            return;
    80001d98:	0140006f          	j	80001dac <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x140>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    80001d9c:	00005517          	auipc	a0,0x5
    80001da0:	34c50513          	addi	a0,a0,844 # 800070e8 <CONSOLE_STATUS+0xd8>
    80001da4:	00002097          	auipc	ra,0x2
    80001da8:	5b0080e7          	jalr	1456(ra) # 80004354 <_Z11printStringPKc>
            return;
    80001dac:	000c0113          	mv	sp,s8
    80001db0:	21c0006f          	j	80001fcc <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x360>
        waitForAll = new Semaphore(0);
    80001db4:	01000513          	li	a0,16
    80001db8:	00001097          	auipc	ra,0x1
    80001dbc:	534080e7          	jalr	1332(ra) # 800032ec <_Znwm>
    80001dc0:	00050493          	mv	s1,a0
    80001dc4:	00000593          	li	a1,0
    80001dc8:	00001097          	auipc	ra,0x1
    80001dcc:	780080e7          	jalr	1920(ra) # 80003548 <_ZN9SemaphoreC1Ej>
    80001dd0:	00007717          	auipc	a4,0x7
    80001dd4:	47870713          	addi	a4,a4,1144 # 80009248 <_ZN19ConsumerProducerCPP9threadEndE>
    80001dd8:	00973823          	sd	s1,16(a4)
        Thread *producers[threadNum];
    80001ddc:	00399793          	slli	a5,s3,0x3
    80001de0:	00f78793          	addi	a5,a5,15
    80001de4:	ff07f793          	andi	a5,a5,-16
    80001de8:	40f10133          	sub	sp,sp,a5
    80001dec:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    80001df0:	0019869b          	addiw	a3,s3,1
    80001df4:	00169793          	slli	a5,a3,0x1
    80001df8:	00d787b3          	add	a5,a5,a3
    80001dfc:	00379793          	slli	a5,a5,0x3
    80001e00:	00f78793          	addi	a5,a5,15
    80001e04:	ff07f793          	andi	a5,a5,-16
    80001e08:	40f10133          	sub	sp,sp,a5
    80001e0c:	00010b13          	mv	s6,sp
        threadData[threadNum].id = threadNum;
    80001e10:	00199493          	slli	s1,s3,0x1
    80001e14:	013484b3          	add	s1,s1,s3
    80001e18:	00349493          	slli	s1,s1,0x3
    80001e1c:	009b04b3          	add	s1,s6,s1
    80001e20:	0134a023          	sw	s3,0(s1)
        threadData[threadNum].buffer = buffer;
    80001e24:	0154b423          	sd	s5,8(s1)
        threadData[threadNum].sem = waitForAll;
    80001e28:	01073783          	ld	a5,16(a4)
    80001e2c:	00f4b823          	sd	a5,16(s1)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80001e30:	01800513          	li	a0,24
    80001e34:	00001097          	auipc	ra,0x1
    80001e38:	4b8080e7          	jalr	1208(ra) # 800032ec <_Znwm>
    80001e3c:	00050b93          	mv	s7,a0
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    80001e40:	00001097          	auipc	ra,0x1
    80001e44:	6c4080e7          	jalr	1732(ra) # 80003504 <_ZN6ThreadC1Ev>
    80001e48:	00007797          	auipc	a5,0x7
    80001e4c:	19078793          	addi	a5,a5,400 # 80008fd8 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80001e50:	00fbb023          	sd	a5,0(s7)
    80001e54:	009bb823          	sd	s1,16(s7)
        consumer->start();
    80001e58:	000b8513          	mv	a0,s7
    80001e5c:	00001097          	auipc	ra,0x1
    80001e60:	5d4080e7          	jalr	1492(ra) # 80003430 <_ZN6Thread5startEv>
        threadData[0].id = 0;
    80001e64:	000b2023          	sw	zero,0(s6)
        threadData[0].buffer = buffer;
    80001e68:	015b3423          	sd	s5,8(s6)
        threadData[0].sem = waitForAll;
    80001e6c:	00007797          	auipc	a5,0x7
    80001e70:	3ec7b783          	ld	a5,1004(a5) # 80009258 <_ZN19ConsumerProducerCPP10waitForAllE>
    80001e74:	00fb3823          	sd	a5,16(s6)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80001e78:	01800513          	li	a0,24
    80001e7c:	00001097          	auipc	ra,0x1
    80001e80:	470080e7          	jalr	1136(ra) # 800032ec <_Znwm>
    80001e84:	00050493          	mv	s1,a0
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80001e88:	00001097          	auipc	ra,0x1
    80001e8c:	67c080e7          	jalr	1660(ra) # 80003504 <_ZN6ThreadC1Ev>
    80001e90:	00007797          	auipc	a5,0x7
    80001e94:	0f878793          	addi	a5,a5,248 # 80008f88 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80001e98:	00f4b023          	sd	a5,0(s1)
    80001e9c:	0164b823          	sd	s6,16(s1)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80001ea0:	009a3023          	sd	s1,0(s4)
        producers[0]->start();
    80001ea4:	00048513          	mv	a0,s1
    80001ea8:	00001097          	auipc	ra,0x1
    80001eac:	588080e7          	jalr	1416(ra) # 80003430 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80001eb0:	00100913          	li	s2,1
    80001eb4:	0300006f          	j	80001ee4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x278>
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80001eb8:	00007797          	auipc	a5,0x7
    80001ebc:	0f878793          	addi	a5,a5,248 # 80008fb0 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80001ec0:	00fcb023          	sd	a5,0(s9)
    80001ec4:	009cb823          	sd	s1,16(s9)
            producers[i] = new Producer(&threadData[i]);
    80001ec8:	00391793          	slli	a5,s2,0x3
    80001ecc:	00fa07b3          	add	a5,s4,a5
    80001ed0:	0197b023          	sd	s9,0(a5)
            producers[i]->start();
    80001ed4:	000c8513          	mv	a0,s9
    80001ed8:	00001097          	auipc	ra,0x1
    80001edc:	558080e7          	jalr	1368(ra) # 80003430 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80001ee0:	0019091b          	addiw	s2,s2,1
    80001ee4:	05395263          	bge	s2,s3,80001f28 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2bc>
            threadData[i].id = i;
    80001ee8:	00191493          	slli	s1,s2,0x1
    80001eec:	012484b3          	add	s1,s1,s2
    80001ef0:	00349493          	slli	s1,s1,0x3
    80001ef4:	009b04b3          	add	s1,s6,s1
    80001ef8:	0124a023          	sw	s2,0(s1)
            threadData[i].buffer = buffer;
    80001efc:	0154b423          	sd	s5,8(s1)
            threadData[i].sem = waitForAll;
    80001f00:	00007797          	auipc	a5,0x7
    80001f04:	3587b783          	ld	a5,856(a5) # 80009258 <_ZN19ConsumerProducerCPP10waitForAllE>
    80001f08:	00f4b823          	sd	a5,16(s1)
            producers[i] = new Producer(&threadData[i]);
    80001f0c:	01800513          	li	a0,24
    80001f10:	00001097          	auipc	ra,0x1
    80001f14:	3dc080e7          	jalr	988(ra) # 800032ec <_Znwm>
    80001f18:	00050c93          	mv	s9,a0
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80001f1c:	00001097          	auipc	ra,0x1
    80001f20:	5e8080e7          	jalr	1512(ra) # 80003504 <_ZN6ThreadC1Ev>
    80001f24:	f95ff06f          	j	80001eb8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x24c>
        Thread::dispatch();
    80001f28:	00001097          	auipc	ra,0x1
    80001f2c:	538080e7          	jalr	1336(ra) # 80003460 <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    80001f30:	00000493          	li	s1,0
    80001f34:	0099ce63          	blt	s3,s1,80001f50 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2e4>
            waitForAll->wait();
    80001f38:	00007517          	auipc	a0,0x7
    80001f3c:	32053503          	ld	a0,800(a0) # 80009258 <_ZN19ConsumerProducerCPP10waitForAllE>
    80001f40:	00001097          	auipc	ra,0x1
    80001f44:	640080e7          	jalr	1600(ra) # 80003580 <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    80001f48:	0014849b          	addiw	s1,s1,1
    80001f4c:	fe9ff06f          	j	80001f34 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2c8>
        delete waitForAll;
    80001f50:	00007517          	auipc	a0,0x7
    80001f54:	30853503          	ld	a0,776(a0) # 80009258 <_ZN19ConsumerProducerCPP10waitForAllE>
    80001f58:	00050863          	beqz	a0,80001f68 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2fc>
    80001f5c:	00053783          	ld	a5,0(a0)
    80001f60:	0087b783          	ld	a5,8(a5)
    80001f64:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    80001f68:	00000493          	li	s1,0
    80001f6c:	0080006f          	j	80001f74 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x308>
        for (int i = 0; i < threadNum; i++) {
    80001f70:	0014849b          	addiw	s1,s1,1
    80001f74:	0334d263          	bge	s1,s3,80001f98 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x32c>
            delete producers[i];
    80001f78:	00349793          	slli	a5,s1,0x3
    80001f7c:	00fa07b3          	add	a5,s4,a5
    80001f80:	0007b503          	ld	a0,0(a5)
    80001f84:	fe0506e3          	beqz	a0,80001f70 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
    80001f88:	00053783          	ld	a5,0(a0)
    80001f8c:	0087b783          	ld	a5,8(a5)
    80001f90:	000780e7          	jalr	a5
    80001f94:	fddff06f          	j	80001f70 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x304>
        delete consumer;
    80001f98:	000b8a63          	beqz	s7,80001fac <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x340>
    80001f9c:	000bb783          	ld	a5,0(s7)
    80001fa0:	0087b783          	ld	a5,8(a5)
    80001fa4:	000b8513          	mv	a0,s7
    80001fa8:	000780e7          	jalr	a5
        delete buffer;
    80001fac:	000a8e63          	beqz	s5,80001fc8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x35c>
    80001fb0:	000a8513          	mv	a0,s5
    80001fb4:	00003097          	auipc	ra,0x3
    80001fb8:	944080e7          	jalr	-1724(ra) # 800048f8 <_ZN9BufferCPPD1Ev>
    80001fbc:	000a8513          	mv	a0,s5
    80001fc0:	00001097          	auipc	ra,0x1
    80001fc4:	37c080e7          	jalr	892(ra) # 8000333c <_ZdlPv>
    80001fc8:	000c0113          	mv	sp,s8
    }
    80001fcc:	f8040113          	addi	sp,s0,-128
    80001fd0:	07813083          	ld	ra,120(sp)
    80001fd4:	07013403          	ld	s0,112(sp)
    80001fd8:	06813483          	ld	s1,104(sp)
    80001fdc:	06013903          	ld	s2,96(sp)
    80001fe0:	05813983          	ld	s3,88(sp)
    80001fe4:	05013a03          	ld	s4,80(sp)
    80001fe8:	04813a83          	ld	s5,72(sp)
    80001fec:	04013b03          	ld	s6,64(sp)
    80001ff0:	03813b83          	ld	s7,56(sp)
    80001ff4:	03013c03          	ld	s8,48(sp)
    80001ff8:	02813c83          	ld	s9,40(sp)
    80001ffc:	08010113          	addi	sp,sp,128
    80002000:	00008067          	ret
    80002004:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    80002008:	000a8513          	mv	a0,s5
    8000200c:	00001097          	auipc	ra,0x1
    80002010:	330080e7          	jalr	816(ra) # 8000333c <_ZdlPv>
    80002014:	00048513          	mv	a0,s1
    80002018:	00008097          	auipc	ra,0x8
    8000201c:	350080e7          	jalr	848(ra) # 8000a368 <_Unwind_Resume>
    80002020:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    80002024:	00048513          	mv	a0,s1
    80002028:	00001097          	auipc	ra,0x1
    8000202c:	314080e7          	jalr	788(ra) # 8000333c <_ZdlPv>
    80002030:	00090513          	mv	a0,s2
    80002034:	00008097          	auipc	ra,0x8
    80002038:	334080e7          	jalr	820(ra) # 8000a368 <_Unwind_Resume>
    8000203c:	00050493          	mv	s1,a0
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80002040:	000b8513          	mv	a0,s7
    80002044:	00001097          	auipc	ra,0x1
    80002048:	2f8080e7          	jalr	760(ra) # 8000333c <_ZdlPv>
    8000204c:	00048513          	mv	a0,s1
    80002050:	00008097          	auipc	ra,0x8
    80002054:	318080e7          	jalr	792(ra) # 8000a368 <_Unwind_Resume>
    80002058:	00050913          	mv	s2,a0
        producers[0] = new ProducerKeyborad(&threadData[0]);
    8000205c:	00048513          	mv	a0,s1
    80002060:	00001097          	auipc	ra,0x1
    80002064:	2dc080e7          	jalr	732(ra) # 8000333c <_ZdlPv>
    80002068:	00090513          	mv	a0,s2
    8000206c:	00008097          	auipc	ra,0x8
    80002070:	2fc080e7          	jalr	764(ra) # 8000a368 <_Unwind_Resume>
    80002074:	00050493          	mv	s1,a0
            producers[i] = new Producer(&threadData[i]);
    80002078:	000c8513          	mv	a0,s9
    8000207c:	00001097          	auipc	ra,0x1
    80002080:	2c0080e7          	jalr	704(ra) # 8000333c <_ZdlPv>
    80002084:	00048513          	mv	a0,s1
    80002088:	00008097          	auipc	ra,0x8
    8000208c:	2e0080e7          	jalr	736(ra) # 8000a368 <_Unwind_Resume>

0000000080002090 <_Z12testSleepingv>:

void testSleeping() {
    80002090:	fc010113          	addi	sp,sp,-64
    80002094:	02113c23          	sd	ra,56(sp)
    80002098:	02813823          	sd	s0,48(sp)
    8000209c:	02913423          	sd	s1,40(sp)
    800020a0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800020a4:	00a00793          	li	a5,10
    800020a8:	fcf43823          	sd	a5,-48(s0)
    800020ac:	01400793          	li	a5,20
    800020b0:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800020b4:	00000493          	li	s1,0
    800020b8:	02c0006f          	j	800020e4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800020bc:	00349793          	slli	a5,s1,0x3
    800020c0:	fd040613          	addi	a2,s0,-48
    800020c4:	00f60633          	add	a2,a2,a5
    800020c8:	00000597          	auipc	a1,0x0
    800020cc:	a4c58593          	addi	a1,a1,-1460 # 80001b14 <_Z9sleepyRunPv>
    800020d0:	fc040513          	addi	a0,s0,-64
    800020d4:	00f50533          	add	a0,a0,a5
    800020d8:	fffff097          	auipc	ra,0xfffff
    800020dc:	0e4080e7          	jalr	228(ra) # 800011bc <_Z13thread_createPP7CThreadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800020e0:	0014849b          	addiw	s1,s1,1
    800020e4:	00100793          	li	a5,1
    800020e8:	fc97dae3          	bge	a5,s1,800020bc <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800020ec:	00007797          	auipc	a5,0x7
    800020f0:	1647c783          	lbu	a5,356(a5) # 80009250 <finished>
    800020f4:	fe078ce3          	beqz	a5,800020ec <_Z12testSleepingv+0x5c>
    800020f8:	00007797          	auipc	a5,0x7
    800020fc:	1597c783          	lbu	a5,345(a5) # 80009251 <finished+0x1>
    80002100:	fe0786e3          	beqz	a5,800020ec <_Z12testSleepingv+0x5c>
}
    80002104:	03813083          	ld	ra,56(sp)
    80002108:	03013403          	ld	s0,48(sp)
    8000210c:	02813483          	ld	s1,40(sp)
    80002110:	04010113          	addi	sp,sp,64
    80002114:	00008067          	ret

0000000080002118 <_Z9fibonaccim>:
bool finishedA = false;
bool finishedB = false;
bool finishedC = false;
bool finishedD = false;

uint64 fibonacci(uint64 n) {
    80002118:	fe010113          	addi	sp,sp,-32
    8000211c:	00113c23          	sd	ra,24(sp)
    80002120:	00813823          	sd	s0,16(sp)
    80002124:	00913423          	sd	s1,8(sp)
    80002128:	01213023          	sd	s2,0(sp)
    8000212c:	02010413          	addi	s0,sp,32
    80002130:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002134:	00100793          	li	a5,1
    80002138:	02a7f863          	bgeu	a5,a0,80002168 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000213c:	00a00793          	li	a5,10
    80002140:	02f577b3          	remu	a5,a0,a5
    80002144:	02078e63          	beqz	a5,80002180 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002148:	fff48513          	addi	a0,s1,-1
    8000214c:	00000097          	auipc	ra,0x0
    80002150:	fcc080e7          	jalr	-52(ra) # 80002118 <_Z9fibonaccim>
    80002154:	00050913          	mv	s2,a0
    80002158:	ffe48513          	addi	a0,s1,-2
    8000215c:	00000097          	auipc	ra,0x0
    80002160:	fbc080e7          	jalr	-68(ra) # 80002118 <_Z9fibonaccim>
    80002164:	00a90533          	add	a0,s2,a0
}
    80002168:	01813083          	ld	ra,24(sp)
    8000216c:	01013403          	ld	s0,16(sp)
    80002170:	00813483          	ld	s1,8(sp)
    80002174:	00013903          	ld	s2,0(sp)
    80002178:	02010113          	addi	sp,sp,32
    8000217c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002180:	fffff097          	auipc	ra,0xfffff
    80002184:	0a4080e7          	jalr	164(ra) # 80001224 <_Z15thread_dispatchv>
    80002188:	fc1ff06f          	j	80002148 <_Z9fibonaccim+0x30>

000000008000218c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    8000218c:	fe010113          	addi	sp,sp,-32
    80002190:	00113c23          	sd	ra,24(sp)
    80002194:	00813823          	sd	s0,16(sp)
    80002198:	00913423          	sd	s1,8(sp)
    8000219c:	01213023          	sd	s2,0(sp)
    800021a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800021a4:	00000913          	li	s2,0
    800021a8:	0380006f          	j	800021e0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) {
 }
            thread_dispatch();
    800021ac:	fffff097          	auipc	ra,0xfffff
    800021b0:	078080e7          	jalr	120(ra) # 80001224 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800021b4:	00148493          	addi	s1,s1,1
    800021b8:	000027b7          	lui	a5,0x2
    800021bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800021c0:	0097ee63          	bltu	a5,s1,800021dc <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) {
    800021c4:	00000713          	li	a4,0
    800021c8:	000077b7          	lui	a5,0x7
    800021cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800021d0:	fce7eee3          	bltu	a5,a4,800021ac <_ZN7WorkerA11workerBodyAEPv+0x20>
    800021d4:	00170713          	addi	a4,a4,1
    800021d8:	ff1ff06f          	j	800021c8 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800021dc:	00190913          	addi	s2,s2,1
    800021e0:	00900793          	li	a5,9
    800021e4:	0527e063          	bltu	a5,s2,80002224 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800021e8:	00005517          	auipc	a0,0x5
    800021ec:	f3050513          	addi	a0,a0,-208 # 80007118 <CONSOLE_STATUS+0x108>
    800021f0:	00002097          	auipc	ra,0x2
    800021f4:	164080e7          	jalr	356(ra) # 80004354 <_Z11printStringPKc>
    800021f8:	00000613          	li	a2,0
    800021fc:	00a00593          	li	a1,10
    80002200:	0009051b          	sext.w	a0,s2
    80002204:	00002097          	auipc	ra,0x2
    80002208:	2e8080e7          	jalr	744(ra) # 800044ec <_Z8printIntiii>
    8000220c:	00005517          	auipc	a0,0x5
    80002210:	e5c50513          	addi	a0,a0,-420 # 80007068 <CONSOLE_STATUS+0x58>
    80002214:	00002097          	auipc	ra,0x2
    80002218:	140080e7          	jalr	320(ra) # 80004354 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000221c:	00000493          	li	s1,0
    80002220:	f99ff06f          	j	800021b8 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002224:	00005517          	auipc	a0,0x5
    80002228:	efc50513          	addi	a0,a0,-260 # 80007120 <CONSOLE_STATUS+0x110>
    8000222c:	00002097          	auipc	ra,0x2
    80002230:	128080e7          	jalr	296(ra) # 80004354 <_Z11printStringPKc>
    finishedA = true;
    80002234:	00100793          	li	a5,1
    80002238:	00007717          	auipc	a4,0x7
    8000223c:	02f70423          	sb	a5,40(a4) # 80009260 <finishedA>
}
    80002240:	01813083          	ld	ra,24(sp)
    80002244:	01013403          	ld	s0,16(sp)
    80002248:	00813483          	ld	s1,8(sp)
    8000224c:	00013903          	ld	s2,0(sp)
    80002250:	02010113          	addi	sp,sp,32
    80002254:	00008067          	ret

0000000080002258 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002258:	fe010113          	addi	sp,sp,-32
    8000225c:	00113c23          	sd	ra,24(sp)
    80002260:	00813823          	sd	s0,16(sp)
    80002264:	00913423          	sd	s1,8(sp)
    80002268:	01213023          	sd	s2,0(sp)
    8000226c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002270:	00000913          	li	s2,0
    80002274:	0380006f          	j	800022ac <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) {
 }
            thread_dispatch();
    80002278:	fffff097          	auipc	ra,0xfffff
    8000227c:	fac080e7          	jalr	-84(ra) # 80001224 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002280:	00148493          	addi	s1,s1,1
    80002284:	000027b7          	lui	a5,0x2
    80002288:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000228c:	0097ee63          	bltu	a5,s1,800022a8 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) {
    80002290:	00000713          	li	a4,0
    80002294:	000077b7          	lui	a5,0x7
    80002298:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000229c:	fce7eee3          	bltu	a5,a4,80002278 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800022a0:	00170713          	addi	a4,a4,1
    800022a4:	ff1ff06f          	j	80002294 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800022a8:	00190913          	addi	s2,s2,1
    800022ac:	00f00793          	li	a5,15
    800022b0:	0527e063          	bltu	a5,s2,800022f0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800022b4:	00005517          	auipc	a0,0x5
    800022b8:	e7c50513          	addi	a0,a0,-388 # 80007130 <CONSOLE_STATUS+0x120>
    800022bc:	00002097          	auipc	ra,0x2
    800022c0:	098080e7          	jalr	152(ra) # 80004354 <_Z11printStringPKc>
    800022c4:	00000613          	li	a2,0
    800022c8:	00a00593          	li	a1,10
    800022cc:	0009051b          	sext.w	a0,s2
    800022d0:	00002097          	auipc	ra,0x2
    800022d4:	21c080e7          	jalr	540(ra) # 800044ec <_Z8printIntiii>
    800022d8:	00005517          	auipc	a0,0x5
    800022dc:	d9050513          	addi	a0,a0,-624 # 80007068 <CONSOLE_STATUS+0x58>
    800022e0:	00002097          	auipc	ra,0x2
    800022e4:	074080e7          	jalr	116(ra) # 80004354 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800022e8:	00000493          	li	s1,0
    800022ec:	f99ff06f          	j	80002284 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800022f0:	00005517          	auipc	a0,0x5
    800022f4:	e4850513          	addi	a0,a0,-440 # 80007138 <CONSOLE_STATUS+0x128>
    800022f8:	00002097          	auipc	ra,0x2
    800022fc:	05c080e7          	jalr	92(ra) # 80004354 <_Z11printStringPKc>
    finishedB = true;
    80002300:	00100793          	li	a5,1
    80002304:	00007717          	auipc	a4,0x7
    80002308:	f4f70ea3          	sb	a5,-163(a4) # 80009261 <finishedB>
    thread_dispatch();
    8000230c:	fffff097          	auipc	ra,0xfffff
    80002310:	f18080e7          	jalr	-232(ra) # 80001224 <_Z15thread_dispatchv>
}
    80002314:	01813083          	ld	ra,24(sp)
    80002318:	01013403          	ld	s0,16(sp)
    8000231c:	00813483          	ld	s1,8(sp)
    80002320:	00013903          	ld	s2,0(sp)
    80002324:	02010113          	addi	sp,sp,32
    80002328:	00008067          	ret

000000008000232c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000232c:	fe010113          	addi	sp,sp,-32
    80002330:	00113c23          	sd	ra,24(sp)
    80002334:	00813823          	sd	s0,16(sp)
    80002338:	00913423          	sd	s1,8(sp)
    8000233c:	01213023          	sd	s2,0(sp)
    80002340:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002344:	00000493          	li	s1,0
    80002348:	0400006f          	j	80002388 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000234c:	00005517          	auipc	a0,0x5
    80002350:	dfc50513          	addi	a0,a0,-516 # 80007148 <CONSOLE_STATUS+0x138>
    80002354:	00002097          	auipc	ra,0x2
    80002358:	000080e7          	jalr	ra # 80004354 <_Z11printStringPKc>
    8000235c:	00000613          	li	a2,0
    80002360:	00a00593          	li	a1,10
    80002364:	00048513          	mv	a0,s1
    80002368:	00002097          	auipc	ra,0x2
    8000236c:	184080e7          	jalr	388(ra) # 800044ec <_Z8printIntiii>
    80002370:	00005517          	auipc	a0,0x5
    80002374:	cf850513          	addi	a0,a0,-776 # 80007068 <CONSOLE_STATUS+0x58>
    80002378:	00002097          	auipc	ra,0x2
    8000237c:	fdc080e7          	jalr	-36(ra) # 80004354 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002380:	0014849b          	addiw	s1,s1,1
    80002384:	0ff4f493          	andi	s1,s1,255
    80002388:	00200793          	li	a5,2
    8000238c:	fc97f0e3          	bgeu	a5,s1,8000234c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002390:	00005517          	auipc	a0,0x5
    80002394:	dc050513          	addi	a0,a0,-576 # 80007150 <CONSOLE_STATUS+0x140>
    80002398:	00002097          	auipc	ra,0x2
    8000239c:	fbc080e7          	jalr	-68(ra) # 80004354 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800023a0:	00700313          	li	t1,7
    thread_dispatch();
    800023a4:	fffff097          	auipc	ra,0xfffff
    800023a8:	e80080e7          	jalr	-384(ra) # 80001224 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800023ac:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800023b0:	00005517          	auipc	a0,0x5
    800023b4:	db050513          	addi	a0,a0,-592 # 80007160 <CONSOLE_STATUS+0x150>
    800023b8:	00002097          	auipc	ra,0x2
    800023bc:	f9c080e7          	jalr	-100(ra) # 80004354 <_Z11printStringPKc>
    800023c0:	00000613          	li	a2,0
    800023c4:	00a00593          	li	a1,10
    800023c8:	0009051b          	sext.w	a0,s2
    800023cc:	00002097          	auipc	ra,0x2
    800023d0:	120080e7          	jalr	288(ra) # 800044ec <_Z8printIntiii>
    800023d4:	00005517          	auipc	a0,0x5
    800023d8:	c9450513          	addi	a0,a0,-876 # 80007068 <CONSOLE_STATUS+0x58>
    800023dc:	00002097          	auipc	ra,0x2
    800023e0:	f78080e7          	jalr	-136(ra) # 80004354 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800023e4:	00c00513          	li	a0,12
    800023e8:	00000097          	auipc	ra,0x0
    800023ec:	d30080e7          	jalr	-720(ra) # 80002118 <_Z9fibonaccim>
    800023f0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800023f4:	00005517          	auipc	a0,0x5
    800023f8:	d7450513          	addi	a0,a0,-652 # 80007168 <CONSOLE_STATUS+0x158>
    800023fc:	00002097          	auipc	ra,0x2
    80002400:	f58080e7          	jalr	-168(ra) # 80004354 <_Z11printStringPKc>
    80002404:	00000613          	li	a2,0
    80002408:	00a00593          	li	a1,10
    8000240c:	0009051b          	sext.w	a0,s2
    80002410:	00002097          	auipc	ra,0x2
    80002414:	0dc080e7          	jalr	220(ra) # 800044ec <_Z8printIntiii>
    80002418:	00005517          	auipc	a0,0x5
    8000241c:	c5050513          	addi	a0,a0,-944 # 80007068 <CONSOLE_STATUS+0x58>
    80002420:	00002097          	auipc	ra,0x2
    80002424:	f34080e7          	jalr	-204(ra) # 80004354 <_Z11printStringPKc>
    80002428:	0400006f          	j	80002468 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000242c:	00005517          	auipc	a0,0x5
    80002430:	d1c50513          	addi	a0,a0,-740 # 80007148 <CONSOLE_STATUS+0x138>
    80002434:	00002097          	auipc	ra,0x2
    80002438:	f20080e7          	jalr	-224(ra) # 80004354 <_Z11printStringPKc>
    8000243c:	00000613          	li	a2,0
    80002440:	00a00593          	li	a1,10
    80002444:	00048513          	mv	a0,s1
    80002448:	00002097          	auipc	ra,0x2
    8000244c:	0a4080e7          	jalr	164(ra) # 800044ec <_Z8printIntiii>
    80002450:	00005517          	auipc	a0,0x5
    80002454:	c1850513          	addi	a0,a0,-1000 # 80007068 <CONSOLE_STATUS+0x58>
    80002458:	00002097          	auipc	ra,0x2
    8000245c:	efc080e7          	jalr	-260(ra) # 80004354 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002460:	0014849b          	addiw	s1,s1,1
    80002464:	0ff4f493          	andi	s1,s1,255
    80002468:	00500793          	li	a5,5
    8000246c:	fc97f0e3          	bgeu	a5,s1,8000242c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002470:	00005517          	auipc	a0,0x5
    80002474:	cb050513          	addi	a0,a0,-848 # 80007120 <CONSOLE_STATUS+0x110>
    80002478:	00002097          	auipc	ra,0x2
    8000247c:	edc080e7          	jalr	-292(ra) # 80004354 <_Z11printStringPKc>
    finishedC = true;
    80002480:	00100793          	li	a5,1
    80002484:	00007717          	auipc	a4,0x7
    80002488:	dcf70f23          	sb	a5,-546(a4) # 80009262 <finishedC>
    thread_dispatch();
    8000248c:	fffff097          	auipc	ra,0xfffff
    80002490:	d98080e7          	jalr	-616(ra) # 80001224 <_Z15thread_dispatchv>
}
    80002494:	01813083          	ld	ra,24(sp)
    80002498:	01013403          	ld	s0,16(sp)
    8000249c:	00813483          	ld	s1,8(sp)
    800024a0:	00013903          	ld	s2,0(sp)
    800024a4:	02010113          	addi	sp,sp,32
    800024a8:	00008067          	ret

00000000800024ac <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800024ac:	fe010113          	addi	sp,sp,-32
    800024b0:	00113c23          	sd	ra,24(sp)
    800024b4:	00813823          	sd	s0,16(sp)
    800024b8:	00913423          	sd	s1,8(sp)
    800024bc:	01213023          	sd	s2,0(sp)
    800024c0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800024c4:	00a00493          	li	s1,10
    800024c8:	0400006f          	j	80002508 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800024cc:	00005517          	auipc	a0,0x5
    800024d0:	cac50513          	addi	a0,a0,-852 # 80007178 <CONSOLE_STATUS+0x168>
    800024d4:	00002097          	auipc	ra,0x2
    800024d8:	e80080e7          	jalr	-384(ra) # 80004354 <_Z11printStringPKc>
    800024dc:	00000613          	li	a2,0
    800024e0:	00a00593          	li	a1,10
    800024e4:	00048513          	mv	a0,s1
    800024e8:	00002097          	auipc	ra,0x2
    800024ec:	004080e7          	jalr	4(ra) # 800044ec <_Z8printIntiii>
    800024f0:	00005517          	auipc	a0,0x5
    800024f4:	b7850513          	addi	a0,a0,-1160 # 80007068 <CONSOLE_STATUS+0x58>
    800024f8:	00002097          	auipc	ra,0x2
    800024fc:	e5c080e7          	jalr	-420(ra) # 80004354 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002500:	0014849b          	addiw	s1,s1,1
    80002504:	0ff4f493          	andi	s1,s1,255
    80002508:	00c00793          	li	a5,12
    8000250c:	fc97f0e3          	bgeu	a5,s1,800024cc <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002510:	00005517          	auipc	a0,0x5
    80002514:	c7050513          	addi	a0,a0,-912 # 80007180 <CONSOLE_STATUS+0x170>
    80002518:	00002097          	auipc	ra,0x2
    8000251c:	e3c080e7          	jalr	-452(ra) # 80004354 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002520:	00500313          	li	t1,5
    thread_dispatch();
    80002524:	fffff097          	auipc	ra,0xfffff
    80002528:	d00080e7          	jalr	-768(ra) # 80001224 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000252c:	01000513          	li	a0,16
    80002530:	00000097          	auipc	ra,0x0
    80002534:	be8080e7          	jalr	-1048(ra) # 80002118 <_Z9fibonaccim>
    80002538:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000253c:	00005517          	auipc	a0,0x5
    80002540:	c5450513          	addi	a0,a0,-940 # 80007190 <CONSOLE_STATUS+0x180>
    80002544:	00002097          	auipc	ra,0x2
    80002548:	e10080e7          	jalr	-496(ra) # 80004354 <_Z11printStringPKc>
    8000254c:	00000613          	li	a2,0
    80002550:	00a00593          	li	a1,10
    80002554:	0009051b          	sext.w	a0,s2
    80002558:	00002097          	auipc	ra,0x2
    8000255c:	f94080e7          	jalr	-108(ra) # 800044ec <_Z8printIntiii>
    80002560:	00005517          	auipc	a0,0x5
    80002564:	b0850513          	addi	a0,a0,-1272 # 80007068 <CONSOLE_STATUS+0x58>
    80002568:	00002097          	auipc	ra,0x2
    8000256c:	dec080e7          	jalr	-532(ra) # 80004354 <_Z11printStringPKc>
    80002570:	0400006f          	j	800025b0 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002574:	00005517          	auipc	a0,0x5
    80002578:	c0450513          	addi	a0,a0,-1020 # 80007178 <CONSOLE_STATUS+0x168>
    8000257c:	00002097          	auipc	ra,0x2
    80002580:	dd8080e7          	jalr	-552(ra) # 80004354 <_Z11printStringPKc>
    80002584:	00000613          	li	a2,0
    80002588:	00a00593          	li	a1,10
    8000258c:	00048513          	mv	a0,s1
    80002590:	00002097          	auipc	ra,0x2
    80002594:	f5c080e7          	jalr	-164(ra) # 800044ec <_Z8printIntiii>
    80002598:	00005517          	auipc	a0,0x5
    8000259c:	ad050513          	addi	a0,a0,-1328 # 80007068 <CONSOLE_STATUS+0x58>
    800025a0:	00002097          	auipc	ra,0x2
    800025a4:	db4080e7          	jalr	-588(ra) # 80004354 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800025a8:	0014849b          	addiw	s1,s1,1
    800025ac:	0ff4f493          	andi	s1,s1,255
    800025b0:	00f00793          	li	a5,15
    800025b4:	fc97f0e3          	bgeu	a5,s1,80002574 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800025b8:	00005517          	auipc	a0,0x5
    800025bc:	be850513          	addi	a0,a0,-1048 # 800071a0 <CONSOLE_STATUS+0x190>
    800025c0:	00002097          	auipc	ra,0x2
    800025c4:	d94080e7          	jalr	-620(ra) # 80004354 <_Z11printStringPKc>
    finishedD = true;
    800025c8:	00100793          	li	a5,1
    800025cc:	00007717          	auipc	a4,0x7
    800025d0:	c8f70ba3          	sb	a5,-873(a4) # 80009263 <finishedD>
    thread_dispatch();
    800025d4:	fffff097          	auipc	ra,0xfffff
    800025d8:	c50080e7          	jalr	-944(ra) # 80001224 <_Z15thread_dispatchv>
}
    800025dc:	01813083          	ld	ra,24(sp)
    800025e0:	01013403          	ld	s0,16(sp)
    800025e4:	00813483          	ld	s1,8(sp)
    800025e8:	00013903          	ld	s2,0(sp)
    800025ec:	02010113          	addi	sp,sp,32
    800025f0:	00008067          	ret

00000000800025f4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800025f4:	fc010113          	addi	sp,sp,-64
    800025f8:	02113c23          	sd	ra,56(sp)
    800025fc:	02813823          	sd	s0,48(sp)
    80002600:	02913423          	sd	s1,40(sp)
    80002604:	03213023          	sd	s2,32(sp)
    80002608:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    8000260c:	01000513          	li	a0,16
    80002610:	00001097          	auipc	ra,0x1
    80002614:	cdc080e7          	jalr	-804(ra) # 800032ec <_Znwm>
    80002618:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    8000261c:	00001097          	auipc	ra,0x1
    80002620:	ee8080e7          	jalr	-280(ra) # 80003504 <_ZN6ThreadC1Ev>
    80002624:	00007797          	auipc	a5,0x7
    80002628:	9dc78793          	addi	a5,a5,-1572 # 80009000 <_ZTV7WorkerA+0x10>
    8000262c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002630:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002634:	00005517          	auipc	a0,0x5
    80002638:	b7c50513          	addi	a0,a0,-1156 # 800071b0 <CONSOLE_STATUS+0x1a0>
    8000263c:	00002097          	auipc	ra,0x2
    80002640:	d18080e7          	jalr	-744(ra) # 80004354 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002644:	01000513          	li	a0,16
    80002648:	00001097          	auipc	ra,0x1
    8000264c:	ca4080e7          	jalr	-860(ra) # 800032ec <_Znwm>
    80002650:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002654:	00001097          	auipc	ra,0x1
    80002658:	eb0080e7          	jalr	-336(ra) # 80003504 <_ZN6ThreadC1Ev>
    8000265c:	00007797          	auipc	a5,0x7
    80002660:	9cc78793          	addi	a5,a5,-1588 # 80009028 <_ZTV7WorkerB+0x10>
    80002664:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002668:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000266c:	00005517          	auipc	a0,0x5
    80002670:	b5c50513          	addi	a0,a0,-1188 # 800071c8 <CONSOLE_STATUS+0x1b8>
    80002674:	00002097          	auipc	ra,0x2
    80002678:	ce0080e7          	jalr	-800(ra) # 80004354 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000267c:	01000513          	li	a0,16
    80002680:	00001097          	auipc	ra,0x1
    80002684:	c6c080e7          	jalr	-916(ra) # 800032ec <_Znwm>
    80002688:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000268c:	00001097          	auipc	ra,0x1
    80002690:	e78080e7          	jalr	-392(ra) # 80003504 <_ZN6ThreadC1Ev>
    80002694:	00007797          	auipc	a5,0x7
    80002698:	9bc78793          	addi	a5,a5,-1604 # 80009050 <_ZTV7WorkerC+0x10>
    8000269c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800026a0:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800026a4:	00005517          	auipc	a0,0x5
    800026a8:	b3c50513          	addi	a0,a0,-1220 # 800071e0 <CONSOLE_STATUS+0x1d0>
    800026ac:	00002097          	auipc	ra,0x2
    800026b0:	ca8080e7          	jalr	-856(ra) # 80004354 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800026b4:	01000513          	li	a0,16
    800026b8:	00001097          	auipc	ra,0x1
    800026bc:	c34080e7          	jalr	-972(ra) # 800032ec <_Znwm>
    800026c0:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800026c4:	00001097          	auipc	ra,0x1
    800026c8:	e40080e7          	jalr	-448(ra) # 80003504 <_ZN6ThreadC1Ev>
    800026cc:	00007797          	auipc	a5,0x7
    800026d0:	9ac78793          	addi	a5,a5,-1620 # 80009078 <_ZTV7WorkerD+0x10>
    800026d4:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800026d8:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800026dc:	00005517          	auipc	a0,0x5
    800026e0:	b1c50513          	addi	a0,a0,-1252 # 800071f8 <CONSOLE_STATUS+0x1e8>
    800026e4:	00002097          	auipc	ra,0x2
    800026e8:	c70080e7          	jalr	-912(ra) # 80004354 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800026ec:	00000493          	li	s1,0
    800026f0:	00300793          	li	a5,3
    800026f4:	0297c663          	blt	a5,s1,80002720 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800026f8:	00349793          	slli	a5,s1,0x3
    800026fc:	fe040713          	addi	a4,s0,-32
    80002700:	00f707b3          	add	a5,a4,a5
    80002704:	fe07b503          	ld	a0,-32(a5)
    80002708:	00001097          	auipc	ra,0x1
    8000270c:	d28080e7          	jalr	-728(ra) # 80003430 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002710:	0014849b          	addiw	s1,s1,1
    80002714:	fddff06f          	j	800026f0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002718:	00001097          	auipc	ra,0x1
    8000271c:	d48080e7          	jalr	-696(ra) # 80003460 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002720:	00007797          	auipc	a5,0x7
    80002724:	b407c783          	lbu	a5,-1216(a5) # 80009260 <finishedA>
    80002728:	fe0788e3          	beqz	a5,80002718 <_Z20Threads_CPP_API_testv+0x124>
    8000272c:	00007797          	auipc	a5,0x7
    80002730:	b357c783          	lbu	a5,-1227(a5) # 80009261 <finishedB>
    80002734:	fe0782e3          	beqz	a5,80002718 <_Z20Threads_CPP_API_testv+0x124>
    80002738:	00007797          	auipc	a5,0x7
    8000273c:	b2a7c783          	lbu	a5,-1238(a5) # 80009262 <finishedC>
    80002740:	fc078ce3          	beqz	a5,80002718 <_Z20Threads_CPP_API_testv+0x124>
    80002744:	00007797          	auipc	a5,0x7
    80002748:	b1f7c783          	lbu	a5,-1249(a5) # 80009263 <finishedD>
    8000274c:	fc0786e3          	beqz	a5,80002718 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    80002750:	fc040493          	addi	s1,s0,-64
    80002754:	0080006f          	j	8000275c <_Z20Threads_CPP_API_testv+0x168>
    80002758:	00848493          	addi	s1,s1,8
    8000275c:	fe040793          	addi	a5,s0,-32
    80002760:	08f48663          	beq	s1,a5,800027ec <_Z20Threads_CPP_API_testv+0x1f8>
    80002764:	0004b503          	ld	a0,0(s1)
    80002768:	fe0508e3          	beqz	a0,80002758 <_Z20Threads_CPP_API_testv+0x164>
    8000276c:	00053783          	ld	a5,0(a0)
    80002770:	0087b783          	ld	a5,8(a5)
    80002774:	000780e7          	jalr	a5
    80002778:	fe1ff06f          	j	80002758 <_Z20Threads_CPP_API_testv+0x164>
    8000277c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80002780:	00048513          	mv	a0,s1
    80002784:	00001097          	auipc	ra,0x1
    80002788:	bb8080e7          	jalr	-1096(ra) # 8000333c <_ZdlPv>
    8000278c:	00090513          	mv	a0,s2
    80002790:	00008097          	auipc	ra,0x8
    80002794:	bd8080e7          	jalr	-1064(ra) # 8000a368 <_Unwind_Resume>
    80002798:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000279c:	00048513          	mv	a0,s1
    800027a0:	00001097          	auipc	ra,0x1
    800027a4:	b9c080e7          	jalr	-1124(ra) # 8000333c <_ZdlPv>
    800027a8:	00090513          	mv	a0,s2
    800027ac:	00008097          	auipc	ra,0x8
    800027b0:	bbc080e7          	jalr	-1092(ra) # 8000a368 <_Unwind_Resume>
    800027b4:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800027b8:	00048513          	mv	a0,s1
    800027bc:	00001097          	auipc	ra,0x1
    800027c0:	b80080e7          	jalr	-1152(ra) # 8000333c <_ZdlPv>
    800027c4:	00090513          	mv	a0,s2
    800027c8:	00008097          	auipc	ra,0x8
    800027cc:	ba0080e7          	jalr	-1120(ra) # 8000a368 <_Unwind_Resume>
    800027d0:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800027d4:	00048513          	mv	a0,s1
    800027d8:	00001097          	auipc	ra,0x1
    800027dc:	b64080e7          	jalr	-1180(ra) # 8000333c <_ZdlPv>
    800027e0:	00090513          	mv	a0,s2
    800027e4:	00008097          	auipc	ra,0x8
    800027e8:	b84080e7          	jalr	-1148(ra) # 8000a368 <_Unwind_Resume>
}
    800027ec:	03813083          	ld	ra,56(sp)
    800027f0:	03013403          	ld	s0,48(sp)
    800027f4:	02813483          	ld	s1,40(sp)
    800027f8:	02013903          	ld	s2,32(sp)
    800027fc:	04010113          	addi	sp,sp,64
    80002800:	00008067          	ret

0000000080002804 <main>:
int main(){
    80002804:	fc010113          	addi	sp,sp,-64
    80002808:	02113c23          	sd	ra,56(sp)
    8000280c:	02813823          	sd	s0,48(sp)
    80002810:	02913423          	sd	s1,40(sp)
    80002814:	03213023          	sd	s2,32(sp)
    80002818:	01313c23          	sd	s3,24(sp)
    8000281c:	01413823          	sd	s4,16(sp)
    80002820:	01513423          	sd	s5,8(sp)
    80002824:	04010413          	addi	s0,sp,64
    asm volatile("csrw stvec, %0": : "r"(&interruptvec));
    80002828:	00007797          	auipc	a5,0x7
    8000282c:	9687b783          	ld	a5,-1688(a5) # 80009190 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002830:	10579073          	csrw	stvec,a5


class CThread {
public:
    using Body = void(*)(void*);
    overrideNew;
    80002834:	00001097          	auipc	ra,0x1
    80002838:	350080e7          	jalr	848(ra) # 80003b84 <_ZN15MemoryAllocator11getInstanceEv>
    8000283c:	04000593          	li	a1,64
    80002840:	00001097          	auipc	ra,0x1
    80002844:	1c0080e7          	jalr	448(ra) # 80003a00 <_ZN15MemoryAllocator8allocateEm>
    80002848:	00050493          	mv	s1,a0
    CThread::main=new CThread;
    8000284c:	fffff097          	auipc	ra,0xfffff
    80002850:	e70080e7          	jalr	-400(ra) # 800016bc <_ZN7CThreadC1Ev>
    80002854:	00007797          	auipc	a5,0x7
    80002858:	91c7b783          	ld	a5,-1764(a5) # 80009170 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000285c:	0097b023          	sd	s1,0(a5)
    CThread::running=CThread::main;
    80002860:	00007797          	auipc	a5,0x7
    80002864:	9507b783          	ld	a5,-1712(a5) # 800091b0 <_GLOBAL_OFFSET_TABLE_+0x88>
    80002868:	0097b023          	sd	s1,0(a5)
        CSemaphore* spaceAvailable;

public:
        static PutBuffer* putBuffer;
        overrideArrNew;
        overrideNew;
    8000286c:	00001097          	auipc	ra,0x1
    80002870:	318080e7          	jalr	792(ra) # 80003b84 <_ZN15MemoryAllocator11getInstanceEv>
    80002874:	04000593          	li	a1,64
    80002878:	00001097          	auipc	ra,0x1
    8000287c:	188080e7          	jalr	392(ra) # 80003a00 <_ZN15MemoryAllocator8allocateEm>
    80002880:	00050493          	mv	s1,a0
    PutBuffer::putBuffer= new PutBuffer(1024);
    80002884:	40000593          	li	a1,1024
    80002888:	00001097          	auipc	ra,0x1
    8000288c:	f6c080e7          	jalr	-148(ra) # 800037f4 <_ZN9PutBufferC1Ei>
    80002890:	00007797          	auipc	a5,0x7
    80002894:	8f07b783          	ld	a5,-1808(a5) # 80009180 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002898:	0097b023          	sd	s1,0(a5)
    CSemaphore* itemAvailable;

public:
    static GetBuffer* getBuffer;
    overrideArrNew;
    overrideNew;
    8000289c:	00001097          	auipc	ra,0x1
    800028a0:	2e8080e7          	jalr	744(ra) # 80003b84 <_ZN15MemoryAllocator11getInstanceEv>
    800028a4:	04000593          	li	a1,64
    800028a8:	00001097          	auipc	ra,0x1
    800028ac:	158080e7          	jalr	344(ra) # 80003a00 <_ZN15MemoryAllocator8allocateEm>
    800028b0:	00050493          	mv	s1,a0
    GetBuffer::getBuffer= new GetBuffer(1024);
    800028b4:	40000593          	li	a1,1024
    800028b8:	fffff097          	auipc	ra,0xfffff
    800028bc:	f94080e7          	jalr	-108(ra) # 8000184c <_ZN9GetBufferC1Ei>
    800028c0:	00007797          	auipc	a5,0x7
    800028c4:	8b87b783          	ld	a5,-1864(a5) # 80009178 <_GLOBAL_OFFSET_TABLE_+0x50>
    800028c8:	0097b023          	sd	s1,0(a5)
    thread_create(&CThread::idle, &idleFun, nullptr);
    800028cc:	00000613          	li	a2,0
    800028d0:	fffff597          	auipc	a1,0xfffff
    800028d4:	2e858593          	addi	a1,a1,744 # 80001bb8 <_Z7idleFunPv>
    800028d8:	00007517          	auipc	a0,0x7
    800028dc:	87053503          	ld	a0,-1936(a0) # 80009148 <_GLOBAL_OFFSET_TABLE_+0x20>
    800028e0:	fffff097          	auipc	ra,0xfffff
    800028e4:	8dc080e7          	jalr	-1828(ra) # 800011bc <_Z13thread_createPP7CThreadPFvPvES2_>
    user();
    800028e8:	fffff097          	auipc	ra,0xfffff
    800028ec:	adc080e7          	jalr	-1316(ra) # 800013c4 <_Z4userv>
    Thread* A = new Thread(&funA, nullptr);
    800028f0:	01000513          	li	a0,16
    800028f4:	00001097          	auipc	ra,0x1
    800028f8:	9f8080e7          	jalr	-1544(ra) # 800032ec <_Znwm>
    800028fc:	00050a93          	mv	s5,a0
    80002900:	00000613          	li	a2,0
    80002904:	fffff597          	auipc	a1,0xfffff
    80002908:	2ec58593          	addi	a1,a1,748 # 80001bf0 <_Z4funAPv>
    8000290c:	00001097          	auipc	ra,0x1
    80002910:	ae8080e7          	jalr	-1304(ra) # 800033f4 <_ZN6ThreadC1EPFvPvES0_>
    Thread* B = new Thread(&funB, nullptr);
    80002914:	01000513          	li	a0,16
    80002918:	00001097          	auipc	ra,0x1
    8000291c:	9d4080e7          	jalr	-1580(ra) # 800032ec <_Znwm>
    80002920:	00050a13          	mv	s4,a0
    80002924:	00000613          	li	a2,0
    80002928:	fffff597          	auipc	a1,0xfffff
    8000292c:	2f458593          	addi	a1,a1,756 # 80001c1c <_Z4funBPv>
    80002930:	00001097          	auipc	ra,0x1
    80002934:	ac4080e7          	jalr	-1340(ra) # 800033f4 <_ZN6ThreadC1EPFvPvES0_>
    PeriodicThread* C = new MojPeriodic(5, 'C');
    80002938:	01800513          	li	a0,24
    8000293c:	00001097          	auipc	ra,0x1
    80002940:	9b0080e7          	jalr	-1616(ra) # 800032ec <_Znwm>
    80002944:	00050913          	mv	s2,a0
    MojPeriodic(time_t period, char c) : PeriodicThread(period) { this->c=c;}
    80002948:	00500593          	li	a1,5
    8000294c:	00001097          	auipc	ra,0x1
    80002950:	c8c080e7          	jalr	-884(ra) # 800035d8 <_ZN14PeriodicThreadC1Em>
    80002954:	00006797          	auipc	a5,0x6
    80002958:	74c78793          	addi	a5,a5,1868 # 800090a0 <_ZTV11MojPeriodic+0x10>
    8000295c:	00f93023          	sd	a5,0(s2)
    80002960:	04300793          	li	a5,67
    80002964:	00f90823          	sb	a5,16(s2)
    PeriodicThread* D = new MojPeriodic(10, 'D');
    80002968:	01800513          	li	a0,24
    8000296c:	00001097          	auipc	ra,0x1
    80002970:	980080e7          	jalr	-1664(ra) # 800032ec <_Znwm>
    80002974:	00050493          	mv	s1,a0
    MojPeriodic(time_t period, char c) : PeriodicThread(period) { this->c=c;}
    80002978:	00a00593          	li	a1,10
    8000297c:	00001097          	auipc	ra,0x1
    80002980:	c5c080e7          	jalr	-932(ra) # 800035d8 <_ZN14PeriodicThreadC1Em>
    80002984:	00006797          	auipc	a5,0x6
    80002988:	71c78793          	addi	a5,a5,1820 # 800090a0 <_ZTV11MojPeriodic+0x10>
    8000298c:	00f4b023          	sd	a5,0(s1)
    80002990:	04400793          	li	a5,68
    80002994:	00f48823          	sb	a5,16(s1)
    Thread* E = new Thread(&funE, nullptr);
    80002998:	01000513          	li	a0,16
    8000299c:	00001097          	auipc	ra,0x1
    800029a0:	950080e7          	jalr	-1712(ra) # 800032ec <_Znwm>
    800029a4:	00050993          	mv	s3,a0
    800029a8:	00000613          	li	a2,0
    800029ac:	fffff597          	auipc	a1,0xfffff
    800029b0:	29c58593          	addi	a1,a1,668 # 80001c48 <_Z4funEPv>
    800029b4:	00001097          	auipc	ra,0x1
    800029b8:	a40080e7          	jalr	-1472(ra) # 800033f4 <_ZN6ThreadC1EPFvPvES0_>
    A->start();
    800029bc:	000a8513          	mv	a0,s5
    800029c0:	00001097          	auipc	ra,0x1
    800029c4:	a70080e7          	jalr	-1424(ra) # 80003430 <_ZN6Thread5startEv>
    B->start();
    800029c8:	000a0513          	mv	a0,s4
    800029cc:	00001097          	auipc	ra,0x1
    800029d0:	a64080e7          	jalr	-1436(ra) # 80003430 <_ZN6Thread5startEv>
    C->start();
    800029d4:	00090513          	mv	a0,s2
    800029d8:	00001097          	auipc	ra,0x1
    800029dc:	a58080e7          	jalr	-1448(ra) # 80003430 <_ZN6Thread5startEv>
    D->start();
    800029e0:	00048513          	mv	a0,s1
    800029e4:	00001097          	auipc	ra,0x1
    800029e8:	a4c080e7          	jalr	-1460(ra) # 80003430 <_ZN6Thread5startEv>
    E->start();
    800029ec:	00098513          	mv	a0,s3
    800029f0:	00001097          	auipc	ra,0x1
    800029f4:	a40080e7          	jalr	-1472(ra) # 80003430 <_ZN6Thread5startEv>
    thread_dispatch();
    800029f8:	fffff097          	auipc	ra,0xfffff
    800029fc:	82c080e7          	jalr	-2004(ra) # 80001224 <_Z15thread_dispatchv>
    while (1);
    80002a00:	0000006f          	j	80002a00 <main+0x1fc>
    80002a04:	00050913          	mv	s2,a0
    overrideDelete;
    80002a08:	00001097          	auipc	ra,0x1
    80002a0c:	17c080e7          	jalr	380(ra) # 80003b84 <_ZN15MemoryAllocator11getInstanceEv>
    80002a10:	00048593          	mv	a1,s1
    80002a14:	00001097          	auipc	ra,0x1
    80002a18:	0c8080e7          	jalr	200(ra) # 80003adc <_ZN15MemoryAllocator10deallocateEPv>
    80002a1c:	00090513          	mv	a0,s2
    80002a20:	00008097          	auipc	ra,0x8
    80002a24:	948080e7          	jalr	-1720(ra) # 8000a368 <_Unwind_Resume>
    80002a28:	00050913          	mv	s2,a0
        overrideArrDelete;
        overrideDelete;
    80002a2c:	00001097          	auipc	ra,0x1
    80002a30:	158080e7          	jalr	344(ra) # 80003b84 <_ZN15MemoryAllocator11getInstanceEv>
    80002a34:	00048593          	mv	a1,s1
    80002a38:	00001097          	auipc	ra,0x1
    80002a3c:	0a4080e7          	jalr	164(ra) # 80003adc <_ZN15MemoryAllocator10deallocateEPv>
    80002a40:	00090513          	mv	a0,s2
    80002a44:	00008097          	auipc	ra,0x8
    80002a48:	924080e7          	jalr	-1756(ra) # 8000a368 <_Unwind_Resume>
    80002a4c:	00050913          	mv	s2,a0
    overrideArrDelete;
    overrideDelete;
    80002a50:	00001097          	auipc	ra,0x1
    80002a54:	134080e7          	jalr	308(ra) # 80003b84 <_ZN15MemoryAllocator11getInstanceEv>
    80002a58:	00048593          	mv	a1,s1
    80002a5c:	00001097          	auipc	ra,0x1
    80002a60:	080080e7          	jalr	128(ra) # 80003adc <_ZN15MemoryAllocator10deallocateEPv>
    80002a64:	00090513          	mv	a0,s2
    80002a68:	00008097          	auipc	ra,0x8
    80002a6c:	900080e7          	jalr	-1792(ra) # 8000a368 <_Unwind_Resume>
    80002a70:	00050493          	mv	s1,a0
    Thread* A = new Thread(&funA, nullptr);
    80002a74:	000a8513          	mv	a0,s5
    80002a78:	00001097          	auipc	ra,0x1
    80002a7c:	8c4080e7          	jalr	-1852(ra) # 8000333c <_ZdlPv>
    80002a80:	00048513          	mv	a0,s1
    80002a84:	00008097          	auipc	ra,0x8
    80002a88:	8e4080e7          	jalr	-1820(ra) # 8000a368 <_Unwind_Resume>
    80002a8c:	00050493          	mv	s1,a0
    Thread* B = new Thread(&funB, nullptr);
    80002a90:	000a0513          	mv	a0,s4
    80002a94:	00001097          	auipc	ra,0x1
    80002a98:	8a8080e7          	jalr	-1880(ra) # 8000333c <_ZdlPv>
    80002a9c:	00048513          	mv	a0,s1
    80002aa0:	00008097          	auipc	ra,0x8
    80002aa4:	8c8080e7          	jalr	-1848(ra) # 8000a368 <_Unwind_Resume>
    80002aa8:	00050493          	mv	s1,a0
    PeriodicThread* C = new MojPeriodic(5, 'C');
    80002aac:	00090513          	mv	a0,s2
    80002ab0:	00001097          	auipc	ra,0x1
    80002ab4:	88c080e7          	jalr	-1908(ra) # 8000333c <_ZdlPv>
    80002ab8:	00048513          	mv	a0,s1
    80002abc:	00008097          	auipc	ra,0x8
    80002ac0:	8ac080e7          	jalr	-1876(ra) # 8000a368 <_Unwind_Resume>
    80002ac4:	00050913          	mv	s2,a0
    PeriodicThread* D = new MojPeriodic(10, 'D');
    80002ac8:	00048513          	mv	a0,s1
    80002acc:	00001097          	auipc	ra,0x1
    80002ad0:	870080e7          	jalr	-1936(ra) # 8000333c <_ZdlPv>
    80002ad4:	00090513          	mv	a0,s2
    80002ad8:	00008097          	auipc	ra,0x8
    80002adc:	890080e7          	jalr	-1904(ra) # 8000a368 <_Unwind_Resume>
    80002ae0:	00050493          	mv	s1,a0
    Thread* E = new Thread(&funE, nullptr);
    80002ae4:	00098513          	mv	a0,s3
    80002ae8:	00001097          	auipc	ra,0x1
    80002aec:	854080e7          	jalr	-1964(ra) # 8000333c <_ZdlPv>
    80002af0:	00048513          	mv	a0,s1
    80002af4:	00008097          	auipc	ra,0x8
    80002af8:	874080e7          	jalr	-1932(ra) # 8000a368 <_Unwind_Resume>

0000000080002afc <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80002afc:	ff010113          	addi	sp,sp,-16
    80002b00:	00813423          	sd	s0,8(sp)
    80002b04:	01010413          	addi	s0,sp,16
    80002b08:	00813403          	ld	s0,8(sp)
    80002b0c:	01010113          	addi	sp,sp,16
    80002b10:	00008067          	ret

0000000080002b14 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    static bool flag;
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002b14:	ff010113          	addi	sp,sp,-16
    80002b18:	00813423          	sd	s0,8(sp)
    80002b1c:	01010413          	addi	s0,sp,16
    80002b20:	00813403          	ld	s0,8(sp)
    80002b24:	01010113          	addi	sp,sp,16
    80002b28:	00008067          	ret

0000000080002b2c <_ZN19ConsumerProducerCPP8Consumer3runEv>:
        void run() override {
    80002b2c:	fd010113          	addi	sp,sp,-48
    80002b30:	02113423          	sd	ra,40(sp)
    80002b34:	02813023          	sd	s0,32(sp)
    80002b38:	00913c23          	sd	s1,24(sp)
    80002b3c:	01213823          	sd	s2,16(sp)
    80002b40:	01313423          	sd	s3,8(sp)
    80002b44:	03010413          	addi	s0,sp,48
    80002b48:	00050913          	mv	s2,a0
            int i = 0;
    80002b4c:	00000993          	li	s3,0
    80002b50:	0100006f          	j	80002b60 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
                    Console::putc('\n');
    80002b54:	00a00513          	li	a0,10
    80002b58:	00001097          	auipc	ra,0x1
    80002b5c:	b18080e7          	jalr	-1256(ra) # 80003670 <_ZN7Console4putcEc>
            while (!threadEnd) {
    80002b60:	00006797          	auipc	a5,0x6
    80002b64:	6e87a783          	lw	a5,1768(a5) # 80009248 <_ZN19ConsumerProducerCPP9threadEndE>
    80002b68:	04079a63          	bnez	a5,80002bbc <_ZN19ConsumerProducerCPP8Consumer3runEv+0x90>
                int key = td->buffer->get();
    80002b6c:	01093783          	ld	a5,16(s2)
    80002b70:	0087b503          	ld	a0,8(a5)
    80002b74:	00002097          	auipc	ra,0x2
    80002b78:	c70080e7          	jalr	-912(ra) # 800047e4 <_ZN9BufferCPP3getEv>
                i++;
    80002b7c:	0019849b          	addiw	s1,s3,1
    80002b80:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    80002b84:	0ff57513          	andi	a0,a0,255
    80002b88:	00001097          	auipc	ra,0x1
    80002b8c:	ae8080e7          	jalr	-1304(ra) # 80003670 <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    80002b90:	05000793          	li	a5,80
    80002b94:	02f4e4bb          	remw	s1,s1,a5
    80002b98:	fc0494e3          	bnez	s1,80002b60 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
    80002b9c:	fb9ff06f          	j	80002b54 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x28>
                int key = td->buffer->get();
    80002ba0:	01093783          	ld	a5,16(s2)
    80002ba4:	0087b503          	ld	a0,8(a5)
    80002ba8:	00002097          	auipc	ra,0x2
    80002bac:	c3c080e7          	jalr	-964(ra) # 800047e4 <_ZN9BufferCPP3getEv>
                Console::putc(key);
    80002bb0:	0ff57513          	andi	a0,a0,255
    80002bb4:	00001097          	auipc	ra,0x1
    80002bb8:	abc080e7          	jalr	-1348(ra) # 80003670 <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    80002bbc:	01093783          	ld	a5,16(s2)
    80002bc0:	0087b503          	ld	a0,8(a5)
    80002bc4:	00002097          	auipc	ra,0x2
    80002bc8:	cac080e7          	jalr	-852(ra) # 80004870 <_ZN9BufferCPP6getCntEv>
    80002bcc:	fca04ae3          	bgtz	a0,80002ba0 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x74>
            td->sem->signal();
    80002bd0:	01093783          	ld	a5,16(s2)
    80002bd4:	0107b503          	ld	a0,16(a5)
    80002bd8:	00001097          	auipc	ra,0x1
    80002bdc:	9d4080e7          	jalr	-1580(ra) # 800035ac <_ZN9Semaphore6signalEv>
        }
    80002be0:	02813083          	ld	ra,40(sp)
    80002be4:	02013403          	ld	s0,32(sp)
    80002be8:	01813483          	ld	s1,24(sp)
    80002bec:	01013903          	ld	s2,16(sp)
    80002bf0:	00813983          	ld	s3,8(sp)
    80002bf4:	03010113          	addi	sp,sp,48
    80002bf8:	00008067          	ret

0000000080002bfc <_ZN19ConsumerProducerCPP8ConsumerD1Ev>:
    class Consumer : public Thread {
    80002bfc:	ff010113          	addi	sp,sp,-16
    80002c00:	00113423          	sd	ra,8(sp)
    80002c04:	00813023          	sd	s0,0(sp)
    80002c08:	01010413          	addi	s0,sp,16
    80002c0c:	00006797          	auipc	a5,0x6
    80002c10:	3cc78793          	addi	a5,a5,972 # 80008fd8 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80002c14:	00f53023          	sd	a5,0(a0)
    80002c18:	00000097          	auipc	ra,0x0
    80002c1c:	658080e7          	jalr	1624(ra) # 80003270 <_ZN6ThreadD1Ev>
    80002c20:	00813083          	ld	ra,8(sp)
    80002c24:	00013403          	ld	s0,0(sp)
    80002c28:	01010113          	addi	sp,sp,16
    80002c2c:	00008067          	ret

0000000080002c30 <_ZN19ConsumerProducerCPP8ConsumerD0Ev>:
    80002c30:	fe010113          	addi	sp,sp,-32
    80002c34:	00113c23          	sd	ra,24(sp)
    80002c38:	00813823          	sd	s0,16(sp)
    80002c3c:	00913423          	sd	s1,8(sp)
    80002c40:	02010413          	addi	s0,sp,32
    80002c44:	00050493          	mv	s1,a0
    80002c48:	00006797          	auipc	a5,0x6
    80002c4c:	39078793          	addi	a5,a5,912 # 80008fd8 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80002c50:	00f53023          	sd	a5,0(a0)
    80002c54:	00000097          	auipc	ra,0x0
    80002c58:	61c080e7          	jalr	1564(ra) # 80003270 <_ZN6ThreadD1Ev>
    80002c5c:	00048513          	mv	a0,s1
    80002c60:	00000097          	auipc	ra,0x0
    80002c64:	6dc080e7          	jalr	1756(ra) # 8000333c <_ZdlPv>
    80002c68:	01813083          	ld	ra,24(sp)
    80002c6c:	01013403          	ld	s0,16(sp)
    80002c70:	00813483          	ld	s1,8(sp)
    80002c74:	02010113          	addi	sp,sp,32
    80002c78:	00008067          	ret

0000000080002c7c <_ZN19ConsumerProducerCPP16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    80002c7c:	ff010113          	addi	sp,sp,-16
    80002c80:	00113423          	sd	ra,8(sp)
    80002c84:	00813023          	sd	s0,0(sp)
    80002c88:	01010413          	addi	s0,sp,16
    80002c8c:	00006797          	auipc	a5,0x6
    80002c90:	2fc78793          	addi	a5,a5,764 # 80008f88 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80002c94:	00f53023          	sd	a5,0(a0)
    80002c98:	00000097          	auipc	ra,0x0
    80002c9c:	5d8080e7          	jalr	1496(ra) # 80003270 <_ZN6ThreadD1Ev>
    80002ca0:	00813083          	ld	ra,8(sp)
    80002ca4:	00013403          	ld	s0,0(sp)
    80002ca8:	01010113          	addi	sp,sp,16
    80002cac:	00008067          	ret

0000000080002cb0 <_ZN19ConsumerProducerCPP16ProducerKeyboradD0Ev>:
    80002cb0:	fe010113          	addi	sp,sp,-32
    80002cb4:	00113c23          	sd	ra,24(sp)
    80002cb8:	00813823          	sd	s0,16(sp)
    80002cbc:	00913423          	sd	s1,8(sp)
    80002cc0:	02010413          	addi	s0,sp,32
    80002cc4:	00050493          	mv	s1,a0
    80002cc8:	00006797          	auipc	a5,0x6
    80002ccc:	2c078793          	addi	a5,a5,704 # 80008f88 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80002cd0:	00f53023          	sd	a5,0(a0)
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	59c080e7          	jalr	1436(ra) # 80003270 <_ZN6ThreadD1Ev>
    80002cdc:	00048513          	mv	a0,s1
    80002ce0:	00000097          	auipc	ra,0x0
    80002ce4:	65c080e7          	jalr	1628(ra) # 8000333c <_ZdlPv>
    80002ce8:	01813083          	ld	ra,24(sp)
    80002cec:	01013403          	ld	s0,16(sp)
    80002cf0:	00813483          	ld	s1,8(sp)
    80002cf4:	02010113          	addi	sp,sp,32
    80002cf8:	00008067          	ret

0000000080002cfc <_ZN19ConsumerProducerCPP8ProducerD1Ev>:
    class Producer : public Thread {
    80002cfc:	ff010113          	addi	sp,sp,-16
    80002d00:	00113423          	sd	ra,8(sp)
    80002d04:	00813023          	sd	s0,0(sp)
    80002d08:	01010413          	addi	s0,sp,16
    80002d0c:	00006797          	auipc	a5,0x6
    80002d10:	2a478793          	addi	a5,a5,676 # 80008fb0 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80002d14:	00f53023          	sd	a5,0(a0)
    80002d18:	00000097          	auipc	ra,0x0
    80002d1c:	558080e7          	jalr	1368(ra) # 80003270 <_ZN6ThreadD1Ev>
    80002d20:	00813083          	ld	ra,8(sp)
    80002d24:	00013403          	ld	s0,0(sp)
    80002d28:	01010113          	addi	sp,sp,16
    80002d2c:	00008067          	ret

0000000080002d30 <_ZN19ConsumerProducerCPP8ProducerD0Ev>:
    80002d30:	fe010113          	addi	sp,sp,-32
    80002d34:	00113c23          	sd	ra,24(sp)
    80002d38:	00813823          	sd	s0,16(sp)
    80002d3c:	00913423          	sd	s1,8(sp)
    80002d40:	02010413          	addi	s0,sp,32
    80002d44:	00050493          	mv	s1,a0
    80002d48:	00006797          	auipc	a5,0x6
    80002d4c:	26878793          	addi	a5,a5,616 # 80008fb0 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80002d50:	00f53023          	sd	a5,0(a0)
    80002d54:	00000097          	auipc	ra,0x0
    80002d58:	51c080e7          	jalr	1308(ra) # 80003270 <_ZN6ThreadD1Ev>
    80002d5c:	00048513          	mv	a0,s1
    80002d60:	00000097          	auipc	ra,0x0
    80002d64:	5dc080e7          	jalr	1500(ra) # 8000333c <_ZdlPv>
    80002d68:	01813083          	ld	ra,24(sp)
    80002d6c:	01013403          	ld	s0,16(sp)
    80002d70:	00813483          	ld	s1,8(sp)
    80002d74:	02010113          	addi	sp,sp,32
    80002d78:	00008067          	ret

0000000080002d7c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002d7c:	ff010113          	addi	sp,sp,-16
    80002d80:	00113423          	sd	ra,8(sp)
    80002d84:	00813023          	sd	s0,0(sp)
    80002d88:	01010413          	addi	s0,sp,16
    80002d8c:	00006797          	auipc	a5,0x6
    80002d90:	27478793          	addi	a5,a5,628 # 80009000 <_ZTV7WorkerA+0x10>
    80002d94:	00f53023          	sd	a5,0(a0)
    80002d98:	00000097          	auipc	ra,0x0
    80002d9c:	4d8080e7          	jalr	1240(ra) # 80003270 <_ZN6ThreadD1Ev>
    80002da0:	00813083          	ld	ra,8(sp)
    80002da4:	00013403          	ld	s0,0(sp)
    80002da8:	01010113          	addi	sp,sp,16
    80002dac:	00008067          	ret

0000000080002db0 <_ZN7WorkerAD0Ev>:
    80002db0:	fe010113          	addi	sp,sp,-32
    80002db4:	00113c23          	sd	ra,24(sp)
    80002db8:	00813823          	sd	s0,16(sp)
    80002dbc:	00913423          	sd	s1,8(sp)
    80002dc0:	02010413          	addi	s0,sp,32
    80002dc4:	00050493          	mv	s1,a0
    80002dc8:	00006797          	auipc	a5,0x6
    80002dcc:	23878793          	addi	a5,a5,568 # 80009000 <_ZTV7WorkerA+0x10>
    80002dd0:	00f53023          	sd	a5,0(a0)
    80002dd4:	00000097          	auipc	ra,0x0
    80002dd8:	49c080e7          	jalr	1180(ra) # 80003270 <_ZN6ThreadD1Ev>
    80002ddc:	00048513          	mv	a0,s1
    80002de0:	00000097          	auipc	ra,0x0
    80002de4:	55c080e7          	jalr	1372(ra) # 8000333c <_ZdlPv>
    80002de8:	01813083          	ld	ra,24(sp)
    80002dec:	01013403          	ld	s0,16(sp)
    80002df0:	00813483          	ld	s1,8(sp)
    80002df4:	02010113          	addi	sp,sp,32
    80002df8:	00008067          	ret

0000000080002dfc <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80002dfc:	ff010113          	addi	sp,sp,-16
    80002e00:	00113423          	sd	ra,8(sp)
    80002e04:	00813023          	sd	s0,0(sp)
    80002e08:	01010413          	addi	s0,sp,16
    80002e0c:	00006797          	auipc	a5,0x6
    80002e10:	21c78793          	addi	a5,a5,540 # 80009028 <_ZTV7WorkerB+0x10>
    80002e14:	00f53023          	sd	a5,0(a0)
    80002e18:	00000097          	auipc	ra,0x0
    80002e1c:	458080e7          	jalr	1112(ra) # 80003270 <_ZN6ThreadD1Ev>
    80002e20:	00813083          	ld	ra,8(sp)
    80002e24:	00013403          	ld	s0,0(sp)
    80002e28:	01010113          	addi	sp,sp,16
    80002e2c:	00008067          	ret

0000000080002e30 <_ZN7WorkerBD0Ev>:
    80002e30:	fe010113          	addi	sp,sp,-32
    80002e34:	00113c23          	sd	ra,24(sp)
    80002e38:	00813823          	sd	s0,16(sp)
    80002e3c:	00913423          	sd	s1,8(sp)
    80002e40:	02010413          	addi	s0,sp,32
    80002e44:	00050493          	mv	s1,a0
    80002e48:	00006797          	auipc	a5,0x6
    80002e4c:	1e078793          	addi	a5,a5,480 # 80009028 <_ZTV7WorkerB+0x10>
    80002e50:	00f53023          	sd	a5,0(a0)
    80002e54:	00000097          	auipc	ra,0x0
    80002e58:	41c080e7          	jalr	1052(ra) # 80003270 <_ZN6ThreadD1Ev>
    80002e5c:	00048513          	mv	a0,s1
    80002e60:	00000097          	auipc	ra,0x0
    80002e64:	4dc080e7          	jalr	1244(ra) # 8000333c <_ZdlPv>
    80002e68:	01813083          	ld	ra,24(sp)
    80002e6c:	01013403          	ld	s0,16(sp)
    80002e70:	00813483          	ld	s1,8(sp)
    80002e74:	02010113          	addi	sp,sp,32
    80002e78:	00008067          	ret

0000000080002e7c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80002e7c:	ff010113          	addi	sp,sp,-16
    80002e80:	00113423          	sd	ra,8(sp)
    80002e84:	00813023          	sd	s0,0(sp)
    80002e88:	01010413          	addi	s0,sp,16
    80002e8c:	00006797          	auipc	a5,0x6
    80002e90:	1c478793          	addi	a5,a5,452 # 80009050 <_ZTV7WorkerC+0x10>
    80002e94:	00f53023          	sd	a5,0(a0)
    80002e98:	00000097          	auipc	ra,0x0
    80002e9c:	3d8080e7          	jalr	984(ra) # 80003270 <_ZN6ThreadD1Ev>
    80002ea0:	00813083          	ld	ra,8(sp)
    80002ea4:	00013403          	ld	s0,0(sp)
    80002ea8:	01010113          	addi	sp,sp,16
    80002eac:	00008067          	ret

0000000080002eb0 <_ZN7WorkerCD0Ev>:
    80002eb0:	fe010113          	addi	sp,sp,-32
    80002eb4:	00113c23          	sd	ra,24(sp)
    80002eb8:	00813823          	sd	s0,16(sp)
    80002ebc:	00913423          	sd	s1,8(sp)
    80002ec0:	02010413          	addi	s0,sp,32
    80002ec4:	00050493          	mv	s1,a0
    80002ec8:	00006797          	auipc	a5,0x6
    80002ecc:	18878793          	addi	a5,a5,392 # 80009050 <_ZTV7WorkerC+0x10>
    80002ed0:	00f53023          	sd	a5,0(a0)
    80002ed4:	00000097          	auipc	ra,0x0
    80002ed8:	39c080e7          	jalr	924(ra) # 80003270 <_ZN6ThreadD1Ev>
    80002edc:	00048513          	mv	a0,s1
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	45c080e7          	jalr	1116(ra) # 8000333c <_ZdlPv>
    80002ee8:	01813083          	ld	ra,24(sp)
    80002eec:	01013403          	ld	s0,16(sp)
    80002ef0:	00813483          	ld	s1,8(sp)
    80002ef4:	02010113          	addi	sp,sp,32
    80002ef8:	00008067          	ret

0000000080002efc <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80002efc:	ff010113          	addi	sp,sp,-16
    80002f00:	00113423          	sd	ra,8(sp)
    80002f04:	00813023          	sd	s0,0(sp)
    80002f08:	01010413          	addi	s0,sp,16
    80002f0c:	00006797          	auipc	a5,0x6
    80002f10:	16c78793          	addi	a5,a5,364 # 80009078 <_ZTV7WorkerD+0x10>
    80002f14:	00f53023          	sd	a5,0(a0)
    80002f18:	00000097          	auipc	ra,0x0
    80002f1c:	358080e7          	jalr	856(ra) # 80003270 <_ZN6ThreadD1Ev>
    80002f20:	00813083          	ld	ra,8(sp)
    80002f24:	00013403          	ld	s0,0(sp)
    80002f28:	01010113          	addi	sp,sp,16
    80002f2c:	00008067          	ret

0000000080002f30 <_ZN7WorkerDD0Ev>:
    80002f30:	fe010113          	addi	sp,sp,-32
    80002f34:	00113c23          	sd	ra,24(sp)
    80002f38:	00813823          	sd	s0,16(sp)
    80002f3c:	00913423          	sd	s1,8(sp)
    80002f40:	02010413          	addi	s0,sp,32
    80002f44:	00050493          	mv	s1,a0
    80002f48:	00006797          	auipc	a5,0x6
    80002f4c:	13078793          	addi	a5,a5,304 # 80009078 <_ZTV7WorkerD+0x10>
    80002f50:	00f53023          	sd	a5,0(a0)
    80002f54:	00000097          	auipc	ra,0x0
    80002f58:	31c080e7          	jalr	796(ra) # 80003270 <_ZN6ThreadD1Ev>
    80002f5c:	00048513          	mv	a0,s1
    80002f60:	00000097          	auipc	ra,0x0
    80002f64:	3dc080e7          	jalr	988(ra) # 8000333c <_ZdlPv>
    80002f68:	01813083          	ld	ra,24(sp)
    80002f6c:	01013403          	ld	s0,16(sp)
    80002f70:	00813483          	ld	s1,8(sp)
    80002f74:	02010113          	addi	sp,sp,32
    80002f78:	00008067          	ret

0000000080002f7c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002f7c:	ff010113          	addi	sp,sp,-16
    80002f80:	00113423          	sd	ra,8(sp)
    80002f84:	00813023          	sd	s0,0(sp)
    80002f88:	01010413          	addi	s0,sp,16
    80002f8c:	00006797          	auipc	a5,0x6
    80002f90:	fcc78793          	addi	a5,a5,-52 # 80008f58 <_ZTV14PeriodicThread+0x10>
    80002f94:	00f53023          	sd	a5,0(a0)
    80002f98:	00000097          	auipc	ra,0x0
    80002f9c:	2d8080e7          	jalr	728(ra) # 80003270 <_ZN6ThreadD1Ev>
    80002fa0:	00813083          	ld	ra,8(sp)
    80002fa4:	00013403          	ld	s0,0(sp)
    80002fa8:	01010113          	addi	sp,sp,16
    80002fac:	00008067          	ret

0000000080002fb0 <_ZN14PeriodicThreadD0Ev>:
    80002fb0:	fe010113          	addi	sp,sp,-32
    80002fb4:	00113c23          	sd	ra,24(sp)
    80002fb8:	00813823          	sd	s0,16(sp)
    80002fbc:	00913423          	sd	s1,8(sp)
    80002fc0:	02010413          	addi	s0,sp,32
    80002fc4:	00050493          	mv	s1,a0
    80002fc8:	00006797          	auipc	a5,0x6
    80002fcc:	f9078793          	addi	a5,a5,-112 # 80008f58 <_ZTV14PeriodicThread+0x10>
    80002fd0:	00f53023          	sd	a5,0(a0)
    80002fd4:	00000097          	auipc	ra,0x0
    80002fd8:	29c080e7          	jalr	668(ra) # 80003270 <_ZN6ThreadD1Ev>
    80002fdc:	00048513          	mv	a0,s1
    80002fe0:	00000097          	auipc	ra,0x0
    80002fe4:	35c080e7          	jalr	860(ra) # 8000333c <_ZdlPv>
    80002fe8:	01813083          	ld	ra,24(sp)
    80002fec:	01013403          	ld	s0,16(sp)
    80002ff0:	00813483          	ld	s1,8(sp)
    80002ff4:	02010113          	addi	sp,sp,32
    80002ff8:	00008067          	ret

0000000080002ffc <_ZN11MojPeriodicD1Ev>:
class MojPeriodic: public PeriodicThread {
    80002ffc:	ff010113          	addi	sp,sp,-16
    80003000:	00113423          	sd	ra,8(sp)
    80003004:	00813023          	sd	s0,0(sp)
    80003008:	01010413          	addi	s0,sp,16
    8000300c:	00006797          	auipc	a5,0x6
    80003010:	f4c78793          	addi	a5,a5,-180 # 80008f58 <_ZTV14PeriodicThread+0x10>
    80003014:	00f53023          	sd	a5,0(a0)
    80003018:	00000097          	auipc	ra,0x0
    8000301c:	258080e7          	jalr	600(ra) # 80003270 <_ZN6ThreadD1Ev>
    80003020:	00813083          	ld	ra,8(sp)
    80003024:	00013403          	ld	s0,0(sp)
    80003028:	01010113          	addi	sp,sp,16
    8000302c:	00008067          	ret

0000000080003030 <_ZN11MojPeriodicD0Ev>:
    80003030:	fe010113          	addi	sp,sp,-32
    80003034:	00113c23          	sd	ra,24(sp)
    80003038:	00813823          	sd	s0,16(sp)
    8000303c:	00913423          	sd	s1,8(sp)
    80003040:	02010413          	addi	s0,sp,32
    80003044:	00050493          	mv	s1,a0
    80003048:	00006797          	auipc	a5,0x6
    8000304c:	f1078793          	addi	a5,a5,-240 # 80008f58 <_ZTV14PeriodicThread+0x10>
    80003050:	00f53023          	sd	a5,0(a0)
    80003054:	00000097          	auipc	ra,0x0
    80003058:	21c080e7          	jalr	540(ra) # 80003270 <_ZN6ThreadD1Ev>
    8000305c:	00048513          	mv	a0,s1
    80003060:	00000097          	auipc	ra,0x0
    80003064:	2dc080e7          	jalr	732(ra) # 8000333c <_ZdlPv>
    80003068:	01813083          	ld	ra,24(sp)
    8000306c:	01013403          	ld	s0,16(sp)
    80003070:	00813483          	ld	s1,8(sp)
    80003074:	02010113          	addi	sp,sp,32
    80003078:	00008067          	ret

000000008000307c <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv>:
        void run() override {
    8000307c:	fe010113          	addi	sp,sp,-32
    80003080:	00113c23          	sd	ra,24(sp)
    80003084:	00813823          	sd	s0,16(sp)
    80003088:	00913423          	sd	s1,8(sp)
    8000308c:	02010413          	addi	s0,sp,32
    80003090:	00050493          	mv	s1,a0
            while ((key = getc()) != 0x51) {
    80003094:	ffffe097          	auipc	ra,0xffffe
    80003098:	2e4080e7          	jalr	740(ra) # 80001378 <_Z4getcv>
    8000309c:	0005059b          	sext.w	a1,a0
    800030a0:	05100793          	li	a5,81
    800030a4:	00f58c63          	beq	a1,a5,800030bc <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    800030a8:	0104b783          	ld	a5,16(s1)
    800030ac:	0087b503          	ld	a0,8(a5)
    800030b0:	00001097          	auipc	ra,0x1
    800030b4:	6a4080e7          	jalr	1700(ra) # 80004754 <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 0x51) {
    800030b8:	fddff06f          	j	80003094 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    800030bc:	00100793          	li	a5,1
    800030c0:	00006717          	auipc	a4,0x6
    800030c4:	18f72423          	sw	a5,392(a4) # 80009248 <_ZN19ConsumerProducerCPP9threadEndE>
            td->buffer->put('!');
    800030c8:	0104b783          	ld	a5,16(s1)
    800030cc:	02100593          	li	a1,33
    800030d0:	0087b503          	ld	a0,8(a5)
    800030d4:	00001097          	auipc	ra,0x1
    800030d8:	680080e7          	jalr	1664(ra) # 80004754 <_ZN9BufferCPP3putEi>
            td->sem->signal();
    800030dc:	0104b783          	ld	a5,16(s1)
    800030e0:	0107b503          	ld	a0,16(a5)
    800030e4:	00000097          	auipc	ra,0x0
    800030e8:	4c8080e7          	jalr	1224(ra) # 800035ac <_ZN9Semaphore6signalEv>
        }
    800030ec:	01813083          	ld	ra,24(sp)
    800030f0:	01013403          	ld	s0,16(sp)
    800030f4:	00813483          	ld	s1,8(sp)
    800030f8:	02010113          	addi	sp,sp,32
    800030fc:	00008067          	ret

0000000080003100 <_ZN19ConsumerProducerCPP8Producer3runEv>:
        void run() override {
    80003100:	fe010113          	addi	sp,sp,-32
    80003104:	00113c23          	sd	ra,24(sp)
    80003108:	00813823          	sd	s0,16(sp)
    8000310c:	00913423          	sd	s1,8(sp)
    80003110:	01213023          	sd	s2,0(sp)
    80003114:	02010413          	addi	s0,sp,32
    80003118:	00050493          	mv	s1,a0
            int i = 0;
    8000311c:	00000913          	li	s2,0
            while (!threadEnd) {
    80003120:	00006797          	auipc	a5,0x6
    80003124:	1287a783          	lw	a5,296(a5) # 80009248 <_ZN19ConsumerProducerCPP9threadEndE>
    80003128:	04079263          	bnez	a5,8000316c <_ZN19ConsumerProducerCPP8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    8000312c:	0104b783          	ld	a5,16(s1)
    80003130:	0007a583          	lw	a1,0(a5)
    80003134:	0305859b          	addiw	a1,a1,48
    80003138:	0087b503          	ld	a0,8(a5)
    8000313c:	00001097          	auipc	ra,0x1
    80003140:	618080e7          	jalr	1560(ra) # 80004754 <_ZN9BufferCPP3putEi>
                i++;
    80003144:	0019071b          	addiw	a4,s2,1
    80003148:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    8000314c:	0104b783          	ld	a5,16(s1)
    80003150:	0007a783          	lw	a5,0(a5)
    80003154:	00e787bb          	addw	a5,a5,a4
    80003158:	00500513          	li	a0,5
    8000315c:	02a7e53b          	remw	a0,a5,a0
    80003160:	00000097          	auipc	ra,0x0
    80003164:	328080e7          	jalr	808(ra) # 80003488 <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    80003168:	fb9ff06f          	j	80003120 <_ZN19ConsumerProducerCPP8Producer3runEv+0x20>
            td->sem->signal();
    8000316c:	0104b783          	ld	a5,16(s1)
    80003170:	0107b503          	ld	a0,16(a5)
    80003174:	00000097          	auipc	ra,0x0
    80003178:	438080e7          	jalr	1080(ra) # 800035ac <_ZN9Semaphore6signalEv>
        }
    8000317c:	01813083          	ld	ra,24(sp)
    80003180:	01013403          	ld	s0,16(sp)
    80003184:	00813483          	ld	s1,8(sp)
    80003188:	00013903          	ld	s2,0(sp)
    8000318c:	02010113          	addi	sp,sp,32
    80003190:	00008067          	ret

0000000080003194 <_ZN11MojPeriodic18periodicActivationEv>:
    void periodicActivation() override{
    80003194:	ff010113          	addi	sp,sp,-16
    80003198:	00113423          	sd	ra,8(sp)
    8000319c:	00813023          	sd	s0,0(sp)
    800031a0:	01010413          	addi	s0,sp,16
        putc(c);
    800031a4:	01054503          	lbu	a0,16(a0)
    800031a8:	ffffe097          	auipc	ra,0xffffe
    800031ac:	1f8080e7          	jalr	504(ra) # 800013a0 <_Z4putcc>
    }
    800031b0:	00813083          	ld	ra,8(sp)
    800031b4:	00013403          	ld	s0,0(sp)
    800031b8:	01010113          	addi	sp,sp,16
    800031bc:	00008067          	ret

00000000800031c0 <_ZN7WorkerA3runEv>:
    void run() override {
    800031c0:	ff010113          	addi	sp,sp,-16
    800031c4:	00113423          	sd	ra,8(sp)
    800031c8:	00813023          	sd	s0,0(sp)
    800031cc:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800031d0:	00000593          	li	a1,0
    800031d4:	fffff097          	auipc	ra,0xfffff
    800031d8:	fb8080e7          	jalr	-72(ra) # 8000218c <_ZN7WorkerA11workerBodyAEPv>
    }
    800031dc:	00813083          	ld	ra,8(sp)
    800031e0:	00013403          	ld	s0,0(sp)
    800031e4:	01010113          	addi	sp,sp,16
    800031e8:	00008067          	ret

00000000800031ec <_ZN7WorkerB3runEv>:
    void run() override {
    800031ec:	ff010113          	addi	sp,sp,-16
    800031f0:	00113423          	sd	ra,8(sp)
    800031f4:	00813023          	sd	s0,0(sp)
    800031f8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800031fc:	00000593          	li	a1,0
    80003200:	fffff097          	auipc	ra,0xfffff
    80003204:	058080e7          	jalr	88(ra) # 80002258 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003208:	00813083          	ld	ra,8(sp)
    8000320c:	00013403          	ld	s0,0(sp)
    80003210:	01010113          	addi	sp,sp,16
    80003214:	00008067          	ret

0000000080003218 <_ZN7WorkerC3runEv>:
    void run() override {
    80003218:	ff010113          	addi	sp,sp,-16
    8000321c:	00113423          	sd	ra,8(sp)
    80003220:	00813023          	sd	s0,0(sp)
    80003224:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003228:	00000593          	li	a1,0
    8000322c:	fffff097          	auipc	ra,0xfffff
    80003230:	100080e7          	jalr	256(ra) # 8000232c <_ZN7WorkerC11workerBodyCEPv>
    }
    80003234:	00813083          	ld	ra,8(sp)
    80003238:	00013403          	ld	s0,0(sp)
    8000323c:	01010113          	addi	sp,sp,16
    80003240:	00008067          	ret

0000000080003244 <_ZN7WorkerD3runEv>:
    void run() override {
    80003244:	ff010113          	addi	sp,sp,-16
    80003248:	00113423          	sd	ra,8(sp)
    8000324c:	00813023          	sd	s0,0(sp)
    80003250:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003254:	00000593          	li	a1,0
    80003258:	fffff097          	auipc	ra,0xfffff
    8000325c:	254080e7          	jalr	596(ra) # 800024ac <_ZN7WorkerD11workerBodyDEPv>
    }
    80003260:	00813083          	ld	ra,8(sp)
    80003264:	00013403          	ld	s0,0(sp)
    80003268:	01010113          	addi	sp,sp,16
    8000326c:	00008067          	ret

0000000080003270 <_ZN6ThreadD1Ev>:
    asm volatile("mv a1, %0"::"r"(&myHandle));
    asm volatile("li a0, 0x11");
    asm volatile("ecall");
}

Thread::~Thread() {
    80003270:	ff010113          	addi	sp,sp,-16
    80003274:	00813423          	sd	s0,8(sp)
    80003278:	01010413          	addi	s0,sp,16
}
    8000327c:	00813403          	ld	s0,8(sp)
    80003280:	01010113          	addi	sp,sp,16
    80003284:	00008067          	ret

0000000080003288 <_ZN6Thread7wrapperEPv>:
    asm volatile("mv a1, %0"::"r"(&myHandle));
    asm volatile("li a0, 0x11");
    asm volatile("ecall");
}

void Thread::wrapper(void* arg) {
    80003288:	ff010113          	addi	sp,sp,-16
    8000328c:	00113423          	sd	ra,8(sp)
    80003290:	00813023          	sd	s0,0(sp)
    80003294:	01010413          	addi	s0,sp,16
    Thread* ja = (Thread*)arg;
    ja->run();
    80003298:	00053783          	ld	a5,0(a0)
    8000329c:	0107b783          	ld	a5,16(a5)
    800032a0:	000780e7          	jalr	a5
}
    800032a4:	00813083          	ld	ra,8(sp)
    800032a8:	00013403          	ld	s0,0(sp)
    800032ac:	01010113          	addi	sp,sp,16
    800032b0:	00008067          	ret

00000000800032b4 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800032b4:	ff010113          	addi	sp,sp,-16
    800032b8:	00113423          	sd	ra,8(sp)
    800032bc:	00813023          	sd	s0,0(sp)
    800032c0:	01010413          	addi	s0,sp,16
    800032c4:	00006797          	auipc	a5,0x6
    800032c8:	e3c78793          	addi	a5,a5,-452 # 80009100 <_ZTV9Semaphore+0x10>
    800032cc:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800032d0:	00853503          	ld	a0,8(a0)
    800032d4:	ffffe097          	auipc	ra,0xffffe
    800032d8:	fec080e7          	jalr	-20(ra) # 800012c0 <_Z9sem_closeP10CSemaphore>
}
    800032dc:	00813083          	ld	ra,8(sp)
    800032e0:	00013403          	ld	s0,0(sp)
    800032e4:	01010113          	addi	sp,sp,16
    800032e8:	00008067          	ret

00000000800032ec <_Znwm>:
void *operator new(size_t size) {
    800032ec:	ff010113          	addi	sp,sp,-16
    800032f0:	00113423          	sd	ra,8(sp)
    800032f4:	00813023          	sd	s0,0(sp)
    800032f8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800032fc:	ffffe097          	auipc	ra,0xffffe
    80003300:	e80080e7          	jalr	-384(ra) # 8000117c <_Z9mem_allocm>
}
    80003304:	00813083          	ld	ra,8(sp)
    80003308:	00013403          	ld	s0,0(sp)
    8000330c:	01010113          	addi	sp,sp,16
    80003310:	00008067          	ret

0000000080003314 <_Znam>:
void *operator new[](size_t size) {
    80003314:	ff010113          	addi	sp,sp,-16
    80003318:	00113423          	sd	ra,8(sp)
    8000331c:	00813023          	sd	s0,0(sp)
    80003320:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003324:	ffffe097          	auipc	ra,0xffffe
    80003328:	e58080e7          	jalr	-424(ra) # 8000117c <_Z9mem_allocm>
}
    8000332c:	00813083          	ld	ra,8(sp)
    80003330:	00013403          	ld	s0,0(sp)
    80003334:	01010113          	addi	sp,sp,16
    80003338:	00008067          	ret

000000008000333c <_ZdlPv>:
void operator delete(void *mem) {
    8000333c:	ff010113          	addi	sp,sp,-16
    80003340:	00113423          	sd	ra,8(sp)
    80003344:	00813023          	sd	s0,0(sp)
    80003348:	01010413          	addi	s0,sp,16
    mem_free(mem);
    8000334c:	ffffe097          	auipc	ra,0xffffe
    80003350:	e08080e7          	jalr	-504(ra) # 80001154 <_Z8mem_freePv>
}
    80003354:	00813083          	ld	ra,8(sp)
    80003358:	00013403          	ld	s0,0(sp)
    8000335c:	01010113          	addi	sp,sp,16
    80003360:	00008067          	ret

0000000080003364 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80003364:	ff010113          	addi	sp,sp,-16
    80003368:	00113423          	sd	ra,8(sp)
    8000336c:	00813023          	sd	s0,0(sp)
    80003370:	01010413          	addi	s0,sp,16
}
    80003374:	00000097          	auipc	ra,0x0
    80003378:	fc8080e7          	jalr	-56(ra) # 8000333c <_ZdlPv>
    8000337c:	00813083          	ld	ra,8(sp)
    80003380:	00013403          	ld	s0,0(sp)
    80003384:	01010113          	addi	sp,sp,16
    80003388:	00008067          	ret

000000008000338c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000338c:	fe010113          	addi	sp,sp,-32
    80003390:	00113c23          	sd	ra,24(sp)
    80003394:	00813823          	sd	s0,16(sp)
    80003398:	00913423          	sd	s1,8(sp)
    8000339c:	02010413          	addi	s0,sp,32
    800033a0:	00050493          	mv	s1,a0
}
    800033a4:	00000097          	auipc	ra,0x0
    800033a8:	f10080e7          	jalr	-240(ra) # 800032b4 <_ZN9SemaphoreD1Ev>
    800033ac:	00048513          	mv	a0,s1
    800033b0:	00000097          	auipc	ra,0x0
    800033b4:	f8c080e7          	jalr	-116(ra) # 8000333c <_ZdlPv>
    800033b8:	01813083          	ld	ra,24(sp)
    800033bc:	01013403          	ld	s0,16(sp)
    800033c0:	00813483          	ld	s1,8(sp)
    800033c4:	02010113          	addi	sp,sp,32
    800033c8:	00008067          	ret

00000000800033cc <_ZdaPv>:
void operator delete[](void *mem) {
    800033cc:	ff010113          	addi	sp,sp,-16
    800033d0:	00113423          	sd	ra,8(sp)
    800033d4:	00813023          	sd	s0,0(sp)
    800033d8:	01010413          	addi	s0,sp,16
    mem_free(mem);
    800033dc:	ffffe097          	auipc	ra,0xffffe
    800033e0:	d78080e7          	jalr	-648(ra) # 80001154 <_Z8mem_freePv>
}
    800033e4:	00813083          	ld	ra,8(sp)
    800033e8:	00013403          	ld	s0,0(sp)
    800033ec:	01010113          	addi	sp,sp,16
    800033f0:	00008067          	ret

00000000800033f4 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800033f4:	ff010113          	addi	sp,sp,-16
    800033f8:	00813423          	sd	s0,8(sp)
    800033fc:	01010413          	addi	s0,sp,16
    80003400:	00006797          	auipc	a5,0x6
    80003404:	cd878793          	addi	a5,a5,-808 # 800090d8 <_ZTV6Thread+0x10>
    80003408:	00f53023          	sd	a5,0(a0)
    asm volatile("mv a3, %0"::"r"(arg));
    8000340c:	00060693          	mv	a3,a2
    asm volatile("mv a2, %0"::"r"(body));
    80003410:	00058613          	mv	a2,a1
    asm volatile("mv a1, %0"::"r"(&myHandle));
    80003414:	00850513          	addi	a0,a0,8
    80003418:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x11");
    8000341c:	01100513          	li	a0,17
    asm volatile("ecall");
    80003420:	00000073          	ecall
}
    80003424:	00813403          	ld	s0,8(sp)
    80003428:	01010113          	addi	sp,sp,16
    8000342c:	00008067          	ret

0000000080003430 <_ZN6Thread5startEv>:
int Thread::start() {
    80003430:	ff010113          	addi	sp,sp,-16
    80003434:	00113423          	sd	ra,8(sp)
    80003438:	00813023          	sd	s0,0(sp)
    8000343c:	01010413          	addi	s0,sp,16
    thread_start(myHandle);
    80003440:	00853503          	ld	a0,8(a0)
    80003444:	ffffe097          	auipc	ra,0xffffe
    80003448:	e00080e7          	jalr	-512(ra) # 80001244 <_Z12thread_startP7CThread>
}
    8000344c:	00000513          	li	a0,0
    80003450:	00813083          	ld	ra,8(sp)
    80003454:	00013403          	ld	s0,0(sp)
    80003458:	01010113          	addi	sp,sp,16
    8000345c:	00008067          	ret

0000000080003460 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003460:	ff010113          	addi	sp,sp,-16
    80003464:	00113423          	sd	ra,8(sp)
    80003468:	00813023          	sd	s0,0(sp)
    8000346c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003470:	ffffe097          	auipc	ra,0xffffe
    80003474:	db4080e7          	jalr	-588(ra) # 80001224 <_Z15thread_dispatchv>
}
    80003478:	00813083          	ld	ra,8(sp)
    8000347c:	00013403          	ld	s0,0(sp)
    80003480:	01010113          	addi	sp,sp,16
    80003484:	00008067          	ret

0000000080003488 <_ZN6Thread5sleepEm>:
    if(time==0)return -1;
    80003488:	02050663          	beqz	a0,800034b4 <_ZN6Thread5sleepEm+0x2c>
int Thread::sleep(time_t time ) {
    8000348c:	ff010113          	addi	sp,sp,-16
    80003490:	00113423          	sd	ra,8(sp)
    80003494:	00813023          	sd	s0,0(sp)
    80003498:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    8000349c:	ffffe097          	auipc	ra,0xffffe
    800034a0:	ea8080e7          	jalr	-344(ra) # 80001344 <_Z10time_sleepm>
}
    800034a4:	00813083          	ld	ra,8(sp)
    800034a8:	00013403          	ld	s0,0(sp)
    800034ac:	01010113          	addi	sp,sp,16
    800034b0:	00008067          	ret
    if(time==0)return -1;
    800034b4:	fff00513          	li	a0,-1
}
    800034b8:	00008067          	ret

00000000800034bc <_ZN14PeriodicThread7wrapperEPv>:

PeriodicThread::PeriodicThread(time_t period) :
    Thread(&PeriodicThread::wrapper, new Arg(period, this)){}

bool PeriodicThread::flag= true;
void PeriodicThread::wrapper(void* args) {
    800034bc:	fe010113          	addi	sp,sp,-32
    800034c0:	00113c23          	sd	ra,24(sp)
    800034c4:	00813823          	sd	s0,16(sp)
    800034c8:	00913423          	sd	s1,8(sp)
    800034cc:	02010413          	addi	s0,sp,32
    800034d0:	00050493          	mv	s1,a0
    Arg* argumenti = (Arg*)args;
    800034d4:	0200006f          	j	800034f4 <_ZN14PeriodicThread7wrapperEPv+0x38>
    while(1){
        if(flag) {
            argumenti->ja->periodicActivation();
    800034d8:	0004b503          	ld	a0,0(s1)
    800034dc:	00053783          	ld	a5,0(a0)
    800034e0:	0187b783          	ld	a5,24(a5)
    800034e4:	000780e7          	jalr	a5
            sleep(argumenti->period);
    800034e8:	0084b503          	ld	a0,8(s1)
    800034ec:	00000097          	auipc	ra,0x0
    800034f0:	f9c080e7          	jalr	-100(ra) # 80003488 <_ZN6Thread5sleepEm>
        if(flag) {
    800034f4:	00006797          	auipc	a5,0x6
    800034f8:	bcc7c783          	lbu	a5,-1076(a5) # 800090c0 <_ZN14PeriodicThread4flagE>
    800034fc:	fe078ce3          	beqz	a5,800034f4 <_ZN14PeriodicThread7wrapperEPv+0x38>
    80003500:	fd9ff06f          	j	800034d8 <_ZN14PeriodicThread7wrapperEPv+0x1c>

0000000080003504 <_ZN6ThreadC1Ev>:
Thread::Thread() {//treba da pozove run
    80003504:	ff010113          	addi	sp,sp,-16
    80003508:	00813423          	sd	s0,8(sp)
    8000350c:	01010413          	addi	s0,sp,16
    80003510:	00006797          	auipc	a5,0x6
    80003514:	bc878793          	addi	a5,a5,-1080 # 800090d8 <_ZTV6Thread+0x10>
    80003518:	00f53023          	sd	a5,0(a0)
    asm volatile("mv a3, %0"::"r"(this));
    8000351c:	00050693          	mv	a3,a0
    asm volatile("mv a2, %0"::"r"(wrapper));
    80003520:	00000797          	auipc	a5,0x0
    80003524:	d6878793          	addi	a5,a5,-664 # 80003288 <_ZN6Thread7wrapperEPv>
    80003528:	00078613          	mv	a2,a5
    asm volatile("mv a1, %0"::"r"(&myHandle));
    8000352c:	00850513          	addi	a0,a0,8
    80003530:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x11");
    80003534:	01100513          	li	a0,17
    asm volatile("ecall");
    80003538:	00000073          	ecall
}
    8000353c:	00813403          	ld	s0,8(sp)
    80003540:	01010113          	addi	sp,sp,16
    80003544:	00008067          	ret

0000000080003548 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80003548:	ff010113          	addi	sp,sp,-16
    8000354c:	00113423          	sd	ra,8(sp)
    80003550:	00813023          	sd	s0,0(sp)
    80003554:	01010413          	addi	s0,sp,16
    80003558:	00006797          	auipc	a5,0x6
    8000355c:	ba878793          	addi	a5,a5,-1112 # 80009100 <_ZTV9Semaphore+0x10>
    80003560:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80003564:	00850513          	addi	a0,a0,8
    80003568:	ffffe097          	auipc	ra,0xffffe
    8000356c:	d28080e7          	jalr	-728(ra) # 80001290 <_Z8sem_openPP10CSemaphorej>
}
    80003570:	00813083          	ld	ra,8(sp)
    80003574:	00013403          	ld	s0,0(sp)
    80003578:	01010113          	addi	sp,sp,16
    8000357c:	00008067          	ret

0000000080003580 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80003580:	ff010113          	addi	sp,sp,-16
    80003584:	00113423          	sd	ra,8(sp)
    80003588:	00813023          	sd	s0,0(sp)
    8000358c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003590:	00853503          	ld	a0,8(a0)
    80003594:	ffffe097          	auipc	ra,0xffffe
    80003598:	d58080e7          	jalr	-680(ra) # 800012ec <_Z8sem_waitP10CSemaphore>
}
    8000359c:	00813083          	ld	ra,8(sp)
    800035a0:	00013403          	ld	s0,0(sp)
    800035a4:	01010113          	addi	sp,sp,16
    800035a8:	00008067          	ret

00000000800035ac <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    800035ac:	ff010113          	addi	sp,sp,-16
    800035b0:	00113423          	sd	ra,8(sp)
    800035b4:	00813023          	sd	s0,0(sp)
    800035b8:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800035bc:	00853503          	ld	a0,8(a0)
    800035c0:	ffffe097          	auipc	ra,0xffffe
    800035c4:	d58080e7          	jalr	-680(ra) # 80001318 <_Z10sem_signalP10CSemaphore>
}
    800035c8:	00813083          	ld	ra,8(sp)
    800035cc:	00013403          	ld	s0,0(sp)
    800035d0:	01010113          	addi	sp,sp,16
    800035d4:	00008067          	ret

00000000800035d8 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) :
    800035d8:	fe010113          	addi	sp,sp,-32
    800035dc:	00113c23          	sd	ra,24(sp)
    800035e0:	00813823          	sd	s0,16(sp)
    800035e4:	00913423          	sd	s1,8(sp)
    800035e8:	01213023          	sd	s2,0(sp)
    800035ec:	02010413          	addi	s0,sp,32
    800035f0:	00050493          	mv	s1,a0
    800035f4:	00058913          	mv	s2,a1
    Thread(&PeriodicThread::wrapper, new Arg(period, this)){}
    800035f8:	01000513          	li	a0,16
    800035fc:	00000097          	auipc	ra,0x0
    80003600:	cf0080e7          	jalr	-784(ra) # 800032ec <_Znwm>
    80003604:	00050613          	mv	a2,a0
private:
    static void wrapper(void*);
    struct Arg{
        PeriodicThread* ja;
        time_t period;
        Arg(time_t time, PeriodicThread* pt):ja(pt), period(time){}
    80003608:	00953023          	sd	s1,0(a0)
    8000360c:	01253423          	sd	s2,8(a0)
    80003610:	00000597          	auipc	a1,0x0
    80003614:	eac58593          	addi	a1,a1,-340 # 800034bc <_ZN14PeriodicThread7wrapperEPv>
    80003618:	00048513          	mv	a0,s1
    8000361c:	00000097          	auipc	ra,0x0
    80003620:	dd8080e7          	jalr	-552(ra) # 800033f4 <_ZN6ThreadC1EPFvPvES0_>
    80003624:	00006797          	auipc	a5,0x6
    80003628:	93478793          	addi	a5,a5,-1740 # 80008f58 <_ZTV14PeriodicThread+0x10>
    8000362c:	00f4b023          	sd	a5,0(s1)
    80003630:	01813083          	ld	ra,24(sp)
    80003634:	01013403          	ld	s0,16(sp)
    80003638:	00813483          	ld	s1,8(sp)
    8000363c:	00013903          	ld	s2,0(sp)
    80003640:	02010113          	addi	sp,sp,32
    80003644:	00008067          	ret

0000000080003648 <_ZN7Console4getcEv>:
        }
    }
}

char Console::getc() {
    80003648:	ff010113          	addi	sp,sp,-16
    8000364c:	00113423          	sd	ra,8(sp)
    80003650:	00813023          	sd	s0,0(sp)
    80003654:	01010413          	addi	s0,sp,16
    return ::getc();
    80003658:	ffffe097          	auipc	ra,0xffffe
    8000365c:	d20080e7          	jalr	-736(ra) # 80001378 <_Z4getcv>
}
    80003660:	00813083          	ld	ra,8(sp)
    80003664:	00013403          	ld	s0,0(sp)
    80003668:	01010113          	addi	sp,sp,16
    8000366c:	00008067          	ret

0000000080003670 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80003670:	ff010113          	addi	sp,sp,-16
    80003674:	00113423          	sd	ra,8(sp)
    80003678:	00813023          	sd	s0,0(sp)
    8000367c:	01010413          	addi	s0,sp,16
    ::putc(c);
    80003680:	ffffe097          	auipc	ra,0xffffe
    80003684:	d20080e7          	jalr	-736(ra) # 800013a0 <_Z4putcc>
}
    80003688:	00813083          	ld	ra,8(sp)
    8000368c:	00013403          	ld	s0,0(sp)
    80003690:	01010113          	addi	sp,sp,16
    80003694:	00008067          	ret

0000000080003698 <_Z4swapP7CThreadS0_>:
    bubbleSort(&headSleep, count);
    //dispathc
    CThread::yield();
}

CThread *swap(CThread *ptr1, CThread *ptr2) {
    80003698:	ff010113          	addi	sp,sp,-16
    8000369c:	00813423          	sd	s0,8(sp)
    800036a0:	01010413          	addi	s0,sp,16
    800036a4:	00050793          	mv	a5,a0
    800036a8:	00058513          	mv	a0,a1
    CThread *tmp = ptr2->next;
    800036ac:	0085b703          	ld	a4,8(a1)
    ptr2->next = ptr1;
    800036b0:	00f5b423          	sd	a5,8(a1)
    ptr1->next = tmp;
    800036b4:	00e7b423          	sd	a4,8(a5)
    return ptr2;
}
    800036b8:	00813403          	ld	s0,8(sp)
    800036bc:	01010113          	addi	sp,sp,16
    800036c0:	00008067          	ret

00000000800036c4 <_Z10bubbleSortPP7CThreadi>:

void bubbleSort(CThread **head, int count) {
    800036c4:	fc010113          	addi	sp,sp,-64
    800036c8:	02113c23          	sd	ra,56(sp)
    800036cc:	02813823          	sd	s0,48(sp)
    800036d0:	02913423          	sd	s1,40(sp)
    800036d4:	03213023          	sd	s2,32(sp)
    800036d8:	01313c23          	sd	s3,24(sp)
    800036dc:	01413823          	sd	s4,16(sp)
    800036e0:	01513423          	sd	s5,8(sp)
    800036e4:	04010413          	addi	s0,sp,64
    800036e8:	00050a93          	mv	s5,a0
    800036ec:	00058993          	mv	s3,a1
    CThread **h;
    int i, j, swapped;
    for (i = 0; i <= count; i++) {
    800036f0:	00000a13          	li	s4,0
    800036f4:	0549cc63          	blt	s3,s4,8000374c <_Z10bubbleSortPP7CThreadi+0x88>
        h = head;
    800036f8:	000a8493          	mv	s1,s5
        swapped = 0;
    800036fc:	00000693          	li	a3,0
        for (j = 0; j < count - i - 1; j++) {
    80003700:	00000913          	li	s2,0
    80003704:	0200006f          	j	80003724 <_Z10bubbleSortPP7CThreadi+0x60>
            CThread *p1 = *h;
            CThread *p2 = p1->next;
            if (p1->sleepTime > p2->sleepTime) {
                *h = swap(p1, p2);
    80003708:	00000097          	auipc	ra,0x0
    8000370c:	f90080e7          	jalr	-112(ra) # 80003698 <_Z4swapP7CThreadS0_>
    80003710:	00a4b023          	sd	a0,0(s1)
                swapped = 1;
    80003714:	00100693          	li	a3,1
            }
            h = &(*h)->next;
    80003718:	0004b483          	ld	s1,0(s1)
    8000371c:	00848493          	addi	s1,s1,8
        for (j = 0; j < count - i - 1; j++) {
    80003720:	0019091b          	addiw	s2,s2,1
    80003724:	414987bb          	subw	a5,s3,s4
    80003728:	fff7879b          	addiw	a5,a5,-1
    8000372c:	00f95e63          	bge	s2,a5,80003748 <_Z10bubbleSortPP7CThreadi+0x84>
            CThread *p1 = *h;
    80003730:	0004b503          	ld	a0,0(s1)
            CThread *p2 = p1->next;
    80003734:	00853583          	ld	a1,8(a0)
            if (p1->sleepTime > p2->sleepTime) {
    80003738:	00052703          	lw	a4,0(a0)
    8000373c:	0005a783          	lw	a5,0(a1)
    80003740:	fce7dce3          	bge	a5,a4,80003718 <_Z10bubbleSortPP7CThreadi+0x54>
    80003744:	fc5ff06f          	j	80003708 <_Z10bubbleSortPP7CThreadi+0x44>
        }
        if (swapped == 0)
    80003748:	02069463          	bnez	a3,80003770 <_Z10bubbleSortPP7CThreadi+0xac>
            break;
    }
    8000374c:	03813083          	ld	ra,56(sp)
    80003750:	03013403          	ld	s0,48(sp)
    80003754:	02813483          	ld	s1,40(sp)
    80003758:	02013903          	ld	s2,32(sp)
    8000375c:	01813983          	ld	s3,24(sp)
    80003760:	01013a03          	ld	s4,16(sp)
    80003764:	00813a83          	ld	s5,8(sp)
    80003768:	04010113          	addi	sp,sp,64
    8000376c:	00008067          	ret
    for (i = 0; i <= count; i++) {
    80003770:	001a0a1b          	addiw	s4,s4,1
    80003774:	f81ff06f          	j	800036f4 <_Z10bubbleSortPP7CThreadi+0x30>

0000000080003778 <_ZN5Sleep5sleepEm>:
    if(time <= 0) return;
    80003778:	00051463          	bnez	a0,80003780 <_ZN5Sleep5sleepEm+0x8>
    8000377c:	00008067          	ret
void Sleep::sleep(time_t time) {
    80003780:	ff010113          	addi	sp,sp,-16
    80003784:	00113423          	sd	ra,8(sp)
    80003788:	00813023          	sd	s0,0(sp)
    8000378c:	01010413          	addi	s0,sp,16
    count++;
    80003790:	00006797          	auipc	a5,0x6
    80003794:	ad878793          	addi	a5,a5,-1320 # 80009268 <_ZN5Sleep5countE>
    80003798:	0007a703          	lw	a4,0(a5)
    8000379c:	0017071b          	addiw	a4,a4,1
    800037a0:	00e7a023          	sw	a4,0(a5)
    CThread *element = CThread::running;
    800037a4:	00006717          	auipc	a4,0x6
    800037a8:	a0c73703          	ld	a4,-1524(a4) # 800091b0 <_GLOBAL_OFFSET_TABLE_+0x88>
    800037ac:	00073703          	ld	a4,0(a4)
    element->sleepTime = time;
    800037b0:	00a72023          	sw	a0,0(a4)
    element->status = CThread::SLEEP;
    800037b4:	00200693          	li	a3,2
    800037b8:	00d72823          	sw	a3,16(a4)
    element->next = headSleep;
    800037bc:	0087b683          	ld	a3,8(a5)
    800037c0:	00d73423          	sd	a3,8(a4)
    headSleep = element;
    800037c4:	00e7b423          	sd	a4,8(a5)
    bubbleSort(&headSleep, count);
    800037c8:	0007a583          	lw	a1,0(a5)
    800037cc:	00006517          	auipc	a0,0x6
    800037d0:	aa450513          	addi	a0,a0,-1372 # 80009270 <_ZN5Sleep9headSleepE>
    800037d4:	00000097          	auipc	ra,0x0
    800037d8:	ef0080e7          	jalr	-272(ra) # 800036c4 <_Z10bubbleSortPP7CThreadi>
    CThread::yield();
    800037dc:	ffffe097          	auipc	ra,0xffffe
    800037e0:	038080e7          	jalr	56(ra) # 80001814 <_ZN7CThread5yieldEv>
}
    800037e4:	00813083          	ld	ra,8(sp)
    800037e8:	00013403          	ld	s0,0(sp)
    800037ec:	01010113          	addi	sp,sp,16
    800037f0:	00008067          	ret

00000000800037f4 <_ZN9PutBufferC1Ei>:
//

#include "../h/PutBuffer.h"
PutBuffer* PutBuffer::putBuffer = nullptr;

PutBuffer::PutBuffer(int _cap) :cap(_cap + 1), head(0), tail(0) {
    800037f4:	fe010113          	addi	sp,sp,-32
    800037f8:	00113c23          	sd	ra,24(sp)
    800037fc:	00813823          	sd	s0,16(sp)
    80003800:	00913423          	sd	s1,8(sp)
    80003804:	02010413          	addi	s0,sp,32
    80003808:	00050493          	mv	s1,a0
    8000380c:	0015859b          	addiw	a1,a1,1
    80003810:	00b52023          	sw	a1,0(a0)
    80003814:	00052823          	sw	zero,16(a0)
    80003818:	00052a23          	sw	zero,20(a0)
    buffer = (char*) MemoryAllocator::getInstance().allocate(cap*sizeof (char));
    8000381c:	00000097          	auipc	ra,0x0
    80003820:	368080e7          	jalr	872(ra) # 80003b84 <_ZN15MemoryAllocator11getInstanceEv>
    80003824:	0004a583          	lw	a1,0(s1)
    80003828:	00000097          	auipc	ra,0x0
    8000382c:	1d8080e7          	jalr	472(ra) # 80003a00 <_ZN15MemoryAllocator8allocateEm>
    80003830:	00a4b423          	sd	a0,8(s1)
    item = 0;
    80003834:	0004ac23          	sw	zero,24(s1)
    sem_open(&spaceAvailable, cap);
    80003838:	0004a583          	lw	a1,0(s1)
    8000383c:	02048513          	addi	a0,s1,32
    80003840:	ffffe097          	auipc	ra,0xffffe
    80003844:	a50080e7          	jalr	-1456(ra) # 80001290 <_Z8sem_openPP10CSemaphorej>
}
    80003848:	01813083          	ld	ra,24(sp)
    8000384c:	01013403          	ld	s0,16(sp)
    80003850:	00813483          	ld	s1,8(sp)
    80003854:	02010113          	addi	sp,sp,32
    80003858:	00008067          	ret

000000008000385c <_ZN9PutBufferD1Ev>:

PutBuffer::~PutBuffer() {
    8000385c:	fe010113          	addi	sp,sp,-32
    80003860:	00113c23          	sd	ra,24(sp)
    80003864:	00813823          	sd	s0,16(sp)
    80003868:	00913423          	sd	s1,8(sp)
    8000386c:	02010413          	addi	s0,sp,32
    80003870:	00050493          	mv	s1,a0
    mem_free(buffer);
    80003874:	00853503          	ld	a0,8(a0)
    80003878:	ffffe097          	auipc	ra,0xffffe
    8000387c:	8dc080e7          	jalr	-1828(ra) # 80001154 <_Z8mem_freePv>
    sem_close(spaceAvailable);
    80003880:	0204b503          	ld	a0,32(s1)
    80003884:	ffffe097          	auipc	ra,0xffffe
    80003888:	a3c080e7          	jalr	-1476(ra) # 800012c0 <_Z9sem_closeP10CSemaphore>
}
    8000388c:	01813083          	ld	ra,24(sp)
    80003890:	01013403          	ld	s0,16(sp)
    80003894:	00813483          	ld	s1,8(sp)
    80003898:	02010113          	addi	sp,sp,32
    8000389c:	00008067          	ret

00000000800038a0 <_ZN9PutBuffer3putEc>:

void PutBuffer::put(char val) {
    800038a0:	fe010113          	addi	sp,sp,-32
    800038a4:	00113c23          	sd	ra,24(sp)
    800038a8:	00813823          	sd	s0,16(sp)
    800038ac:	00913423          	sd	s1,8(sp)
    800038b0:	01213023          	sd	s2,0(sp)
    800038b4:	02010413          	addi	s0,sp,32
    800038b8:	00050493          	mv	s1,a0
    800038bc:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800038c0:	02053503          	ld	a0,32(a0)
    800038c4:	00000097          	auipc	ra,0x0
    800038c8:	378080e7          	jalr	888(ra) # 80003c3c <_ZN10CSemaphore4waitEv>

    buffer[tail] = val;
    800038cc:	0084b783          	ld	a5,8(s1)
    800038d0:	0144a703          	lw	a4,20(s1)
    800038d4:	00e787b3          	add	a5,a5,a4
    800038d8:	01278023          	sb	s2,0(a5)
    tail = (tail + 1) % cap;
    800038dc:	0144a783          	lw	a5,20(s1)
    800038e0:	0017879b          	addiw	a5,a5,1
    800038e4:	0004a703          	lw	a4,0(s1)
    800038e8:	02e7e7bb          	remw	a5,a5,a4
    800038ec:	00f4aa23          	sw	a5,20(s1)

    item++;
    800038f0:	0184a783          	lw	a5,24(s1)
    800038f4:	0017879b          	addiw	a5,a5,1
    800038f8:	00f4ac23          	sw	a5,24(s1)
}
    800038fc:	01813083          	ld	ra,24(sp)
    80003900:	01013403          	ld	s0,16(sp)
    80003904:	00813483          	ld	s1,8(sp)
    80003908:	00013903          	ld	s2,0(sp)
    8000390c:	02010113          	addi	sp,sp,32
    80003910:	00008067          	ret

0000000080003914 <_ZN9PutBuffer3getEv>:

char PutBuffer::get() {
    80003914:	fe010113          	addi	sp,sp,-32
    80003918:	00113c23          	sd	ra,24(sp)
    8000391c:	00813823          	sd	s0,16(sp)
    80003920:	00913423          	sd	s1,8(sp)
    80003924:	02010413          	addi	s0,sp,32
    if(item<=0) return '\0';
    80003928:	01852783          	lw	a5,24(a0)
    8000392c:	04f05863          	blez	a5,8000397c <_ZN9PutBuffer3getEv+0x68>
    else item--;
    80003930:	fff7879b          	addiw	a5,a5,-1
    80003934:	00f52c23          	sw	a5,24(a0)

    char ret = buffer[head];
    80003938:	00853703          	ld	a4,8(a0)
    8000393c:	01052783          	lw	a5,16(a0)
    80003940:	00f70733          	add	a4,a4,a5
    80003944:	00074483          	lbu	s1,0(a4)
    head = (head + 1) % cap;
    80003948:	0017879b          	addiw	a5,a5,1
    8000394c:	00052703          	lw	a4,0(a0)
    80003950:	02e7e7bb          	remw	a5,a5,a4
    80003954:	00f52823          	sw	a5,16(a0)

    spaceAvailable->signal();
    80003958:	02053503          	ld	a0,32(a0)
    8000395c:	00000097          	auipc	ra,0x0
    80003960:	37c080e7          	jalr	892(ra) # 80003cd8 <_ZN10CSemaphore6signalEv>
    return ret;
}
    80003964:	00048513          	mv	a0,s1
    80003968:	01813083          	ld	ra,24(sp)
    8000396c:	01013403          	ld	s0,16(sp)
    80003970:	00813483          	ld	s1,8(sp)
    80003974:	02010113          	addi	sp,sp,32
    80003978:	00008067          	ret
    if(item<=0) return '\0';
    8000397c:	00000493          	li	s1,0
    80003980:	fe5ff06f          	j	80003964 <_ZN9PutBuffer3getEv+0x50>

0000000080003984 <_ZN9PutBuffer6getCntEv>:

int PutBuffer::getCnt() {
    80003984:	ff010113          	addi	sp,sp,-16
    80003988:	00813423          	sd	s0,8(sp)
    8000398c:	01010413          	addi	s0,sp,16
    int ret;

    if (tail >= head) {
    80003990:	01452783          	lw	a5,20(a0)
    80003994:	01052703          	lw	a4,16(a0)
    80003998:	00e7ca63          	blt	a5,a4,800039ac <_ZN9PutBuffer6getCntEv+0x28>
        ret = tail - head;
    8000399c:	40e7853b          	subw	a0,a5,a4
        ret = cap - head + tail;
    }


    return ret;
    800039a0:	00813403          	ld	s0,8(sp)
    800039a4:	01010113          	addi	sp,sp,16
    800039a8:	00008067          	ret
        ret = cap - head + tail;
    800039ac:	00052503          	lw	a0,0(a0)
    800039b0:	40e5053b          	subw	a0,a0,a4
    800039b4:	00f5053b          	addw	a0,a0,a5
    800039b8:	fe9ff06f          	j	800039a0 <_ZN9PutBuffer6getCntEv+0x1c>

00000000800039bc <_ZN15MemoryAllocatorC1Ev>:
// Created by os on 5/26/22.
//

#include "../h/MemoryAllocator.h"

MemoryAllocator::MemoryAllocator() {
    800039bc:	ff010113          	addi	sp,sp,-16
    800039c0:	00813423          	sd	s0,8(sp)
    800039c4:	01010413          	addi	s0,sp,16
    head = (freeMemFragment*)HEAP_START_ADDR;
    800039c8:	00005797          	auipc	a5,0x5
    800039cc:	7787b783          	ld	a5,1912(a5) # 80009140 <_GLOBAL_OFFSET_TABLE_+0x18>
    800039d0:	0007b703          	ld	a4,0(a5)
    800039d4:	00e53023          	sd	a4,0(a0)
    head->next = nullptr;
    800039d8:	00073423          	sd	zero,8(a4)
    head->size = (uint64)HEAP_END_ADDR - (uint64 )HEAP_START_ADDR;
    800039dc:	00053683          	ld	a3,0(a0)
    800039e0:	00005797          	auipc	a5,0x5
    800039e4:	7c07b783          	ld	a5,1984(a5) # 800091a0 <_GLOBAL_OFFSET_TABLE_+0x78>
    800039e8:	0007b783          	ld	a5,0(a5)
    800039ec:	40e787b3          	sub	a5,a5,a4
    800039f0:	00f6b023          	sd	a5,0(a3) # 1000 <_entry-0x7ffff000>

}
    800039f4:	00813403          	ld	s0,8(sp)
    800039f8:	01010113          	addi	sp,sp,16
    800039fc:	00008067          	ret

0000000080003a00 <_ZN15MemoryAllocator8allocateEm>:

void *MemoryAllocator::allocate(size_t size) {
    80003a00:	ff010113          	addi	sp,sp,-16
    80003a04:	00813423          	sd	s0,8(sp)
    80003a08:	01010413          	addi	s0,sp,16
    80003a0c:	00050693          	mv	a3,a0
    //try to find
    freeMemFragment* current = head, *previous = nullptr;
    80003a10:	00053503          	ld	a0,0(a0)
    80003a14:	00000713          	li	a4,0
    for(;current;previous = current, current = current->next)
    80003a18:	00050c63          	beqz	a0,80003a30 <_ZN15MemoryAllocator8allocateEm+0x30>
        if(current->size>=size) break;
    80003a1c:	00053783          	ld	a5,0(a0)
    80003a20:	00b7f863          	bgeu	a5,a1,80003a30 <_ZN15MemoryAllocator8allocateEm+0x30>
    for(;current;previous = current, current = current->next)
    80003a24:	00050713          	mv	a4,a0
    80003a28:	00853503          	ld	a0,8(a0)
    80003a2c:	fedff06f          	j	80003a18 <_ZN15MemoryAllocator8allocateEm+0x18>
    //if not found
    if(!current) return nullptr;
    80003a30:	02050c63          	beqz	a0,80003a68 <_ZN15MemoryAllocator8allocateEm+0x68>
    //if found allocate
    else{
        size_t  remaining = current->size-size;
    80003a34:	00053783          	ld	a5,0(a0)
    80003a38:	40b787b3          	sub	a5,a5,a1
        current->size = size;
    80003a3c:	00b53023          	sd	a1,0(a0)
        size_t offset = sizeof(freeMemFragment) + size;
    80003a40:	01058593          	addi	a1,a1,16
        freeMemFragment* newBlock = (freeMemFragment*)((char*)current + offset);
    80003a44:	00b505b3          	add	a1,a0,a1
        if(previous)previous->next = newBlock;
    80003a48:	02070663          	beqz	a4,80003a74 <_ZN15MemoryAllocator8allocateEm+0x74>
    80003a4c:	00b73423          	sd	a1,8(a4)
        else head = newBlock;
        newBlock->next = current->next;
    80003a50:	00853703          	ld	a4,8(a0)
    80003a54:	00e5b423          	sd	a4,8(a1)
        newBlock->size=remaining-sizeof(freeMemFragment);
    80003a58:	ff078793          	addi	a5,a5,-16
    80003a5c:	00f5b023          	sd	a5,0(a1)

        current->next = nullptr;
    80003a60:	00053423          	sd	zero,8(a0)
        return (char*)current+sizeof(freeMemFragment);
    80003a64:	01050513          	addi	a0,a0,16
    }
}
    80003a68:	00813403          	ld	s0,8(sp)
    80003a6c:	01010113          	addi	sp,sp,16
    80003a70:	00008067          	ret
        else head = newBlock;
    80003a74:	00b6b023          	sd	a1,0(a3)
    80003a78:	fd9ff06f          	j	80003a50 <_ZN15MemoryAllocator8allocateEm+0x50>

0000000080003a7c <_ZN15MemoryAllocator9tryToJoinEPNS_15freeMemFragmentE>:
    //try joining
    tryToJoin(newFrag);
    tryToJoin(current);
}

int MemoryAllocator::tryToJoin(MemoryAllocator::freeMemFragment *current) {
    80003a7c:	ff010113          	addi	sp,sp,-16
    80003a80:	00813423          	sd	s0,8(sp)
    80003a84:	01010413          	addi	s0,sp,16
    if(!current) return 0;
    80003a88:	04058263          	beqz	a1,80003acc <_ZN15MemoryAllocator9tryToJoinEPNS_15freeMemFragmentE+0x50>
    if(current->next && (char*)current+current->size==(char*)(current->next)){
    80003a8c:	0085b783          	ld	a5,8(a1)
    80003a90:	04078263          	beqz	a5,80003ad4 <_ZN15MemoryAllocator9tryToJoinEPNS_15freeMemFragmentE+0x58>
    80003a94:	0005b703          	ld	a4,0(a1)
    80003a98:	00e586b3          	add	a3,a1,a4
    80003a9c:	00d78a63          	beq	a5,a3,80003ab0 <_ZN15MemoryAllocator9tryToJoinEPNS_15freeMemFragmentE+0x34>
        //current & current->next can merge
        current->size += current->next->size;
        current->next = current->next->next;
        return 1;
    }else return 0;
    80003aa0:	00000513          	li	a0,0
}
    80003aa4:	00813403          	ld	s0,8(sp)
    80003aa8:	01010113          	addi	sp,sp,16
    80003aac:	00008067          	ret
        current->size += current->next->size;
    80003ab0:	0007b683          	ld	a3,0(a5)
    80003ab4:	00d70733          	add	a4,a4,a3
    80003ab8:	00e5b023          	sd	a4,0(a1)
        current->next = current->next->next;
    80003abc:	0087b783          	ld	a5,8(a5)
    80003ac0:	00f5b423          	sd	a5,8(a1)
        return 1;
    80003ac4:	00100513          	li	a0,1
    80003ac8:	fddff06f          	j	80003aa4 <_ZN15MemoryAllocator9tryToJoinEPNS_15freeMemFragmentE+0x28>
    if(!current) return 0;
    80003acc:	00000513          	li	a0,0
    80003ad0:	fd5ff06f          	j	80003aa4 <_ZN15MemoryAllocator9tryToJoinEPNS_15freeMemFragmentE+0x28>
    }else return 0;
    80003ad4:	00000513          	li	a0,0
    80003ad8:	fcdff06f          	j	80003aa4 <_ZN15MemoryAllocator9tryToJoinEPNS_15freeMemFragmentE+0x28>

0000000080003adc <_ZN15MemoryAllocator10deallocateEPv>:
void MemoryAllocator::deallocate(void *address) {
    80003adc:	fe010113          	addi	sp,sp,-32
    80003ae0:	00113c23          	sd	ra,24(sp)
    80003ae4:	00813823          	sd	s0,16(sp)
    80003ae8:	00913423          	sd	s1,8(sp)
    80003aec:	01213023          	sd	s2,0(sp)
    80003af0:	02010413          	addi	s0,sp,32
    80003af4:	00050913          	mv	s2,a0
    if(!head || address<(char*)head)
    80003af8:	00053783          	ld	a5,0(a0)
    80003afc:	00078e63          	beqz	a5,80003b18 <_ZN15MemoryAllocator10deallocateEPv+0x3c>
    80003b00:	02f5e063          	bltu	a1,a5,80003b20 <_ZN15MemoryAllocator10deallocateEPv+0x44>
        for (current = head; current->next && address>(char*)(current->next); current = current->next);
    80003b04:	00078493          	mv	s1,a5
    80003b08:	0087b783          	ld	a5,8(a5)
    80003b0c:	00078c63          	beqz	a5,80003b24 <_ZN15MemoryAllocator10deallocateEPv+0x48>
    80003b10:	feb7eae3          	bltu	a5,a1,80003b04 <_ZN15MemoryAllocator10deallocateEPv+0x28>
    80003b14:	0100006f          	j	80003b24 <_ZN15MemoryAllocator10deallocateEPv+0x48>
        current = 0;
    80003b18:	00078493          	mv	s1,a5
    80003b1c:	0080006f          	j	80003b24 <_ZN15MemoryAllocator10deallocateEPv+0x48>
    80003b20:	00000493          	li	s1,0
    newFrag->size = (*(size_t*)address - sizeof(freeMemFragment));
    80003b24:	0005b783          	ld	a5,0(a1)
    80003b28:	ff078793          	addi	a5,a5,-16
    80003b2c:	00f5b023          	sd	a5,0(a1)
    if(current) {
    80003b30:	04048263          	beqz	s1,80003b74 <_ZN15MemoryAllocator10deallocateEPv+0x98>
        newFrag->next = current->next;
    80003b34:	0084b783          	ld	a5,8(s1)
    80003b38:	00f5b423          	sd	a5,8(a1)
        current->next = newFrag;
    80003b3c:	00b4b423          	sd	a1,8(s1)
    tryToJoin(newFrag);
    80003b40:	00090513          	mv	a0,s2
    80003b44:	00000097          	auipc	ra,0x0
    80003b48:	f38080e7          	jalr	-200(ra) # 80003a7c <_ZN15MemoryAllocator9tryToJoinEPNS_15freeMemFragmentE>
    tryToJoin(current);
    80003b4c:	00048593          	mv	a1,s1
    80003b50:	00090513          	mv	a0,s2
    80003b54:	00000097          	auipc	ra,0x0
    80003b58:	f28080e7          	jalr	-216(ra) # 80003a7c <_ZN15MemoryAllocator9tryToJoinEPNS_15freeMemFragmentE>
}
    80003b5c:	01813083          	ld	ra,24(sp)
    80003b60:	01013403          	ld	s0,16(sp)
    80003b64:	00813483          	ld	s1,8(sp)
    80003b68:	00013903          	ld	s2,0(sp)
    80003b6c:	02010113          	addi	sp,sp,32
    80003b70:	00008067          	ret
        newFrag->next = head;
    80003b74:	00093783          	ld	a5,0(s2)
    80003b78:	00f5b423          	sd	a5,8(a1)
        head = newFrag;
    80003b7c:	00b93023          	sd	a1,0(s2)
    80003b80:	fc1ff06f          	j	80003b40 <_ZN15MemoryAllocator10deallocateEPv+0x64>

0000000080003b84 <_ZN15MemoryAllocator11getInstanceEv>:

MemoryAllocator &MemoryAllocator::getInstance() {
    static MemoryAllocator instance;
    80003b84:	00005797          	auipc	a5,0x5
    80003b88:	6fc7c783          	lbu	a5,1788(a5) # 80009280 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
    80003b8c:	00078863          	beqz	a5,80003b9c <_ZN15MemoryAllocator11getInstanceEv+0x18>
    return instance;
}
    80003b90:	00005517          	auipc	a0,0x5
    80003b94:	6f850513          	addi	a0,a0,1784 # 80009288 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80003b98:	00008067          	ret
MemoryAllocator &MemoryAllocator::getInstance() {
    80003b9c:	ff010113          	addi	sp,sp,-16
    80003ba0:	00113423          	sd	ra,8(sp)
    80003ba4:	00813023          	sd	s0,0(sp)
    80003ba8:	01010413          	addi	s0,sp,16
    static MemoryAllocator instance;
    80003bac:	00005517          	auipc	a0,0x5
    80003bb0:	6dc50513          	addi	a0,a0,1756 # 80009288 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80003bb4:	00000097          	auipc	ra,0x0
    80003bb8:	e08080e7          	jalr	-504(ra) # 800039bc <_ZN15MemoryAllocatorC1Ev>
    80003bbc:	00100793          	li	a5,1
    80003bc0:	00005717          	auipc	a4,0x5
    80003bc4:	6cf70023          	sb	a5,1728(a4) # 80009280 <_ZGVZN15MemoryAllocator11getInstanceEvE8instance>
}
    80003bc8:	00005517          	auipc	a0,0x5
    80003bcc:	6c050513          	addi	a0,a0,1728 # 80009288 <_ZZN15MemoryAllocator11getInstanceEvE8instance>
    80003bd0:	00813083          	ld	ra,8(sp)
    80003bd4:	00013403          	ld	s0,0(sp)
    80003bd8:	01010113          	addi	sp,sp,16
    80003bdc:	00008067          	ret

0000000080003be0 <_ZN10CSemaphore5blockEv>:
            return -1;
    }
    return 0;
}

void CSemaphore::block() {//uvek blokira running
    80003be0:	ff010113          	addi	sp,sp,-16
    80003be4:	00813423          	sd	s0,8(sp)
    80003be8:	01010413          	addi	s0,sp,16
    CThread::running->status = CThread::BLOCKED;
    80003bec:	00005797          	auipc	a5,0x5
    80003bf0:	5c47b783          	ld	a5,1476(a5) # 800091b0 <_GLOBAL_OFFSET_TABLE_+0x88>
    80003bf4:	0007b783          	ld	a5,0(a5)
    80003bf8:	00300713          	li	a4,3
    80003bfc:	00e7a823          	sw	a4,16(a5)

    if(headBlck== nullptr){
    80003c00:	00853703          	ld	a4,8(a0)
    80003c04:	02070463          	beqz	a4,80003c2c <_ZN10CSemaphore5blockEv+0x4c>
        headBlck=tailBlck=CThread::running;
        CThread::running->next= nullptr;
        return;
    }
    else{
        tailBlck->next=CThread::running;
    80003c08:	01053703          	ld	a4,16(a0)
    80003c0c:	00f73423          	sd	a5,8(a4)
        tailBlck=tailBlck->next;
    80003c10:	01053783          	ld	a5,16(a0)
    80003c14:	0087b783          	ld	a5,8(a5)
    80003c18:	00f53823          	sd	a5,16(a0)
        tailBlck->next= nullptr;
    80003c1c:	0007b423          	sd	zero,8(a5)
    }

}
    80003c20:	00813403          	ld	s0,8(sp)
    80003c24:	01010113          	addi	sp,sp,16
    80003c28:	00008067          	ret
        headBlck=tailBlck=CThread::running;
    80003c2c:	00f53823          	sd	a5,16(a0)
    80003c30:	00f53423          	sd	a5,8(a0)
        CThread::running->next= nullptr;
    80003c34:	0007b423          	sd	zero,8(a5)
        return;
    80003c38:	fe9ff06f          	j	80003c20 <_ZN10CSemaphore5blockEv+0x40>

0000000080003c3c <_ZN10CSemaphore4waitEv>:
    if(--val<0) {
    80003c3c:	00052783          	lw	a5,0(a0)
    80003c40:	fff7879b          	addiw	a5,a5,-1
    80003c44:	00f52023          	sw	a5,0(a0)
    80003c48:	02079713          	slli	a4,a5,0x20
    80003c4c:	00074663          	bltz	a4,80003c58 <_ZN10CSemaphore4waitEv+0x1c>
}
    80003c50:	00000513          	li	a0,0
    80003c54:	00008067          	ret
int CSemaphore::wait() {
    80003c58:	ff010113          	addi	sp,sp,-16
    80003c5c:	00113423          	sd	ra,8(sp)
    80003c60:	00813023          	sd	s0,0(sp)
    80003c64:	01010413          	addi	s0,sp,16
        block();
    80003c68:	00000097          	auipc	ra,0x0
    80003c6c:	f78080e7          	jalr	-136(ra) # 80003be0 <_ZN10CSemaphore5blockEv>
        CThread::yield();
    80003c70:	ffffe097          	auipc	ra,0xffffe
    80003c74:	ba4080e7          	jalr	-1116(ra) # 80001814 <_ZN7CThread5yieldEv>
}
    80003c78:	00000513          	li	a0,0
    80003c7c:	00813083          	ld	ra,8(sp)
    80003c80:	00013403          	ld	s0,0(sp)
    80003c84:	01010113          	addi	sp,sp,16
    80003c88:	00008067          	ret

0000000080003c8c <_ZN10CSemaphore7unblockEv>:

CThread *CSemaphore::unblock() {
    80003c8c:	ff010113          	addi	sp,sp,-16
    80003c90:	00813423          	sd	s0,8(sp)
    80003c94:	01010413          	addi	s0,sp,16
    80003c98:	00050793          	mv	a5,a0
    if(headBlck==nullptr)return nullptr;
    80003c9c:	00853503          	ld	a0,8(a0)
    80003ca0:	00050e63          	beqz	a0,80003cbc <_ZN10CSemaphore7unblockEv+0x30>

    if(tailBlck==headBlck){
    80003ca4:	0107b703          	ld	a4,16(a5)
    80003ca8:	02e50063          	beq	a0,a4,80003cc8 <_ZN10CSemaphore7unblockEv+0x3c>
        headBlck= nullptr;
        ret->status = CThread::READY;
        return ret;
    }
    CThread *ret=headBlck;
    headBlck=headBlck->next;
    80003cac:	00853703          	ld	a4,8(a0)
    80003cb0:	00e7b423          	sd	a4,8(a5)
    ret->next= nullptr;
    80003cb4:	00053423          	sd	zero,8(a0)
    ret->status = CThread::READY;
    80003cb8:	00052823          	sw	zero,16(a0)
    return ret;
}
    80003cbc:	00813403          	ld	s0,8(sp)
    80003cc0:	01010113          	addi	sp,sp,16
    80003cc4:	00008067          	ret
        tailBlck= nullptr;
    80003cc8:	0007b823          	sd	zero,16(a5)
        headBlck= nullptr;
    80003ccc:	0007b423          	sd	zero,8(a5)
        ret->status = CThread::READY;
    80003cd0:	00052823          	sw	zero,16(a0)
        return ret;
    80003cd4:	fe9ff06f          	j	80003cbc <_ZN10CSemaphore7unblockEv+0x30>

0000000080003cd8 <_ZN10CSemaphore6signalEv>:
    if(++val <= 0) {
    80003cd8:	00052783          	lw	a5,0(a0)
    80003cdc:	0017879b          	addiw	a5,a5,1
    80003ce0:	0007871b          	sext.w	a4,a5
    80003ce4:	00f52023          	sw	a5,0(a0)
    80003ce8:	00e05663          	blez	a4,80003cf4 <_ZN10CSemaphore6signalEv+0x1c>
    return 0;
    80003cec:	00000513          	li	a0,0
}
    80003cf0:	00008067          	ret
int CSemaphore::signal() {
    80003cf4:	fe010113          	addi	sp,sp,-32
    80003cf8:	00113c23          	sd	ra,24(sp)
    80003cfc:	00813823          	sd	s0,16(sp)
    80003d00:	00913423          	sd	s1,8(sp)
    80003d04:	02010413          	addi	s0,sp,32
        CThread *t = unblock();
    80003d08:	00000097          	auipc	ra,0x0
    80003d0c:	f84080e7          	jalr	-124(ra) # 80003c8c <_ZN10CSemaphore7unblockEv>
    80003d10:	00050493          	mv	s1,a0
        if(t) {
    80003d14:	02050863          	beqz	a0,80003d44 <_ZN10CSemaphore6signalEv+0x6c>
            Scheduler::getInstance().put(t);
    80003d18:	ffffe097          	auipc	ra,0xffffe
    80003d1c:	dac080e7          	jalr	-596(ra) # 80001ac4 <_ZN9Scheduler11getInstanceEv>
    80003d20:	00048513          	mv	a0,s1
    80003d24:	ffffe097          	auipc	ra,0xffffe
    80003d28:	cd4080e7          	jalr	-812(ra) # 800019f8 <_ZN9Scheduler3putEP7CThread>
            return 0;
    80003d2c:	00000513          	li	a0,0
}
    80003d30:	01813083          	ld	ra,24(sp)
    80003d34:	01013403          	ld	s0,16(sp)
    80003d38:	00813483          	ld	s1,8(sp)
    80003d3c:	02010113          	addi	sp,sp,32
    80003d40:	00008067          	ret
            return -1;
    80003d44:	fff00513          	li	a0,-1
    80003d48:	fe9ff06f          	j	80003d30 <_ZN10CSemaphore6signalEv+0x58>

0000000080003d4c <_ZN10CSemaphore4openEPPS_j>:

int CSemaphore::open(CSemaphore **handle, unsigned int init) {
    80003d4c:	fe010113          	addi	sp,sp,-32
    80003d50:	00113c23          	sd	ra,24(sp)
    80003d54:	00813823          	sd	s0,16(sp)
    80003d58:	00913423          	sd	s1,8(sp)
    80003d5c:	01213023          	sd	s2,0(sp)
    80003d60:	02010413          	addi	s0,sp,32
    80003d64:	00050493          	mv	s1,a0
    80003d68:	00058913          	mv	s2,a1
#include "CThread.h"
#include "../h/new.h"

class CSemaphore {
private:
    overrideNew;
    80003d6c:	00000097          	auipc	ra,0x0
    80003d70:	e18080e7          	jalr	-488(ra) # 80003b84 <_ZN15MemoryAllocator11getInstanceEv>
    80003d74:	04000593          	li	a1,64
    80003d78:	00000097          	auipc	ra,0x0
    80003d7c:	c88080e7          	jalr	-888(ra) # 80003a00 <_ZN15MemoryAllocator8allocateEm>
    CThread *headBlck = nullptr, *tailBlck = nullptr;

    void block();
    CThread* unblock();
public:
    CSemaphore(unsigned int init = 1): val(init){};
    80003d80:	01252023          	sw	s2,0(a0)
    80003d84:	00053423          	sd	zero,8(a0)
    80003d88:	00053823          	sd	zero,16(a0)
    *handle = new CSemaphore(init);
    80003d8c:	00a4b023          	sd	a0,0(s1)
    if (*handle)
    80003d90:	02050063          	beqz	a0,80003db0 <_ZN10CSemaphore4openEPPS_j+0x64>
        return 0;
    80003d94:	00000513          	li	a0,0
    else
        return -1;
}
    80003d98:	01813083          	ld	ra,24(sp)
    80003d9c:	01013403          	ld	s0,16(sp)
    80003da0:	00813483          	ld	s1,8(sp)
    80003da4:	00013903          	ld	s2,0(sp)
    80003da8:	02010113          	addi	sp,sp,32
    80003dac:	00008067          	ret
        return -1;
    80003db0:	fff00513          	li	a0,-1
    80003db4:	fe5ff06f          	j	80003d98 <_ZN10CSemaphore4openEPPS_j+0x4c>

0000000080003db8 <_ZN10CSemaphore5closeEPS_>:

int CSemaphore::close(CSemaphore *handle) {
        delete handle;
    80003db8:	04050463          	beqz	a0,80003e00 <_ZN10CSemaphore5closeEPS_+0x48>
int CSemaphore::close(CSemaphore *handle) {
    80003dbc:	fe010113          	addi	sp,sp,-32
    80003dc0:	00113c23          	sd	ra,24(sp)
    80003dc4:	00813823          	sd	s0,16(sp)
    80003dc8:	00913423          	sd	s1,8(sp)
    80003dcc:	02010413          	addi	s0,sp,32
    80003dd0:	00050493          	mv	s1,a0
    overrideDelete;
    80003dd4:	00000097          	auipc	ra,0x0
    80003dd8:	db0080e7          	jalr	-592(ra) # 80003b84 <_ZN15MemoryAllocator11getInstanceEv>
    80003ddc:	00048593          	mv	a1,s1
    80003de0:	00000097          	auipc	ra,0x0
    80003de4:	cfc080e7          	jalr	-772(ra) # 80003adc <_ZN15MemoryAllocator10deallocateEPv>
        return 0;
}
    80003de8:	00000513          	li	a0,0
    80003dec:	01813083          	ld	ra,24(sp)
    80003df0:	01013403          	ld	s0,16(sp)
    80003df4:	00813483          	ld	s1,8(sp)
    80003df8:	02010113          	addi	sp,sp,32
    80003dfc:	00008067          	ret
    80003e00:	00000513          	li	a0,0
    80003e04:	00008067          	ret

0000000080003e08 <_Z5flushv>:
        }
    }

}

void flush(){
    80003e08:	fe010113          	addi	sp,sp,-32
    80003e0c:	00113c23          	sd	ra,24(sp)
    80003e10:	00813823          	sd	s0,16(sp)
    80003e14:	00913423          	sd	s1,8(sp)
    80003e18:	01213023          	sd	s2,0(sp)
    80003e1c:	02010413          	addi	s0,sp,32
    uint8* status = (uint8*)CONSOLE_STATUS;
    80003e20:	00005797          	auipc	a5,0x5
    80003e24:	3187b783          	ld	a5,792(a5) # 80009138 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003e28:	0007b903          	ld	s2,0(a5)
    80003e2c:	0080006f          	j	80003e34 <_Z5flushv+0x2c>
    while(PutBuffer::putBuffer->getCnt()>0 && (*status & CONSOLE_TX_STATUS_BIT)) {
        uint8 *put = (uint8 *) CONSOLE_TX_DATA;
        char c = (PutBuffer::putBuffer->get());
        if(c=='\0') break;
        else *put = c;
    80003e30:	00a48023          	sb	a0,0(s1)
    while(PutBuffer::putBuffer->getCnt()>0 && (*status & CONSOLE_TX_STATUS_BIT)) {
    80003e34:	00005797          	auipc	a5,0x5
    80003e38:	34c7b783          	ld	a5,844(a5) # 80009180 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003e3c:	0007b503          	ld	a0,0(a5)
    80003e40:	00000097          	auipc	ra,0x0
    80003e44:	b44080e7          	jalr	-1212(ra) # 80003984 <_ZN9PutBuffer6getCntEv>
    80003e48:	02a05a63          	blez	a0,80003e7c <_Z5flushv+0x74>
    80003e4c:	00094783          	lbu	a5,0(s2)
    80003e50:	0207f793          	andi	a5,a5,32
    80003e54:	02078463          	beqz	a5,80003e7c <_Z5flushv+0x74>
        uint8 *put = (uint8 *) CONSOLE_TX_DATA;
    80003e58:	00005797          	auipc	a5,0x5
    80003e5c:	3087b783          	ld	a5,776(a5) # 80009160 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003e60:	0007b483          	ld	s1,0(a5)
        char c = (PutBuffer::putBuffer->get());
    80003e64:	00005797          	auipc	a5,0x5
    80003e68:	31c7b783          	ld	a5,796(a5) # 80009180 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003e6c:	0007b503          	ld	a0,0(a5)
    80003e70:	00000097          	auipc	ra,0x0
    80003e74:	aa4080e7          	jalr	-1372(ra) # 80003914 <_ZN9PutBuffer3getEv>
        if(c=='\0') break;
    80003e78:	fa051ce3          	bnez	a0,80003e30 <_Z5flushv+0x28>
    }
    80003e7c:	01813083          	ld	ra,24(sp)
    80003e80:	01013403          	ld	s0,16(sp)
    80003e84:	00813483          	ld	s1,8(sp)
    80003e88:	00013903          	ld	s2,0(sp)
    80003e8c:	02010113          	addi	sp,sp,32
    80003e90:	00008067          	ret

0000000080003e94 <interrupt>:
extern "C" void interrupt() {
    80003e94:	f9010113          	addi	sp,sp,-112
    80003e98:	06113423          	sd	ra,104(sp)
    80003e9c:	06813023          	sd	s0,96(sp)
    80003ea0:	04913c23          	sd	s1,88(sp)
    80003ea4:	05213823          	sd	s2,80(sp)
    80003ea8:	05313423          	sd	s3,72(sp)
    80003eac:	07010413          	addi	s0,sp,112
    asm volatile("sd a7,%0":"=m"(a7));
    80003eb0:	fd143423          	sd	a7,-56(s0)
    asm volatile("sd  a6,%0":"=m"(a6));
    80003eb4:	fd043023          	sd	a6,-64(s0)
    asm volatile("sd  a5,%0":"=m"(a5));
    80003eb8:	faf43c23          	sd	a5,-72(s0)
    asm volatile("sd  a4,%0":"=m"(a4));
    80003ebc:	fae43823          	sd	a4,-80(s0)
    asm volatile("sd  a3,%0":"=m"(a3));
    80003ec0:	fad43423          	sd	a3,-88(s0)
    asm volatile("sd  a2,%0":"=m"(a2));
    80003ec4:	fac43023          	sd	a2,-96(s0)
    asm volatile("sd  a1,%0":"=m"(a1));
    80003ec8:	f8b43c23          	sd	a1,-104(s0)
    asm volatile("sd  a0,%0":"=m"(a0));
    80003ecc:	f8a43823          	sd	a0,-112(s0)
    asm volatile("csrr %0, scause":"=r"(scause));
    80003ed0:	142027f3          	csrr	a5,scause
    switch (scause) {
    80003ed4:	fff00713          	li	a4,-1
    80003ed8:	03f71713          	slli	a4,a4,0x3f
    80003edc:	00170713          	addi	a4,a4,1
    80003ee0:	38e78863          	beq	a5,a4,80004270 <interrupt+0x3dc>
    80003ee4:	fff00713          	li	a4,-1
    80003ee8:	03f71713          	slli	a4,a4,0x3f
    80003eec:	00170713          	addi	a4,a4,1
    80003ef0:	02f76e63          	bltu	a4,a5,80003f2c <interrupt+0x98>
    80003ef4:	ff878793          	addi	a5,a5,-8
    80003ef8:	00100713          	li	a4,1
    80003efc:	42f76663          	bltu	a4,a5,80004328 <interrupt+0x494>
            asm volatile("csrr %0, sscratch":"=r"(tmp));
    80003f00:	140024f3          	csrr	s1,sscratch
            switch (a0) {
    80003f04:	f9043783          	ld	a5,-112(s0)
    80003f08:	05200713          	li	a4,82
    80003f0c:	40f76e63          	bltu	a4,a5,80004328 <interrupt+0x494>
    80003f10:	00279793          	slli	a5,a5,0x2
    80003f14:	00003717          	auipc	a4,0x3
    80003f18:	2f870713          	addi	a4,a4,760 # 8000720c <CONSOLE_STATUS+0x1fc>
    80003f1c:	00e787b3          	add	a5,a5,a4
    80003f20:	0007a783          	lw	a5,0(a5)
    80003f24:	00e787b3          	add	a5,a5,a4
    80003f28:	00078067          	jr	a5
    switch (scause) {
    80003f2c:	fff00713          	li	a4,-1
    80003f30:	03f71713          	slli	a4,a4,0x3f
    80003f34:	00970713          	addi	a4,a4,9
    80003f38:	3ee79863          	bne	a5,a4,80004328 <interrupt+0x494>
            if(plic_claim()==CONSOLE_IRQ){
    80003f3c:	00001097          	auipc	ra,0x1
    80003f40:	638080e7          	jalr	1592(ra) # 80005574 <plic_claim>
    80003f44:	00a00793          	li	a5,10
    80003f48:	3ef51063          	bne	a0,a5,80004328 <interrupt+0x494>
                uint8* status = (uint8*)CONSOLE_STATUS;
    80003f4c:	00005797          	auipc	a5,0x5
    80003f50:	1ec7b783          	ld	a5,492(a5) # 80009138 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003f54:	0007b903          	ld	s2,0(a5)
                if(*status & CONSOLE_RX_STATUS_BIT){
    80003f58:	00094783          	lbu	a5,0(s2)
    80003f5c:	0017f793          	andi	a5,a5,1
    80003f60:	02078863          	beqz	a5,80003f90 <interrupt+0xfc>
                    uint8 *get = (uint8 *) CONSOLE_RX_DATA;
    80003f64:	00005797          	auipc	a5,0x5
    80003f68:	1cc7b783          	ld	a5,460(a5) # 80009130 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003f6c:	0007b783          	ld	a5,0(a5)
                    if(*get == 'K')
    80003f70:	0007c583          	lbu	a1,0(a5)
    80003f74:	04b00793          	li	a5,75
    80003f78:	2cf59863          	bne	a1,a5,80004248 <interrupt+0x3b4>
                        PeriodicThread::flag = !PeriodicThread::flag;
    80003f7c:	00005717          	auipc	a4,0x5
    80003f80:	21c73703          	ld	a4,540(a4) # 80009198 <_GLOBAL_OFFSET_TABLE_+0x70>
    80003f84:	00074783          	lbu	a5,0(a4)
    80003f88:	0017c793          	xori	a5,a5,1
    80003f8c:	00f70023          	sb	a5,0(a4)
                if(*status & CONSOLE_TX_STATUS_BIT){
    80003f90:	00094783          	lbu	a5,0(s2)
    80003f94:	0207f793          	andi	a5,a5,32
    80003f98:	2c078463          	beqz	a5,80004260 <interrupt+0x3cc>
                    while(PutBuffer::putBuffer->getCnt()>0 && (*status & CONSOLE_TX_STATUS_BIT)) {
    80003f9c:	00005797          	auipc	a5,0x5
    80003fa0:	1e47b783          	ld	a5,484(a5) # 80009180 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003fa4:	0007b503          	ld	a0,0(a5)
    80003fa8:	00000097          	auipc	ra,0x0
    80003fac:	9dc080e7          	jalr	-1572(ra) # 80003984 <_ZN9PutBuffer6getCntEv>
    80003fb0:	2aa05863          	blez	a0,80004260 <interrupt+0x3cc>
    80003fb4:	00094783          	lbu	a5,0(s2)
    80003fb8:	0207f793          	andi	a5,a5,32
    80003fbc:	2a078263          	beqz	a5,80004260 <interrupt+0x3cc>
                        uint8 *put = (uint8 *) CONSOLE_TX_DATA;
    80003fc0:	00005797          	auipc	a5,0x5
    80003fc4:	1a07b783          	ld	a5,416(a5) # 80009160 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003fc8:	0007b483          	ld	s1,0(a5)
                        char c = (PutBuffer::putBuffer->get());
    80003fcc:	00005797          	auipc	a5,0x5
    80003fd0:	1b47b783          	ld	a5,436(a5) # 80009180 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003fd4:	0007b503          	ld	a0,0(a5)
    80003fd8:	00000097          	auipc	ra,0x0
    80003fdc:	93c080e7          	jalr	-1732(ra) # 80003914 <_ZN9PutBuffer3getEv>
                        if(c=='\0') break;
    80003fe0:	28050063          	beqz	a0,80004260 <interrupt+0x3cc>
                        else *put = c;
    80003fe4:	00a48023          	sb	a0,0(s1)
                    while(PutBuffer::putBuffer->getCnt()>0 && (*status & CONSOLE_TX_STATUS_BIT)) {
    80003fe8:	fb5ff06f          	j	80003f9c <interrupt+0x108>
                    asm volatile("csrr %0, sepc":"=r"(incPC));
    80003fec:	14102973          	csrr	s2,sepc
                    incPC += 4;
    80003ff0:	00490913          	addi	s2,s2,4
                    void *ret = MemoryAllocator::getInstance().allocate(a1);
    80003ff4:	00000097          	auipc	ra,0x0
    80003ff8:	b90080e7          	jalr	-1136(ra) # 80003b84 <_ZN15MemoryAllocator11getInstanceEv>
    80003ffc:	f9843583          	ld	a1,-104(s0)
    80004000:	00000097          	auipc	ra,0x0
    80004004:	a00080e7          	jalr	-1536(ra) # 80003a00 <_ZN15MemoryAllocator8allocateEm>
                    asm volatile("mv a0, %0"::"r"(ret));
    80004008:	00050513          	mv	a0,a0
                    asm volatile("sd a0, 0x50(%0)"::"r"(tmp));
    8000400c:	04a4b823          	sd	a0,80(s1)
                    asm volatile("csrw sepc, %0": :"r"(incPC));
    80004010:	14191073          	csrw	sepc,s2
                    break;
    80004014:	3140006f          	j	80004328 <interrupt+0x494>
                    asm volatile("csrr %0, sepc":"=r"(incPC));
    80004018:	141024f3          	csrr	s1,sepc
                    incPC += 4;
    8000401c:	00448493          	addi	s1,s1,4
                    MemoryAllocator::getInstance().deallocate(reinterpret_cast<void *>(a1));
    80004020:	00000097          	auipc	ra,0x0
    80004024:	b64080e7          	jalr	-1180(ra) # 80003b84 <_ZN15MemoryAllocator11getInstanceEv>
    80004028:	f9843583          	ld	a1,-104(s0)
    8000402c:	00000097          	auipc	ra,0x0
    80004030:	ab0080e7          	jalr	-1360(ra) # 80003adc <_ZN15MemoryAllocator10deallocateEPv>
                    asm volatile("csrw sepc, %0": :"r"(incPC));
    80004034:	14149073          	csrw	sepc,s1
                    break;
    80004038:	2f00006f          	j	80004328 <interrupt+0x494>
                    asm volatile("csrr %0, sepc":"=r"(incPC));
    8000403c:	14102973          	csrr	s2,sepc
                    incPC += 4;
    80004040:	00490913          	addi	s2,s2,4
                    int ret = CThread::createThread(thr, b, arg);
    80004044:	fa843603          	ld	a2,-88(s0)
    80004048:	fa043583          	ld	a1,-96(s0)
    8000404c:	f9843503          	ld	a0,-104(s0)
    80004050:	ffffd097          	auipc	ra,0xffffd
    80004054:	3e4080e7          	jalr	996(ra) # 80001434 <_ZN7CThread12createThreadEPPS_PFvPvES2_>
                    asm volatile("mv a0, %0"::"r"(ret));
    80004058:	00050513          	mv	a0,a0
                    asm volatile("sd a0, 0x50(%0)"::"r"(tmp));
    8000405c:	04a4b823          	sd	a0,80(s1)
                    asm volatile("csrw sepc, %0": :"r"(incPC));
    80004060:	14191073          	csrw	sepc,s2
                    break;
    80004064:	2c40006f          	j	80004328 <interrupt+0x494>
                    asm volatile("csrr %0, sepc":"=r"(incPC));
    80004068:	14102973          	csrr	s2,sepc
                    incPC += 4;
    8000406c:	00490913          	addi	s2,s2,4
                    CThread::running->status = CThread::FINISHED;
    80004070:	00005797          	auipc	a5,0x5
    80004074:	1407b783          	ld	a5,320(a5) # 800091b0 <_GLOBAL_OFFSET_TABLE_+0x88>
    80004078:	0007b783          	ld	a5,0(a5)
    8000407c:	00100713          	li	a4,1
    80004080:	00e7a823          	sw	a4,16(a5)
                    CThread::yield();
    80004084:	ffffd097          	auipc	ra,0xffffd
    80004088:	790080e7          	jalr	1936(ra) # 80001814 <_ZN7CThread5yieldEv>
                    asm volatile("mv a0, %0"::"r"(ret));
    8000408c:	00000793          	li	a5,0
    80004090:	00078513          	mv	a0,a5
                    asm volatile("sd a0, 0x50(%0)"::"r"(tmp));
    80004094:	04a4b823          	sd	a0,80(s1)
                    asm volatile("csrw sepc, %0": :"r"(incPC));
    80004098:	14191073          	csrw	sepc,s2
                    break;
    8000409c:	28c0006f          	j	80004328 <interrupt+0x494>
                    asm volatile("csrr %0, sepc":"=r"(incPC));
    800040a0:	141024f3          	csrr	s1,sepc
                    incPC += 4;
    800040a4:	00448493          	addi	s1,s1,4
                    asm volatile("csrr %0, sstatus":"=r"(sstatus));
    800040a8:	10002973          	csrr	s2,sstatus
                    CThread::yield();
    800040ac:	ffffd097          	auipc	ra,0xffffd
    800040b0:	768080e7          	jalr	1896(ra) # 80001814 <_ZN7CThread5yieldEv>
                    asm volatile("csrw  sstatus, %0"::"r"(sstatus));
    800040b4:	10091073          	csrw	sstatus,s2
                    asm volatile("csrw sepc, %0": :"r"(incPC));
    800040b8:	14149073          	csrw	sepc,s1
                    break;
    800040bc:	26c0006f          	j	80004328 <interrupt+0x494>
                    asm volatile("csrr %0, sepc":"=r"(incPC));
    800040c0:	141024f3          	csrr	s1,sepc
                    incPC += 4;
    800040c4:	00448493          	addi	s1,s1,4
                    Scheduler::getInstance().put(reinterpret_cast<CThread *>(a1));
    800040c8:	ffffe097          	auipc	ra,0xffffe
    800040cc:	9fc080e7          	jalr	-1540(ra) # 80001ac4 <_ZN9Scheduler11getInstanceEv>
    800040d0:	f9843503          	ld	a0,-104(s0)
    800040d4:	ffffe097          	auipc	ra,0xffffe
    800040d8:	924080e7          	jalr	-1756(ra) # 800019f8 <_ZN9Scheduler3putEP7CThread>
                    asm volatile("csrw sepc, %0": :"r"(incPC));
    800040dc:	14149073          	csrw	sepc,s1
                    break;
    800040e0:	2480006f          	j	80004328 <interrupt+0x494>
                    asm volatile("csrr %0, sepc":"=r"(incPC));
    800040e4:	14102973          	csrr	s2,sepc
                    incPC += 4;
    800040e8:	00490913          	addi	s2,s2,4
                    int ret = CSemaphore::open(handle, init);
    800040ec:	fa042583          	lw	a1,-96(s0)
    800040f0:	f9843503          	ld	a0,-104(s0)
    800040f4:	00000097          	auipc	ra,0x0
    800040f8:	c58080e7          	jalr	-936(ra) # 80003d4c <_ZN10CSemaphore4openEPPS_j>
                    asm volatile("mv a0, %0"::"r"(ret));
    800040fc:	00050513          	mv	a0,a0
                    asm volatile("sd a0, 0x50(%0)"::"r"(tmp));
    80004100:	04a4b823          	sd	a0,80(s1)
                    asm volatile("csrw sepc, %0": :"r"(incPC));
    80004104:	14191073          	csrw	sepc,s2
                    break;
    80004108:	2200006f          	j	80004328 <interrupt+0x494>
                    asm volatile("csrr %0, sepc":"=r"(incPC));
    8000410c:	14102973          	csrr	s2,sepc
                    incPC += 4;
    80004110:	00490913          	addi	s2,s2,4
                    int ret = CSemaphore::close(handle);
    80004114:	f9843503          	ld	a0,-104(s0)
    80004118:	00000097          	auipc	ra,0x0
    8000411c:	ca0080e7          	jalr	-864(ra) # 80003db8 <_ZN10CSemaphore5closeEPS_>
                    asm volatile("mv a0, %0"::"r"(ret));
    80004120:	00050513          	mv	a0,a0
                    asm volatile("sd a0, 0x50(%0)"::"r"(tmp));
    80004124:	04a4b823          	sd	a0,80(s1)
                    asm volatile("csrw sepc, %0": :"r"(incPC));
    80004128:	14191073          	csrw	sepc,s2
                    break;
    8000412c:	1fc0006f          	j	80004328 <interrupt+0x494>
                    asm volatile("csrr %0, sepc":"=r"(incPC));
    80004130:	14102973          	csrr	s2,sepc
                    incPC += 4;
    80004134:	00490913          	addi	s2,s2,4
                    asm volatile("csrr %0, sstatus":"=r"(sstatus));
    80004138:	100029f3          	csrr	s3,sstatus
                    int ret = handle->wait();
    8000413c:	f9843503          	ld	a0,-104(s0)
    80004140:	00000097          	auipc	ra,0x0
    80004144:	afc080e7          	jalr	-1284(ra) # 80003c3c <_ZN10CSemaphore4waitEv>
                    asm volatile("mv a0, %0"::"r"(ret));
    80004148:	00050513          	mv	a0,a0
                    asm volatile("sd a0, 0x50(%0)"::"r"(tmp));
    8000414c:	04a4b823          	sd	a0,80(s1)
                    asm volatile("csrw  sstatus, %0"::"r"(sstatus));
    80004150:	10099073          	csrw	sstatus,s3
                    asm volatile("csrw sepc, %0": :"r"(incPC));
    80004154:	14191073          	csrw	sepc,s2
                    break;
    80004158:	1d00006f          	j	80004328 <interrupt+0x494>
                    asm volatile("csrr %0, sepc":"=r"(incPC));
    8000415c:	14102973          	csrr	s2,sepc
                    incPC += 4;
    80004160:	00490913          	addi	s2,s2,4
                    int ret = handle->signal();
    80004164:	f9843503          	ld	a0,-104(s0)
    80004168:	00000097          	auipc	ra,0x0
    8000416c:	b70080e7          	jalr	-1168(ra) # 80003cd8 <_ZN10CSemaphore6signalEv>
                    asm volatile("mv a0, %0"::"r"(ret));
    80004170:	00050513          	mv	a0,a0
                    asm volatile("sd a0, 0x50(%0)"::"r"(tmp));
    80004174:	04a4b823          	sd	a0,80(s1)
                    asm volatile("csrw sepc, %0": :"r"(incPC));
    80004178:	14191073          	csrw	sepc,s2
                    break;
    8000417c:	1ac0006f          	j	80004328 <interrupt+0x494>
                    asm volatile("csrr %0, sepc":"=r"(incPC));
    80004180:	141024f3          	csrr	s1,sepc
                    incPC += 4;
    80004184:	00448493          	addi	s1,s1,4
                    asm volatile("csrr %0, sstatus":"=r"(sstatus));
    80004188:	10002973          	csrr	s2,sstatus
                    Sleep::sleep(time);
    8000418c:	f9843503          	ld	a0,-104(s0)
    80004190:	fffff097          	auipc	ra,0xfffff
    80004194:	5e8080e7          	jalr	1512(ra) # 80003778 <_ZN5Sleep5sleepEm>
                    asm volatile("csrw  sstatus, %0"::"r"(sstatus));
    80004198:	10091073          	csrw	sstatus,s2
                    asm volatile("csrw sepc, %0": :"r"(incPC));
    8000419c:	14149073          	csrw	sepc,s1
                    break;
    800041a0:	1880006f          	j	80004328 <interrupt+0x494>
                    asm volatile("csrr %0, sepc":"=r"(incPC));
    800041a4:	14102973          	csrr	s2,sepc
                    incPC += 4;
    800041a8:	00490913          	addi	s2,s2,4
                    asm volatile("csrr %0, sstatus":"=r"(sstatus));
    800041ac:	100029f3          	csrr	s3,sstatus
                    char ret = GetBuffer::getBuffer->get();
    800041b0:	00005797          	auipc	a5,0x5
    800041b4:	fc87b783          	ld	a5,-56(a5) # 80009178 <_GLOBAL_OFFSET_TABLE_+0x50>
    800041b8:	0007b503          	ld	a0,0(a5)
    800041bc:	ffffd097          	auipc	ra,0xffffd
    800041c0:	7a0080e7          	jalr	1952(ra) # 8000195c <_ZN9GetBuffer3getEv>
                    asm volatile("mv a0, %0"::"r"(ret));
    800041c4:	00050513          	mv	a0,a0
                    asm volatile("sd a0, 0x50(%0)"::"r"(tmp));
    800041c8:	04a4b823          	sd	a0,80(s1)
                    asm volatile("csrw  sstatus, %0"::"r"(sstatus));
    800041cc:	10099073          	csrw	sstatus,s3
                    asm volatile("csrw sepc, %0": :"r"(incPC));
    800041d0:	14191073          	csrw	sepc,s2
                    break;
    800041d4:	1540006f          	j	80004328 <interrupt+0x494>
                    asm volatile("csrr %0, sepc":"=r"(incPC));
    800041d8:	141024f3          	csrr	s1,sepc
                    incPC += 4;
    800041dc:	00448493          	addi	s1,s1,4
                    asm volatile("csrr %0, sstatus":"=r"(sstatus));
    800041e0:	10002973          	csrr	s2,sstatus
                    PutBuffer::putBuffer->put(a1);
    800041e4:	f9844583          	lbu	a1,-104(s0)
    800041e8:	00005797          	auipc	a5,0x5
    800041ec:	f987b783          	ld	a5,-104(a5) # 80009180 <_GLOBAL_OFFSET_TABLE_+0x58>
    800041f0:	0007b503          	ld	a0,0(a5)
    800041f4:	fffff097          	auipc	ra,0xfffff
    800041f8:	6ac080e7          	jalr	1708(ra) # 800038a0 <_ZN9PutBuffer3putEc>
                    flush();
    800041fc:	00000097          	auipc	ra,0x0
    80004200:	c0c080e7          	jalr	-1012(ra) # 80003e08 <_Z5flushv>
                    asm volatile("csrw  sstatus, %0"::"r"(sstatus));
    80004204:	10091073          	csrw	sstatus,s2
                    asm volatile("csrw sepc, %0": :"r"(incPC));
    80004208:	14149073          	csrw	sepc,s1
                    break;
    8000420c:	11c0006f          	j	80004328 <interrupt+0x494>
                    asm volatile("csrr %0, sepc":"=r"(incPC));
    80004210:	141027f3          	csrr	a5,sepc
                    asm volatile("csrr %0, sstatus" : "=r" (temp));
    80004214:	10002773          	csrr	a4,sstatus
                    temp &= ~0x100;
    80004218:	eff77713          	andi	a4,a4,-257
                    asm volatile("csrw sstatus, %0" : : "r" (temp));
    8000421c:	10071073          	csrw	sstatus,a4
                    incPC+=4;
    80004220:	00478793          	addi	a5,a5,4
                    asm volatile("csrw sepc, %0" : : "r" (incPC));
    80004224:	14179073          	csrw	sepc,a5
                    break;
    80004228:	1000006f          	j	80004328 <interrupt+0x494>
                    asm volatile("csrr %0, sepc":"=r"(incPC));
    8000422c:	141027f3          	csrr	a5,sepc
                    asm volatile("csrr %0, sstatus" : "=r" (temp));
    80004230:	10002773          	csrr	a4,sstatus
                    temp |= 0x100;
    80004234:	10076713          	ori	a4,a4,256
                    asm volatile("csrw sstatus, %0" : : "r" (temp));
    80004238:	10071073          	csrw	sstatus,a4
                    incPC+=4;
    8000423c:	00478793          	addi	a5,a5,4
                    asm volatile("csrw sepc, %0" : : "r" (incPC));
    80004240:	14179073          	csrw	sepc,a5
                    break;
    80004244:	0e40006f          	j	80004328 <interrupt+0x494>
                        GetBuffer::getBuffer->put(*get);
    80004248:	00005797          	auipc	a5,0x5
    8000424c:	f307b783          	ld	a5,-208(a5) # 80009178 <_GLOBAL_OFFSET_TABLE_+0x50>
    80004250:	0007b503          	ld	a0,0(a5)
    80004254:	ffffd097          	auipc	ra,0xffffd
    80004258:	6a4080e7          	jalr	1700(ra) # 800018f8 <_ZN9GetBuffer3putEc>
    8000425c:	d35ff06f          	j	80003f90 <interrupt+0xfc>
                plic_complete(CONSOLE_IRQ);
    80004260:	00a00513          	li	a0,10
    80004264:	00001097          	auipc	ra,0x1
    80004268:	348080e7          	jalr	840(ra) # 800055ac <plic_complete>
    8000426c:	0bc0006f          	j	80004328 <interrupt+0x494>
            CThread* cur = Sleep::headSleep;
    80004270:	00005797          	auipc	a5,0x5
    80004274:	f387b783          	ld	a5,-200(a5) # 800091a8 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004278:	0007b483          	ld	s1,0(a5)
            for(int i = 0; i<Sleep::count; i++, cur = cur->next){
    8000427c:	00000913          	li	s2,0
    80004280:	00c0006f          	j	8000428c <interrupt+0x3f8>
    80004284:	0019091b          	addiw	s2,s2,1
    80004288:	0084b483          	ld	s1,8(s1)
    8000428c:	00005797          	auipc	a5,0x5
    80004290:	ec47b783          	ld	a5,-316(a5) # 80009150 <_GLOBAL_OFFSET_TABLE_+0x28>
    80004294:	0007a783          	lw	a5,0(a5)
    80004298:	04f95e63          	bge	s2,a5,800042f4 <interrupt+0x460>
               if(cur== nullptr)break;
    8000429c:	04048c63          	beqz	s1,800042f4 <interrupt+0x460>
                if(--(cur->sleepTime)<=0){
    800042a0:	0004a783          	lw	a5,0(s1)
    800042a4:	fff7879b          	addiw	a5,a5,-1
    800042a8:	0007871b          	sext.w	a4,a5
    800042ac:	00f4a023          	sw	a5,0(s1)
    800042b0:	fce04ae3          	bgtz	a4,80004284 <interrupt+0x3f0>
                    Sleep::count--;
    800042b4:	00005717          	auipc	a4,0x5
    800042b8:	e9c73703          	ld	a4,-356(a4) # 80009150 <_GLOBAL_OFFSET_TABLE_+0x28>
    800042bc:	00072783          	lw	a5,0(a4)
    800042c0:	fff7879b          	addiw	a5,a5,-1
    800042c4:	00f72023          	sw	a5,0(a4)
                    Sleep::headSleep = Sleep::headSleep->next;
    800042c8:	00005797          	auipc	a5,0x5
    800042cc:	ee07b783          	ld	a5,-288(a5) # 800091a8 <_GLOBAL_OFFSET_TABLE_+0x80>
    800042d0:	0007b703          	ld	a4,0(a5)
    800042d4:	00873703          	ld	a4,8(a4)
    800042d8:	00e7b023          	sd	a4,0(a5)
                    Scheduler::getInstance().put(cur);
    800042dc:	ffffd097          	auipc	ra,0xffffd
    800042e0:	7e8080e7          	jalr	2024(ra) # 80001ac4 <_ZN9Scheduler11getInstanceEv>
    800042e4:	00048513          	mv	a0,s1
    800042e8:	ffffd097          	auipc	ra,0xffffd
    800042ec:	710080e7          	jalr	1808(ra) # 800019f8 <_ZN9Scheduler3putEP7CThread>
    800042f0:	f95ff06f          	j	80004284 <interrupt+0x3f0>
            asm volatile("csrr %0, sepc":"=r"(sepc));
    800042f4:	141024f3          	csrr	s1,sepc
            asm volatile("csrr %0, sstatus":"=r"(sstatus));
    800042f8:	10002973          	csrr	s2,sstatus
            if(++CThread::time == DEFAULT_TIME_SLICE) {
    800042fc:	00005717          	auipc	a4,0x5
    80004300:	e8c73703          	ld	a4,-372(a4) # 80009188 <_GLOBAL_OFFSET_TABLE_+0x60>
    80004304:	00072783          	lw	a5,0(a4)
    80004308:	0017879b          	addiw	a5,a5,1
    8000430c:	0007869b          	sext.w	a3,a5
    80004310:	00f72023          	sw	a5,0(a4)
    80004314:	00200793          	li	a5,2
    80004318:	02f68663          	beq	a3,a5,80004344 <interrupt+0x4b0>
            asm volatile("csrw sstatus, %0": :"r"(sstatus));
    8000431c:	10091073          	csrw	sstatus,s2
            asm volatile("csrw sepc, %0": :"r"(sepc));
    80004320:	14149073          	csrw	sepc,s1
            asm volatile("csrc sip, 0x02");
    80004324:	14417073          	csrci	sip,2
}
    80004328:	06813083          	ld	ra,104(sp)
    8000432c:	06013403          	ld	s0,96(sp)
    80004330:	05813483          	ld	s1,88(sp)
    80004334:	05013903          	ld	s2,80(sp)
    80004338:	04813983          	ld	s3,72(sp)
    8000433c:	07010113          	addi	sp,sp,112
    80004340:	00008067          	ret
                CThread::time = 0;
    80004344:	00072023          	sw	zero,0(a4)
                CThread::yield();
    80004348:	ffffd097          	auipc	ra,0xffffd
    8000434c:	4cc080e7          	jalr	1228(ra) # 80001814 <_ZN7CThread5yieldEv>
    80004350:	fcdff06f          	j	8000431c <interrupt+0x488>

0000000080004354 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004354:	fe010113          	addi	sp,sp,-32
    80004358:	00113c23          	sd	ra,24(sp)
    8000435c:	00813823          	sd	s0,16(sp)
    80004360:	00913423          	sd	s1,8(sp)
    80004364:	02010413          	addi	s0,sp,32
    80004368:	00050493          	mv	s1,a0
    LOCK();
    8000436c:	00100613          	li	a2,1
    80004370:	00000593          	li	a1,0
    80004374:	00005517          	auipc	a0,0x5
    80004378:	f1c50513          	addi	a0,a0,-228 # 80009290 <lockPrint>
    8000437c:	ffffd097          	auipc	ra,0xffffd
    80004380:	db8080e7          	jalr	-584(ra) # 80001134 <copy_and_swap>
    80004384:	fe0514e3          	bnez	a0,8000436c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004388:	0004c503          	lbu	a0,0(s1)
    8000438c:	00050a63          	beqz	a0,800043a0 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80004390:	ffffd097          	auipc	ra,0xffffd
    80004394:	010080e7          	jalr	16(ra) # 800013a0 <_Z4putcc>
        string++;
    80004398:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000439c:	fedff06f          	j	80004388 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800043a0:	00000613          	li	a2,0
    800043a4:	00100593          	li	a1,1
    800043a8:	00005517          	auipc	a0,0x5
    800043ac:	ee850513          	addi	a0,a0,-280 # 80009290 <lockPrint>
    800043b0:	ffffd097          	auipc	ra,0xffffd
    800043b4:	d84080e7          	jalr	-636(ra) # 80001134 <copy_and_swap>
    800043b8:	fe0514e3          	bnez	a0,800043a0 <_Z11printStringPKc+0x4c>
}
    800043bc:	01813083          	ld	ra,24(sp)
    800043c0:	01013403          	ld	s0,16(sp)
    800043c4:	00813483          	ld	s1,8(sp)
    800043c8:	02010113          	addi	sp,sp,32
    800043cc:	00008067          	ret

00000000800043d0 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800043d0:	fd010113          	addi	sp,sp,-48
    800043d4:	02113423          	sd	ra,40(sp)
    800043d8:	02813023          	sd	s0,32(sp)
    800043dc:	00913c23          	sd	s1,24(sp)
    800043e0:	01213823          	sd	s2,16(sp)
    800043e4:	01313423          	sd	s3,8(sp)
    800043e8:	01413023          	sd	s4,0(sp)
    800043ec:	03010413          	addi	s0,sp,48
    800043f0:	00050993          	mv	s3,a0
    800043f4:	00058a13          	mv	s4,a1
    LOCK();
    800043f8:	00100613          	li	a2,1
    800043fc:	00000593          	li	a1,0
    80004400:	00005517          	auipc	a0,0x5
    80004404:	e9050513          	addi	a0,a0,-368 # 80009290 <lockPrint>
    80004408:	ffffd097          	auipc	ra,0xffffd
    8000440c:	d2c080e7          	jalr	-724(ra) # 80001134 <copy_and_swap>
    80004410:	fe0514e3          	bnez	a0,800043f8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004414:	00000913          	li	s2,0
    80004418:	00090493          	mv	s1,s2
    8000441c:	0019091b          	addiw	s2,s2,1
    80004420:	03495a63          	bge	s2,s4,80004454 <_Z9getStringPci+0x84>
        cc = getc();
    80004424:	ffffd097          	auipc	ra,0xffffd
    80004428:	f54080e7          	jalr	-172(ra) # 80001378 <_Z4getcv>
        if(cc < 1)
    8000442c:	02050463          	beqz	a0,80004454 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80004430:	009984b3          	add	s1,s3,s1
    80004434:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004438:	00a00793          	li	a5,10
    8000443c:	00f50a63          	beq	a0,a5,80004450 <_Z9getStringPci+0x80>
    80004440:	00d00793          	li	a5,13
    80004444:	fcf51ae3          	bne	a0,a5,80004418 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80004448:	00090493          	mv	s1,s2
    8000444c:	0080006f          	j	80004454 <_Z9getStringPci+0x84>
    80004450:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004454:	009984b3          	add	s1,s3,s1
    80004458:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000445c:	00000613          	li	a2,0
    80004460:	00100593          	li	a1,1
    80004464:	00005517          	auipc	a0,0x5
    80004468:	e2c50513          	addi	a0,a0,-468 # 80009290 <lockPrint>
    8000446c:	ffffd097          	auipc	ra,0xffffd
    80004470:	cc8080e7          	jalr	-824(ra) # 80001134 <copy_and_swap>
    80004474:	fe0514e3          	bnez	a0,8000445c <_Z9getStringPci+0x8c>
    return buf;
}
    80004478:	00098513          	mv	a0,s3
    8000447c:	02813083          	ld	ra,40(sp)
    80004480:	02013403          	ld	s0,32(sp)
    80004484:	01813483          	ld	s1,24(sp)
    80004488:	01013903          	ld	s2,16(sp)
    8000448c:	00813983          	ld	s3,8(sp)
    80004490:	00013a03          	ld	s4,0(sp)
    80004494:	03010113          	addi	sp,sp,48
    80004498:	00008067          	ret

000000008000449c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000449c:	ff010113          	addi	sp,sp,-16
    800044a0:	00813423          	sd	s0,8(sp)
    800044a4:	01010413          	addi	s0,sp,16
    800044a8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800044ac:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800044b0:	0006c603          	lbu	a2,0(a3)
    800044b4:	fd06071b          	addiw	a4,a2,-48
    800044b8:	0ff77713          	andi	a4,a4,255
    800044bc:	00900793          	li	a5,9
    800044c0:	02e7e063          	bltu	a5,a4,800044e0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800044c4:	0025179b          	slliw	a5,a0,0x2
    800044c8:	00a787bb          	addw	a5,a5,a0
    800044cc:	0017979b          	slliw	a5,a5,0x1
    800044d0:	00168693          	addi	a3,a3,1
    800044d4:	00c787bb          	addw	a5,a5,a2
    800044d8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800044dc:	fd5ff06f          	j	800044b0 <_Z11stringToIntPKc+0x14>
    return n;
}
    800044e0:	00813403          	ld	s0,8(sp)
    800044e4:	01010113          	addi	sp,sp,16
    800044e8:	00008067          	ret

00000000800044ec <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800044ec:	fc010113          	addi	sp,sp,-64
    800044f0:	02113c23          	sd	ra,56(sp)
    800044f4:	02813823          	sd	s0,48(sp)
    800044f8:	02913423          	sd	s1,40(sp)
    800044fc:	03213023          	sd	s2,32(sp)
    80004500:	01313c23          	sd	s3,24(sp)
    80004504:	04010413          	addi	s0,sp,64
    80004508:	00050493          	mv	s1,a0
    8000450c:	00058913          	mv	s2,a1
    80004510:	00060993          	mv	s3,a2
    LOCK();
    80004514:	00100613          	li	a2,1
    80004518:	00000593          	li	a1,0
    8000451c:	00005517          	auipc	a0,0x5
    80004520:	d7450513          	addi	a0,a0,-652 # 80009290 <lockPrint>
    80004524:	ffffd097          	auipc	ra,0xffffd
    80004528:	c10080e7          	jalr	-1008(ra) # 80001134 <copy_and_swap>
    8000452c:	fe0514e3          	bnez	a0,80004514 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004530:	00098463          	beqz	s3,80004538 <_Z8printIntiii+0x4c>
    80004534:	0804c463          	bltz	s1,800045bc <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004538:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000453c:	00000593          	li	a1,0
    }

    i = 0;
    80004540:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004544:	0009079b          	sext.w	a5,s2
    80004548:	0325773b          	remuw	a4,a0,s2
    8000454c:	00048613          	mv	a2,s1
    80004550:	0014849b          	addiw	s1,s1,1
    80004554:	02071693          	slli	a3,a4,0x20
    80004558:	0206d693          	srli	a3,a3,0x20
    8000455c:	00005717          	auipc	a4,0x5
    80004560:	bb470713          	addi	a4,a4,-1100 # 80009110 <digits>
    80004564:	00d70733          	add	a4,a4,a3
    80004568:	00074683          	lbu	a3,0(a4)
    8000456c:	fd040713          	addi	a4,s0,-48
    80004570:	00c70733          	add	a4,a4,a2
    80004574:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004578:	0005071b          	sext.w	a4,a0
    8000457c:	0325553b          	divuw	a0,a0,s2
    80004580:	fcf772e3          	bgeu	a4,a5,80004544 <_Z8printIntiii+0x58>
    if(neg)
    80004584:	00058c63          	beqz	a1,8000459c <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80004588:	fd040793          	addi	a5,s0,-48
    8000458c:	009784b3          	add	s1,a5,s1
    80004590:	02d00793          	li	a5,45
    80004594:	fef48823          	sb	a5,-16(s1)
    80004598:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000459c:	fff4849b          	addiw	s1,s1,-1
    800045a0:	0204c463          	bltz	s1,800045c8 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800045a4:	fd040793          	addi	a5,s0,-48
    800045a8:	009787b3          	add	a5,a5,s1
    800045ac:	ff07c503          	lbu	a0,-16(a5)
    800045b0:	ffffd097          	auipc	ra,0xffffd
    800045b4:	df0080e7          	jalr	-528(ra) # 800013a0 <_Z4putcc>
    800045b8:	fe5ff06f          	j	8000459c <_Z8printIntiii+0xb0>
        x = -xx;
    800045bc:	4090053b          	negw	a0,s1
        neg = 1;
    800045c0:	00100593          	li	a1,1
        x = -xx;
    800045c4:	f7dff06f          	j	80004540 <_Z8printIntiii+0x54>

    UNLOCK();
    800045c8:	00000613          	li	a2,0
    800045cc:	00100593          	li	a1,1
    800045d0:	00005517          	auipc	a0,0x5
    800045d4:	cc050513          	addi	a0,a0,-832 # 80009290 <lockPrint>
    800045d8:	ffffd097          	auipc	ra,0xffffd
    800045dc:	b5c080e7          	jalr	-1188(ra) # 80001134 <copy_and_swap>
    800045e0:	fe0514e3          	bnez	a0,800045c8 <_Z8printIntiii+0xdc>
    800045e4:	03813083          	ld	ra,56(sp)
    800045e8:	03013403          	ld	s0,48(sp)
    800045ec:	02813483          	ld	s1,40(sp)
    800045f0:	02013903          	ld	s2,32(sp)
    800045f4:	01813983          	ld	s3,24(sp)
    800045f8:	04010113          	addi	sp,sp,64
    800045fc:	00008067          	ret

0000000080004600 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004600:	fd010113          	addi	sp,sp,-48
    80004604:	02113423          	sd	ra,40(sp)
    80004608:	02813023          	sd	s0,32(sp)
    8000460c:	00913c23          	sd	s1,24(sp)
    80004610:	01213823          	sd	s2,16(sp)
    80004614:	01313423          	sd	s3,8(sp)
    80004618:	03010413          	addi	s0,sp,48
    8000461c:	00050493          	mv	s1,a0
    80004620:	00058913          	mv	s2,a1
    80004624:	0015879b          	addiw	a5,a1,1
    80004628:	0007851b          	sext.w	a0,a5
    8000462c:	00f4a023          	sw	a5,0(s1)
    80004630:	0004a823          	sw	zero,16(s1)
    80004634:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004638:	00251513          	slli	a0,a0,0x2
    8000463c:	ffffd097          	auipc	ra,0xffffd
    80004640:	b40080e7          	jalr	-1216(ra) # 8000117c <_Z9mem_allocm>
    80004644:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004648:	01000513          	li	a0,16
    8000464c:	fffff097          	auipc	ra,0xfffff
    80004650:	ca0080e7          	jalr	-864(ra) # 800032ec <_Znwm>
    80004654:	00050993          	mv	s3,a0
    80004658:	00000593          	li	a1,0
    8000465c:	fffff097          	auipc	ra,0xfffff
    80004660:	eec080e7          	jalr	-276(ra) # 80003548 <_ZN9SemaphoreC1Ej>
    80004664:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004668:	01000513          	li	a0,16
    8000466c:	fffff097          	auipc	ra,0xfffff
    80004670:	c80080e7          	jalr	-896(ra) # 800032ec <_Znwm>
    80004674:	00050993          	mv	s3,a0
    80004678:	00090593          	mv	a1,s2
    8000467c:	fffff097          	auipc	ra,0xfffff
    80004680:	ecc080e7          	jalr	-308(ra) # 80003548 <_ZN9SemaphoreC1Ej>
    80004684:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004688:	01000513          	li	a0,16
    8000468c:	fffff097          	auipc	ra,0xfffff
    80004690:	c60080e7          	jalr	-928(ra) # 800032ec <_Znwm>
    80004694:	00050913          	mv	s2,a0
    80004698:	00100593          	li	a1,1
    8000469c:	fffff097          	auipc	ra,0xfffff
    800046a0:	eac080e7          	jalr	-340(ra) # 80003548 <_ZN9SemaphoreC1Ej>
    800046a4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800046a8:	01000513          	li	a0,16
    800046ac:	fffff097          	auipc	ra,0xfffff
    800046b0:	c40080e7          	jalr	-960(ra) # 800032ec <_Znwm>
    800046b4:	00050913          	mv	s2,a0
    800046b8:	00100593          	li	a1,1
    800046bc:	fffff097          	auipc	ra,0xfffff
    800046c0:	e8c080e7          	jalr	-372(ra) # 80003548 <_ZN9SemaphoreC1Ej>
    800046c4:	0324b823          	sd	s2,48(s1)
}
    800046c8:	02813083          	ld	ra,40(sp)
    800046cc:	02013403          	ld	s0,32(sp)
    800046d0:	01813483          	ld	s1,24(sp)
    800046d4:	01013903          	ld	s2,16(sp)
    800046d8:	00813983          	ld	s3,8(sp)
    800046dc:	03010113          	addi	sp,sp,48
    800046e0:	00008067          	ret
    800046e4:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800046e8:	00098513          	mv	a0,s3
    800046ec:	fffff097          	auipc	ra,0xfffff
    800046f0:	c50080e7          	jalr	-944(ra) # 8000333c <_ZdlPv>
    800046f4:	00048513          	mv	a0,s1
    800046f8:	00006097          	auipc	ra,0x6
    800046fc:	c70080e7          	jalr	-912(ra) # 8000a368 <_Unwind_Resume>
    80004700:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004704:	00098513          	mv	a0,s3
    80004708:	fffff097          	auipc	ra,0xfffff
    8000470c:	c34080e7          	jalr	-972(ra) # 8000333c <_ZdlPv>
    80004710:	00048513          	mv	a0,s1
    80004714:	00006097          	auipc	ra,0x6
    80004718:	c54080e7          	jalr	-940(ra) # 8000a368 <_Unwind_Resume>
    8000471c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004720:	00090513          	mv	a0,s2
    80004724:	fffff097          	auipc	ra,0xfffff
    80004728:	c18080e7          	jalr	-1000(ra) # 8000333c <_ZdlPv>
    8000472c:	00048513          	mv	a0,s1
    80004730:	00006097          	auipc	ra,0x6
    80004734:	c38080e7          	jalr	-968(ra) # 8000a368 <_Unwind_Resume>
    80004738:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000473c:	00090513          	mv	a0,s2
    80004740:	fffff097          	auipc	ra,0xfffff
    80004744:	bfc080e7          	jalr	-1028(ra) # 8000333c <_ZdlPv>
    80004748:	00048513          	mv	a0,s1
    8000474c:	00006097          	auipc	ra,0x6
    80004750:	c1c080e7          	jalr	-996(ra) # 8000a368 <_Unwind_Resume>

0000000080004754 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004754:	fe010113          	addi	sp,sp,-32
    80004758:	00113c23          	sd	ra,24(sp)
    8000475c:	00813823          	sd	s0,16(sp)
    80004760:	00913423          	sd	s1,8(sp)
    80004764:	01213023          	sd	s2,0(sp)
    80004768:	02010413          	addi	s0,sp,32
    8000476c:	00050493          	mv	s1,a0
    80004770:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004774:	01853503          	ld	a0,24(a0)
    80004778:	fffff097          	auipc	ra,0xfffff
    8000477c:	e08080e7          	jalr	-504(ra) # 80003580 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004780:	0304b503          	ld	a0,48(s1)
    80004784:	fffff097          	auipc	ra,0xfffff
    80004788:	dfc080e7          	jalr	-516(ra) # 80003580 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000478c:	0084b783          	ld	a5,8(s1)
    80004790:	0144a703          	lw	a4,20(s1)
    80004794:	00271713          	slli	a4,a4,0x2
    80004798:	00e787b3          	add	a5,a5,a4
    8000479c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800047a0:	0144a783          	lw	a5,20(s1)
    800047a4:	0017879b          	addiw	a5,a5,1
    800047a8:	0004a703          	lw	a4,0(s1)
    800047ac:	02e7e7bb          	remw	a5,a5,a4
    800047b0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800047b4:	0304b503          	ld	a0,48(s1)
    800047b8:	fffff097          	auipc	ra,0xfffff
    800047bc:	df4080e7          	jalr	-524(ra) # 800035ac <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800047c0:	0204b503          	ld	a0,32(s1)
    800047c4:	fffff097          	auipc	ra,0xfffff
    800047c8:	de8080e7          	jalr	-536(ra) # 800035ac <_ZN9Semaphore6signalEv>

}
    800047cc:	01813083          	ld	ra,24(sp)
    800047d0:	01013403          	ld	s0,16(sp)
    800047d4:	00813483          	ld	s1,8(sp)
    800047d8:	00013903          	ld	s2,0(sp)
    800047dc:	02010113          	addi	sp,sp,32
    800047e0:	00008067          	ret

00000000800047e4 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800047e4:	fe010113          	addi	sp,sp,-32
    800047e8:	00113c23          	sd	ra,24(sp)
    800047ec:	00813823          	sd	s0,16(sp)
    800047f0:	00913423          	sd	s1,8(sp)
    800047f4:	01213023          	sd	s2,0(sp)
    800047f8:	02010413          	addi	s0,sp,32
    800047fc:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004800:	02053503          	ld	a0,32(a0)
    80004804:	fffff097          	auipc	ra,0xfffff
    80004808:	d7c080e7          	jalr	-644(ra) # 80003580 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000480c:	0284b503          	ld	a0,40(s1)
    80004810:	fffff097          	auipc	ra,0xfffff
    80004814:	d70080e7          	jalr	-656(ra) # 80003580 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004818:	0084b703          	ld	a4,8(s1)
    8000481c:	0104a783          	lw	a5,16(s1)
    80004820:	00279693          	slli	a3,a5,0x2
    80004824:	00d70733          	add	a4,a4,a3
    80004828:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000482c:	0017879b          	addiw	a5,a5,1
    80004830:	0004a703          	lw	a4,0(s1)
    80004834:	02e7e7bb          	remw	a5,a5,a4
    80004838:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000483c:	0284b503          	ld	a0,40(s1)
    80004840:	fffff097          	auipc	ra,0xfffff
    80004844:	d6c080e7          	jalr	-660(ra) # 800035ac <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004848:	0184b503          	ld	a0,24(s1)
    8000484c:	fffff097          	auipc	ra,0xfffff
    80004850:	d60080e7          	jalr	-672(ra) # 800035ac <_ZN9Semaphore6signalEv>

    return ret;
}
    80004854:	00090513          	mv	a0,s2
    80004858:	01813083          	ld	ra,24(sp)
    8000485c:	01013403          	ld	s0,16(sp)
    80004860:	00813483          	ld	s1,8(sp)
    80004864:	00013903          	ld	s2,0(sp)
    80004868:	02010113          	addi	sp,sp,32
    8000486c:	00008067          	ret

0000000080004870 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004870:	fe010113          	addi	sp,sp,-32
    80004874:	00113c23          	sd	ra,24(sp)
    80004878:	00813823          	sd	s0,16(sp)
    8000487c:	00913423          	sd	s1,8(sp)
    80004880:	01213023          	sd	s2,0(sp)
    80004884:	02010413          	addi	s0,sp,32
    80004888:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000488c:	02853503          	ld	a0,40(a0)
    80004890:	fffff097          	auipc	ra,0xfffff
    80004894:	cf0080e7          	jalr	-784(ra) # 80003580 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004898:	0304b503          	ld	a0,48(s1)
    8000489c:	fffff097          	auipc	ra,0xfffff
    800048a0:	ce4080e7          	jalr	-796(ra) # 80003580 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800048a4:	0144a783          	lw	a5,20(s1)
    800048a8:	0104a903          	lw	s2,16(s1)
    800048ac:	0327ce63          	blt	a5,s2,800048e8 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800048b0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800048b4:	0304b503          	ld	a0,48(s1)
    800048b8:	fffff097          	auipc	ra,0xfffff
    800048bc:	cf4080e7          	jalr	-780(ra) # 800035ac <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800048c0:	0284b503          	ld	a0,40(s1)
    800048c4:	fffff097          	auipc	ra,0xfffff
    800048c8:	ce8080e7          	jalr	-792(ra) # 800035ac <_ZN9Semaphore6signalEv>

    return ret;
}
    800048cc:	00090513          	mv	a0,s2
    800048d0:	01813083          	ld	ra,24(sp)
    800048d4:	01013403          	ld	s0,16(sp)
    800048d8:	00813483          	ld	s1,8(sp)
    800048dc:	00013903          	ld	s2,0(sp)
    800048e0:	02010113          	addi	sp,sp,32
    800048e4:	00008067          	ret
        ret = cap - head + tail;
    800048e8:	0004a703          	lw	a4,0(s1)
    800048ec:	4127093b          	subw	s2,a4,s2
    800048f0:	00f9093b          	addw	s2,s2,a5
    800048f4:	fc1ff06f          	j	800048b4 <_ZN9BufferCPP6getCntEv+0x44>

00000000800048f8 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800048f8:	fe010113          	addi	sp,sp,-32
    800048fc:	00113c23          	sd	ra,24(sp)
    80004900:	00813823          	sd	s0,16(sp)
    80004904:	00913423          	sd	s1,8(sp)
    80004908:	02010413          	addi	s0,sp,32
    8000490c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80004910:	00a00513          	li	a0,10
    80004914:	fffff097          	auipc	ra,0xfffff
    80004918:	d5c080e7          	jalr	-676(ra) # 80003670 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000491c:	00003517          	auipc	a0,0x3
    80004920:	a3c50513          	addi	a0,a0,-1476 # 80007358 <CONSOLE_STATUS+0x348>
    80004924:	00000097          	auipc	ra,0x0
    80004928:	a30080e7          	jalr	-1488(ra) # 80004354 <_Z11printStringPKc>
    while (getCnt()) {
    8000492c:	00048513          	mv	a0,s1
    80004930:	00000097          	auipc	ra,0x0
    80004934:	f40080e7          	jalr	-192(ra) # 80004870 <_ZN9BufferCPP6getCntEv>
    80004938:	02050c63          	beqz	a0,80004970 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000493c:	0084b783          	ld	a5,8(s1)
    80004940:	0104a703          	lw	a4,16(s1)
    80004944:	00271713          	slli	a4,a4,0x2
    80004948:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000494c:	0007c503          	lbu	a0,0(a5)
    80004950:	fffff097          	auipc	ra,0xfffff
    80004954:	d20080e7          	jalr	-736(ra) # 80003670 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80004958:	0104a783          	lw	a5,16(s1)
    8000495c:	0017879b          	addiw	a5,a5,1
    80004960:	0004a703          	lw	a4,0(s1)
    80004964:	02e7e7bb          	remw	a5,a5,a4
    80004968:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000496c:	fc1ff06f          	j	8000492c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80004970:	02100513          	li	a0,33
    80004974:	fffff097          	auipc	ra,0xfffff
    80004978:	cfc080e7          	jalr	-772(ra) # 80003670 <_ZN7Console4putcEc>
    Console::putc('\n');
    8000497c:	00a00513          	li	a0,10
    80004980:	fffff097          	auipc	ra,0xfffff
    80004984:	cf0080e7          	jalr	-784(ra) # 80003670 <_ZN7Console4putcEc>
    mem_free(buffer);
    80004988:	0084b503          	ld	a0,8(s1)
    8000498c:	ffffc097          	auipc	ra,0xffffc
    80004990:	7c8080e7          	jalr	1992(ra) # 80001154 <_Z8mem_freePv>
    delete itemAvailable;
    80004994:	0204b503          	ld	a0,32(s1)
    80004998:	00050863          	beqz	a0,800049a8 <_ZN9BufferCPPD1Ev+0xb0>
    8000499c:	00053783          	ld	a5,0(a0)
    800049a0:	0087b783          	ld	a5,8(a5)
    800049a4:	000780e7          	jalr	a5
    delete spaceAvailable;
    800049a8:	0184b503          	ld	a0,24(s1)
    800049ac:	00050863          	beqz	a0,800049bc <_ZN9BufferCPPD1Ev+0xc4>
    800049b0:	00053783          	ld	a5,0(a0)
    800049b4:	0087b783          	ld	a5,8(a5)
    800049b8:	000780e7          	jalr	a5
    delete mutexTail;
    800049bc:	0304b503          	ld	a0,48(s1)
    800049c0:	00050863          	beqz	a0,800049d0 <_ZN9BufferCPPD1Ev+0xd8>
    800049c4:	00053783          	ld	a5,0(a0)
    800049c8:	0087b783          	ld	a5,8(a5)
    800049cc:	000780e7          	jalr	a5
    delete mutexHead;
    800049d0:	0284b503          	ld	a0,40(s1)
    800049d4:	00050863          	beqz	a0,800049e4 <_ZN9BufferCPPD1Ev+0xec>
    800049d8:	00053783          	ld	a5,0(a0)
    800049dc:	0087b783          	ld	a5,8(a5)
    800049e0:	000780e7          	jalr	a5
}
    800049e4:	01813083          	ld	ra,24(sp)
    800049e8:	01013403          	ld	s0,16(sp)
    800049ec:	00813483          	ld	s1,8(sp)
    800049f0:	02010113          	addi	sp,sp,32
    800049f4:	00008067          	ret

00000000800049f8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800049f8:	fe010113          	addi	sp,sp,-32
    800049fc:	00113c23          	sd	ra,24(sp)
    80004a00:	00813823          	sd	s0,16(sp)
    80004a04:	00913423          	sd	s1,8(sp)
    80004a08:	01213023          	sd	s2,0(sp)
    80004a0c:	02010413          	addi	s0,sp,32
    80004a10:	00050493          	mv	s1,a0
    80004a14:	00058913          	mv	s2,a1
    80004a18:	0015879b          	addiw	a5,a1,1
    80004a1c:	0007851b          	sext.w	a0,a5
    80004a20:	00f4a023          	sw	a5,0(s1)
    80004a24:	0004a823          	sw	zero,16(s1)
    80004a28:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004a2c:	00251513          	slli	a0,a0,0x2
    80004a30:	ffffc097          	auipc	ra,0xffffc
    80004a34:	74c080e7          	jalr	1868(ra) # 8000117c <_Z9mem_allocm>
    80004a38:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004a3c:	00000593          	li	a1,0
    80004a40:	02048513          	addi	a0,s1,32
    80004a44:	ffffd097          	auipc	ra,0xffffd
    80004a48:	84c080e7          	jalr	-1972(ra) # 80001290 <_Z8sem_openPP10CSemaphorej>
    sem_open(&spaceAvailable, _cap);
    80004a4c:	00090593          	mv	a1,s2
    80004a50:	01848513          	addi	a0,s1,24
    80004a54:	ffffd097          	auipc	ra,0xffffd
    80004a58:	83c080e7          	jalr	-1988(ra) # 80001290 <_Z8sem_openPP10CSemaphorej>
    sem_open(&mutexHead, 1);
    80004a5c:	00100593          	li	a1,1
    80004a60:	02848513          	addi	a0,s1,40
    80004a64:	ffffd097          	auipc	ra,0xffffd
    80004a68:	82c080e7          	jalr	-2004(ra) # 80001290 <_Z8sem_openPP10CSemaphorej>
    sem_open(&mutexTail, 1);
    80004a6c:	00100593          	li	a1,1
    80004a70:	03048513          	addi	a0,s1,48
    80004a74:	ffffd097          	auipc	ra,0xffffd
    80004a78:	81c080e7          	jalr	-2020(ra) # 80001290 <_Z8sem_openPP10CSemaphorej>
}
    80004a7c:	01813083          	ld	ra,24(sp)
    80004a80:	01013403          	ld	s0,16(sp)
    80004a84:	00813483          	ld	s1,8(sp)
    80004a88:	00013903          	ld	s2,0(sp)
    80004a8c:	02010113          	addi	sp,sp,32
    80004a90:	00008067          	ret

0000000080004a94 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004a94:	fe010113          	addi	sp,sp,-32
    80004a98:	00113c23          	sd	ra,24(sp)
    80004a9c:	00813823          	sd	s0,16(sp)
    80004aa0:	00913423          	sd	s1,8(sp)
    80004aa4:	01213023          	sd	s2,0(sp)
    80004aa8:	02010413          	addi	s0,sp,32
    80004aac:	00050493          	mv	s1,a0
    80004ab0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004ab4:	01853503          	ld	a0,24(a0)
    80004ab8:	ffffd097          	auipc	ra,0xffffd
    80004abc:	834080e7          	jalr	-1996(ra) # 800012ec <_Z8sem_waitP10CSemaphore>

    sem_wait(mutexTail);
    80004ac0:	0304b503          	ld	a0,48(s1)
    80004ac4:	ffffd097          	auipc	ra,0xffffd
    80004ac8:	828080e7          	jalr	-2008(ra) # 800012ec <_Z8sem_waitP10CSemaphore>
    buffer[tail] = val;
    80004acc:	0084b783          	ld	a5,8(s1)
    80004ad0:	0144a703          	lw	a4,20(s1)
    80004ad4:	00271713          	slli	a4,a4,0x2
    80004ad8:	00e787b3          	add	a5,a5,a4
    80004adc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004ae0:	0144a783          	lw	a5,20(s1)
    80004ae4:	0017879b          	addiw	a5,a5,1
    80004ae8:	0004a703          	lw	a4,0(s1)
    80004aec:	02e7e7bb          	remw	a5,a5,a4
    80004af0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004af4:	0304b503          	ld	a0,48(s1)
    80004af8:	ffffd097          	auipc	ra,0xffffd
    80004afc:	820080e7          	jalr	-2016(ra) # 80001318 <_Z10sem_signalP10CSemaphore>

    sem_signal(itemAvailable);
    80004b00:	0204b503          	ld	a0,32(s1)
    80004b04:	ffffd097          	auipc	ra,0xffffd
    80004b08:	814080e7          	jalr	-2028(ra) # 80001318 <_Z10sem_signalP10CSemaphore>

}
    80004b0c:	01813083          	ld	ra,24(sp)
    80004b10:	01013403          	ld	s0,16(sp)
    80004b14:	00813483          	ld	s1,8(sp)
    80004b18:	00013903          	ld	s2,0(sp)
    80004b1c:	02010113          	addi	sp,sp,32
    80004b20:	00008067          	ret

0000000080004b24 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004b24:	fe010113          	addi	sp,sp,-32
    80004b28:	00113c23          	sd	ra,24(sp)
    80004b2c:	00813823          	sd	s0,16(sp)
    80004b30:	00913423          	sd	s1,8(sp)
    80004b34:	01213023          	sd	s2,0(sp)
    80004b38:	02010413          	addi	s0,sp,32
    80004b3c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80004b40:	02053503          	ld	a0,32(a0)
    80004b44:	ffffc097          	auipc	ra,0xffffc
    80004b48:	7a8080e7          	jalr	1960(ra) # 800012ec <_Z8sem_waitP10CSemaphore>

    sem_wait(mutexHead);
    80004b4c:	0284b503          	ld	a0,40(s1)
    80004b50:	ffffc097          	auipc	ra,0xffffc
    80004b54:	79c080e7          	jalr	1948(ra) # 800012ec <_Z8sem_waitP10CSemaphore>

    int ret = buffer[head];
    80004b58:	0084b703          	ld	a4,8(s1)
    80004b5c:	0104a783          	lw	a5,16(s1)
    80004b60:	00279693          	slli	a3,a5,0x2
    80004b64:	00d70733          	add	a4,a4,a3
    80004b68:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004b6c:	0017879b          	addiw	a5,a5,1
    80004b70:	0004a703          	lw	a4,0(s1)
    80004b74:	02e7e7bb          	remw	a5,a5,a4
    80004b78:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80004b7c:	0284b503          	ld	a0,40(s1)
    80004b80:	ffffc097          	auipc	ra,0xffffc
    80004b84:	798080e7          	jalr	1944(ra) # 80001318 <_Z10sem_signalP10CSemaphore>

    sem_signal(spaceAvailable);
    80004b88:	0184b503          	ld	a0,24(s1)
    80004b8c:	ffffc097          	auipc	ra,0xffffc
    80004b90:	78c080e7          	jalr	1932(ra) # 80001318 <_Z10sem_signalP10CSemaphore>

    return ret;
}
    80004b94:	00090513          	mv	a0,s2
    80004b98:	01813083          	ld	ra,24(sp)
    80004b9c:	01013403          	ld	s0,16(sp)
    80004ba0:	00813483          	ld	s1,8(sp)
    80004ba4:	00013903          	ld	s2,0(sp)
    80004ba8:	02010113          	addi	sp,sp,32
    80004bac:	00008067          	ret

0000000080004bb0 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80004bb0:	fe010113          	addi	sp,sp,-32
    80004bb4:	00113c23          	sd	ra,24(sp)
    80004bb8:	00813823          	sd	s0,16(sp)
    80004bbc:	00913423          	sd	s1,8(sp)
    80004bc0:	01213023          	sd	s2,0(sp)
    80004bc4:	02010413          	addi	s0,sp,32
    80004bc8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80004bcc:	02853503          	ld	a0,40(a0)
    80004bd0:	ffffc097          	auipc	ra,0xffffc
    80004bd4:	71c080e7          	jalr	1820(ra) # 800012ec <_Z8sem_waitP10CSemaphore>
    sem_wait(mutexTail);
    80004bd8:	0304b503          	ld	a0,48(s1)
    80004bdc:	ffffc097          	auipc	ra,0xffffc
    80004be0:	710080e7          	jalr	1808(ra) # 800012ec <_Z8sem_waitP10CSemaphore>

    if (tail >= head) {
    80004be4:	0144a783          	lw	a5,20(s1)
    80004be8:	0104a903          	lw	s2,16(s1)
    80004bec:	0327ce63          	blt	a5,s2,80004c28 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80004bf0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80004bf4:	0304b503          	ld	a0,48(s1)
    80004bf8:	ffffc097          	auipc	ra,0xffffc
    80004bfc:	720080e7          	jalr	1824(ra) # 80001318 <_Z10sem_signalP10CSemaphore>
    sem_signal(mutexHead);
    80004c00:	0284b503          	ld	a0,40(s1)
    80004c04:	ffffc097          	auipc	ra,0xffffc
    80004c08:	714080e7          	jalr	1812(ra) # 80001318 <_Z10sem_signalP10CSemaphore>

    return ret;
}
    80004c0c:	00090513          	mv	a0,s2
    80004c10:	01813083          	ld	ra,24(sp)
    80004c14:	01013403          	ld	s0,16(sp)
    80004c18:	00813483          	ld	s1,8(sp)
    80004c1c:	00013903          	ld	s2,0(sp)
    80004c20:	02010113          	addi	sp,sp,32
    80004c24:	00008067          	ret
        ret = cap - head + tail;
    80004c28:	0004a703          	lw	a4,0(s1)
    80004c2c:	4127093b          	subw	s2,a4,s2
    80004c30:	00f9093b          	addw	s2,s2,a5
    80004c34:	fc1ff06f          	j	80004bf4 <_ZN6Buffer6getCntEv+0x44>

0000000080004c38 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80004c38:	fe010113          	addi	sp,sp,-32
    80004c3c:	00113c23          	sd	ra,24(sp)
    80004c40:	00813823          	sd	s0,16(sp)
    80004c44:	00913423          	sd	s1,8(sp)
    80004c48:	02010413          	addi	s0,sp,32
    80004c4c:	00050493          	mv	s1,a0
    putc('\n');
    80004c50:	00a00513          	li	a0,10
    80004c54:	ffffc097          	auipc	ra,0xffffc
    80004c58:	74c080e7          	jalr	1868(ra) # 800013a0 <_Z4putcc>
    printString("Buffer deleted!\n");
    80004c5c:	00002517          	auipc	a0,0x2
    80004c60:	6fc50513          	addi	a0,a0,1788 # 80007358 <CONSOLE_STATUS+0x348>
    80004c64:	fffff097          	auipc	ra,0xfffff
    80004c68:	6f0080e7          	jalr	1776(ra) # 80004354 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80004c6c:	00048513          	mv	a0,s1
    80004c70:	00000097          	auipc	ra,0x0
    80004c74:	f40080e7          	jalr	-192(ra) # 80004bb0 <_ZN6Buffer6getCntEv>
    80004c78:	02a05c63          	blez	a0,80004cb0 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80004c7c:	0084b783          	ld	a5,8(s1)
    80004c80:	0104a703          	lw	a4,16(s1)
    80004c84:	00271713          	slli	a4,a4,0x2
    80004c88:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80004c8c:	0007c503          	lbu	a0,0(a5)
    80004c90:	ffffc097          	auipc	ra,0xffffc
    80004c94:	710080e7          	jalr	1808(ra) # 800013a0 <_Z4putcc>
        head = (head + 1) % cap;
    80004c98:	0104a783          	lw	a5,16(s1)
    80004c9c:	0017879b          	addiw	a5,a5,1
    80004ca0:	0004a703          	lw	a4,0(s1)
    80004ca4:	02e7e7bb          	remw	a5,a5,a4
    80004ca8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80004cac:	fc1ff06f          	j	80004c6c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80004cb0:	02100513          	li	a0,33
    80004cb4:	ffffc097          	auipc	ra,0xffffc
    80004cb8:	6ec080e7          	jalr	1772(ra) # 800013a0 <_Z4putcc>
    putc('\n');
    80004cbc:	00a00513          	li	a0,10
    80004cc0:	ffffc097          	auipc	ra,0xffffc
    80004cc4:	6e0080e7          	jalr	1760(ra) # 800013a0 <_Z4putcc>
    mem_free(buffer);
    80004cc8:	0084b503          	ld	a0,8(s1)
    80004ccc:	ffffc097          	auipc	ra,0xffffc
    80004cd0:	488080e7          	jalr	1160(ra) # 80001154 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80004cd4:	0204b503          	ld	a0,32(s1)
    80004cd8:	ffffc097          	auipc	ra,0xffffc
    80004cdc:	5e8080e7          	jalr	1512(ra) # 800012c0 <_Z9sem_closeP10CSemaphore>
    sem_close(spaceAvailable);
    80004ce0:	0184b503          	ld	a0,24(s1)
    80004ce4:	ffffc097          	auipc	ra,0xffffc
    80004ce8:	5dc080e7          	jalr	1500(ra) # 800012c0 <_Z9sem_closeP10CSemaphore>
    sem_close(mutexTail);
    80004cec:	0304b503          	ld	a0,48(s1)
    80004cf0:	ffffc097          	auipc	ra,0xffffc
    80004cf4:	5d0080e7          	jalr	1488(ra) # 800012c0 <_Z9sem_closeP10CSemaphore>
    sem_close(mutexHead);
    80004cf8:	0284b503          	ld	a0,40(s1)
    80004cfc:	ffffc097          	auipc	ra,0xffffc
    80004d00:	5c4080e7          	jalr	1476(ra) # 800012c0 <_Z9sem_closeP10CSemaphore>
}
    80004d04:	01813083          	ld	ra,24(sp)
    80004d08:	01013403          	ld	s0,16(sp)
    80004d0c:	00813483          	ld	s1,8(sp)
    80004d10:	02010113          	addi	sp,sp,32
    80004d14:	00008067          	ret

0000000080004d18 <start>:
    80004d18:	ff010113          	addi	sp,sp,-16
    80004d1c:	00813423          	sd	s0,8(sp)
    80004d20:	01010413          	addi	s0,sp,16
    80004d24:	300027f3          	csrr	a5,mstatus
    80004d28:	ffffe737          	lui	a4,0xffffe
    80004d2c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff42ff>
    80004d30:	00e7f7b3          	and	a5,a5,a4
    80004d34:	00001737          	lui	a4,0x1
    80004d38:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80004d3c:	00e7e7b3          	or	a5,a5,a4
    80004d40:	30079073          	csrw	mstatus,a5
    80004d44:	00000797          	auipc	a5,0x0
    80004d48:	16078793          	addi	a5,a5,352 # 80004ea4 <system_main>
    80004d4c:	34179073          	csrw	mepc,a5
    80004d50:	00000793          	li	a5,0
    80004d54:	18079073          	csrw	satp,a5
    80004d58:	000107b7          	lui	a5,0x10
    80004d5c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80004d60:	30279073          	csrw	medeleg,a5
    80004d64:	30379073          	csrw	mideleg,a5
    80004d68:	104027f3          	csrr	a5,sie
    80004d6c:	2227e793          	ori	a5,a5,546
    80004d70:	10479073          	csrw	sie,a5
    80004d74:	fff00793          	li	a5,-1
    80004d78:	00a7d793          	srli	a5,a5,0xa
    80004d7c:	3b079073          	csrw	pmpaddr0,a5
    80004d80:	00f00793          	li	a5,15
    80004d84:	3a079073          	csrw	pmpcfg0,a5
    80004d88:	f14027f3          	csrr	a5,mhartid
    80004d8c:	0200c737          	lui	a4,0x200c
    80004d90:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004d94:	0007869b          	sext.w	a3,a5
    80004d98:	00269713          	slli	a4,a3,0x2
    80004d9c:	000f4637          	lui	a2,0xf4
    80004da0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004da4:	00d70733          	add	a4,a4,a3
    80004da8:	0037979b          	slliw	a5,a5,0x3
    80004dac:	020046b7          	lui	a3,0x2004
    80004db0:	00d787b3          	add	a5,a5,a3
    80004db4:	00c585b3          	add	a1,a1,a2
    80004db8:	00371693          	slli	a3,a4,0x3
    80004dbc:	00004717          	auipc	a4,0x4
    80004dc0:	4e470713          	addi	a4,a4,1252 # 800092a0 <timer_scratch>
    80004dc4:	00b7b023          	sd	a1,0(a5)
    80004dc8:	00d70733          	add	a4,a4,a3
    80004dcc:	00f73c23          	sd	a5,24(a4)
    80004dd0:	02c73023          	sd	a2,32(a4)
    80004dd4:	34071073          	csrw	mscratch,a4
    80004dd8:	00000797          	auipc	a5,0x0
    80004ddc:	6e878793          	addi	a5,a5,1768 # 800054c0 <timervec>
    80004de0:	30579073          	csrw	mtvec,a5
    80004de4:	300027f3          	csrr	a5,mstatus
    80004de8:	0087e793          	ori	a5,a5,8
    80004dec:	30079073          	csrw	mstatus,a5
    80004df0:	304027f3          	csrr	a5,mie
    80004df4:	0807e793          	ori	a5,a5,128
    80004df8:	30479073          	csrw	mie,a5
    80004dfc:	f14027f3          	csrr	a5,mhartid
    80004e00:	0007879b          	sext.w	a5,a5
    80004e04:	00078213          	mv	tp,a5
    80004e08:	30200073          	mret
    80004e0c:	00813403          	ld	s0,8(sp)
    80004e10:	01010113          	addi	sp,sp,16
    80004e14:	00008067          	ret

0000000080004e18 <timerinit>:
    80004e18:	ff010113          	addi	sp,sp,-16
    80004e1c:	00813423          	sd	s0,8(sp)
    80004e20:	01010413          	addi	s0,sp,16
    80004e24:	f14027f3          	csrr	a5,mhartid
    80004e28:	0200c737          	lui	a4,0x200c
    80004e2c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80004e30:	0007869b          	sext.w	a3,a5
    80004e34:	00269713          	slli	a4,a3,0x2
    80004e38:	000f4637          	lui	a2,0xf4
    80004e3c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80004e40:	00d70733          	add	a4,a4,a3
    80004e44:	0037979b          	slliw	a5,a5,0x3
    80004e48:	020046b7          	lui	a3,0x2004
    80004e4c:	00d787b3          	add	a5,a5,a3
    80004e50:	00c585b3          	add	a1,a1,a2
    80004e54:	00371693          	slli	a3,a4,0x3
    80004e58:	00004717          	auipc	a4,0x4
    80004e5c:	44870713          	addi	a4,a4,1096 # 800092a0 <timer_scratch>
    80004e60:	00b7b023          	sd	a1,0(a5)
    80004e64:	00d70733          	add	a4,a4,a3
    80004e68:	00f73c23          	sd	a5,24(a4)
    80004e6c:	02c73023          	sd	a2,32(a4)
    80004e70:	34071073          	csrw	mscratch,a4
    80004e74:	00000797          	auipc	a5,0x0
    80004e78:	64c78793          	addi	a5,a5,1612 # 800054c0 <timervec>
    80004e7c:	30579073          	csrw	mtvec,a5
    80004e80:	300027f3          	csrr	a5,mstatus
    80004e84:	0087e793          	ori	a5,a5,8
    80004e88:	30079073          	csrw	mstatus,a5
    80004e8c:	304027f3          	csrr	a5,mie
    80004e90:	0807e793          	ori	a5,a5,128
    80004e94:	30479073          	csrw	mie,a5
    80004e98:	00813403          	ld	s0,8(sp)
    80004e9c:	01010113          	addi	sp,sp,16
    80004ea0:	00008067          	ret

0000000080004ea4 <system_main>:
    80004ea4:	fe010113          	addi	sp,sp,-32
    80004ea8:	00813823          	sd	s0,16(sp)
    80004eac:	00913423          	sd	s1,8(sp)
    80004eb0:	00113c23          	sd	ra,24(sp)
    80004eb4:	02010413          	addi	s0,sp,32
    80004eb8:	00000097          	auipc	ra,0x0
    80004ebc:	0c4080e7          	jalr	196(ra) # 80004f7c <cpuid>
    80004ec0:	00004497          	auipc	s1,0x4
    80004ec4:	31048493          	addi	s1,s1,784 # 800091d0 <started>
    80004ec8:	02050263          	beqz	a0,80004eec <system_main+0x48>
    80004ecc:	0004a783          	lw	a5,0(s1)
    80004ed0:	0007879b          	sext.w	a5,a5
    80004ed4:	fe078ce3          	beqz	a5,80004ecc <system_main+0x28>
    80004ed8:	0ff0000f          	fence
    80004edc:	00002517          	auipc	a0,0x2
    80004ee0:	4c450513          	addi	a0,a0,1220 # 800073a0 <CONSOLE_STATUS+0x390>
    80004ee4:	00001097          	auipc	ra,0x1
    80004ee8:	a78080e7          	jalr	-1416(ra) # 8000595c <panic>
    80004eec:	00001097          	auipc	ra,0x1
    80004ef0:	9cc080e7          	jalr	-1588(ra) # 800058b8 <consoleinit>
    80004ef4:	00001097          	auipc	ra,0x1
    80004ef8:	158080e7          	jalr	344(ra) # 8000604c <printfinit>
    80004efc:	00002517          	auipc	a0,0x2
    80004f00:	16c50513          	addi	a0,a0,364 # 80007068 <CONSOLE_STATUS+0x58>
    80004f04:	00001097          	auipc	ra,0x1
    80004f08:	ab4080e7          	jalr	-1356(ra) # 800059b8 <__printf>
    80004f0c:	00002517          	auipc	a0,0x2
    80004f10:	46450513          	addi	a0,a0,1124 # 80007370 <CONSOLE_STATUS+0x360>
    80004f14:	00001097          	auipc	ra,0x1
    80004f18:	aa4080e7          	jalr	-1372(ra) # 800059b8 <__printf>
    80004f1c:	00002517          	auipc	a0,0x2
    80004f20:	14c50513          	addi	a0,a0,332 # 80007068 <CONSOLE_STATUS+0x58>
    80004f24:	00001097          	auipc	ra,0x1
    80004f28:	a94080e7          	jalr	-1388(ra) # 800059b8 <__printf>
    80004f2c:	00001097          	auipc	ra,0x1
    80004f30:	4ac080e7          	jalr	1196(ra) # 800063d8 <kinit>
    80004f34:	00000097          	auipc	ra,0x0
    80004f38:	148080e7          	jalr	328(ra) # 8000507c <trapinit>
    80004f3c:	00000097          	auipc	ra,0x0
    80004f40:	16c080e7          	jalr	364(ra) # 800050a8 <trapinithart>
    80004f44:	00000097          	auipc	ra,0x0
    80004f48:	5bc080e7          	jalr	1468(ra) # 80005500 <plicinit>
    80004f4c:	00000097          	auipc	ra,0x0
    80004f50:	5dc080e7          	jalr	1500(ra) # 80005528 <plicinithart>
    80004f54:	00000097          	auipc	ra,0x0
    80004f58:	078080e7          	jalr	120(ra) # 80004fcc <userinit>
    80004f5c:	0ff0000f          	fence
    80004f60:	00100793          	li	a5,1
    80004f64:	00002517          	auipc	a0,0x2
    80004f68:	42450513          	addi	a0,a0,1060 # 80007388 <CONSOLE_STATUS+0x378>
    80004f6c:	00f4a023          	sw	a5,0(s1)
    80004f70:	00001097          	auipc	ra,0x1
    80004f74:	a48080e7          	jalr	-1464(ra) # 800059b8 <__printf>
    80004f78:	0000006f          	j	80004f78 <system_main+0xd4>

0000000080004f7c <cpuid>:
    80004f7c:	ff010113          	addi	sp,sp,-16
    80004f80:	00813423          	sd	s0,8(sp)
    80004f84:	01010413          	addi	s0,sp,16
    80004f88:	00020513          	mv	a0,tp
    80004f8c:	00813403          	ld	s0,8(sp)
    80004f90:	0005051b          	sext.w	a0,a0
    80004f94:	01010113          	addi	sp,sp,16
    80004f98:	00008067          	ret

0000000080004f9c <mycpu>:
    80004f9c:	ff010113          	addi	sp,sp,-16
    80004fa0:	00813423          	sd	s0,8(sp)
    80004fa4:	01010413          	addi	s0,sp,16
    80004fa8:	00020793          	mv	a5,tp
    80004fac:	00813403          	ld	s0,8(sp)
    80004fb0:	0007879b          	sext.w	a5,a5
    80004fb4:	00779793          	slli	a5,a5,0x7
    80004fb8:	00005517          	auipc	a0,0x5
    80004fbc:	31850513          	addi	a0,a0,792 # 8000a2d0 <cpus>
    80004fc0:	00f50533          	add	a0,a0,a5
    80004fc4:	01010113          	addi	sp,sp,16
    80004fc8:	00008067          	ret

0000000080004fcc <userinit>:
    80004fcc:	ff010113          	addi	sp,sp,-16
    80004fd0:	00813423          	sd	s0,8(sp)
    80004fd4:	01010413          	addi	s0,sp,16
    80004fd8:	00813403          	ld	s0,8(sp)
    80004fdc:	01010113          	addi	sp,sp,16
    80004fe0:	ffffe317          	auipc	t1,0xffffe
    80004fe4:	82430067          	jr	-2012(t1) # 80002804 <main>

0000000080004fe8 <either_copyout>:
    80004fe8:	ff010113          	addi	sp,sp,-16
    80004fec:	00813023          	sd	s0,0(sp)
    80004ff0:	00113423          	sd	ra,8(sp)
    80004ff4:	01010413          	addi	s0,sp,16
    80004ff8:	02051663          	bnez	a0,80005024 <either_copyout+0x3c>
    80004ffc:	00058513          	mv	a0,a1
    80005000:	00060593          	mv	a1,a2
    80005004:	0006861b          	sext.w	a2,a3
    80005008:	00002097          	auipc	ra,0x2
    8000500c:	c5c080e7          	jalr	-932(ra) # 80006c64 <__memmove>
    80005010:	00813083          	ld	ra,8(sp)
    80005014:	00013403          	ld	s0,0(sp)
    80005018:	00000513          	li	a0,0
    8000501c:	01010113          	addi	sp,sp,16
    80005020:	00008067          	ret
    80005024:	00002517          	auipc	a0,0x2
    80005028:	3a450513          	addi	a0,a0,932 # 800073c8 <CONSOLE_STATUS+0x3b8>
    8000502c:	00001097          	auipc	ra,0x1
    80005030:	930080e7          	jalr	-1744(ra) # 8000595c <panic>

0000000080005034 <either_copyin>:
    80005034:	ff010113          	addi	sp,sp,-16
    80005038:	00813023          	sd	s0,0(sp)
    8000503c:	00113423          	sd	ra,8(sp)
    80005040:	01010413          	addi	s0,sp,16
    80005044:	02059463          	bnez	a1,8000506c <either_copyin+0x38>
    80005048:	00060593          	mv	a1,a2
    8000504c:	0006861b          	sext.w	a2,a3
    80005050:	00002097          	auipc	ra,0x2
    80005054:	c14080e7          	jalr	-1004(ra) # 80006c64 <__memmove>
    80005058:	00813083          	ld	ra,8(sp)
    8000505c:	00013403          	ld	s0,0(sp)
    80005060:	00000513          	li	a0,0
    80005064:	01010113          	addi	sp,sp,16
    80005068:	00008067          	ret
    8000506c:	00002517          	auipc	a0,0x2
    80005070:	38450513          	addi	a0,a0,900 # 800073f0 <CONSOLE_STATUS+0x3e0>
    80005074:	00001097          	auipc	ra,0x1
    80005078:	8e8080e7          	jalr	-1816(ra) # 8000595c <panic>

000000008000507c <trapinit>:
    8000507c:	ff010113          	addi	sp,sp,-16
    80005080:	00813423          	sd	s0,8(sp)
    80005084:	01010413          	addi	s0,sp,16
    80005088:	00813403          	ld	s0,8(sp)
    8000508c:	00002597          	auipc	a1,0x2
    80005090:	38c58593          	addi	a1,a1,908 # 80007418 <CONSOLE_STATUS+0x408>
    80005094:	00005517          	auipc	a0,0x5
    80005098:	2bc50513          	addi	a0,a0,700 # 8000a350 <tickslock>
    8000509c:	01010113          	addi	sp,sp,16
    800050a0:	00001317          	auipc	t1,0x1
    800050a4:	5c830067          	jr	1480(t1) # 80006668 <initlock>

00000000800050a8 <trapinithart>:
    800050a8:	ff010113          	addi	sp,sp,-16
    800050ac:	00813423          	sd	s0,8(sp)
    800050b0:	01010413          	addi	s0,sp,16
    800050b4:	00000797          	auipc	a5,0x0
    800050b8:	2fc78793          	addi	a5,a5,764 # 800053b0 <kernelvec>
    800050bc:	10579073          	csrw	stvec,a5
    800050c0:	00813403          	ld	s0,8(sp)
    800050c4:	01010113          	addi	sp,sp,16
    800050c8:	00008067          	ret

00000000800050cc <usertrap>:
    800050cc:	ff010113          	addi	sp,sp,-16
    800050d0:	00813423          	sd	s0,8(sp)
    800050d4:	01010413          	addi	s0,sp,16
    800050d8:	00813403          	ld	s0,8(sp)
    800050dc:	01010113          	addi	sp,sp,16
    800050e0:	00008067          	ret

00000000800050e4 <usertrapret>:
    800050e4:	ff010113          	addi	sp,sp,-16
    800050e8:	00813423          	sd	s0,8(sp)
    800050ec:	01010413          	addi	s0,sp,16
    800050f0:	00813403          	ld	s0,8(sp)
    800050f4:	01010113          	addi	sp,sp,16
    800050f8:	00008067          	ret

00000000800050fc <kerneltrap>:
    800050fc:	fe010113          	addi	sp,sp,-32
    80005100:	00813823          	sd	s0,16(sp)
    80005104:	00113c23          	sd	ra,24(sp)
    80005108:	00913423          	sd	s1,8(sp)
    8000510c:	02010413          	addi	s0,sp,32
    80005110:	142025f3          	csrr	a1,scause
    80005114:	100027f3          	csrr	a5,sstatus
    80005118:	0027f793          	andi	a5,a5,2
    8000511c:	10079c63          	bnez	a5,80005234 <kerneltrap+0x138>
    80005120:	142027f3          	csrr	a5,scause
    80005124:	0207ce63          	bltz	a5,80005160 <kerneltrap+0x64>
    80005128:	00002517          	auipc	a0,0x2
    8000512c:	33850513          	addi	a0,a0,824 # 80007460 <CONSOLE_STATUS+0x450>
    80005130:	00001097          	auipc	ra,0x1
    80005134:	888080e7          	jalr	-1912(ra) # 800059b8 <__printf>
    80005138:	141025f3          	csrr	a1,sepc
    8000513c:	14302673          	csrr	a2,stval
    80005140:	00002517          	auipc	a0,0x2
    80005144:	33050513          	addi	a0,a0,816 # 80007470 <CONSOLE_STATUS+0x460>
    80005148:	00001097          	auipc	ra,0x1
    8000514c:	870080e7          	jalr	-1936(ra) # 800059b8 <__printf>
    80005150:	00002517          	auipc	a0,0x2
    80005154:	33850513          	addi	a0,a0,824 # 80007488 <CONSOLE_STATUS+0x478>
    80005158:	00001097          	auipc	ra,0x1
    8000515c:	804080e7          	jalr	-2044(ra) # 8000595c <panic>
    80005160:	0ff7f713          	andi	a4,a5,255
    80005164:	00900693          	li	a3,9
    80005168:	04d70063          	beq	a4,a3,800051a8 <kerneltrap+0xac>
    8000516c:	fff00713          	li	a4,-1
    80005170:	03f71713          	slli	a4,a4,0x3f
    80005174:	00170713          	addi	a4,a4,1
    80005178:	fae798e3          	bne	a5,a4,80005128 <kerneltrap+0x2c>
    8000517c:	00000097          	auipc	ra,0x0
    80005180:	e00080e7          	jalr	-512(ra) # 80004f7c <cpuid>
    80005184:	06050663          	beqz	a0,800051f0 <kerneltrap+0xf4>
    80005188:	144027f3          	csrr	a5,sip
    8000518c:	ffd7f793          	andi	a5,a5,-3
    80005190:	14479073          	csrw	sip,a5
    80005194:	01813083          	ld	ra,24(sp)
    80005198:	01013403          	ld	s0,16(sp)
    8000519c:	00813483          	ld	s1,8(sp)
    800051a0:	02010113          	addi	sp,sp,32
    800051a4:	00008067          	ret
    800051a8:	00000097          	auipc	ra,0x0
    800051ac:	3cc080e7          	jalr	972(ra) # 80005574 <plic_claim>
    800051b0:	00a00793          	li	a5,10
    800051b4:	00050493          	mv	s1,a0
    800051b8:	06f50863          	beq	a0,a5,80005228 <kerneltrap+0x12c>
    800051bc:	fc050ce3          	beqz	a0,80005194 <kerneltrap+0x98>
    800051c0:	00050593          	mv	a1,a0
    800051c4:	00002517          	auipc	a0,0x2
    800051c8:	27c50513          	addi	a0,a0,636 # 80007440 <CONSOLE_STATUS+0x430>
    800051cc:	00000097          	auipc	ra,0x0
    800051d0:	7ec080e7          	jalr	2028(ra) # 800059b8 <__printf>
    800051d4:	01013403          	ld	s0,16(sp)
    800051d8:	01813083          	ld	ra,24(sp)
    800051dc:	00048513          	mv	a0,s1
    800051e0:	00813483          	ld	s1,8(sp)
    800051e4:	02010113          	addi	sp,sp,32
    800051e8:	00000317          	auipc	t1,0x0
    800051ec:	3c430067          	jr	964(t1) # 800055ac <plic_complete>
    800051f0:	00005517          	auipc	a0,0x5
    800051f4:	16050513          	addi	a0,a0,352 # 8000a350 <tickslock>
    800051f8:	00001097          	auipc	ra,0x1
    800051fc:	494080e7          	jalr	1172(ra) # 8000668c <acquire>
    80005200:	00004717          	auipc	a4,0x4
    80005204:	fd470713          	addi	a4,a4,-44 # 800091d4 <ticks>
    80005208:	00072783          	lw	a5,0(a4)
    8000520c:	00005517          	auipc	a0,0x5
    80005210:	14450513          	addi	a0,a0,324 # 8000a350 <tickslock>
    80005214:	0017879b          	addiw	a5,a5,1
    80005218:	00f72023          	sw	a5,0(a4)
    8000521c:	00001097          	auipc	ra,0x1
    80005220:	53c080e7          	jalr	1340(ra) # 80006758 <release>
    80005224:	f65ff06f          	j	80005188 <kerneltrap+0x8c>
    80005228:	00001097          	auipc	ra,0x1
    8000522c:	098080e7          	jalr	152(ra) # 800062c0 <uartintr>
    80005230:	fa5ff06f          	j	800051d4 <kerneltrap+0xd8>
    80005234:	00002517          	auipc	a0,0x2
    80005238:	1ec50513          	addi	a0,a0,492 # 80007420 <CONSOLE_STATUS+0x410>
    8000523c:	00000097          	auipc	ra,0x0
    80005240:	720080e7          	jalr	1824(ra) # 8000595c <panic>

0000000080005244 <clockintr>:
    80005244:	fe010113          	addi	sp,sp,-32
    80005248:	00813823          	sd	s0,16(sp)
    8000524c:	00913423          	sd	s1,8(sp)
    80005250:	00113c23          	sd	ra,24(sp)
    80005254:	02010413          	addi	s0,sp,32
    80005258:	00005497          	auipc	s1,0x5
    8000525c:	0f848493          	addi	s1,s1,248 # 8000a350 <tickslock>
    80005260:	00048513          	mv	a0,s1
    80005264:	00001097          	auipc	ra,0x1
    80005268:	428080e7          	jalr	1064(ra) # 8000668c <acquire>
    8000526c:	00004717          	auipc	a4,0x4
    80005270:	f6870713          	addi	a4,a4,-152 # 800091d4 <ticks>
    80005274:	00072783          	lw	a5,0(a4)
    80005278:	01013403          	ld	s0,16(sp)
    8000527c:	01813083          	ld	ra,24(sp)
    80005280:	00048513          	mv	a0,s1
    80005284:	0017879b          	addiw	a5,a5,1
    80005288:	00813483          	ld	s1,8(sp)
    8000528c:	00f72023          	sw	a5,0(a4)
    80005290:	02010113          	addi	sp,sp,32
    80005294:	00001317          	auipc	t1,0x1
    80005298:	4c430067          	jr	1220(t1) # 80006758 <release>

000000008000529c <devintr>:
    8000529c:	142027f3          	csrr	a5,scause
    800052a0:	00000513          	li	a0,0
    800052a4:	0007c463          	bltz	a5,800052ac <devintr+0x10>
    800052a8:	00008067          	ret
    800052ac:	fe010113          	addi	sp,sp,-32
    800052b0:	00813823          	sd	s0,16(sp)
    800052b4:	00113c23          	sd	ra,24(sp)
    800052b8:	00913423          	sd	s1,8(sp)
    800052bc:	02010413          	addi	s0,sp,32
    800052c0:	0ff7f713          	andi	a4,a5,255
    800052c4:	00900693          	li	a3,9
    800052c8:	04d70c63          	beq	a4,a3,80005320 <devintr+0x84>
    800052cc:	fff00713          	li	a4,-1
    800052d0:	03f71713          	slli	a4,a4,0x3f
    800052d4:	00170713          	addi	a4,a4,1
    800052d8:	00e78c63          	beq	a5,a4,800052f0 <devintr+0x54>
    800052dc:	01813083          	ld	ra,24(sp)
    800052e0:	01013403          	ld	s0,16(sp)
    800052e4:	00813483          	ld	s1,8(sp)
    800052e8:	02010113          	addi	sp,sp,32
    800052ec:	00008067          	ret
    800052f0:	00000097          	auipc	ra,0x0
    800052f4:	c8c080e7          	jalr	-884(ra) # 80004f7c <cpuid>
    800052f8:	06050663          	beqz	a0,80005364 <devintr+0xc8>
    800052fc:	144027f3          	csrr	a5,sip
    80005300:	ffd7f793          	andi	a5,a5,-3
    80005304:	14479073          	csrw	sip,a5
    80005308:	01813083          	ld	ra,24(sp)
    8000530c:	01013403          	ld	s0,16(sp)
    80005310:	00813483          	ld	s1,8(sp)
    80005314:	00200513          	li	a0,2
    80005318:	02010113          	addi	sp,sp,32
    8000531c:	00008067          	ret
    80005320:	00000097          	auipc	ra,0x0
    80005324:	254080e7          	jalr	596(ra) # 80005574 <plic_claim>
    80005328:	00a00793          	li	a5,10
    8000532c:	00050493          	mv	s1,a0
    80005330:	06f50663          	beq	a0,a5,8000539c <devintr+0x100>
    80005334:	00100513          	li	a0,1
    80005338:	fa0482e3          	beqz	s1,800052dc <devintr+0x40>
    8000533c:	00048593          	mv	a1,s1
    80005340:	00002517          	auipc	a0,0x2
    80005344:	10050513          	addi	a0,a0,256 # 80007440 <CONSOLE_STATUS+0x430>
    80005348:	00000097          	auipc	ra,0x0
    8000534c:	670080e7          	jalr	1648(ra) # 800059b8 <__printf>
    80005350:	00048513          	mv	a0,s1
    80005354:	00000097          	auipc	ra,0x0
    80005358:	258080e7          	jalr	600(ra) # 800055ac <plic_complete>
    8000535c:	00100513          	li	a0,1
    80005360:	f7dff06f          	j	800052dc <devintr+0x40>
    80005364:	00005517          	auipc	a0,0x5
    80005368:	fec50513          	addi	a0,a0,-20 # 8000a350 <tickslock>
    8000536c:	00001097          	auipc	ra,0x1
    80005370:	320080e7          	jalr	800(ra) # 8000668c <acquire>
    80005374:	00004717          	auipc	a4,0x4
    80005378:	e6070713          	addi	a4,a4,-416 # 800091d4 <ticks>
    8000537c:	00072783          	lw	a5,0(a4)
    80005380:	00005517          	auipc	a0,0x5
    80005384:	fd050513          	addi	a0,a0,-48 # 8000a350 <tickslock>
    80005388:	0017879b          	addiw	a5,a5,1
    8000538c:	00f72023          	sw	a5,0(a4)
    80005390:	00001097          	auipc	ra,0x1
    80005394:	3c8080e7          	jalr	968(ra) # 80006758 <release>
    80005398:	f65ff06f          	j	800052fc <devintr+0x60>
    8000539c:	00001097          	auipc	ra,0x1
    800053a0:	f24080e7          	jalr	-220(ra) # 800062c0 <uartintr>
    800053a4:	fadff06f          	j	80005350 <devintr+0xb4>
	...

00000000800053b0 <kernelvec>:
    800053b0:	f0010113          	addi	sp,sp,-256
    800053b4:	00113023          	sd	ra,0(sp)
    800053b8:	00213423          	sd	sp,8(sp)
    800053bc:	00313823          	sd	gp,16(sp)
    800053c0:	00413c23          	sd	tp,24(sp)
    800053c4:	02513023          	sd	t0,32(sp)
    800053c8:	02613423          	sd	t1,40(sp)
    800053cc:	02713823          	sd	t2,48(sp)
    800053d0:	02813c23          	sd	s0,56(sp)
    800053d4:	04913023          	sd	s1,64(sp)
    800053d8:	04a13423          	sd	a0,72(sp)
    800053dc:	04b13823          	sd	a1,80(sp)
    800053e0:	04c13c23          	sd	a2,88(sp)
    800053e4:	06d13023          	sd	a3,96(sp)
    800053e8:	06e13423          	sd	a4,104(sp)
    800053ec:	06f13823          	sd	a5,112(sp)
    800053f0:	07013c23          	sd	a6,120(sp)
    800053f4:	09113023          	sd	a7,128(sp)
    800053f8:	09213423          	sd	s2,136(sp)
    800053fc:	09313823          	sd	s3,144(sp)
    80005400:	09413c23          	sd	s4,152(sp)
    80005404:	0b513023          	sd	s5,160(sp)
    80005408:	0b613423          	sd	s6,168(sp)
    8000540c:	0b713823          	sd	s7,176(sp)
    80005410:	0b813c23          	sd	s8,184(sp)
    80005414:	0d913023          	sd	s9,192(sp)
    80005418:	0da13423          	sd	s10,200(sp)
    8000541c:	0db13823          	sd	s11,208(sp)
    80005420:	0dc13c23          	sd	t3,216(sp)
    80005424:	0fd13023          	sd	t4,224(sp)
    80005428:	0fe13423          	sd	t5,232(sp)
    8000542c:	0ff13823          	sd	t6,240(sp)
    80005430:	ccdff0ef          	jal	ra,800050fc <kerneltrap>
    80005434:	00013083          	ld	ra,0(sp)
    80005438:	00813103          	ld	sp,8(sp)
    8000543c:	01013183          	ld	gp,16(sp)
    80005440:	02013283          	ld	t0,32(sp)
    80005444:	02813303          	ld	t1,40(sp)
    80005448:	03013383          	ld	t2,48(sp)
    8000544c:	03813403          	ld	s0,56(sp)
    80005450:	04013483          	ld	s1,64(sp)
    80005454:	04813503          	ld	a0,72(sp)
    80005458:	05013583          	ld	a1,80(sp)
    8000545c:	05813603          	ld	a2,88(sp)
    80005460:	06013683          	ld	a3,96(sp)
    80005464:	06813703          	ld	a4,104(sp)
    80005468:	07013783          	ld	a5,112(sp)
    8000546c:	07813803          	ld	a6,120(sp)
    80005470:	08013883          	ld	a7,128(sp)
    80005474:	08813903          	ld	s2,136(sp)
    80005478:	09013983          	ld	s3,144(sp)
    8000547c:	09813a03          	ld	s4,152(sp)
    80005480:	0a013a83          	ld	s5,160(sp)
    80005484:	0a813b03          	ld	s6,168(sp)
    80005488:	0b013b83          	ld	s7,176(sp)
    8000548c:	0b813c03          	ld	s8,184(sp)
    80005490:	0c013c83          	ld	s9,192(sp)
    80005494:	0c813d03          	ld	s10,200(sp)
    80005498:	0d013d83          	ld	s11,208(sp)
    8000549c:	0d813e03          	ld	t3,216(sp)
    800054a0:	0e013e83          	ld	t4,224(sp)
    800054a4:	0e813f03          	ld	t5,232(sp)
    800054a8:	0f013f83          	ld	t6,240(sp)
    800054ac:	10010113          	addi	sp,sp,256
    800054b0:	10200073          	sret
    800054b4:	00000013          	nop
    800054b8:	00000013          	nop
    800054bc:	00000013          	nop

00000000800054c0 <timervec>:
    800054c0:	34051573          	csrrw	a0,mscratch,a0
    800054c4:	00b53023          	sd	a1,0(a0)
    800054c8:	00c53423          	sd	a2,8(a0)
    800054cc:	00d53823          	sd	a3,16(a0)
    800054d0:	01853583          	ld	a1,24(a0)
    800054d4:	02053603          	ld	a2,32(a0)
    800054d8:	0005b683          	ld	a3,0(a1)
    800054dc:	00c686b3          	add	a3,a3,a2
    800054e0:	00d5b023          	sd	a3,0(a1)
    800054e4:	00200593          	li	a1,2
    800054e8:	14459073          	csrw	sip,a1
    800054ec:	01053683          	ld	a3,16(a0)
    800054f0:	00853603          	ld	a2,8(a0)
    800054f4:	00053583          	ld	a1,0(a0)
    800054f8:	34051573          	csrrw	a0,mscratch,a0
    800054fc:	30200073          	mret

0000000080005500 <plicinit>:
    80005500:	ff010113          	addi	sp,sp,-16
    80005504:	00813423          	sd	s0,8(sp)
    80005508:	01010413          	addi	s0,sp,16
    8000550c:	00813403          	ld	s0,8(sp)
    80005510:	0c0007b7          	lui	a5,0xc000
    80005514:	00100713          	li	a4,1
    80005518:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000551c:	00e7a223          	sw	a4,4(a5)
    80005520:	01010113          	addi	sp,sp,16
    80005524:	00008067          	ret

0000000080005528 <plicinithart>:
    80005528:	ff010113          	addi	sp,sp,-16
    8000552c:	00813023          	sd	s0,0(sp)
    80005530:	00113423          	sd	ra,8(sp)
    80005534:	01010413          	addi	s0,sp,16
    80005538:	00000097          	auipc	ra,0x0
    8000553c:	a44080e7          	jalr	-1468(ra) # 80004f7c <cpuid>
    80005540:	0085171b          	slliw	a4,a0,0x8
    80005544:	0c0027b7          	lui	a5,0xc002
    80005548:	00e787b3          	add	a5,a5,a4
    8000554c:	40200713          	li	a4,1026
    80005550:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005554:	00813083          	ld	ra,8(sp)
    80005558:	00013403          	ld	s0,0(sp)
    8000555c:	00d5151b          	slliw	a0,a0,0xd
    80005560:	0c2017b7          	lui	a5,0xc201
    80005564:	00a78533          	add	a0,a5,a0
    80005568:	00052023          	sw	zero,0(a0)
    8000556c:	01010113          	addi	sp,sp,16
    80005570:	00008067          	ret

0000000080005574 <plic_claim>:
    80005574:	ff010113          	addi	sp,sp,-16
    80005578:	00813023          	sd	s0,0(sp)
    8000557c:	00113423          	sd	ra,8(sp)
    80005580:	01010413          	addi	s0,sp,16
    80005584:	00000097          	auipc	ra,0x0
    80005588:	9f8080e7          	jalr	-1544(ra) # 80004f7c <cpuid>
    8000558c:	00813083          	ld	ra,8(sp)
    80005590:	00013403          	ld	s0,0(sp)
    80005594:	00d5151b          	slliw	a0,a0,0xd
    80005598:	0c2017b7          	lui	a5,0xc201
    8000559c:	00a78533          	add	a0,a5,a0
    800055a0:	00452503          	lw	a0,4(a0)
    800055a4:	01010113          	addi	sp,sp,16
    800055a8:	00008067          	ret

00000000800055ac <plic_complete>:
    800055ac:	fe010113          	addi	sp,sp,-32
    800055b0:	00813823          	sd	s0,16(sp)
    800055b4:	00913423          	sd	s1,8(sp)
    800055b8:	00113c23          	sd	ra,24(sp)
    800055bc:	02010413          	addi	s0,sp,32
    800055c0:	00050493          	mv	s1,a0
    800055c4:	00000097          	auipc	ra,0x0
    800055c8:	9b8080e7          	jalr	-1608(ra) # 80004f7c <cpuid>
    800055cc:	01813083          	ld	ra,24(sp)
    800055d0:	01013403          	ld	s0,16(sp)
    800055d4:	00d5179b          	slliw	a5,a0,0xd
    800055d8:	0c201737          	lui	a4,0xc201
    800055dc:	00f707b3          	add	a5,a4,a5
    800055e0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800055e4:	00813483          	ld	s1,8(sp)
    800055e8:	02010113          	addi	sp,sp,32
    800055ec:	00008067          	ret

00000000800055f0 <consolewrite>:
    800055f0:	fb010113          	addi	sp,sp,-80
    800055f4:	04813023          	sd	s0,64(sp)
    800055f8:	04113423          	sd	ra,72(sp)
    800055fc:	02913c23          	sd	s1,56(sp)
    80005600:	03213823          	sd	s2,48(sp)
    80005604:	03313423          	sd	s3,40(sp)
    80005608:	03413023          	sd	s4,32(sp)
    8000560c:	01513c23          	sd	s5,24(sp)
    80005610:	05010413          	addi	s0,sp,80
    80005614:	06c05c63          	blez	a2,8000568c <consolewrite+0x9c>
    80005618:	00060993          	mv	s3,a2
    8000561c:	00050a13          	mv	s4,a0
    80005620:	00058493          	mv	s1,a1
    80005624:	00000913          	li	s2,0
    80005628:	fff00a93          	li	s5,-1
    8000562c:	01c0006f          	j	80005648 <consolewrite+0x58>
    80005630:	fbf44503          	lbu	a0,-65(s0)
    80005634:	0019091b          	addiw	s2,s2,1
    80005638:	00148493          	addi	s1,s1,1
    8000563c:	00001097          	auipc	ra,0x1
    80005640:	a9c080e7          	jalr	-1380(ra) # 800060d8 <uartputc>
    80005644:	03298063          	beq	s3,s2,80005664 <consolewrite+0x74>
    80005648:	00048613          	mv	a2,s1
    8000564c:	00100693          	li	a3,1
    80005650:	000a0593          	mv	a1,s4
    80005654:	fbf40513          	addi	a0,s0,-65
    80005658:	00000097          	auipc	ra,0x0
    8000565c:	9dc080e7          	jalr	-1572(ra) # 80005034 <either_copyin>
    80005660:	fd5518e3          	bne	a0,s5,80005630 <consolewrite+0x40>
    80005664:	04813083          	ld	ra,72(sp)
    80005668:	04013403          	ld	s0,64(sp)
    8000566c:	03813483          	ld	s1,56(sp)
    80005670:	02813983          	ld	s3,40(sp)
    80005674:	02013a03          	ld	s4,32(sp)
    80005678:	01813a83          	ld	s5,24(sp)
    8000567c:	00090513          	mv	a0,s2
    80005680:	03013903          	ld	s2,48(sp)
    80005684:	05010113          	addi	sp,sp,80
    80005688:	00008067          	ret
    8000568c:	00000913          	li	s2,0
    80005690:	fd5ff06f          	j	80005664 <consolewrite+0x74>

0000000080005694 <consoleread>:
    80005694:	f9010113          	addi	sp,sp,-112
    80005698:	06813023          	sd	s0,96(sp)
    8000569c:	04913c23          	sd	s1,88(sp)
    800056a0:	05213823          	sd	s2,80(sp)
    800056a4:	05313423          	sd	s3,72(sp)
    800056a8:	05413023          	sd	s4,64(sp)
    800056ac:	03513c23          	sd	s5,56(sp)
    800056b0:	03613823          	sd	s6,48(sp)
    800056b4:	03713423          	sd	s7,40(sp)
    800056b8:	03813023          	sd	s8,32(sp)
    800056bc:	06113423          	sd	ra,104(sp)
    800056c0:	01913c23          	sd	s9,24(sp)
    800056c4:	07010413          	addi	s0,sp,112
    800056c8:	00060b93          	mv	s7,a2
    800056cc:	00050913          	mv	s2,a0
    800056d0:	00058c13          	mv	s8,a1
    800056d4:	00060b1b          	sext.w	s6,a2
    800056d8:	00005497          	auipc	s1,0x5
    800056dc:	ca048493          	addi	s1,s1,-864 # 8000a378 <cons>
    800056e0:	00400993          	li	s3,4
    800056e4:	fff00a13          	li	s4,-1
    800056e8:	00a00a93          	li	s5,10
    800056ec:	05705e63          	blez	s7,80005748 <consoleread+0xb4>
    800056f0:	09c4a703          	lw	a4,156(s1)
    800056f4:	0984a783          	lw	a5,152(s1)
    800056f8:	0007071b          	sext.w	a4,a4
    800056fc:	08e78463          	beq	a5,a4,80005784 <consoleread+0xf0>
    80005700:	07f7f713          	andi	a4,a5,127
    80005704:	00e48733          	add	a4,s1,a4
    80005708:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000570c:	0017869b          	addiw	a3,a5,1
    80005710:	08d4ac23          	sw	a3,152(s1)
    80005714:	00070c9b          	sext.w	s9,a4
    80005718:	0b370663          	beq	a4,s3,800057c4 <consoleread+0x130>
    8000571c:	00100693          	li	a3,1
    80005720:	f9f40613          	addi	a2,s0,-97
    80005724:	000c0593          	mv	a1,s8
    80005728:	00090513          	mv	a0,s2
    8000572c:	f8e40fa3          	sb	a4,-97(s0)
    80005730:	00000097          	auipc	ra,0x0
    80005734:	8b8080e7          	jalr	-1864(ra) # 80004fe8 <either_copyout>
    80005738:	01450863          	beq	a0,s4,80005748 <consoleread+0xb4>
    8000573c:	001c0c13          	addi	s8,s8,1
    80005740:	fffb8b9b          	addiw	s7,s7,-1
    80005744:	fb5c94e3          	bne	s9,s5,800056ec <consoleread+0x58>
    80005748:	000b851b          	sext.w	a0,s7
    8000574c:	06813083          	ld	ra,104(sp)
    80005750:	06013403          	ld	s0,96(sp)
    80005754:	05813483          	ld	s1,88(sp)
    80005758:	05013903          	ld	s2,80(sp)
    8000575c:	04813983          	ld	s3,72(sp)
    80005760:	04013a03          	ld	s4,64(sp)
    80005764:	03813a83          	ld	s5,56(sp)
    80005768:	02813b83          	ld	s7,40(sp)
    8000576c:	02013c03          	ld	s8,32(sp)
    80005770:	01813c83          	ld	s9,24(sp)
    80005774:	40ab053b          	subw	a0,s6,a0
    80005778:	03013b03          	ld	s6,48(sp)
    8000577c:	07010113          	addi	sp,sp,112
    80005780:	00008067          	ret
    80005784:	00001097          	auipc	ra,0x1
    80005788:	1d8080e7          	jalr	472(ra) # 8000695c <push_on>
    8000578c:	0984a703          	lw	a4,152(s1)
    80005790:	09c4a783          	lw	a5,156(s1)
    80005794:	0007879b          	sext.w	a5,a5
    80005798:	fef70ce3          	beq	a4,a5,80005790 <consoleread+0xfc>
    8000579c:	00001097          	auipc	ra,0x1
    800057a0:	234080e7          	jalr	564(ra) # 800069d0 <pop_on>
    800057a4:	0984a783          	lw	a5,152(s1)
    800057a8:	07f7f713          	andi	a4,a5,127
    800057ac:	00e48733          	add	a4,s1,a4
    800057b0:	01874703          	lbu	a4,24(a4)
    800057b4:	0017869b          	addiw	a3,a5,1
    800057b8:	08d4ac23          	sw	a3,152(s1)
    800057bc:	00070c9b          	sext.w	s9,a4
    800057c0:	f5371ee3          	bne	a4,s3,8000571c <consoleread+0x88>
    800057c4:	000b851b          	sext.w	a0,s7
    800057c8:	f96bf2e3          	bgeu	s7,s6,8000574c <consoleread+0xb8>
    800057cc:	08f4ac23          	sw	a5,152(s1)
    800057d0:	f7dff06f          	j	8000574c <consoleread+0xb8>

00000000800057d4 <consputc>:
    800057d4:	10000793          	li	a5,256
    800057d8:	00f50663          	beq	a0,a5,800057e4 <consputc+0x10>
    800057dc:	00001317          	auipc	t1,0x1
    800057e0:	9f430067          	jr	-1548(t1) # 800061d0 <uartputc_sync>
    800057e4:	ff010113          	addi	sp,sp,-16
    800057e8:	00113423          	sd	ra,8(sp)
    800057ec:	00813023          	sd	s0,0(sp)
    800057f0:	01010413          	addi	s0,sp,16
    800057f4:	00800513          	li	a0,8
    800057f8:	00001097          	auipc	ra,0x1
    800057fc:	9d8080e7          	jalr	-1576(ra) # 800061d0 <uartputc_sync>
    80005800:	02000513          	li	a0,32
    80005804:	00001097          	auipc	ra,0x1
    80005808:	9cc080e7          	jalr	-1588(ra) # 800061d0 <uartputc_sync>
    8000580c:	00013403          	ld	s0,0(sp)
    80005810:	00813083          	ld	ra,8(sp)
    80005814:	00800513          	li	a0,8
    80005818:	01010113          	addi	sp,sp,16
    8000581c:	00001317          	auipc	t1,0x1
    80005820:	9b430067          	jr	-1612(t1) # 800061d0 <uartputc_sync>

0000000080005824 <consoleintr>:
    80005824:	fe010113          	addi	sp,sp,-32
    80005828:	00813823          	sd	s0,16(sp)
    8000582c:	00913423          	sd	s1,8(sp)
    80005830:	01213023          	sd	s2,0(sp)
    80005834:	00113c23          	sd	ra,24(sp)
    80005838:	02010413          	addi	s0,sp,32
    8000583c:	00005917          	auipc	s2,0x5
    80005840:	b3c90913          	addi	s2,s2,-1220 # 8000a378 <cons>
    80005844:	00050493          	mv	s1,a0
    80005848:	00090513          	mv	a0,s2
    8000584c:	00001097          	auipc	ra,0x1
    80005850:	e40080e7          	jalr	-448(ra) # 8000668c <acquire>
    80005854:	02048c63          	beqz	s1,8000588c <consoleintr+0x68>
    80005858:	0a092783          	lw	a5,160(s2)
    8000585c:	09892703          	lw	a4,152(s2)
    80005860:	07f00693          	li	a3,127
    80005864:	40e7873b          	subw	a4,a5,a4
    80005868:	02e6e263          	bltu	a3,a4,8000588c <consoleintr+0x68>
    8000586c:	00d00713          	li	a4,13
    80005870:	04e48063          	beq	s1,a4,800058b0 <consoleintr+0x8c>
    80005874:	07f7f713          	andi	a4,a5,127
    80005878:	00e90733          	add	a4,s2,a4
    8000587c:	0017879b          	addiw	a5,a5,1
    80005880:	0af92023          	sw	a5,160(s2)
    80005884:	00970c23          	sb	s1,24(a4)
    80005888:	08f92e23          	sw	a5,156(s2)
    8000588c:	01013403          	ld	s0,16(sp)
    80005890:	01813083          	ld	ra,24(sp)
    80005894:	00813483          	ld	s1,8(sp)
    80005898:	00013903          	ld	s2,0(sp)
    8000589c:	00005517          	auipc	a0,0x5
    800058a0:	adc50513          	addi	a0,a0,-1316 # 8000a378 <cons>
    800058a4:	02010113          	addi	sp,sp,32
    800058a8:	00001317          	auipc	t1,0x1
    800058ac:	eb030067          	jr	-336(t1) # 80006758 <release>
    800058b0:	00a00493          	li	s1,10
    800058b4:	fc1ff06f          	j	80005874 <consoleintr+0x50>

00000000800058b8 <consoleinit>:
    800058b8:	fe010113          	addi	sp,sp,-32
    800058bc:	00113c23          	sd	ra,24(sp)
    800058c0:	00813823          	sd	s0,16(sp)
    800058c4:	00913423          	sd	s1,8(sp)
    800058c8:	02010413          	addi	s0,sp,32
    800058cc:	00005497          	auipc	s1,0x5
    800058d0:	aac48493          	addi	s1,s1,-1364 # 8000a378 <cons>
    800058d4:	00048513          	mv	a0,s1
    800058d8:	00002597          	auipc	a1,0x2
    800058dc:	bc058593          	addi	a1,a1,-1088 # 80007498 <CONSOLE_STATUS+0x488>
    800058e0:	00001097          	auipc	ra,0x1
    800058e4:	d88080e7          	jalr	-632(ra) # 80006668 <initlock>
    800058e8:	00000097          	auipc	ra,0x0
    800058ec:	7ac080e7          	jalr	1964(ra) # 80006094 <uartinit>
    800058f0:	01813083          	ld	ra,24(sp)
    800058f4:	01013403          	ld	s0,16(sp)
    800058f8:	00000797          	auipc	a5,0x0
    800058fc:	d9c78793          	addi	a5,a5,-612 # 80005694 <consoleread>
    80005900:	0af4bc23          	sd	a5,184(s1)
    80005904:	00000797          	auipc	a5,0x0
    80005908:	cec78793          	addi	a5,a5,-788 # 800055f0 <consolewrite>
    8000590c:	0cf4b023          	sd	a5,192(s1)
    80005910:	00813483          	ld	s1,8(sp)
    80005914:	02010113          	addi	sp,sp,32
    80005918:	00008067          	ret

000000008000591c <console_read>:
    8000591c:	ff010113          	addi	sp,sp,-16
    80005920:	00813423          	sd	s0,8(sp)
    80005924:	01010413          	addi	s0,sp,16
    80005928:	00813403          	ld	s0,8(sp)
    8000592c:	00005317          	auipc	t1,0x5
    80005930:	b0433303          	ld	t1,-1276(t1) # 8000a430 <devsw+0x10>
    80005934:	01010113          	addi	sp,sp,16
    80005938:	00030067          	jr	t1

000000008000593c <console_write>:
    8000593c:	ff010113          	addi	sp,sp,-16
    80005940:	00813423          	sd	s0,8(sp)
    80005944:	01010413          	addi	s0,sp,16
    80005948:	00813403          	ld	s0,8(sp)
    8000594c:	00005317          	auipc	t1,0x5
    80005950:	aec33303          	ld	t1,-1300(t1) # 8000a438 <devsw+0x18>
    80005954:	01010113          	addi	sp,sp,16
    80005958:	00030067          	jr	t1

000000008000595c <panic>:
    8000595c:	fe010113          	addi	sp,sp,-32
    80005960:	00113c23          	sd	ra,24(sp)
    80005964:	00813823          	sd	s0,16(sp)
    80005968:	00913423          	sd	s1,8(sp)
    8000596c:	02010413          	addi	s0,sp,32
    80005970:	00050493          	mv	s1,a0
    80005974:	00002517          	auipc	a0,0x2
    80005978:	b2c50513          	addi	a0,a0,-1236 # 800074a0 <CONSOLE_STATUS+0x490>
    8000597c:	00005797          	auipc	a5,0x5
    80005980:	b407ae23          	sw	zero,-1188(a5) # 8000a4d8 <pr+0x18>
    80005984:	00000097          	auipc	ra,0x0
    80005988:	034080e7          	jalr	52(ra) # 800059b8 <__printf>
    8000598c:	00048513          	mv	a0,s1
    80005990:	00000097          	auipc	ra,0x0
    80005994:	028080e7          	jalr	40(ra) # 800059b8 <__printf>
    80005998:	00001517          	auipc	a0,0x1
    8000599c:	6d050513          	addi	a0,a0,1744 # 80007068 <CONSOLE_STATUS+0x58>
    800059a0:	00000097          	auipc	ra,0x0
    800059a4:	018080e7          	jalr	24(ra) # 800059b8 <__printf>
    800059a8:	00100793          	li	a5,1
    800059ac:	00004717          	auipc	a4,0x4
    800059b0:	82f72623          	sw	a5,-2004(a4) # 800091d8 <panicked>
    800059b4:	0000006f          	j	800059b4 <panic+0x58>

00000000800059b8 <__printf>:
    800059b8:	f3010113          	addi	sp,sp,-208
    800059bc:	08813023          	sd	s0,128(sp)
    800059c0:	07313423          	sd	s3,104(sp)
    800059c4:	09010413          	addi	s0,sp,144
    800059c8:	05813023          	sd	s8,64(sp)
    800059cc:	08113423          	sd	ra,136(sp)
    800059d0:	06913c23          	sd	s1,120(sp)
    800059d4:	07213823          	sd	s2,112(sp)
    800059d8:	07413023          	sd	s4,96(sp)
    800059dc:	05513c23          	sd	s5,88(sp)
    800059e0:	05613823          	sd	s6,80(sp)
    800059e4:	05713423          	sd	s7,72(sp)
    800059e8:	03913c23          	sd	s9,56(sp)
    800059ec:	03a13823          	sd	s10,48(sp)
    800059f0:	03b13423          	sd	s11,40(sp)
    800059f4:	00005317          	auipc	t1,0x5
    800059f8:	acc30313          	addi	t1,t1,-1332 # 8000a4c0 <pr>
    800059fc:	01832c03          	lw	s8,24(t1)
    80005a00:	00b43423          	sd	a1,8(s0)
    80005a04:	00c43823          	sd	a2,16(s0)
    80005a08:	00d43c23          	sd	a3,24(s0)
    80005a0c:	02e43023          	sd	a4,32(s0)
    80005a10:	02f43423          	sd	a5,40(s0)
    80005a14:	03043823          	sd	a6,48(s0)
    80005a18:	03143c23          	sd	a7,56(s0)
    80005a1c:	00050993          	mv	s3,a0
    80005a20:	4a0c1663          	bnez	s8,80005ecc <__printf+0x514>
    80005a24:	60098c63          	beqz	s3,8000603c <__printf+0x684>
    80005a28:	0009c503          	lbu	a0,0(s3)
    80005a2c:	00840793          	addi	a5,s0,8
    80005a30:	f6f43c23          	sd	a5,-136(s0)
    80005a34:	00000493          	li	s1,0
    80005a38:	22050063          	beqz	a0,80005c58 <__printf+0x2a0>
    80005a3c:	00002a37          	lui	s4,0x2
    80005a40:	00018ab7          	lui	s5,0x18
    80005a44:	000f4b37          	lui	s6,0xf4
    80005a48:	00989bb7          	lui	s7,0x989
    80005a4c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80005a50:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80005a54:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80005a58:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80005a5c:	00148c9b          	addiw	s9,s1,1
    80005a60:	02500793          	li	a5,37
    80005a64:	01998933          	add	s2,s3,s9
    80005a68:	38f51263          	bne	a0,a5,80005dec <__printf+0x434>
    80005a6c:	00094783          	lbu	a5,0(s2)
    80005a70:	00078c9b          	sext.w	s9,a5
    80005a74:	1e078263          	beqz	a5,80005c58 <__printf+0x2a0>
    80005a78:	0024849b          	addiw	s1,s1,2
    80005a7c:	07000713          	li	a4,112
    80005a80:	00998933          	add	s2,s3,s1
    80005a84:	38e78a63          	beq	a5,a4,80005e18 <__printf+0x460>
    80005a88:	20f76863          	bltu	a4,a5,80005c98 <__printf+0x2e0>
    80005a8c:	42a78863          	beq	a5,a0,80005ebc <__printf+0x504>
    80005a90:	06400713          	li	a4,100
    80005a94:	40e79663          	bne	a5,a4,80005ea0 <__printf+0x4e8>
    80005a98:	f7843783          	ld	a5,-136(s0)
    80005a9c:	0007a603          	lw	a2,0(a5)
    80005aa0:	00878793          	addi	a5,a5,8
    80005aa4:	f6f43c23          	sd	a5,-136(s0)
    80005aa8:	42064a63          	bltz	a2,80005edc <__printf+0x524>
    80005aac:	00a00713          	li	a4,10
    80005ab0:	02e677bb          	remuw	a5,a2,a4
    80005ab4:	00002d97          	auipc	s11,0x2
    80005ab8:	a14d8d93          	addi	s11,s11,-1516 # 800074c8 <digits>
    80005abc:	00900593          	li	a1,9
    80005ac0:	0006051b          	sext.w	a0,a2
    80005ac4:	00000c93          	li	s9,0
    80005ac8:	02079793          	slli	a5,a5,0x20
    80005acc:	0207d793          	srli	a5,a5,0x20
    80005ad0:	00fd87b3          	add	a5,s11,a5
    80005ad4:	0007c783          	lbu	a5,0(a5)
    80005ad8:	02e656bb          	divuw	a3,a2,a4
    80005adc:	f8f40023          	sb	a5,-128(s0)
    80005ae0:	14c5d863          	bge	a1,a2,80005c30 <__printf+0x278>
    80005ae4:	06300593          	li	a1,99
    80005ae8:	00100c93          	li	s9,1
    80005aec:	02e6f7bb          	remuw	a5,a3,a4
    80005af0:	02079793          	slli	a5,a5,0x20
    80005af4:	0207d793          	srli	a5,a5,0x20
    80005af8:	00fd87b3          	add	a5,s11,a5
    80005afc:	0007c783          	lbu	a5,0(a5)
    80005b00:	02e6d73b          	divuw	a4,a3,a4
    80005b04:	f8f400a3          	sb	a5,-127(s0)
    80005b08:	12a5f463          	bgeu	a1,a0,80005c30 <__printf+0x278>
    80005b0c:	00a00693          	li	a3,10
    80005b10:	00900593          	li	a1,9
    80005b14:	02d777bb          	remuw	a5,a4,a3
    80005b18:	02079793          	slli	a5,a5,0x20
    80005b1c:	0207d793          	srli	a5,a5,0x20
    80005b20:	00fd87b3          	add	a5,s11,a5
    80005b24:	0007c503          	lbu	a0,0(a5)
    80005b28:	02d757bb          	divuw	a5,a4,a3
    80005b2c:	f8a40123          	sb	a0,-126(s0)
    80005b30:	48e5f263          	bgeu	a1,a4,80005fb4 <__printf+0x5fc>
    80005b34:	06300513          	li	a0,99
    80005b38:	02d7f5bb          	remuw	a1,a5,a3
    80005b3c:	02059593          	slli	a1,a1,0x20
    80005b40:	0205d593          	srli	a1,a1,0x20
    80005b44:	00bd85b3          	add	a1,s11,a1
    80005b48:	0005c583          	lbu	a1,0(a1)
    80005b4c:	02d7d7bb          	divuw	a5,a5,a3
    80005b50:	f8b401a3          	sb	a1,-125(s0)
    80005b54:	48e57263          	bgeu	a0,a4,80005fd8 <__printf+0x620>
    80005b58:	3e700513          	li	a0,999
    80005b5c:	02d7f5bb          	remuw	a1,a5,a3
    80005b60:	02059593          	slli	a1,a1,0x20
    80005b64:	0205d593          	srli	a1,a1,0x20
    80005b68:	00bd85b3          	add	a1,s11,a1
    80005b6c:	0005c583          	lbu	a1,0(a1)
    80005b70:	02d7d7bb          	divuw	a5,a5,a3
    80005b74:	f8b40223          	sb	a1,-124(s0)
    80005b78:	46e57663          	bgeu	a0,a4,80005fe4 <__printf+0x62c>
    80005b7c:	02d7f5bb          	remuw	a1,a5,a3
    80005b80:	02059593          	slli	a1,a1,0x20
    80005b84:	0205d593          	srli	a1,a1,0x20
    80005b88:	00bd85b3          	add	a1,s11,a1
    80005b8c:	0005c583          	lbu	a1,0(a1)
    80005b90:	02d7d7bb          	divuw	a5,a5,a3
    80005b94:	f8b402a3          	sb	a1,-123(s0)
    80005b98:	46ea7863          	bgeu	s4,a4,80006008 <__printf+0x650>
    80005b9c:	02d7f5bb          	remuw	a1,a5,a3
    80005ba0:	02059593          	slli	a1,a1,0x20
    80005ba4:	0205d593          	srli	a1,a1,0x20
    80005ba8:	00bd85b3          	add	a1,s11,a1
    80005bac:	0005c583          	lbu	a1,0(a1)
    80005bb0:	02d7d7bb          	divuw	a5,a5,a3
    80005bb4:	f8b40323          	sb	a1,-122(s0)
    80005bb8:	3eeaf863          	bgeu	s5,a4,80005fa8 <__printf+0x5f0>
    80005bbc:	02d7f5bb          	remuw	a1,a5,a3
    80005bc0:	02059593          	slli	a1,a1,0x20
    80005bc4:	0205d593          	srli	a1,a1,0x20
    80005bc8:	00bd85b3          	add	a1,s11,a1
    80005bcc:	0005c583          	lbu	a1,0(a1)
    80005bd0:	02d7d7bb          	divuw	a5,a5,a3
    80005bd4:	f8b403a3          	sb	a1,-121(s0)
    80005bd8:	42eb7e63          	bgeu	s6,a4,80006014 <__printf+0x65c>
    80005bdc:	02d7f5bb          	remuw	a1,a5,a3
    80005be0:	02059593          	slli	a1,a1,0x20
    80005be4:	0205d593          	srli	a1,a1,0x20
    80005be8:	00bd85b3          	add	a1,s11,a1
    80005bec:	0005c583          	lbu	a1,0(a1)
    80005bf0:	02d7d7bb          	divuw	a5,a5,a3
    80005bf4:	f8b40423          	sb	a1,-120(s0)
    80005bf8:	42ebfc63          	bgeu	s7,a4,80006030 <__printf+0x678>
    80005bfc:	02079793          	slli	a5,a5,0x20
    80005c00:	0207d793          	srli	a5,a5,0x20
    80005c04:	00fd8db3          	add	s11,s11,a5
    80005c08:	000dc703          	lbu	a4,0(s11)
    80005c0c:	00a00793          	li	a5,10
    80005c10:	00900c93          	li	s9,9
    80005c14:	f8e404a3          	sb	a4,-119(s0)
    80005c18:	00065c63          	bgez	a2,80005c30 <__printf+0x278>
    80005c1c:	f9040713          	addi	a4,s0,-112
    80005c20:	00f70733          	add	a4,a4,a5
    80005c24:	02d00693          	li	a3,45
    80005c28:	fed70823          	sb	a3,-16(a4)
    80005c2c:	00078c93          	mv	s9,a5
    80005c30:	f8040793          	addi	a5,s0,-128
    80005c34:	01978cb3          	add	s9,a5,s9
    80005c38:	f7f40d13          	addi	s10,s0,-129
    80005c3c:	000cc503          	lbu	a0,0(s9)
    80005c40:	fffc8c93          	addi	s9,s9,-1
    80005c44:	00000097          	auipc	ra,0x0
    80005c48:	b90080e7          	jalr	-1136(ra) # 800057d4 <consputc>
    80005c4c:	ffac98e3          	bne	s9,s10,80005c3c <__printf+0x284>
    80005c50:	00094503          	lbu	a0,0(s2)
    80005c54:	e00514e3          	bnez	a0,80005a5c <__printf+0xa4>
    80005c58:	1a0c1663          	bnez	s8,80005e04 <__printf+0x44c>
    80005c5c:	08813083          	ld	ra,136(sp)
    80005c60:	08013403          	ld	s0,128(sp)
    80005c64:	07813483          	ld	s1,120(sp)
    80005c68:	07013903          	ld	s2,112(sp)
    80005c6c:	06813983          	ld	s3,104(sp)
    80005c70:	06013a03          	ld	s4,96(sp)
    80005c74:	05813a83          	ld	s5,88(sp)
    80005c78:	05013b03          	ld	s6,80(sp)
    80005c7c:	04813b83          	ld	s7,72(sp)
    80005c80:	04013c03          	ld	s8,64(sp)
    80005c84:	03813c83          	ld	s9,56(sp)
    80005c88:	03013d03          	ld	s10,48(sp)
    80005c8c:	02813d83          	ld	s11,40(sp)
    80005c90:	0d010113          	addi	sp,sp,208
    80005c94:	00008067          	ret
    80005c98:	07300713          	li	a4,115
    80005c9c:	1ce78a63          	beq	a5,a4,80005e70 <__printf+0x4b8>
    80005ca0:	07800713          	li	a4,120
    80005ca4:	1ee79e63          	bne	a5,a4,80005ea0 <__printf+0x4e8>
    80005ca8:	f7843783          	ld	a5,-136(s0)
    80005cac:	0007a703          	lw	a4,0(a5)
    80005cb0:	00878793          	addi	a5,a5,8
    80005cb4:	f6f43c23          	sd	a5,-136(s0)
    80005cb8:	28074263          	bltz	a4,80005f3c <__printf+0x584>
    80005cbc:	00002d97          	auipc	s11,0x2
    80005cc0:	80cd8d93          	addi	s11,s11,-2036 # 800074c8 <digits>
    80005cc4:	00f77793          	andi	a5,a4,15
    80005cc8:	00fd87b3          	add	a5,s11,a5
    80005ccc:	0007c683          	lbu	a3,0(a5)
    80005cd0:	00f00613          	li	a2,15
    80005cd4:	0007079b          	sext.w	a5,a4
    80005cd8:	f8d40023          	sb	a3,-128(s0)
    80005cdc:	0047559b          	srliw	a1,a4,0x4
    80005ce0:	0047569b          	srliw	a3,a4,0x4
    80005ce4:	00000c93          	li	s9,0
    80005ce8:	0ee65063          	bge	a2,a4,80005dc8 <__printf+0x410>
    80005cec:	00f6f693          	andi	a3,a3,15
    80005cf0:	00dd86b3          	add	a3,s11,a3
    80005cf4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80005cf8:	0087d79b          	srliw	a5,a5,0x8
    80005cfc:	00100c93          	li	s9,1
    80005d00:	f8d400a3          	sb	a3,-127(s0)
    80005d04:	0cb67263          	bgeu	a2,a1,80005dc8 <__printf+0x410>
    80005d08:	00f7f693          	andi	a3,a5,15
    80005d0c:	00dd86b3          	add	a3,s11,a3
    80005d10:	0006c583          	lbu	a1,0(a3)
    80005d14:	00f00613          	li	a2,15
    80005d18:	0047d69b          	srliw	a3,a5,0x4
    80005d1c:	f8b40123          	sb	a1,-126(s0)
    80005d20:	0047d593          	srli	a1,a5,0x4
    80005d24:	28f67e63          	bgeu	a2,a5,80005fc0 <__printf+0x608>
    80005d28:	00f6f693          	andi	a3,a3,15
    80005d2c:	00dd86b3          	add	a3,s11,a3
    80005d30:	0006c503          	lbu	a0,0(a3)
    80005d34:	0087d813          	srli	a6,a5,0x8
    80005d38:	0087d69b          	srliw	a3,a5,0x8
    80005d3c:	f8a401a3          	sb	a0,-125(s0)
    80005d40:	28b67663          	bgeu	a2,a1,80005fcc <__printf+0x614>
    80005d44:	00f6f693          	andi	a3,a3,15
    80005d48:	00dd86b3          	add	a3,s11,a3
    80005d4c:	0006c583          	lbu	a1,0(a3)
    80005d50:	00c7d513          	srli	a0,a5,0xc
    80005d54:	00c7d69b          	srliw	a3,a5,0xc
    80005d58:	f8b40223          	sb	a1,-124(s0)
    80005d5c:	29067a63          	bgeu	a2,a6,80005ff0 <__printf+0x638>
    80005d60:	00f6f693          	andi	a3,a3,15
    80005d64:	00dd86b3          	add	a3,s11,a3
    80005d68:	0006c583          	lbu	a1,0(a3)
    80005d6c:	0107d813          	srli	a6,a5,0x10
    80005d70:	0107d69b          	srliw	a3,a5,0x10
    80005d74:	f8b402a3          	sb	a1,-123(s0)
    80005d78:	28a67263          	bgeu	a2,a0,80005ffc <__printf+0x644>
    80005d7c:	00f6f693          	andi	a3,a3,15
    80005d80:	00dd86b3          	add	a3,s11,a3
    80005d84:	0006c683          	lbu	a3,0(a3)
    80005d88:	0147d79b          	srliw	a5,a5,0x14
    80005d8c:	f8d40323          	sb	a3,-122(s0)
    80005d90:	21067663          	bgeu	a2,a6,80005f9c <__printf+0x5e4>
    80005d94:	02079793          	slli	a5,a5,0x20
    80005d98:	0207d793          	srli	a5,a5,0x20
    80005d9c:	00fd8db3          	add	s11,s11,a5
    80005da0:	000dc683          	lbu	a3,0(s11)
    80005da4:	00800793          	li	a5,8
    80005da8:	00700c93          	li	s9,7
    80005dac:	f8d403a3          	sb	a3,-121(s0)
    80005db0:	00075c63          	bgez	a4,80005dc8 <__printf+0x410>
    80005db4:	f9040713          	addi	a4,s0,-112
    80005db8:	00f70733          	add	a4,a4,a5
    80005dbc:	02d00693          	li	a3,45
    80005dc0:	fed70823          	sb	a3,-16(a4)
    80005dc4:	00078c93          	mv	s9,a5
    80005dc8:	f8040793          	addi	a5,s0,-128
    80005dcc:	01978cb3          	add	s9,a5,s9
    80005dd0:	f7f40d13          	addi	s10,s0,-129
    80005dd4:	000cc503          	lbu	a0,0(s9)
    80005dd8:	fffc8c93          	addi	s9,s9,-1
    80005ddc:	00000097          	auipc	ra,0x0
    80005de0:	9f8080e7          	jalr	-1544(ra) # 800057d4 <consputc>
    80005de4:	ff9d18e3          	bne	s10,s9,80005dd4 <__printf+0x41c>
    80005de8:	0100006f          	j	80005df8 <__printf+0x440>
    80005dec:	00000097          	auipc	ra,0x0
    80005df0:	9e8080e7          	jalr	-1560(ra) # 800057d4 <consputc>
    80005df4:	000c8493          	mv	s1,s9
    80005df8:	00094503          	lbu	a0,0(s2)
    80005dfc:	c60510e3          	bnez	a0,80005a5c <__printf+0xa4>
    80005e00:	e40c0ee3          	beqz	s8,80005c5c <__printf+0x2a4>
    80005e04:	00004517          	auipc	a0,0x4
    80005e08:	6bc50513          	addi	a0,a0,1724 # 8000a4c0 <pr>
    80005e0c:	00001097          	auipc	ra,0x1
    80005e10:	94c080e7          	jalr	-1716(ra) # 80006758 <release>
    80005e14:	e49ff06f          	j	80005c5c <__printf+0x2a4>
    80005e18:	f7843783          	ld	a5,-136(s0)
    80005e1c:	03000513          	li	a0,48
    80005e20:	01000d13          	li	s10,16
    80005e24:	00878713          	addi	a4,a5,8
    80005e28:	0007bc83          	ld	s9,0(a5)
    80005e2c:	f6e43c23          	sd	a4,-136(s0)
    80005e30:	00000097          	auipc	ra,0x0
    80005e34:	9a4080e7          	jalr	-1628(ra) # 800057d4 <consputc>
    80005e38:	07800513          	li	a0,120
    80005e3c:	00000097          	auipc	ra,0x0
    80005e40:	998080e7          	jalr	-1640(ra) # 800057d4 <consputc>
    80005e44:	00001d97          	auipc	s11,0x1
    80005e48:	684d8d93          	addi	s11,s11,1668 # 800074c8 <digits>
    80005e4c:	03ccd793          	srli	a5,s9,0x3c
    80005e50:	00fd87b3          	add	a5,s11,a5
    80005e54:	0007c503          	lbu	a0,0(a5)
    80005e58:	fffd0d1b          	addiw	s10,s10,-1
    80005e5c:	004c9c93          	slli	s9,s9,0x4
    80005e60:	00000097          	auipc	ra,0x0
    80005e64:	974080e7          	jalr	-1676(ra) # 800057d4 <consputc>
    80005e68:	fe0d12e3          	bnez	s10,80005e4c <__printf+0x494>
    80005e6c:	f8dff06f          	j	80005df8 <__printf+0x440>
    80005e70:	f7843783          	ld	a5,-136(s0)
    80005e74:	0007bc83          	ld	s9,0(a5)
    80005e78:	00878793          	addi	a5,a5,8
    80005e7c:	f6f43c23          	sd	a5,-136(s0)
    80005e80:	000c9a63          	bnez	s9,80005e94 <__printf+0x4dc>
    80005e84:	1080006f          	j	80005f8c <__printf+0x5d4>
    80005e88:	001c8c93          	addi	s9,s9,1
    80005e8c:	00000097          	auipc	ra,0x0
    80005e90:	948080e7          	jalr	-1720(ra) # 800057d4 <consputc>
    80005e94:	000cc503          	lbu	a0,0(s9)
    80005e98:	fe0518e3          	bnez	a0,80005e88 <__printf+0x4d0>
    80005e9c:	f5dff06f          	j	80005df8 <__printf+0x440>
    80005ea0:	02500513          	li	a0,37
    80005ea4:	00000097          	auipc	ra,0x0
    80005ea8:	930080e7          	jalr	-1744(ra) # 800057d4 <consputc>
    80005eac:	000c8513          	mv	a0,s9
    80005eb0:	00000097          	auipc	ra,0x0
    80005eb4:	924080e7          	jalr	-1756(ra) # 800057d4 <consputc>
    80005eb8:	f41ff06f          	j	80005df8 <__printf+0x440>
    80005ebc:	02500513          	li	a0,37
    80005ec0:	00000097          	auipc	ra,0x0
    80005ec4:	914080e7          	jalr	-1772(ra) # 800057d4 <consputc>
    80005ec8:	f31ff06f          	j	80005df8 <__printf+0x440>
    80005ecc:	00030513          	mv	a0,t1
    80005ed0:	00000097          	auipc	ra,0x0
    80005ed4:	7bc080e7          	jalr	1980(ra) # 8000668c <acquire>
    80005ed8:	b4dff06f          	j	80005a24 <__printf+0x6c>
    80005edc:	40c0053b          	negw	a0,a2
    80005ee0:	00a00713          	li	a4,10
    80005ee4:	02e576bb          	remuw	a3,a0,a4
    80005ee8:	00001d97          	auipc	s11,0x1
    80005eec:	5e0d8d93          	addi	s11,s11,1504 # 800074c8 <digits>
    80005ef0:	ff700593          	li	a1,-9
    80005ef4:	02069693          	slli	a3,a3,0x20
    80005ef8:	0206d693          	srli	a3,a3,0x20
    80005efc:	00dd86b3          	add	a3,s11,a3
    80005f00:	0006c683          	lbu	a3,0(a3)
    80005f04:	02e557bb          	divuw	a5,a0,a4
    80005f08:	f8d40023          	sb	a3,-128(s0)
    80005f0c:	10b65e63          	bge	a2,a1,80006028 <__printf+0x670>
    80005f10:	06300593          	li	a1,99
    80005f14:	02e7f6bb          	remuw	a3,a5,a4
    80005f18:	02069693          	slli	a3,a3,0x20
    80005f1c:	0206d693          	srli	a3,a3,0x20
    80005f20:	00dd86b3          	add	a3,s11,a3
    80005f24:	0006c683          	lbu	a3,0(a3)
    80005f28:	02e7d73b          	divuw	a4,a5,a4
    80005f2c:	00200793          	li	a5,2
    80005f30:	f8d400a3          	sb	a3,-127(s0)
    80005f34:	bca5ece3          	bltu	a1,a0,80005b0c <__printf+0x154>
    80005f38:	ce5ff06f          	j	80005c1c <__printf+0x264>
    80005f3c:	40e007bb          	negw	a5,a4
    80005f40:	00001d97          	auipc	s11,0x1
    80005f44:	588d8d93          	addi	s11,s11,1416 # 800074c8 <digits>
    80005f48:	00f7f693          	andi	a3,a5,15
    80005f4c:	00dd86b3          	add	a3,s11,a3
    80005f50:	0006c583          	lbu	a1,0(a3)
    80005f54:	ff100613          	li	a2,-15
    80005f58:	0047d69b          	srliw	a3,a5,0x4
    80005f5c:	f8b40023          	sb	a1,-128(s0)
    80005f60:	0047d59b          	srliw	a1,a5,0x4
    80005f64:	0ac75e63          	bge	a4,a2,80006020 <__printf+0x668>
    80005f68:	00f6f693          	andi	a3,a3,15
    80005f6c:	00dd86b3          	add	a3,s11,a3
    80005f70:	0006c603          	lbu	a2,0(a3)
    80005f74:	00f00693          	li	a3,15
    80005f78:	0087d79b          	srliw	a5,a5,0x8
    80005f7c:	f8c400a3          	sb	a2,-127(s0)
    80005f80:	d8b6e4e3          	bltu	a3,a1,80005d08 <__printf+0x350>
    80005f84:	00200793          	li	a5,2
    80005f88:	e2dff06f          	j	80005db4 <__printf+0x3fc>
    80005f8c:	00001c97          	auipc	s9,0x1
    80005f90:	51cc8c93          	addi	s9,s9,1308 # 800074a8 <CONSOLE_STATUS+0x498>
    80005f94:	02800513          	li	a0,40
    80005f98:	ef1ff06f          	j	80005e88 <__printf+0x4d0>
    80005f9c:	00700793          	li	a5,7
    80005fa0:	00600c93          	li	s9,6
    80005fa4:	e0dff06f          	j	80005db0 <__printf+0x3f8>
    80005fa8:	00700793          	li	a5,7
    80005fac:	00600c93          	li	s9,6
    80005fb0:	c69ff06f          	j	80005c18 <__printf+0x260>
    80005fb4:	00300793          	li	a5,3
    80005fb8:	00200c93          	li	s9,2
    80005fbc:	c5dff06f          	j	80005c18 <__printf+0x260>
    80005fc0:	00300793          	li	a5,3
    80005fc4:	00200c93          	li	s9,2
    80005fc8:	de9ff06f          	j	80005db0 <__printf+0x3f8>
    80005fcc:	00400793          	li	a5,4
    80005fd0:	00300c93          	li	s9,3
    80005fd4:	dddff06f          	j	80005db0 <__printf+0x3f8>
    80005fd8:	00400793          	li	a5,4
    80005fdc:	00300c93          	li	s9,3
    80005fe0:	c39ff06f          	j	80005c18 <__printf+0x260>
    80005fe4:	00500793          	li	a5,5
    80005fe8:	00400c93          	li	s9,4
    80005fec:	c2dff06f          	j	80005c18 <__printf+0x260>
    80005ff0:	00500793          	li	a5,5
    80005ff4:	00400c93          	li	s9,4
    80005ff8:	db9ff06f          	j	80005db0 <__printf+0x3f8>
    80005ffc:	00600793          	li	a5,6
    80006000:	00500c93          	li	s9,5
    80006004:	dadff06f          	j	80005db0 <__printf+0x3f8>
    80006008:	00600793          	li	a5,6
    8000600c:	00500c93          	li	s9,5
    80006010:	c09ff06f          	j	80005c18 <__printf+0x260>
    80006014:	00800793          	li	a5,8
    80006018:	00700c93          	li	s9,7
    8000601c:	bfdff06f          	j	80005c18 <__printf+0x260>
    80006020:	00100793          	li	a5,1
    80006024:	d91ff06f          	j	80005db4 <__printf+0x3fc>
    80006028:	00100793          	li	a5,1
    8000602c:	bf1ff06f          	j	80005c1c <__printf+0x264>
    80006030:	00900793          	li	a5,9
    80006034:	00800c93          	li	s9,8
    80006038:	be1ff06f          	j	80005c18 <__printf+0x260>
    8000603c:	00001517          	auipc	a0,0x1
    80006040:	47450513          	addi	a0,a0,1140 # 800074b0 <CONSOLE_STATUS+0x4a0>
    80006044:	00000097          	auipc	ra,0x0
    80006048:	918080e7          	jalr	-1768(ra) # 8000595c <panic>

000000008000604c <printfinit>:
    8000604c:	fe010113          	addi	sp,sp,-32
    80006050:	00813823          	sd	s0,16(sp)
    80006054:	00913423          	sd	s1,8(sp)
    80006058:	00113c23          	sd	ra,24(sp)
    8000605c:	02010413          	addi	s0,sp,32
    80006060:	00004497          	auipc	s1,0x4
    80006064:	46048493          	addi	s1,s1,1120 # 8000a4c0 <pr>
    80006068:	00048513          	mv	a0,s1
    8000606c:	00001597          	auipc	a1,0x1
    80006070:	45458593          	addi	a1,a1,1108 # 800074c0 <CONSOLE_STATUS+0x4b0>
    80006074:	00000097          	auipc	ra,0x0
    80006078:	5f4080e7          	jalr	1524(ra) # 80006668 <initlock>
    8000607c:	01813083          	ld	ra,24(sp)
    80006080:	01013403          	ld	s0,16(sp)
    80006084:	0004ac23          	sw	zero,24(s1)
    80006088:	00813483          	ld	s1,8(sp)
    8000608c:	02010113          	addi	sp,sp,32
    80006090:	00008067          	ret

0000000080006094 <uartinit>:
    80006094:	ff010113          	addi	sp,sp,-16
    80006098:	00813423          	sd	s0,8(sp)
    8000609c:	01010413          	addi	s0,sp,16
    800060a0:	100007b7          	lui	a5,0x10000
    800060a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800060a8:	f8000713          	li	a4,-128
    800060ac:	00e781a3          	sb	a4,3(a5)
    800060b0:	00300713          	li	a4,3
    800060b4:	00e78023          	sb	a4,0(a5)
    800060b8:	000780a3          	sb	zero,1(a5)
    800060bc:	00e781a3          	sb	a4,3(a5)
    800060c0:	00700693          	li	a3,7
    800060c4:	00d78123          	sb	a3,2(a5)
    800060c8:	00e780a3          	sb	a4,1(a5)
    800060cc:	00813403          	ld	s0,8(sp)
    800060d0:	01010113          	addi	sp,sp,16
    800060d4:	00008067          	ret

00000000800060d8 <uartputc>:
    800060d8:	00003797          	auipc	a5,0x3
    800060dc:	1007a783          	lw	a5,256(a5) # 800091d8 <panicked>
    800060e0:	00078463          	beqz	a5,800060e8 <uartputc+0x10>
    800060e4:	0000006f          	j	800060e4 <uartputc+0xc>
    800060e8:	fd010113          	addi	sp,sp,-48
    800060ec:	02813023          	sd	s0,32(sp)
    800060f0:	00913c23          	sd	s1,24(sp)
    800060f4:	01213823          	sd	s2,16(sp)
    800060f8:	01313423          	sd	s3,8(sp)
    800060fc:	02113423          	sd	ra,40(sp)
    80006100:	03010413          	addi	s0,sp,48
    80006104:	00003917          	auipc	s2,0x3
    80006108:	0dc90913          	addi	s2,s2,220 # 800091e0 <uart_tx_r>
    8000610c:	00093783          	ld	a5,0(s2)
    80006110:	00003497          	auipc	s1,0x3
    80006114:	0d848493          	addi	s1,s1,216 # 800091e8 <uart_tx_w>
    80006118:	0004b703          	ld	a4,0(s1)
    8000611c:	02078693          	addi	a3,a5,32
    80006120:	00050993          	mv	s3,a0
    80006124:	02e69c63          	bne	a3,a4,8000615c <uartputc+0x84>
    80006128:	00001097          	auipc	ra,0x1
    8000612c:	834080e7          	jalr	-1996(ra) # 8000695c <push_on>
    80006130:	00093783          	ld	a5,0(s2)
    80006134:	0004b703          	ld	a4,0(s1)
    80006138:	02078793          	addi	a5,a5,32
    8000613c:	00e79463          	bne	a5,a4,80006144 <uartputc+0x6c>
    80006140:	0000006f          	j	80006140 <uartputc+0x68>
    80006144:	00001097          	auipc	ra,0x1
    80006148:	88c080e7          	jalr	-1908(ra) # 800069d0 <pop_on>
    8000614c:	00093783          	ld	a5,0(s2)
    80006150:	0004b703          	ld	a4,0(s1)
    80006154:	02078693          	addi	a3,a5,32
    80006158:	fce688e3          	beq	a3,a4,80006128 <uartputc+0x50>
    8000615c:	01f77693          	andi	a3,a4,31
    80006160:	00004597          	auipc	a1,0x4
    80006164:	38058593          	addi	a1,a1,896 # 8000a4e0 <uart_tx_buf>
    80006168:	00d586b3          	add	a3,a1,a3
    8000616c:	00170713          	addi	a4,a4,1
    80006170:	01368023          	sb	s3,0(a3)
    80006174:	00e4b023          	sd	a4,0(s1)
    80006178:	10000637          	lui	a2,0x10000
    8000617c:	02f71063          	bne	a4,a5,8000619c <uartputc+0xc4>
    80006180:	0340006f          	j	800061b4 <uartputc+0xdc>
    80006184:	00074703          	lbu	a4,0(a4)
    80006188:	00f93023          	sd	a5,0(s2)
    8000618c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006190:	00093783          	ld	a5,0(s2)
    80006194:	0004b703          	ld	a4,0(s1)
    80006198:	00f70e63          	beq	a4,a5,800061b4 <uartputc+0xdc>
    8000619c:	00564683          	lbu	a3,5(a2)
    800061a0:	01f7f713          	andi	a4,a5,31
    800061a4:	00e58733          	add	a4,a1,a4
    800061a8:	0206f693          	andi	a3,a3,32
    800061ac:	00178793          	addi	a5,a5,1
    800061b0:	fc069ae3          	bnez	a3,80006184 <uartputc+0xac>
    800061b4:	02813083          	ld	ra,40(sp)
    800061b8:	02013403          	ld	s0,32(sp)
    800061bc:	01813483          	ld	s1,24(sp)
    800061c0:	01013903          	ld	s2,16(sp)
    800061c4:	00813983          	ld	s3,8(sp)
    800061c8:	03010113          	addi	sp,sp,48
    800061cc:	00008067          	ret

00000000800061d0 <uartputc_sync>:
    800061d0:	ff010113          	addi	sp,sp,-16
    800061d4:	00813423          	sd	s0,8(sp)
    800061d8:	01010413          	addi	s0,sp,16
    800061dc:	00003717          	auipc	a4,0x3
    800061e0:	ffc72703          	lw	a4,-4(a4) # 800091d8 <panicked>
    800061e4:	02071663          	bnez	a4,80006210 <uartputc_sync+0x40>
    800061e8:	00050793          	mv	a5,a0
    800061ec:	100006b7          	lui	a3,0x10000
    800061f0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800061f4:	02077713          	andi	a4,a4,32
    800061f8:	fe070ce3          	beqz	a4,800061f0 <uartputc_sync+0x20>
    800061fc:	0ff7f793          	andi	a5,a5,255
    80006200:	00f68023          	sb	a5,0(a3)
    80006204:	00813403          	ld	s0,8(sp)
    80006208:	01010113          	addi	sp,sp,16
    8000620c:	00008067          	ret
    80006210:	0000006f          	j	80006210 <uartputc_sync+0x40>

0000000080006214 <uartstart>:
    80006214:	ff010113          	addi	sp,sp,-16
    80006218:	00813423          	sd	s0,8(sp)
    8000621c:	01010413          	addi	s0,sp,16
    80006220:	00003617          	auipc	a2,0x3
    80006224:	fc060613          	addi	a2,a2,-64 # 800091e0 <uart_tx_r>
    80006228:	00003517          	auipc	a0,0x3
    8000622c:	fc050513          	addi	a0,a0,-64 # 800091e8 <uart_tx_w>
    80006230:	00063783          	ld	a5,0(a2)
    80006234:	00053703          	ld	a4,0(a0)
    80006238:	04f70263          	beq	a4,a5,8000627c <uartstart+0x68>
    8000623c:	100005b7          	lui	a1,0x10000
    80006240:	00004817          	auipc	a6,0x4
    80006244:	2a080813          	addi	a6,a6,672 # 8000a4e0 <uart_tx_buf>
    80006248:	01c0006f          	j	80006264 <uartstart+0x50>
    8000624c:	0006c703          	lbu	a4,0(a3)
    80006250:	00f63023          	sd	a5,0(a2)
    80006254:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006258:	00063783          	ld	a5,0(a2)
    8000625c:	00053703          	ld	a4,0(a0)
    80006260:	00f70e63          	beq	a4,a5,8000627c <uartstart+0x68>
    80006264:	01f7f713          	andi	a4,a5,31
    80006268:	00e806b3          	add	a3,a6,a4
    8000626c:	0055c703          	lbu	a4,5(a1)
    80006270:	00178793          	addi	a5,a5,1
    80006274:	02077713          	andi	a4,a4,32
    80006278:	fc071ae3          	bnez	a4,8000624c <uartstart+0x38>
    8000627c:	00813403          	ld	s0,8(sp)
    80006280:	01010113          	addi	sp,sp,16
    80006284:	00008067          	ret

0000000080006288 <uartgetc>:
    80006288:	ff010113          	addi	sp,sp,-16
    8000628c:	00813423          	sd	s0,8(sp)
    80006290:	01010413          	addi	s0,sp,16
    80006294:	10000737          	lui	a4,0x10000
    80006298:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000629c:	0017f793          	andi	a5,a5,1
    800062a0:	00078c63          	beqz	a5,800062b8 <uartgetc+0x30>
    800062a4:	00074503          	lbu	a0,0(a4)
    800062a8:	0ff57513          	andi	a0,a0,255
    800062ac:	00813403          	ld	s0,8(sp)
    800062b0:	01010113          	addi	sp,sp,16
    800062b4:	00008067          	ret
    800062b8:	fff00513          	li	a0,-1
    800062bc:	ff1ff06f          	j	800062ac <uartgetc+0x24>

00000000800062c0 <uartintr>:
    800062c0:	100007b7          	lui	a5,0x10000
    800062c4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800062c8:	0017f793          	andi	a5,a5,1
    800062cc:	0a078463          	beqz	a5,80006374 <uartintr+0xb4>
    800062d0:	fe010113          	addi	sp,sp,-32
    800062d4:	00813823          	sd	s0,16(sp)
    800062d8:	00913423          	sd	s1,8(sp)
    800062dc:	00113c23          	sd	ra,24(sp)
    800062e0:	02010413          	addi	s0,sp,32
    800062e4:	100004b7          	lui	s1,0x10000
    800062e8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800062ec:	0ff57513          	andi	a0,a0,255
    800062f0:	fffff097          	auipc	ra,0xfffff
    800062f4:	534080e7          	jalr	1332(ra) # 80005824 <consoleintr>
    800062f8:	0054c783          	lbu	a5,5(s1)
    800062fc:	0017f793          	andi	a5,a5,1
    80006300:	fe0794e3          	bnez	a5,800062e8 <uartintr+0x28>
    80006304:	00003617          	auipc	a2,0x3
    80006308:	edc60613          	addi	a2,a2,-292 # 800091e0 <uart_tx_r>
    8000630c:	00003517          	auipc	a0,0x3
    80006310:	edc50513          	addi	a0,a0,-292 # 800091e8 <uart_tx_w>
    80006314:	00063783          	ld	a5,0(a2)
    80006318:	00053703          	ld	a4,0(a0)
    8000631c:	04f70263          	beq	a4,a5,80006360 <uartintr+0xa0>
    80006320:	100005b7          	lui	a1,0x10000
    80006324:	00004817          	auipc	a6,0x4
    80006328:	1bc80813          	addi	a6,a6,444 # 8000a4e0 <uart_tx_buf>
    8000632c:	01c0006f          	j	80006348 <uartintr+0x88>
    80006330:	0006c703          	lbu	a4,0(a3)
    80006334:	00f63023          	sd	a5,0(a2)
    80006338:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000633c:	00063783          	ld	a5,0(a2)
    80006340:	00053703          	ld	a4,0(a0)
    80006344:	00f70e63          	beq	a4,a5,80006360 <uartintr+0xa0>
    80006348:	01f7f713          	andi	a4,a5,31
    8000634c:	00e806b3          	add	a3,a6,a4
    80006350:	0055c703          	lbu	a4,5(a1)
    80006354:	00178793          	addi	a5,a5,1
    80006358:	02077713          	andi	a4,a4,32
    8000635c:	fc071ae3          	bnez	a4,80006330 <uartintr+0x70>
    80006360:	01813083          	ld	ra,24(sp)
    80006364:	01013403          	ld	s0,16(sp)
    80006368:	00813483          	ld	s1,8(sp)
    8000636c:	02010113          	addi	sp,sp,32
    80006370:	00008067          	ret
    80006374:	00003617          	auipc	a2,0x3
    80006378:	e6c60613          	addi	a2,a2,-404 # 800091e0 <uart_tx_r>
    8000637c:	00003517          	auipc	a0,0x3
    80006380:	e6c50513          	addi	a0,a0,-404 # 800091e8 <uart_tx_w>
    80006384:	00063783          	ld	a5,0(a2)
    80006388:	00053703          	ld	a4,0(a0)
    8000638c:	04f70263          	beq	a4,a5,800063d0 <uartintr+0x110>
    80006390:	100005b7          	lui	a1,0x10000
    80006394:	00004817          	auipc	a6,0x4
    80006398:	14c80813          	addi	a6,a6,332 # 8000a4e0 <uart_tx_buf>
    8000639c:	01c0006f          	j	800063b8 <uartintr+0xf8>
    800063a0:	0006c703          	lbu	a4,0(a3)
    800063a4:	00f63023          	sd	a5,0(a2)
    800063a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800063ac:	00063783          	ld	a5,0(a2)
    800063b0:	00053703          	ld	a4,0(a0)
    800063b4:	02f70063          	beq	a4,a5,800063d4 <uartintr+0x114>
    800063b8:	01f7f713          	andi	a4,a5,31
    800063bc:	00e806b3          	add	a3,a6,a4
    800063c0:	0055c703          	lbu	a4,5(a1)
    800063c4:	00178793          	addi	a5,a5,1
    800063c8:	02077713          	andi	a4,a4,32
    800063cc:	fc071ae3          	bnez	a4,800063a0 <uartintr+0xe0>
    800063d0:	00008067          	ret
    800063d4:	00008067          	ret

00000000800063d8 <kinit>:
    800063d8:	fc010113          	addi	sp,sp,-64
    800063dc:	02913423          	sd	s1,40(sp)
    800063e0:	fffff7b7          	lui	a5,0xfffff
    800063e4:	00005497          	auipc	s1,0x5
    800063e8:	11b48493          	addi	s1,s1,283 # 8000b4ff <end+0xfff>
    800063ec:	02813823          	sd	s0,48(sp)
    800063f0:	01313c23          	sd	s3,24(sp)
    800063f4:	00f4f4b3          	and	s1,s1,a5
    800063f8:	02113c23          	sd	ra,56(sp)
    800063fc:	03213023          	sd	s2,32(sp)
    80006400:	01413823          	sd	s4,16(sp)
    80006404:	01513423          	sd	s5,8(sp)
    80006408:	04010413          	addi	s0,sp,64
    8000640c:	000017b7          	lui	a5,0x1
    80006410:	01100993          	li	s3,17
    80006414:	00f487b3          	add	a5,s1,a5
    80006418:	01b99993          	slli	s3,s3,0x1b
    8000641c:	06f9e063          	bltu	s3,a5,8000647c <kinit+0xa4>
    80006420:	00004a97          	auipc	s5,0x4
    80006424:	0e0a8a93          	addi	s5,s5,224 # 8000a500 <end>
    80006428:	0754ec63          	bltu	s1,s5,800064a0 <kinit+0xc8>
    8000642c:	0734fa63          	bgeu	s1,s3,800064a0 <kinit+0xc8>
    80006430:	00088a37          	lui	s4,0x88
    80006434:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006438:	00003917          	auipc	s2,0x3
    8000643c:	db890913          	addi	s2,s2,-584 # 800091f0 <kmem>
    80006440:	00ca1a13          	slli	s4,s4,0xc
    80006444:	0140006f          	j	80006458 <kinit+0x80>
    80006448:	000017b7          	lui	a5,0x1
    8000644c:	00f484b3          	add	s1,s1,a5
    80006450:	0554e863          	bltu	s1,s5,800064a0 <kinit+0xc8>
    80006454:	0534f663          	bgeu	s1,s3,800064a0 <kinit+0xc8>
    80006458:	00001637          	lui	a2,0x1
    8000645c:	00100593          	li	a1,1
    80006460:	00048513          	mv	a0,s1
    80006464:	00000097          	auipc	ra,0x0
    80006468:	5e4080e7          	jalr	1508(ra) # 80006a48 <__memset>
    8000646c:	00093783          	ld	a5,0(s2)
    80006470:	00f4b023          	sd	a5,0(s1)
    80006474:	00993023          	sd	s1,0(s2)
    80006478:	fd4498e3          	bne	s1,s4,80006448 <kinit+0x70>
    8000647c:	03813083          	ld	ra,56(sp)
    80006480:	03013403          	ld	s0,48(sp)
    80006484:	02813483          	ld	s1,40(sp)
    80006488:	02013903          	ld	s2,32(sp)
    8000648c:	01813983          	ld	s3,24(sp)
    80006490:	01013a03          	ld	s4,16(sp)
    80006494:	00813a83          	ld	s5,8(sp)
    80006498:	04010113          	addi	sp,sp,64
    8000649c:	00008067          	ret
    800064a0:	00001517          	auipc	a0,0x1
    800064a4:	04050513          	addi	a0,a0,64 # 800074e0 <digits+0x18>
    800064a8:	fffff097          	auipc	ra,0xfffff
    800064ac:	4b4080e7          	jalr	1204(ra) # 8000595c <panic>

00000000800064b0 <freerange>:
    800064b0:	fc010113          	addi	sp,sp,-64
    800064b4:	000017b7          	lui	a5,0x1
    800064b8:	02913423          	sd	s1,40(sp)
    800064bc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800064c0:	009504b3          	add	s1,a0,s1
    800064c4:	fffff537          	lui	a0,0xfffff
    800064c8:	02813823          	sd	s0,48(sp)
    800064cc:	02113c23          	sd	ra,56(sp)
    800064d0:	03213023          	sd	s2,32(sp)
    800064d4:	01313c23          	sd	s3,24(sp)
    800064d8:	01413823          	sd	s4,16(sp)
    800064dc:	01513423          	sd	s5,8(sp)
    800064e0:	01613023          	sd	s6,0(sp)
    800064e4:	04010413          	addi	s0,sp,64
    800064e8:	00a4f4b3          	and	s1,s1,a0
    800064ec:	00f487b3          	add	a5,s1,a5
    800064f0:	06f5e463          	bltu	a1,a5,80006558 <freerange+0xa8>
    800064f4:	00004a97          	auipc	s5,0x4
    800064f8:	00ca8a93          	addi	s5,s5,12 # 8000a500 <end>
    800064fc:	0954e263          	bltu	s1,s5,80006580 <freerange+0xd0>
    80006500:	01100993          	li	s3,17
    80006504:	01b99993          	slli	s3,s3,0x1b
    80006508:	0734fc63          	bgeu	s1,s3,80006580 <freerange+0xd0>
    8000650c:	00058a13          	mv	s4,a1
    80006510:	00003917          	auipc	s2,0x3
    80006514:	ce090913          	addi	s2,s2,-800 # 800091f0 <kmem>
    80006518:	00002b37          	lui	s6,0x2
    8000651c:	0140006f          	j	80006530 <freerange+0x80>
    80006520:	000017b7          	lui	a5,0x1
    80006524:	00f484b3          	add	s1,s1,a5
    80006528:	0554ec63          	bltu	s1,s5,80006580 <freerange+0xd0>
    8000652c:	0534fa63          	bgeu	s1,s3,80006580 <freerange+0xd0>
    80006530:	00001637          	lui	a2,0x1
    80006534:	00100593          	li	a1,1
    80006538:	00048513          	mv	a0,s1
    8000653c:	00000097          	auipc	ra,0x0
    80006540:	50c080e7          	jalr	1292(ra) # 80006a48 <__memset>
    80006544:	00093703          	ld	a4,0(s2)
    80006548:	016487b3          	add	a5,s1,s6
    8000654c:	00e4b023          	sd	a4,0(s1)
    80006550:	00993023          	sd	s1,0(s2)
    80006554:	fcfa76e3          	bgeu	s4,a5,80006520 <freerange+0x70>
    80006558:	03813083          	ld	ra,56(sp)
    8000655c:	03013403          	ld	s0,48(sp)
    80006560:	02813483          	ld	s1,40(sp)
    80006564:	02013903          	ld	s2,32(sp)
    80006568:	01813983          	ld	s3,24(sp)
    8000656c:	01013a03          	ld	s4,16(sp)
    80006570:	00813a83          	ld	s5,8(sp)
    80006574:	00013b03          	ld	s6,0(sp)
    80006578:	04010113          	addi	sp,sp,64
    8000657c:	00008067          	ret
    80006580:	00001517          	auipc	a0,0x1
    80006584:	f6050513          	addi	a0,a0,-160 # 800074e0 <digits+0x18>
    80006588:	fffff097          	auipc	ra,0xfffff
    8000658c:	3d4080e7          	jalr	980(ra) # 8000595c <panic>

0000000080006590 <kfree>:
    80006590:	fe010113          	addi	sp,sp,-32
    80006594:	00813823          	sd	s0,16(sp)
    80006598:	00113c23          	sd	ra,24(sp)
    8000659c:	00913423          	sd	s1,8(sp)
    800065a0:	02010413          	addi	s0,sp,32
    800065a4:	03451793          	slli	a5,a0,0x34
    800065a8:	04079c63          	bnez	a5,80006600 <kfree+0x70>
    800065ac:	00004797          	auipc	a5,0x4
    800065b0:	f5478793          	addi	a5,a5,-172 # 8000a500 <end>
    800065b4:	00050493          	mv	s1,a0
    800065b8:	04f56463          	bltu	a0,a5,80006600 <kfree+0x70>
    800065bc:	01100793          	li	a5,17
    800065c0:	01b79793          	slli	a5,a5,0x1b
    800065c4:	02f57e63          	bgeu	a0,a5,80006600 <kfree+0x70>
    800065c8:	00001637          	lui	a2,0x1
    800065cc:	00100593          	li	a1,1
    800065d0:	00000097          	auipc	ra,0x0
    800065d4:	478080e7          	jalr	1144(ra) # 80006a48 <__memset>
    800065d8:	00003797          	auipc	a5,0x3
    800065dc:	c1878793          	addi	a5,a5,-1000 # 800091f0 <kmem>
    800065e0:	0007b703          	ld	a4,0(a5)
    800065e4:	01813083          	ld	ra,24(sp)
    800065e8:	01013403          	ld	s0,16(sp)
    800065ec:	00e4b023          	sd	a4,0(s1)
    800065f0:	0097b023          	sd	s1,0(a5)
    800065f4:	00813483          	ld	s1,8(sp)
    800065f8:	02010113          	addi	sp,sp,32
    800065fc:	00008067          	ret
    80006600:	00001517          	auipc	a0,0x1
    80006604:	ee050513          	addi	a0,a0,-288 # 800074e0 <digits+0x18>
    80006608:	fffff097          	auipc	ra,0xfffff
    8000660c:	354080e7          	jalr	852(ra) # 8000595c <panic>

0000000080006610 <kalloc>:
    80006610:	fe010113          	addi	sp,sp,-32
    80006614:	00813823          	sd	s0,16(sp)
    80006618:	00913423          	sd	s1,8(sp)
    8000661c:	00113c23          	sd	ra,24(sp)
    80006620:	02010413          	addi	s0,sp,32
    80006624:	00003797          	auipc	a5,0x3
    80006628:	bcc78793          	addi	a5,a5,-1076 # 800091f0 <kmem>
    8000662c:	0007b483          	ld	s1,0(a5)
    80006630:	02048063          	beqz	s1,80006650 <kalloc+0x40>
    80006634:	0004b703          	ld	a4,0(s1)
    80006638:	00001637          	lui	a2,0x1
    8000663c:	00500593          	li	a1,5
    80006640:	00048513          	mv	a0,s1
    80006644:	00e7b023          	sd	a4,0(a5)
    80006648:	00000097          	auipc	ra,0x0
    8000664c:	400080e7          	jalr	1024(ra) # 80006a48 <__memset>
    80006650:	01813083          	ld	ra,24(sp)
    80006654:	01013403          	ld	s0,16(sp)
    80006658:	00048513          	mv	a0,s1
    8000665c:	00813483          	ld	s1,8(sp)
    80006660:	02010113          	addi	sp,sp,32
    80006664:	00008067          	ret

0000000080006668 <initlock>:
    80006668:	ff010113          	addi	sp,sp,-16
    8000666c:	00813423          	sd	s0,8(sp)
    80006670:	01010413          	addi	s0,sp,16
    80006674:	00813403          	ld	s0,8(sp)
    80006678:	00b53423          	sd	a1,8(a0)
    8000667c:	00052023          	sw	zero,0(a0)
    80006680:	00053823          	sd	zero,16(a0)
    80006684:	01010113          	addi	sp,sp,16
    80006688:	00008067          	ret

000000008000668c <acquire>:
    8000668c:	fe010113          	addi	sp,sp,-32
    80006690:	00813823          	sd	s0,16(sp)
    80006694:	00913423          	sd	s1,8(sp)
    80006698:	00113c23          	sd	ra,24(sp)
    8000669c:	01213023          	sd	s2,0(sp)
    800066a0:	02010413          	addi	s0,sp,32
    800066a4:	00050493          	mv	s1,a0
    800066a8:	10002973          	csrr	s2,sstatus
    800066ac:	100027f3          	csrr	a5,sstatus
    800066b0:	ffd7f793          	andi	a5,a5,-3
    800066b4:	10079073          	csrw	sstatus,a5
    800066b8:	fffff097          	auipc	ra,0xfffff
    800066bc:	8e4080e7          	jalr	-1820(ra) # 80004f9c <mycpu>
    800066c0:	07852783          	lw	a5,120(a0)
    800066c4:	06078e63          	beqz	a5,80006740 <acquire+0xb4>
    800066c8:	fffff097          	auipc	ra,0xfffff
    800066cc:	8d4080e7          	jalr	-1836(ra) # 80004f9c <mycpu>
    800066d0:	07852783          	lw	a5,120(a0)
    800066d4:	0004a703          	lw	a4,0(s1)
    800066d8:	0017879b          	addiw	a5,a5,1
    800066dc:	06f52c23          	sw	a5,120(a0)
    800066e0:	04071063          	bnez	a4,80006720 <acquire+0x94>
    800066e4:	00100713          	li	a4,1
    800066e8:	00070793          	mv	a5,a4
    800066ec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800066f0:	0007879b          	sext.w	a5,a5
    800066f4:	fe079ae3          	bnez	a5,800066e8 <acquire+0x5c>
    800066f8:	0ff0000f          	fence
    800066fc:	fffff097          	auipc	ra,0xfffff
    80006700:	8a0080e7          	jalr	-1888(ra) # 80004f9c <mycpu>
    80006704:	01813083          	ld	ra,24(sp)
    80006708:	01013403          	ld	s0,16(sp)
    8000670c:	00a4b823          	sd	a0,16(s1)
    80006710:	00013903          	ld	s2,0(sp)
    80006714:	00813483          	ld	s1,8(sp)
    80006718:	02010113          	addi	sp,sp,32
    8000671c:	00008067          	ret
    80006720:	0104b903          	ld	s2,16(s1)
    80006724:	fffff097          	auipc	ra,0xfffff
    80006728:	878080e7          	jalr	-1928(ra) # 80004f9c <mycpu>
    8000672c:	faa91ce3          	bne	s2,a0,800066e4 <acquire+0x58>
    80006730:	00001517          	auipc	a0,0x1
    80006734:	db850513          	addi	a0,a0,-584 # 800074e8 <digits+0x20>
    80006738:	fffff097          	auipc	ra,0xfffff
    8000673c:	224080e7          	jalr	548(ra) # 8000595c <panic>
    80006740:	00195913          	srli	s2,s2,0x1
    80006744:	fffff097          	auipc	ra,0xfffff
    80006748:	858080e7          	jalr	-1960(ra) # 80004f9c <mycpu>
    8000674c:	00197913          	andi	s2,s2,1
    80006750:	07252e23          	sw	s2,124(a0)
    80006754:	f75ff06f          	j	800066c8 <acquire+0x3c>

0000000080006758 <release>:
    80006758:	fe010113          	addi	sp,sp,-32
    8000675c:	00813823          	sd	s0,16(sp)
    80006760:	00113c23          	sd	ra,24(sp)
    80006764:	00913423          	sd	s1,8(sp)
    80006768:	01213023          	sd	s2,0(sp)
    8000676c:	02010413          	addi	s0,sp,32
    80006770:	00052783          	lw	a5,0(a0)
    80006774:	00079a63          	bnez	a5,80006788 <release+0x30>
    80006778:	00001517          	auipc	a0,0x1
    8000677c:	d7850513          	addi	a0,a0,-648 # 800074f0 <digits+0x28>
    80006780:	fffff097          	auipc	ra,0xfffff
    80006784:	1dc080e7          	jalr	476(ra) # 8000595c <panic>
    80006788:	01053903          	ld	s2,16(a0)
    8000678c:	00050493          	mv	s1,a0
    80006790:	fffff097          	auipc	ra,0xfffff
    80006794:	80c080e7          	jalr	-2036(ra) # 80004f9c <mycpu>
    80006798:	fea910e3          	bne	s2,a0,80006778 <release+0x20>
    8000679c:	0004b823          	sd	zero,16(s1)
    800067a0:	0ff0000f          	fence
    800067a4:	0f50000f          	fence	iorw,ow
    800067a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800067ac:	ffffe097          	auipc	ra,0xffffe
    800067b0:	7f0080e7          	jalr	2032(ra) # 80004f9c <mycpu>
    800067b4:	100027f3          	csrr	a5,sstatus
    800067b8:	0027f793          	andi	a5,a5,2
    800067bc:	04079a63          	bnez	a5,80006810 <release+0xb8>
    800067c0:	07852783          	lw	a5,120(a0)
    800067c4:	02f05e63          	blez	a5,80006800 <release+0xa8>
    800067c8:	fff7871b          	addiw	a4,a5,-1
    800067cc:	06e52c23          	sw	a4,120(a0)
    800067d0:	00071c63          	bnez	a4,800067e8 <release+0x90>
    800067d4:	07c52783          	lw	a5,124(a0)
    800067d8:	00078863          	beqz	a5,800067e8 <release+0x90>
    800067dc:	100027f3          	csrr	a5,sstatus
    800067e0:	0027e793          	ori	a5,a5,2
    800067e4:	10079073          	csrw	sstatus,a5
    800067e8:	01813083          	ld	ra,24(sp)
    800067ec:	01013403          	ld	s0,16(sp)
    800067f0:	00813483          	ld	s1,8(sp)
    800067f4:	00013903          	ld	s2,0(sp)
    800067f8:	02010113          	addi	sp,sp,32
    800067fc:	00008067          	ret
    80006800:	00001517          	auipc	a0,0x1
    80006804:	d1050513          	addi	a0,a0,-752 # 80007510 <digits+0x48>
    80006808:	fffff097          	auipc	ra,0xfffff
    8000680c:	154080e7          	jalr	340(ra) # 8000595c <panic>
    80006810:	00001517          	auipc	a0,0x1
    80006814:	ce850513          	addi	a0,a0,-792 # 800074f8 <digits+0x30>
    80006818:	fffff097          	auipc	ra,0xfffff
    8000681c:	144080e7          	jalr	324(ra) # 8000595c <panic>

0000000080006820 <holding>:
    80006820:	00052783          	lw	a5,0(a0)
    80006824:	00079663          	bnez	a5,80006830 <holding+0x10>
    80006828:	00000513          	li	a0,0
    8000682c:	00008067          	ret
    80006830:	fe010113          	addi	sp,sp,-32
    80006834:	00813823          	sd	s0,16(sp)
    80006838:	00913423          	sd	s1,8(sp)
    8000683c:	00113c23          	sd	ra,24(sp)
    80006840:	02010413          	addi	s0,sp,32
    80006844:	01053483          	ld	s1,16(a0)
    80006848:	ffffe097          	auipc	ra,0xffffe
    8000684c:	754080e7          	jalr	1876(ra) # 80004f9c <mycpu>
    80006850:	01813083          	ld	ra,24(sp)
    80006854:	01013403          	ld	s0,16(sp)
    80006858:	40a48533          	sub	a0,s1,a0
    8000685c:	00153513          	seqz	a0,a0
    80006860:	00813483          	ld	s1,8(sp)
    80006864:	02010113          	addi	sp,sp,32
    80006868:	00008067          	ret

000000008000686c <push_off>:
    8000686c:	fe010113          	addi	sp,sp,-32
    80006870:	00813823          	sd	s0,16(sp)
    80006874:	00113c23          	sd	ra,24(sp)
    80006878:	00913423          	sd	s1,8(sp)
    8000687c:	02010413          	addi	s0,sp,32
    80006880:	100024f3          	csrr	s1,sstatus
    80006884:	100027f3          	csrr	a5,sstatus
    80006888:	ffd7f793          	andi	a5,a5,-3
    8000688c:	10079073          	csrw	sstatus,a5
    80006890:	ffffe097          	auipc	ra,0xffffe
    80006894:	70c080e7          	jalr	1804(ra) # 80004f9c <mycpu>
    80006898:	07852783          	lw	a5,120(a0)
    8000689c:	02078663          	beqz	a5,800068c8 <push_off+0x5c>
    800068a0:	ffffe097          	auipc	ra,0xffffe
    800068a4:	6fc080e7          	jalr	1788(ra) # 80004f9c <mycpu>
    800068a8:	07852783          	lw	a5,120(a0)
    800068ac:	01813083          	ld	ra,24(sp)
    800068b0:	01013403          	ld	s0,16(sp)
    800068b4:	0017879b          	addiw	a5,a5,1
    800068b8:	06f52c23          	sw	a5,120(a0)
    800068bc:	00813483          	ld	s1,8(sp)
    800068c0:	02010113          	addi	sp,sp,32
    800068c4:	00008067          	ret
    800068c8:	0014d493          	srli	s1,s1,0x1
    800068cc:	ffffe097          	auipc	ra,0xffffe
    800068d0:	6d0080e7          	jalr	1744(ra) # 80004f9c <mycpu>
    800068d4:	0014f493          	andi	s1,s1,1
    800068d8:	06952e23          	sw	s1,124(a0)
    800068dc:	fc5ff06f          	j	800068a0 <push_off+0x34>

00000000800068e0 <pop_off>:
    800068e0:	ff010113          	addi	sp,sp,-16
    800068e4:	00813023          	sd	s0,0(sp)
    800068e8:	00113423          	sd	ra,8(sp)
    800068ec:	01010413          	addi	s0,sp,16
    800068f0:	ffffe097          	auipc	ra,0xffffe
    800068f4:	6ac080e7          	jalr	1708(ra) # 80004f9c <mycpu>
    800068f8:	100027f3          	csrr	a5,sstatus
    800068fc:	0027f793          	andi	a5,a5,2
    80006900:	04079663          	bnez	a5,8000694c <pop_off+0x6c>
    80006904:	07852783          	lw	a5,120(a0)
    80006908:	02f05a63          	blez	a5,8000693c <pop_off+0x5c>
    8000690c:	fff7871b          	addiw	a4,a5,-1
    80006910:	06e52c23          	sw	a4,120(a0)
    80006914:	00071c63          	bnez	a4,8000692c <pop_off+0x4c>
    80006918:	07c52783          	lw	a5,124(a0)
    8000691c:	00078863          	beqz	a5,8000692c <pop_off+0x4c>
    80006920:	100027f3          	csrr	a5,sstatus
    80006924:	0027e793          	ori	a5,a5,2
    80006928:	10079073          	csrw	sstatus,a5
    8000692c:	00813083          	ld	ra,8(sp)
    80006930:	00013403          	ld	s0,0(sp)
    80006934:	01010113          	addi	sp,sp,16
    80006938:	00008067          	ret
    8000693c:	00001517          	auipc	a0,0x1
    80006940:	bd450513          	addi	a0,a0,-1068 # 80007510 <digits+0x48>
    80006944:	fffff097          	auipc	ra,0xfffff
    80006948:	018080e7          	jalr	24(ra) # 8000595c <panic>
    8000694c:	00001517          	auipc	a0,0x1
    80006950:	bac50513          	addi	a0,a0,-1108 # 800074f8 <digits+0x30>
    80006954:	fffff097          	auipc	ra,0xfffff
    80006958:	008080e7          	jalr	8(ra) # 8000595c <panic>

000000008000695c <push_on>:
    8000695c:	fe010113          	addi	sp,sp,-32
    80006960:	00813823          	sd	s0,16(sp)
    80006964:	00113c23          	sd	ra,24(sp)
    80006968:	00913423          	sd	s1,8(sp)
    8000696c:	02010413          	addi	s0,sp,32
    80006970:	100024f3          	csrr	s1,sstatus
    80006974:	100027f3          	csrr	a5,sstatus
    80006978:	0027e793          	ori	a5,a5,2
    8000697c:	10079073          	csrw	sstatus,a5
    80006980:	ffffe097          	auipc	ra,0xffffe
    80006984:	61c080e7          	jalr	1564(ra) # 80004f9c <mycpu>
    80006988:	07852783          	lw	a5,120(a0)
    8000698c:	02078663          	beqz	a5,800069b8 <push_on+0x5c>
    80006990:	ffffe097          	auipc	ra,0xffffe
    80006994:	60c080e7          	jalr	1548(ra) # 80004f9c <mycpu>
    80006998:	07852783          	lw	a5,120(a0)
    8000699c:	01813083          	ld	ra,24(sp)
    800069a0:	01013403          	ld	s0,16(sp)
    800069a4:	0017879b          	addiw	a5,a5,1
    800069a8:	06f52c23          	sw	a5,120(a0)
    800069ac:	00813483          	ld	s1,8(sp)
    800069b0:	02010113          	addi	sp,sp,32
    800069b4:	00008067          	ret
    800069b8:	0014d493          	srli	s1,s1,0x1
    800069bc:	ffffe097          	auipc	ra,0xffffe
    800069c0:	5e0080e7          	jalr	1504(ra) # 80004f9c <mycpu>
    800069c4:	0014f493          	andi	s1,s1,1
    800069c8:	06952e23          	sw	s1,124(a0)
    800069cc:	fc5ff06f          	j	80006990 <push_on+0x34>

00000000800069d0 <pop_on>:
    800069d0:	ff010113          	addi	sp,sp,-16
    800069d4:	00813023          	sd	s0,0(sp)
    800069d8:	00113423          	sd	ra,8(sp)
    800069dc:	01010413          	addi	s0,sp,16
    800069e0:	ffffe097          	auipc	ra,0xffffe
    800069e4:	5bc080e7          	jalr	1468(ra) # 80004f9c <mycpu>
    800069e8:	100027f3          	csrr	a5,sstatus
    800069ec:	0027f793          	andi	a5,a5,2
    800069f0:	04078463          	beqz	a5,80006a38 <pop_on+0x68>
    800069f4:	07852783          	lw	a5,120(a0)
    800069f8:	02f05863          	blez	a5,80006a28 <pop_on+0x58>
    800069fc:	fff7879b          	addiw	a5,a5,-1
    80006a00:	06f52c23          	sw	a5,120(a0)
    80006a04:	07853783          	ld	a5,120(a0)
    80006a08:	00079863          	bnez	a5,80006a18 <pop_on+0x48>
    80006a0c:	100027f3          	csrr	a5,sstatus
    80006a10:	ffd7f793          	andi	a5,a5,-3
    80006a14:	10079073          	csrw	sstatus,a5
    80006a18:	00813083          	ld	ra,8(sp)
    80006a1c:	00013403          	ld	s0,0(sp)
    80006a20:	01010113          	addi	sp,sp,16
    80006a24:	00008067          	ret
    80006a28:	00001517          	auipc	a0,0x1
    80006a2c:	b1050513          	addi	a0,a0,-1264 # 80007538 <digits+0x70>
    80006a30:	fffff097          	auipc	ra,0xfffff
    80006a34:	f2c080e7          	jalr	-212(ra) # 8000595c <panic>
    80006a38:	00001517          	auipc	a0,0x1
    80006a3c:	ae050513          	addi	a0,a0,-1312 # 80007518 <digits+0x50>
    80006a40:	fffff097          	auipc	ra,0xfffff
    80006a44:	f1c080e7          	jalr	-228(ra) # 8000595c <panic>

0000000080006a48 <__memset>:
    80006a48:	ff010113          	addi	sp,sp,-16
    80006a4c:	00813423          	sd	s0,8(sp)
    80006a50:	01010413          	addi	s0,sp,16
    80006a54:	1a060e63          	beqz	a2,80006c10 <__memset+0x1c8>
    80006a58:	40a007b3          	neg	a5,a0
    80006a5c:	0077f793          	andi	a5,a5,7
    80006a60:	00778693          	addi	a3,a5,7
    80006a64:	00b00813          	li	a6,11
    80006a68:	0ff5f593          	andi	a1,a1,255
    80006a6c:	fff6071b          	addiw	a4,a2,-1
    80006a70:	1b06e663          	bltu	a3,a6,80006c1c <__memset+0x1d4>
    80006a74:	1cd76463          	bltu	a4,a3,80006c3c <__memset+0x1f4>
    80006a78:	1a078e63          	beqz	a5,80006c34 <__memset+0x1ec>
    80006a7c:	00b50023          	sb	a1,0(a0)
    80006a80:	00100713          	li	a4,1
    80006a84:	1ae78463          	beq	a5,a4,80006c2c <__memset+0x1e4>
    80006a88:	00b500a3          	sb	a1,1(a0)
    80006a8c:	00200713          	li	a4,2
    80006a90:	1ae78a63          	beq	a5,a4,80006c44 <__memset+0x1fc>
    80006a94:	00b50123          	sb	a1,2(a0)
    80006a98:	00300713          	li	a4,3
    80006a9c:	18e78463          	beq	a5,a4,80006c24 <__memset+0x1dc>
    80006aa0:	00b501a3          	sb	a1,3(a0)
    80006aa4:	00400713          	li	a4,4
    80006aa8:	1ae78263          	beq	a5,a4,80006c4c <__memset+0x204>
    80006aac:	00b50223          	sb	a1,4(a0)
    80006ab0:	00500713          	li	a4,5
    80006ab4:	1ae78063          	beq	a5,a4,80006c54 <__memset+0x20c>
    80006ab8:	00b502a3          	sb	a1,5(a0)
    80006abc:	00700713          	li	a4,7
    80006ac0:	18e79e63          	bne	a5,a4,80006c5c <__memset+0x214>
    80006ac4:	00b50323          	sb	a1,6(a0)
    80006ac8:	00700e93          	li	t4,7
    80006acc:	00859713          	slli	a4,a1,0x8
    80006ad0:	00e5e733          	or	a4,a1,a4
    80006ad4:	01059e13          	slli	t3,a1,0x10
    80006ad8:	01c76e33          	or	t3,a4,t3
    80006adc:	01859313          	slli	t1,a1,0x18
    80006ae0:	006e6333          	or	t1,t3,t1
    80006ae4:	02059893          	slli	a7,a1,0x20
    80006ae8:	40f60e3b          	subw	t3,a2,a5
    80006aec:	011368b3          	or	a7,t1,a7
    80006af0:	02859813          	slli	a6,a1,0x28
    80006af4:	0108e833          	or	a6,a7,a6
    80006af8:	03059693          	slli	a3,a1,0x30
    80006afc:	003e589b          	srliw	a7,t3,0x3
    80006b00:	00d866b3          	or	a3,a6,a3
    80006b04:	03859713          	slli	a4,a1,0x38
    80006b08:	00389813          	slli	a6,a7,0x3
    80006b0c:	00f507b3          	add	a5,a0,a5
    80006b10:	00e6e733          	or	a4,a3,a4
    80006b14:	000e089b          	sext.w	a7,t3
    80006b18:	00f806b3          	add	a3,a6,a5
    80006b1c:	00e7b023          	sd	a4,0(a5)
    80006b20:	00878793          	addi	a5,a5,8
    80006b24:	fed79ce3          	bne	a5,a3,80006b1c <__memset+0xd4>
    80006b28:	ff8e7793          	andi	a5,t3,-8
    80006b2c:	0007871b          	sext.w	a4,a5
    80006b30:	01d787bb          	addw	a5,a5,t4
    80006b34:	0ce88e63          	beq	a7,a4,80006c10 <__memset+0x1c8>
    80006b38:	00f50733          	add	a4,a0,a5
    80006b3c:	00b70023          	sb	a1,0(a4)
    80006b40:	0017871b          	addiw	a4,a5,1
    80006b44:	0cc77663          	bgeu	a4,a2,80006c10 <__memset+0x1c8>
    80006b48:	00e50733          	add	a4,a0,a4
    80006b4c:	00b70023          	sb	a1,0(a4)
    80006b50:	0027871b          	addiw	a4,a5,2
    80006b54:	0ac77e63          	bgeu	a4,a2,80006c10 <__memset+0x1c8>
    80006b58:	00e50733          	add	a4,a0,a4
    80006b5c:	00b70023          	sb	a1,0(a4)
    80006b60:	0037871b          	addiw	a4,a5,3
    80006b64:	0ac77663          	bgeu	a4,a2,80006c10 <__memset+0x1c8>
    80006b68:	00e50733          	add	a4,a0,a4
    80006b6c:	00b70023          	sb	a1,0(a4)
    80006b70:	0047871b          	addiw	a4,a5,4
    80006b74:	08c77e63          	bgeu	a4,a2,80006c10 <__memset+0x1c8>
    80006b78:	00e50733          	add	a4,a0,a4
    80006b7c:	00b70023          	sb	a1,0(a4)
    80006b80:	0057871b          	addiw	a4,a5,5
    80006b84:	08c77663          	bgeu	a4,a2,80006c10 <__memset+0x1c8>
    80006b88:	00e50733          	add	a4,a0,a4
    80006b8c:	00b70023          	sb	a1,0(a4)
    80006b90:	0067871b          	addiw	a4,a5,6
    80006b94:	06c77e63          	bgeu	a4,a2,80006c10 <__memset+0x1c8>
    80006b98:	00e50733          	add	a4,a0,a4
    80006b9c:	00b70023          	sb	a1,0(a4)
    80006ba0:	0077871b          	addiw	a4,a5,7
    80006ba4:	06c77663          	bgeu	a4,a2,80006c10 <__memset+0x1c8>
    80006ba8:	00e50733          	add	a4,a0,a4
    80006bac:	00b70023          	sb	a1,0(a4)
    80006bb0:	0087871b          	addiw	a4,a5,8
    80006bb4:	04c77e63          	bgeu	a4,a2,80006c10 <__memset+0x1c8>
    80006bb8:	00e50733          	add	a4,a0,a4
    80006bbc:	00b70023          	sb	a1,0(a4)
    80006bc0:	0097871b          	addiw	a4,a5,9
    80006bc4:	04c77663          	bgeu	a4,a2,80006c10 <__memset+0x1c8>
    80006bc8:	00e50733          	add	a4,a0,a4
    80006bcc:	00b70023          	sb	a1,0(a4)
    80006bd0:	00a7871b          	addiw	a4,a5,10
    80006bd4:	02c77e63          	bgeu	a4,a2,80006c10 <__memset+0x1c8>
    80006bd8:	00e50733          	add	a4,a0,a4
    80006bdc:	00b70023          	sb	a1,0(a4)
    80006be0:	00b7871b          	addiw	a4,a5,11
    80006be4:	02c77663          	bgeu	a4,a2,80006c10 <__memset+0x1c8>
    80006be8:	00e50733          	add	a4,a0,a4
    80006bec:	00b70023          	sb	a1,0(a4)
    80006bf0:	00c7871b          	addiw	a4,a5,12
    80006bf4:	00c77e63          	bgeu	a4,a2,80006c10 <__memset+0x1c8>
    80006bf8:	00e50733          	add	a4,a0,a4
    80006bfc:	00b70023          	sb	a1,0(a4)
    80006c00:	00d7879b          	addiw	a5,a5,13
    80006c04:	00c7f663          	bgeu	a5,a2,80006c10 <__memset+0x1c8>
    80006c08:	00f507b3          	add	a5,a0,a5
    80006c0c:	00b78023          	sb	a1,0(a5)
    80006c10:	00813403          	ld	s0,8(sp)
    80006c14:	01010113          	addi	sp,sp,16
    80006c18:	00008067          	ret
    80006c1c:	00b00693          	li	a3,11
    80006c20:	e55ff06f          	j	80006a74 <__memset+0x2c>
    80006c24:	00300e93          	li	t4,3
    80006c28:	ea5ff06f          	j	80006acc <__memset+0x84>
    80006c2c:	00100e93          	li	t4,1
    80006c30:	e9dff06f          	j	80006acc <__memset+0x84>
    80006c34:	00000e93          	li	t4,0
    80006c38:	e95ff06f          	j	80006acc <__memset+0x84>
    80006c3c:	00000793          	li	a5,0
    80006c40:	ef9ff06f          	j	80006b38 <__memset+0xf0>
    80006c44:	00200e93          	li	t4,2
    80006c48:	e85ff06f          	j	80006acc <__memset+0x84>
    80006c4c:	00400e93          	li	t4,4
    80006c50:	e7dff06f          	j	80006acc <__memset+0x84>
    80006c54:	00500e93          	li	t4,5
    80006c58:	e75ff06f          	j	80006acc <__memset+0x84>
    80006c5c:	00600e93          	li	t4,6
    80006c60:	e6dff06f          	j	80006acc <__memset+0x84>

0000000080006c64 <__memmove>:
    80006c64:	ff010113          	addi	sp,sp,-16
    80006c68:	00813423          	sd	s0,8(sp)
    80006c6c:	01010413          	addi	s0,sp,16
    80006c70:	0e060863          	beqz	a2,80006d60 <__memmove+0xfc>
    80006c74:	fff6069b          	addiw	a3,a2,-1
    80006c78:	0006881b          	sext.w	a6,a3
    80006c7c:	0ea5e863          	bltu	a1,a0,80006d6c <__memmove+0x108>
    80006c80:	00758713          	addi	a4,a1,7
    80006c84:	00a5e7b3          	or	a5,a1,a0
    80006c88:	40a70733          	sub	a4,a4,a0
    80006c8c:	0077f793          	andi	a5,a5,7
    80006c90:	00f73713          	sltiu	a4,a4,15
    80006c94:	00174713          	xori	a4,a4,1
    80006c98:	0017b793          	seqz	a5,a5
    80006c9c:	00e7f7b3          	and	a5,a5,a4
    80006ca0:	10078863          	beqz	a5,80006db0 <__memmove+0x14c>
    80006ca4:	00900793          	li	a5,9
    80006ca8:	1107f463          	bgeu	a5,a6,80006db0 <__memmove+0x14c>
    80006cac:	0036581b          	srliw	a6,a2,0x3
    80006cb0:	fff8081b          	addiw	a6,a6,-1
    80006cb4:	02081813          	slli	a6,a6,0x20
    80006cb8:	01d85893          	srli	a7,a6,0x1d
    80006cbc:	00858813          	addi	a6,a1,8
    80006cc0:	00058793          	mv	a5,a1
    80006cc4:	00050713          	mv	a4,a0
    80006cc8:	01088833          	add	a6,a7,a6
    80006ccc:	0007b883          	ld	a7,0(a5)
    80006cd0:	00878793          	addi	a5,a5,8
    80006cd4:	00870713          	addi	a4,a4,8
    80006cd8:	ff173c23          	sd	a7,-8(a4)
    80006cdc:	ff0798e3          	bne	a5,a6,80006ccc <__memmove+0x68>
    80006ce0:	ff867713          	andi	a4,a2,-8
    80006ce4:	02071793          	slli	a5,a4,0x20
    80006ce8:	0207d793          	srli	a5,a5,0x20
    80006cec:	00f585b3          	add	a1,a1,a5
    80006cf0:	40e686bb          	subw	a3,a3,a4
    80006cf4:	00f507b3          	add	a5,a0,a5
    80006cf8:	06e60463          	beq	a2,a4,80006d60 <__memmove+0xfc>
    80006cfc:	0005c703          	lbu	a4,0(a1)
    80006d00:	00e78023          	sb	a4,0(a5)
    80006d04:	04068e63          	beqz	a3,80006d60 <__memmove+0xfc>
    80006d08:	0015c603          	lbu	a2,1(a1)
    80006d0c:	00100713          	li	a4,1
    80006d10:	00c780a3          	sb	a2,1(a5)
    80006d14:	04e68663          	beq	a3,a4,80006d60 <__memmove+0xfc>
    80006d18:	0025c603          	lbu	a2,2(a1)
    80006d1c:	00200713          	li	a4,2
    80006d20:	00c78123          	sb	a2,2(a5)
    80006d24:	02e68e63          	beq	a3,a4,80006d60 <__memmove+0xfc>
    80006d28:	0035c603          	lbu	a2,3(a1)
    80006d2c:	00300713          	li	a4,3
    80006d30:	00c781a3          	sb	a2,3(a5)
    80006d34:	02e68663          	beq	a3,a4,80006d60 <__memmove+0xfc>
    80006d38:	0045c603          	lbu	a2,4(a1)
    80006d3c:	00400713          	li	a4,4
    80006d40:	00c78223          	sb	a2,4(a5)
    80006d44:	00e68e63          	beq	a3,a4,80006d60 <__memmove+0xfc>
    80006d48:	0055c603          	lbu	a2,5(a1)
    80006d4c:	00500713          	li	a4,5
    80006d50:	00c782a3          	sb	a2,5(a5)
    80006d54:	00e68663          	beq	a3,a4,80006d60 <__memmove+0xfc>
    80006d58:	0065c703          	lbu	a4,6(a1)
    80006d5c:	00e78323          	sb	a4,6(a5)
    80006d60:	00813403          	ld	s0,8(sp)
    80006d64:	01010113          	addi	sp,sp,16
    80006d68:	00008067          	ret
    80006d6c:	02061713          	slli	a4,a2,0x20
    80006d70:	02075713          	srli	a4,a4,0x20
    80006d74:	00e587b3          	add	a5,a1,a4
    80006d78:	f0f574e3          	bgeu	a0,a5,80006c80 <__memmove+0x1c>
    80006d7c:	02069613          	slli	a2,a3,0x20
    80006d80:	02065613          	srli	a2,a2,0x20
    80006d84:	fff64613          	not	a2,a2
    80006d88:	00e50733          	add	a4,a0,a4
    80006d8c:	00c78633          	add	a2,a5,a2
    80006d90:	fff7c683          	lbu	a3,-1(a5)
    80006d94:	fff78793          	addi	a5,a5,-1
    80006d98:	fff70713          	addi	a4,a4,-1
    80006d9c:	00d70023          	sb	a3,0(a4)
    80006da0:	fec798e3          	bne	a5,a2,80006d90 <__memmove+0x12c>
    80006da4:	00813403          	ld	s0,8(sp)
    80006da8:	01010113          	addi	sp,sp,16
    80006dac:	00008067          	ret
    80006db0:	02069713          	slli	a4,a3,0x20
    80006db4:	02075713          	srli	a4,a4,0x20
    80006db8:	00170713          	addi	a4,a4,1
    80006dbc:	00e50733          	add	a4,a0,a4
    80006dc0:	00050793          	mv	a5,a0
    80006dc4:	0005c683          	lbu	a3,0(a1)
    80006dc8:	00178793          	addi	a5,a5,1
    80006dcc:	00158593          	addi	a1,a1,1
    80006dd0:	fed78fa3          	sb	a3,-1(a5)
    80006dd4:	fee798e3          	bne	a5,a4,80006dc4 <__memmove+0x160>
    80006dd8:	f89ff06f          	j	80006d60 <__memmove+0xfc>
	...
