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
static const char *ng0 = "C:/Documents and Settings/student/Desktop/5_Stage_Pipeline/Reg_File_16b_tb.tfw";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {291U, 0U, 0U, 0U};
static unsigned int ng4[] = {4660U, 0U, 0U, 0U};
static unsigned int ng5[] = {74565U, 0U, 0U, 0U};
static unsigned int ng6[] = {1193046U, 0U, 0U, 0U};



static void I35_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    t1 = (t0 + 2040U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);

LAB4:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1956);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(38, ng0);

LAB6:    xsi_set_current_line(39, ng0);

LAB7:    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1956);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(41, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 1104);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1956);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    goto LAB6;

LAB10:    goto LAB1;

}

static void I56_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 2168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);

LAB4:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2084);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1472);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2084);
    xsi_process_wait(t2, 85000000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1472);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2084);
    xsi_process_wait(t2, 200000000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1472);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2084);
    xsi_process_wait(t2, 200000000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1472);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    goto LAB1;

}


extern void work_m_00000000003200229175_1546626187_init()
{
	static char *pe[] = {(void *)I35_0,(void *)I56_1};
	xsi_register_didat("work_m_00000000003200229175_1546626187", "isim/_tmp/work/m_00000000003200229175_1546626187.didat");
	xsi_register_executes(pe);
}
