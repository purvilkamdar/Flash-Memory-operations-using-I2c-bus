/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Xproject/FlashI2C/FlashI2C_tb.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static int ng3[] = {14, 0};



static void Initial_113_0(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 8288U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(114, ng0);

LAB4:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 8096);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(115, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 6888);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(116, ng0);

LAB6:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 8096);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(117, ng0);
    t3 = (t0 + 6888);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    memset(t5, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB11;

LAB9:    if (*((unsigned int *)t7) == 0)
        goto LAB8;

LAB10:    t13 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t13) = 1;

LAB11:    t14 = (t5 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t5) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB13;

LAB12:    t22 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 6888);
    xsi_vlogvar_assign_value(t24, t5, 0, 0, 1);
    goto LAB6;

LAB8:    *((unsigned int *)t5) = 1;
    goto LAB11;

LAB13:    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t5) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB12;

LAB14:    goto LAB1;

}

static void Initial_119_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 8536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(119, ng0);

LAB4:    xsi_set_current_line(121, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(122, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(123, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(124, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 8344);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(125, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 7208);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(125, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(126, ng0);
    t2 = (t0 + 8344);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(126, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 7048);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 8344);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(127, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 7048);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(128, ng0);
    t2 = (t0 + 8344);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(128, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 7048);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(131, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t2 + 4);
    t5 = *((unsigned int *)t3);
    t6 = (~(t5));
    t7 = *((unsigned int *)t2);
    t8 = (t7 & t6);
    t4 = (t0 + 10944);
    *((int *)t4) = t8;

LAB9:    t9 = (t0 + 10944);
    if (*((int *)t9) > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 8344);
    xsi_process_wait(t2, 15000LL);
    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB10:    xsi_set_current_line(132, ng0);

LAB12:    xsi_set_current_line(133, ng0);
    t10 = (t0 + 8344);
    xsi_process_wait(t10, 20000LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    xsi_set_current_line(133, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 7048);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 1);
    xsi_set_current_line(134, ng0);
    t2 = (t0 + 8344);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB14:    xsi_set_current_line(134, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 7048);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(135, ng0);
    t2 = (t0 + 8344);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB15:    xsi_set_current_line(135, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 7048);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    t2 = (t0 + 10944);
    t8 = *((int *)t2);
    *((int *)t2) = (t8 - 1);
    goto LAB9;

LAB16:    xsi_set_current_line(137, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 7048);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    goto LAB1;

}


extern void work_m_00000000000534265633_4068549530_init()
{
	static char *pe[] = {(void *)Initial_113_0,(void *)Initial_119_1};
	xsi_register_didat("work_m_00000000000534265633_4068549530", "isim/FlashI2C_tb_isim_beh.exe.sim/work/m_00000000000534265633_4068549530.didat");
	xsi_register_executes(pe);
}
