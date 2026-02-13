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
static int ng0[] = {5001047, 0, 0, 0, 0, 0};
static int ng1[] = {1380794700, 0, 20047, 0, 0, 0};
static int ng2[] = {1128354373, 0, 1330533471, 0, 68, 0};
static const char *ng3 = "Attribute Syntax Error : The attribute CAPACITANCE on IBUF instance %m is set to %s.  Legal values for this attribute are DONT_CARE, LOW or NORMAL.";
static int ng4[] = {48, 0};
static int ng5[] = {49, 0};
static int ng6[] = {50, 0};
static int ng7[] = {51, 0};
static int ng8[] = {52, 0};
static int ng9[] = {53, 0};
static int ng10[] = {54, 0};
static int ng11[] = {55, 0};
static int ng12[] = {56, 0};
static int ng13[] = {57, 0};
static int ng14[] = {12592, 0};
static int ng15[] = {12593, 0};
static int ng16[] = {12594, 0};
static int ng17[] = {12595, 0};
static int ng18[] = {12596, 0};
static int ng19[] = {12597, 0};
static int ng20[] = {12598, 0};
static const char *ng21 = "Attribute Syntax Error : The attribute IBUF_DELAY_VALUE on IBUF instance %m is set to %s.  Legal values for this attribute are 0, 1, 2, ... or 16.";
static int ng22[] = {1096111183, 0};
static const char *ng23 = "Attribute Syntax Error : The attribute IFD_DELAY_VALUE on IBUF instance %m is set to %s.  Legal values for this attribute are AUTO, 0, 1, 2, ... or 8.";



static void G33_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
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
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;

LAB0:    t1 = (t0 + 1564U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 956U);
    t3 = *((char **)t2);
    t2 = (t0 + 1916);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    t8 = (t7 + 4U);
    t9 = (t3 + 4U);
    if (*((unsigned int *)t9) == 1)
        goto LAB4;

LAB5:    t10 = *((unsigned int *)t3);
    t11 = (t10 & 1);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 & 1);
    *((unsigned int *)t8) = t13;

LAB6:    t14 = (t0 + 1916);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    t19 = (t18 + 4U);
    t20 = 1U;
    t21 = t20;
    t22 = (t7 + 4U);
    t23 = *((unsigned int *)t7);
    t20 = (t20 & t23);
    t24 = *((unsigned int *)t22);
    t21 = (t21 & t24);
    t25 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t25 & 4294967294U);
    t26 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t26 | t20);
    t27 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t27 & 4294967294U);
    t28 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t28 | t21);
    t29 = (t0 + 1916);
    xsi_driver_vfirst_trans(t29, 0, 0);
    t30 = (t0 + 1872);
    *((int *)t30) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t7) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB6;

}

static void I36_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    int t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    int t12;
    char *t13;
    int t14;
    char *t15;
    int t16;
    char *t17;
    int t18;
    char *t19;
    int t20;
    char *t21;
    int t22;
    char *t23;
    int t24;
    char *t25;
    int t26;
    char *t27;
    int t28;
    char *t29;
    int t30;
    char *t31;
    int t32;
    char *t33;
    int t34;
    char *t35;
    int t36;
    char *t37;
    char *t38;

LAB0:
LAB2:    t1 = (t0 + 248);
    t2 = *((char **)t1);

LAB3:    t1 = ((char*)((ng0)));
    t3 = xsi_vlog_unsigned_case_compare(t2, 72, t1, 72);
    if (t3 == 1)
        goto LAB4;

LAB5:    t4 = ((char*)((ng1)));
    t5 = xsi_vlog_unsigned_case_compare(t2, 72, t4, 72);
    if (t5 == 1)
        goto LAB6;

LAB7:    t6 = ((char*)((ng2)));
    t7 = xsi_vlog_unsigned_case_compare(t2, 72, t6, 72);
    if (t7 == 1)
        goto LAB8;

LAB9:
LAB11:
LAB10:
LAB13:    t8 = (t0 + 248);
    t9 = *((char **)t8);
    xsi_vlogfile_write(1, 0, ng3, 2, t0, (char)118, t9, 72);
    xsi_vlog_finish(1);

LAB12:    t1 = (t0 + 324);
    t4 = *((char **)t1);

LAB14:    t1 = ((char*)((ng4)));
    t3 = xsi_vlog_unsigned_case_compare(t4, 8, t1, 16);
    if (t3 == 1)
        goto LAB15;

LAB16:    t6 = ((char*)((ng5)));
    t5 = xsi_vlog_unsigned_case_compare(t4, 8, t6, 16);
    if (t5 == 1)
        goto LAB17;

LAB18:    t8 = ((char*)((ng6)));
    t7 = xsi_vlog_unsigned_case_compare(t4, 8, t8, 16);
    if (t7 == 1)
        goto LAB19;

LAB20:    t9 = ((char*)((ng7)));
    t10 = xsi_vlog_unsigned_case_compare(t4, 8, t9, 16);
    if (t10 == 1)
        goto LAB21;

LAB22:    t11 = ((char*)((ng8)));
    t12 = xsi_vlog_unsigned_case_compare(t4, 8, t11, 16);
    if (t12 == 1)
        goto LAB23;

LAB24:    t13 = ((char*)((ng9)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 8, t13, 16);
    if (t14 == 1)
        goto LAB25;

LAB26:    t15 = ((char*)((ng10)));
    t16 = xsi_vlog_unsigned_case_compare(t4, 8, t15, 16);
    if (t16 == 1)
        goto LAB27;

LAB28:    t17 = ((char*)((ng11)));
    t18 = xsi_vlog_unsigned_case_compare(t4, 8, t17, 16);
    if (t18 == 1)
        goto LAB29;

LAB30:    t19 = ((char*)((ng12)));
    t20 = xsi_vlog_unsigned_case_compare(t4, 8, t19, 16);
    if (t20 == 1)
        goto LAB31;

LAB32:    t21 = ((char*)((ng13)));
    t22 = xsi_vlog_unsigned_case_compare(t4, 8, t21, 16);
    if (t22 == 1)
        goto LAB33;

LAB34:    t23 = ((char*)((ng14)));
    t24 = xsi_vlog_unsigned_case_compare(t4, 8, t23, 16);
    if (t24 == 1)
        goto LAB35;

LAB36:    t25 = ((char*)((ng15)));
    t26 = xsi_vlog_unsigned_case_compare(t4, 8, t25, 16);
    if (t26 == 1)
        goto LAB37;

LAB38:    t27 = ((char*)((ng16)));
    t28 = xsi_vlog_unsigned_case_compare(t4, 8, t27, 16);
    if (t28 == 1)
        goto LAB39;

LAB40:    t29 = ((char*)((ng17)));
    t30 = xsi_vlog_unsigned_case_compare(t4, 8, t29, 16);
    if (t30 == 1)
        goto LAB41;

LAB42:    t31 = ((char*)((ng18)));
    t32 = xsi_vlog_unsigned_case_compare(t4, 8, t31, 16);
    if (t32 == 1)
        goto LAB43;

LAB44:    t33 = ((char*)((ng19)));
    t34 = xsi_vlog_unsigned_case_compare(t4, 8, t33, 16);
    if (t34 == 1)
        goto LAB45;

LAB46:    t35 = ((char*)((ng20)));
    t36 = xsi_vlog_unsigned_case_compare(t4, 8, t35, 16);
    if (t36 == 1)
        goto LAB47;

LAB48:
LAB50:
LAB49:
LAB52:    t37 = (t0 + 324);
    t38 = *((char **)t37);
    xsi_vlogfile_write(1, 0, ng21, 2, t0, (char)118, t38, 8);
    xsi_vlog_finish(1);

LAB51:    t1 = (t0 + 400);
    t6 = *((char **)t1);

LAB53:    t1 = ((char*)((ng22)));
    t3 = xsi_vlog_unsigned_case_compare(t6, 32, t1, 32);
    if (t3 == 1)
        goto LAB54;

LAB55:    t8 = ((char*)((ng4)));
    t5 = xsi_vlog_unsigned_case_compare(t6, 32, t8, 32);
    if (t5 == 1)
        goto LAB56;

LAB57:    t9 = ((char*)((ng5)));
    t7 = xsi_vlog_unsigned_case_compare(t6, 32, t9, 32);
    if (t7 == 1)
        goto LAB58;

LAB59:    t11 = ((char*)((ng6)));
    t10 = xsi_vlog_unsigned_case_compare(t6, 32, t11, 32);
    if (t10 == 1)
        goto LAB60;

LAB61:    t13 = ((char*)((ng7)));
    t12 = xsi_vlog_unsigned_case_compare(t6, 32, t13, 32);
    if (t12 == 1)
        goto LAB62;

LAB63:    t15 = ((char*)((ng8)));
    t14 = xsi_vlog_unsigned_case_compare(t6, 32, t15, 32);
    if (t14 == 1)
        goto LAB64;

LAB65:    t17 = ((char*)((ng9)));
    t16 = xsi_vlog_unsigned_case_compare(t6, 32, t17, 32);
    if (t16 == 1)
        goto LAB66;

LAB67:    t19 = ((char*)((ng10)));
    t18 = xsi_vlog_unsigned_case_compare(t6, 32, t19, 32);
    if (t18 == 1)
        goto LAB68;

LAB69:    t21 = ((char*)((ng11)));
    t20 = xsi_vlog_unsigned_case_compare(t6, 32, t21, 32);
    if (t20 == 1)
        goto LAB70;

LAB71:    t23 = ((char*)((ng12)));
    t22 = xsi_vlog_unsigned_case_compare(t6, 32, t23, 32);
    if (t22 == 1)
        goto LAB72;

LAB73:
LAB75:
LAB74:
LAB77:    t25 = (t0 + 400);
    t27 = *((char **)t25);
    xsi_vlogfile_write(1, 0, ng23, 2, t0, (char)118, t27, 32);
    xsi_vlog_finish(1);

LAB76:
LAB1:    return;
LAB4:    goto LAB12;

LAB6:    goto LAB4;

LAB8:    goto LAB4;

LAB15:    goto LAB51;

LAB17:    goto LAB15;

LAB19:    goto LAB15;

LAB21:    goto LAB15;

LAB23:    goto LAB15;

LAB25:    goto LAB15;

LAB27:    goto LAB15;

LAB29:    goto LAB15;

LAB31:    goto LAB15;

LAB33:    goto LAB15;

LAB35:    goto LAB15;

LAB37:    goto LAB15;

LAB39:    goto LAB15;

LAB41:    goto LAB15;

LAB43:    goto LAB15;

LAB45:    goto LAB15;

LAB47:    goto LAB15;

LAB54:    goto LAB76;

LAB56:    goto LAB54;

LAB58:    goto LAB54;

LAB60:    goto LAB54;

LAB62:    goto LAB54;

LAB64:    goto LAB54;

LAB66:    goto LAB54;

LAB68:    goto LAB54;

LAB70:    goto LAB54;

LAB72:    goto LAB54;

}


extern void unisims_ver_m_00000000000074880976_1108579578_init()
{
	static char *pe[] = {(void *)G33_0,(void *)I36_1};
	xsi_register_didat("unisims_ver_m_00000000000074880976_1108579578", "isim/_tmp/unisims_ver/m_00000000000074880976_1108579578.didat");
	xsi_register_executes(pe);
}
