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
static const char *ng0 = "D:/Xproject/FlashI2C/DeviceId.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static int ng3[] = {2, 0};
static int ng4[] = {3, 0};
static int ng5[] = {4, 0};
static int ng6[] = {5, 0};
static int ng7[] = {6, 0};
static int ng8[] = {7, 0};



static void Always_28_0(char *t0)
{
    char t6[8];
    char t30[8];
    char t39[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned int t45;
    int t46;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 3168);
    *((int *)t2) = 1;
    t3 = (t0 + 2880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(29, ng0);

LAB5:    xsi_set_current_line(30, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(31, ng0);

LAB13:    xsi_set_current_line(32, ng0);
    t28 = (t0 + 1048U);
    t29 = *((char **)t28);
    memset(t30, 0, 8);
    t28 = (t30 + 4);
    t31 = (t29 + 4);
    t32 = *((unsigned int *)t29);
    t33 = (t32 >> 0);
    t34 = (t33 & 1);
    *((unsigned int *)t30) = t34;
    t35 = *((unsigned int *)t31);
    t36 = (t35 >> 0);
    t37 = (t36 & 1);
    *((unsigned int *)t28) = t37;
    t38 = (t0 + 1928);
    t40 = (t0 + 1928);
    t41 = (t40 + 72U);
    t42 = *((char **)t41);
    t43 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t39, t42, 2, t43, 32, 1);
    t44 = (t39 + 4);
    t45 = *((unsigned int *)t44);
    t46 = (!(t45));
    if (t46 == 1)
        goto LAB14;

LAB15:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 1);
    t11 = (t10 & 1);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 1);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1928);
    t7 = (t0 + 1928);
    t8 = (t7 + 72U);
    t21 = *((char **)t8);
    t22 = ((char*)((ng1)));
    xsi_vlog_generic_convert_bit_index(t30, t21, 2, t22, 32, 1);
    t28 = (t30 + 4);
    t15 = *((unsigned int *)t28);
    t46 = (!(t15));
    if (t46 == 1)
        goto LAB16;

LAB17:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 2);
    t11 = (t10 & 1);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 2);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1928);
    t7 = (t0 + 1928);
    t8 = (t7 + 72U);
    t21 = *((char **)t8);
    t22 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t30, t21, 2, t22, 32, 1);
    t28 = (t30 + 4);
    t15 = *((unsigned int *)t28);
    t46 = (!(t15));
    if (t46 == 1)
        goto LAB18;

LAB19:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 3);
    t11 = (t10 & 1);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 3);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1928);
    t7 = (t0 + 1928);
    t8 = (t7 + 72U);
    t21 = *((char **)t8);
    t22 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t30, t21, 2, t22, 32, 1);
    t28 = (t30 + 4);
    t15 = *((unsigned int *)t28);
    t46 = (!(t15));
    if (t46 == 1)
        goto LAB20;

LAB21:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 4);
    t11 = (t10 & 1);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 4);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1928);
    t7 = (t0 + 1928);
    t8 = (t7 + 72U);
    t21 = *((char **)t8);
    t22 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t30, t21, 2, t22, 32, 1);
    t28 = (t30 + 4);
    t15 = *((unsigned int *)t28);
    t46 = (!(t15));
    if (t46 == 1)
        goto LAB22;

LAB23:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 5);
    t11 = (t10 & 1);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 5);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1928);
    t7 = (t0 + 1928);
    t8 = (t7 + 72U);
    t21 = *((char **)t8);
    t22 = ((char*)((ng6)));
    xsi_vlog_generic_convert_bit_index(t30, t21, 2, t22, 32, 1);
    t28 = (t30 + 4);
    t15 = *((unsigned int *)t28);
    t46 = (!(t15));
    if (t46 == 1)
        goto LAB24;

LAB25:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 6);
    t11 = (t10 & 1);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 6);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1928);
    t7 = (t0 + 1928);
    t8 = (t7 + 72U);
    t21 = *((char **)t8);
    t22 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t30, t21, 2, t22, 32, 1);
    t28 = (t30 + 4);
    t15 = *((unsigned int *)t28);
    t46 = (!(t15));
    if (t46 == 1)
        goto LAB26;

LAB27:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 7);
    t11 = (t10 & 1);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 7);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1928);
    t7 = (t0 + 1928);
    t8 = (t7 + 72U);
    t21 = *((char **)t8);
    t22 = ((char*)((ng8)));
    xsi_vlog_generic_convert_bit_index(t30, t21, 2, t22, 32, 1);
    t28 = (t30 + 4);
    t15 = *((unsigned int *)t28);
    t46 = (!(t15));
    if (t46 == 1)
        goto LAB28;

LAB29:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 7);
    t11 = (t10 & 1);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 7);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1768);
    xsi_vlogvar_assign_value(t5, t6, 0, 0, 1);
    goto LAB12;

LAB14:    xsi_vlogvar_assign_value(t38, t30, 0, *((unsigned int *)t39), 1);
    goto LAB15;

LAB16:    xsi_vlogvar_assign_value(t5, t6, 0, *((unsigned int *)t30), 1);
    goto LAB17;

LAB18:    xsi_vlogvar_assign_value(t5, t6, 0, *((unsigned int *)t30), 1);
    goto LAB19;

LAB20:    xsi_vlogvar_assign_value(t5, t6, 0, *((unsigned int *)t30), 1);
    goto LAB21;

LAB22:    xsi_vlogvar_assign_value(t5, t6, 0, *((unsigned int *)t30), 1);
    goto LAB23;

LAB24:    xsi_vlogvar_assign_value(t5, t6, 0, *((unsigned int *)t30), 1);
    goto LAB25;

LAB26:    xsi_vlogvar_assign_value(t5, t6, 0, *((unsigned int *)t30), 1);
    goto LAB27;

LAB28:    xsi_vlogvar_assign_value(t5, t6, 0, *((unsigned int *)t30), 1);
    goto LAB29;

}


extern void work_m_00000000000065388573_3792588587_init()
{
	static char *pe[] = {(void *)Always_28_0};
	xsi_register_didat("work_m_00000000000065388573_3792588587", "isim/FlashI2C_tb_isim_beh.exe.sim/work/m_00000000000065388573_3792588587.didat");
	xsi_register_executes(pe);
}
