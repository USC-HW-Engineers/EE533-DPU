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
static const char *ng0 = "C:/Documents and Settings/student/Desktop/ARM_Processor/Control_Unit.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {4U, 0U};
static unsigned int ng7[] = {9U, 0U};



static void A31_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;

LAB0:    t1 = (t0 + 1724U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1904);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 788);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(33, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 880);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1156);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 972);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 564U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng2)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t5 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng4)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t5 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t5 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t5 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t5 == 1)
        goto LAB15;

LAB16:
LAB18:
LAB17:    xsi_set_current_line(82, ng0);

LAB25:
LAB19:    goto LAB2;

LAB7:    xsi_set_current_line(40, ng0);

LAB20:    xsi_set_current_line(41, ng0);
    t4 = ((char*)((ng1)));
    t6 = (t0 + 1248);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 1);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 880);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 972);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1064);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1156);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 788);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    goto LAB19;

LAB9:    xsi_set_current_line(49, ng0);

LAB21:    xsi_set_current_line(50, ng0);
    t4 = ((char*)((ng3)));
    t6 = (t0 + 1248);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 1);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 880);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 972);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 1064);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1156);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 788);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    goto LAB19;

LAB11:    xsi_set_current_line(58, ng0);

LAB22:    xsi_set_current_line(59, ng0);
    t4 = ((char*)((ng3)));
    t6 = (t0 + 1248);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 1);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 972);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1064);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 1156);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 788);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    goto LAB19;

LAB13:    xsi_set_current_line(66, ng0);

LAB23:    xsi_set_current_line(67, ng0);
    t4 = ((char*)((ng1)));
    t6 = (t0 + 972);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 1);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1064);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1156);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 788);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    goto LAB19;

LAB15:    xsi_set_current_line(73, ng0);

LAB24:    xsi_set_current_line(74, ng0);
    t4 = ((char*)((ng3)));
    t6 = (t0 + 1248);
    xsi_vlogvar_assign_value(t6, t4, 0, 0, 1);
    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 880);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 972);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1064);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1156);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 788);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    goto LAB19;

}


extern void work_m_00000000000469273589_3901337038_init()
{
	static char *pe[] = {(void *)A31_0};
	xsi_register_didat("work_m_00000000000469273589_3901337038", "isim/_tmp/work/m_00000000000469273589_3901337038.didat");
	xsi_register_executes(pe);
}
