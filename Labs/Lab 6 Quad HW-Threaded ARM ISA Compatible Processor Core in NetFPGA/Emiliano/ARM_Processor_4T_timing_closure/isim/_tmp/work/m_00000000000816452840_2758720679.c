/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2007 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

/* This file is designed for use with ISim build 0x734844ce */

#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Documents and Settings/student/Desktop/ARM_Processor_4T/ARM_Processor_4T_tb.v";
static const char *ng1 = "--- Data Memory Dump (All 256 Words) ---";
static const char *ng2 = "Word | Value";
static const char *ng3 = "-------------------------";
static int ng4[] = {0, 0};
static int ng5[] = {256, 0};
static unsigned int ng6[] = {0U, 0U, 0U, 0U};
static const char *ng7 = "%d | %h";
static int ng8[] = {1, 0};
static const char *ng9 = "--- Instruction Memory Dump (First 32 Words) ---";
static int ng10[] = {32, 0};
static const char *ng11 = "IM[%d] | %h";
static const char *ng12 = "Time: %t | PC: %h | INS: %h | TID: %d";
static const char *ng13 = "[%t] Starting Instruction Memory Load from hex file...";
static int ng14[] = {512, 0};
static unsigned int ng15[] = {0U, 0U};
static const char *ng16 = "C:/Documents and Settings/student/Desktop/ARM_Processor_4T/newSort_Manual2.hex";
static const char *ng17 = "[%t] Instruction Memory Load Complete.";
static const char *ng18 = "Processor Resets Released. Starting Execution...";
static const char *ng19 = "Simulation Finished. Final Data Memory State:";

void M115_3(char *);
void M115_3(char *);


static int sp_dump_data_mem(char *t1, char *t2)
{
    char t7[8];
    char t18[16];
    char t27[16];
    char t41[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;

LAB0:    t0 = 1;
    t3 = (t1 + 600);
    xsi_vlog_subprogram_setdisablestate(t3, &&LAB2);
    xsi_set_current_line(90, ng0);

LAB3:    xsi_set_current_line(91, ng0);
    xsi_vlogfile_write(1, 0, ng1, 1, t1);
    xsi_set_current_line(92, ng0);
    xsi_vlogfile_write(1, 0, ng2, 1, t1);
    xsi_set_current_line(93, ng0);
    xsi_vlogfile_write(1, 0, ng3, 1, t1);
    xsi_set_current_line(94, ng0);
    xsi_set_current_line(94, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t1 + 2060);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);

LAB4:    t3 = (t1 + 2060);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng5)));
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t5, 32, t6, 32);
    t8 = (t7 + 4U);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB5;

LAB6:    xsi_set_current_line(98, ng0);
    xsi_vlogfile_write(1, 0, ng3, 1, t1);

LAB2:    xsi_vlog_dispose_subprogram_invocation(t2);
    t0 = 0;

LAB1:    return t0;
LAB5:    xsi_set_current_line(94, ng0);

LAB7:    xsi_set_current_line(95, ng0);
    t14 = (t1 + 4892);
    t15 = *((char **)t14);
    t16 = ((((char*)(t15))) + 32U);
    t17 = *((char **)t16);
    t19 = (t1 + 4920);
    t20 = *((char **)t19);
    t21 = ((((char*)(t20))) + 40U);
    t22 = *((char **)t21);
    t23 = (t1 + 2060);
    t24 = (t23 + 32U);
    t25 = *((char **)t24);
    xsi_vlog_generic_get_index_select_value(t18, 64, t17, t22, 2, t25, 32, 1);
    t26 = ((char*)((ng6)));
    xsi_vlog_unsigned_case_noteq(t27, 64, t18, 64, t26, 64);
    t28 = (t27 + 4U);
    t29 = *((unsigned int *)t28);
    t30 = (~(t29));
    t31 = *((unsigned int *)t27);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB8;

LAB9:
LAB10:    xsi_set_current_line(94, ng0);
    t3 = (t1 + 2060);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng8)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t8 = (t1 + 2060);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    goto LAB4;

LAB8:    xsi_set_current_line(96, ng0);
    t34 = (t1 + 2060);
    t35 = (t34 + 32U);
    t36 = *((char **)t35);
    t37 = (t1 + 4948);
    t38 = *((char **)t37);
    t39 = ((((char*)(t38))) + 32U);
    t40 = *((char **)t39);
    t42 = (t1 + 4976);
    t43 = *((char **)t42);
    t44 = ((((char*)(t43))) + 40U);
    t45 = *((char **)t44);
    t46 = (t1 + 2060);
    t47 = (t46 + 32U);
    t48 = *((char **)t47);
    xsi_vlog_generic_get_index_select_value(t41, 1, t40, t45, 2, t48, 32, 1);
    xsi_vlogfile_write(1, 0, ng7, 3, t1, (char)119, t36, 32, (char)118, t41, 1);
    goto LAB10;

}

static int sp_dump_inst_mem(char *t1, char *t2)
{
    char t7[8];
    char t21[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    t0 = 1;
    t3 = (t1 + 840);
    xsi_vlog_subprogram_setdisablestate(t3, &&LAB2);
    xsi_set_current_line(105, ng0);

LAB3:    xsi_set_current_line(106, ng0);
    xsi_vlogfile_write(1, 0, ng9, 1, t1);
    xsi_set_current_line(107, ng0);
    xsi_set_current_line(107, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t1 + 2152);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);

LAB4:    t3 = (t1 + 2152);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng10)));
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t5, 32, t6, 32);
    t8 = (t7 + 4U);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB5;

LAB6:
LAB2:    xsi_vlog_dispose_subprogram_invocation(t2);
    t0 = 0;

LAB1:    return t0;
LAB5:    xsi_set_current_line(107, ng0);

LAB7:    xsi_set_current_line(108, ng0);
    t14 = (t1 + 2152);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t17 = (t1 + 5004);
    t18 = *((char **)t17);
    t19 = ((((char*)(t18))) + 32U);
    t20 = *((char **)t19);
    t22 = (t1 + 5032);
    t23 = *((char **)t22);
    t24 = ((((char*)(t23))) + 40U);
    t25 = *((char **)t24);
    t26 = (t1 + 2152);
    t27 = (t26 + 32U);
    t28 = *((char **)t27);
    xsi_vlog_generic_get_index_select_value(t21, 1, t20, t25, 2, t28, 32, 1);
    xsi_vlogfile_write(1, 0, ng11, 3, t1, (char)119, t16, 32, (char)118, t21, 1);
    xsi_set_current_line(107, ng0);
    t3 = (t1 + 2152);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng8)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t8 = (t1 + 2152);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    goto LAB4;

}

static void M115_3_Func(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t2 = xsi_vlog_time(t1, 1000000.000000000, 1000.000000000000);
    t3 = (t0 + 5044);
    t4 = *((char **)t3);
    t5 = ((((char*)(t4))) + 20U);
    t6 = *((char **)t5);
    t5 = (t0 + 5056);
    t7 = *((char **)t5);
    t8 = ((((char*)(t7))) + 20U);
    t9 = *((char **)t8);
    t8 = (t0 + 5072);
    t10 = *((char **)t8);
    t11 = ((((char*)(t10))) + 20U);
    t12 = *((char **)t11);
    xsi_vlogfile_write(1, 0, ng12, 5, t0, (char)118, t1, 64, (char)118, t6, 9, (char)118, t9, 32, (char)118, t12, 2);

LAB1:    return;
}

static void I27_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
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
    char *t17;

LAB0:    t1 = (t0 + 2628U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);

LAB4:    xsi_set_current_line(28, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1416);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(29, ng0);

LAB5:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 2544);
    xsi_process_wait(t2, 5000000LL);
    *((char **)t1) = &&LAB6;

LAB1:    return;
LAB6:    xsi_set_current_line(29, ng0);
    t3 = (t0 + 1416);
    t5 = (t3 + 32U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t4 + 4U);
    t8 = (t6 + 4U);
    t9 = *((unsigned int *)t6);
    t10 = (~(t9));
    *((unsigned int *)t4) = t10;
    *((unsigned int *)t7) = 0;
    if (*((unsigned int *)t8) != 0)
        goto LAB8;

LAB7:    t15 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t15 & 1U);
    t16 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t16 & 1U);
    t17 = (t0 + 1416);
    xsi_vlogvar_assign_value(t17, t4, 0, 0, 1);
    goto LAB5;

LAB8:    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t8);
    *((unsigned int *)t4) = (t11 | t12);
    t13 = *((unsigned int *)t7);
    t14 = *((unsigned int *)t8);
    *((unsigned int *)t7) = (t13 | t14);
    goto LAB7;

LAB9:    goto LAB1;

}

static void I33_1(char *t0)
{
    char t4[16];
    char t7[8];
    char t16[8];
    char t17[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    unsigned int t28;
    int t29;
    char *t30;
    unsigned int t31;
    int t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    int t36;
    int t37;

LAB0:    t1 = (t0 + 2756U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);

LAB4:    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1324);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 9);
    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1600);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1784);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1692);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1508);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2672);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(45, ng0);
    t2 = xsi_vlog_time(t4, 1000000.000000000, 1000.000000000000);
    xsi_vlogfile_write(1, 0, ng13, 2, t0, (char)118, t4, 64);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1784);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(48, ng0);

LAB6:    t2 = (t0 + 140);
    t3 = (t0 + 2672);
    xsi_vlog_namedbase_setdisablestate(t2, &&LAB7);
    xsi_vlog_namedbase_pushprocess(t2, t3);

LAB8:    xsi_set_current_line(52, ng0);
    xsi_set_current_line(52, ng0);
    t5 = ((char*)((ng4)));
    t6 = (t0 + 1876);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);

LAB9:    t2 = (t0 + 1876);
    t3 = (t2 + 32U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng14)));
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t5, 32, t6, 32);
    t8 = (t7 + 4U);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1968);
    xsi_vlogfile_readmemh(ng16, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(57, ng0);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1876);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB14:    t2 = (t0 + 1876);
    t3 = (t2 + 32U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng14)));
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t5, 32, t6, 32);
    t8 = (t7 + 4U);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB15;

LAB16:    t2 = (t0 + 140);
    xsi_vlog_namedbase_popprocess(t2);

LAB7:    t3 = (t0 + 2672);
    xsi_vlog_dispose_process_subprogram_invocation(t3);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 3200);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB10:    xsi_set_current_line(52, ng0);
    t14 = ((char*)((ng15)));
    t15 = (t0 + 1968);
    t18 = (t0 + 1968);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    t21 = (t0 + 1968);
    t22 = (t21 + 36U);
    t23 = *((char **)t22);
    t24 = (t0 + 1876);
    t25 = (t24 + 32U);
    t26 = *((char **)t25);
    xsi_vlog_generic_convert_array_indices(t16, t17, t20, t23, 2, 1, t26, 32, 1);
    t27 = (t16 + 4U);
    t28 = *((unsigned int *)t27);
    t29 = (!(t28));
    t30 = (t17 + 4U);
    t31 = *((unsigned int *)t30);
    t32 = (!(t31));
    t33 = (t29 && t32);
    if (t33 == 1)
        goto LAB12;

LAB13:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1876);
    t3 = (t2 + 32U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng8)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t8 = (t0 + 1876);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    goto LAB9;

LAB12:    t34 = *((unsigned int *)t16);
    t35 = *((unsigned int *)t17);
    t36 = (t34 - t35);
    t37 = (t36 + 1);
    xsi_vlogvar_assign_value(t15, t14, 0, *((unsigned int *)t17), t37);
    goto LAB13;

LAB15:    xsi_set_current_line(57, ng0);

LAB17:    xsi_set_current_line(58, ng0);
    t14 = (t0 + 3192);
    *((int *)t14) = 1;
    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB18:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1876);
    t3 = (t2 + 32U);
    t5 = *((char **)t3);
    t6 = (t0 + 1324);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 9);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1968);
    t3 = (t2 + 32U);
    t5 = *((char **)t3);
    t6 = (t0 + 1968);
    t8 = (t6 + 40U);
    t14 = *((char **)t8);
    t15 = (t0 + 1968);
    t18 = (t15 + 36U);
    t19 = *((char **)t18);
    t20 = (t0 + 1876);
    t21 = (t20 + 32U);
    t22 = *((char **)t21);
    xsi_vlog_generic_get_array_select_value(t7, 32, t5, t14, t19, 2, 1, t22, 32, 1);
    t23 = (t0 + 1600);
    xsi_vlogvar_assign_value(t23, t7, 0, 0, 32);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1876);
    t3 = (t2 + 32U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng8)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t8 = (t0 + 1876);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);
    goto LAB14;

LAB19:    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1784);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(66, ng0);
    t2 = xsi_vlog_time(t4, 1000000.000000000, 1000.000000000000);
    xsi_vlogfile_write(1, 0, ng17, 2, t0, (char)118, t4, 64);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 2672);
    xsi_process_wait(t2, 20000000LL);
    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB20:    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1692);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1508);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(72, ng0);
    xsi_vlogfile_write(1, 0, ng18, 1, t0);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2672);
    xsi_process_wait(t2, 50000000000LL);
    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB21:    xsi_set_current_line(81, ng0);
    xsi_vlogfile_write(1, 0, ng19, 1, t0);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2672);
    t3 = (t0 + 600);
    t5 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t5);

LAB23:    t6 = (t0 + 2720);
    t8 = *((char **)t6);
    t14 = (t8 + 40U);
    t15 = *((char **)t14);
    t18 = (t15 + 132U);
    t19 = *((char **)t18);
    t20 = (t19 + 0U);
    t21 = *((char **)t20);
    t29 = ((int  (*)(char *, char *))t21)(t0, t8);
    if (t29 != 0)
        goto LAB25;

LAB24:    t8 = (t0 + 600);
    xsi_vlog_subprogram_popinvocation(t8);

LAB22:    t22 = (t0 + 2720);
    t23 = *((char **)t22);
    t22 = (t0 + 600);
    t24 = (t0 + 2720);
    t25 = *((char **)t24);
    t24 = (t0 + 2672);
    t26 = 0;
    xsi_delete_subprogram_invocation(t22, t25, t0, t24, t26);
    xsi_set_current_line(84, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

LAB25:    t6 = (t0 + 2756U);
    *((char **)t6) = &&LAB23;
    goto LAB1;

}

static void I114_2(char *t0)
{

LAB0:    xsi_set_current_line(114, ng0);

LAB2:    xsi_set_current_line(115, ng0);
    M115_3(t0);

LAB1:    return;
}

void M115_3(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 2928);
    t2 = (t0 + 3208);
    xsi_vlogfile_monitor((void *)M115_3_Func, t1, t2);

LAB1:    return;
}


extern void work_m_00000000000816452840_2758720679_init()
{
	static char *pe[] = {(void *)I27_0,(void *)I33_1,(void *)I114_2,(void *)M115_3};
	static char *se[] = {(void *)sp_dump_data_mem,(void *)sp_dump_inst_mem};
	xsi_register_didat("work_m_00000000000816452840_2758720679", "isim/_tmp/work/m_00000000000816452840_2758720679.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
