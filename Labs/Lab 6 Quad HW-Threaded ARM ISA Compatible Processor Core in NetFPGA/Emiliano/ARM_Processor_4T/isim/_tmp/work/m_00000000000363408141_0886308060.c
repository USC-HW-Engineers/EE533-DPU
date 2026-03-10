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
static const char *ng0 = "C:/Documents and Settings/student/Desktop/ARM_Processor_4T/ALU.v";
static unsigned int ng1[] = {0U, 0U, 0U, 0U};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {4U, 0U};
static unsigned int ng7[] = {5U, 0U};
static unsigned int ng8[] = {6U, 0U};
static unsigned int ng9[] = {7U, 0U};
static unsigned int ng10[] = {8U, 0U};
static unsigned int ng11[] = {9U, 0U};
static unsigned int ng12[] = {1U, 0U, 0U, 0U};
static unsigned int ng13[] = {10U, 0U};
static unsigned int ng14[] = {11U, 0U};



static void A15_0(char *t0)
{
    char t8[24];
    char t10[8];
    char t18[8];
    char t27[8];
    char t43[8];
    char t58[8];
    char t70[8];
    char t79[8];
    char t95[8];
    char t103[8];
    char t135[16];
    char t137[16];
    char t139[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    char *t56;
    char *t57;
    char *t59;
    char *t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    char *t69;
    char *t71;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t80;
    char *t81;
    char *t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t96;
    char *t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    char *t107;
    char *t108;
    char *t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    char *t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    char *t134;
    int t136;

LAB0:    t1 = (t0 + 1808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(15, ng0);
    t2 = (t0 + 1988);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(15, ng0);

LAB5:    xsi_set_current_line(16, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 964);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 64);
    xsi_set_current_line(17, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1240);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(18, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1332);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(20, ng0);
    t2 = (t0 + 740U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng2)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t5 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t5 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t5 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t5 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t5 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t5 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng8)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t5 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng9)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t5 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng10)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t5 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng11)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t5 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng13)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t5 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng14)));
    t5 = xsi_vlog_unsigned_case_compare(t3, 4, t2, 4);
    if (t5 == 1)
        goto LAB29;

LAB30:
LAB32:
LAB31:    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 964);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 64);

LAB33:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 964);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    memset(t10, 0, 8);
    t7 = (t10 + 4U);
    t9 = (t6 + 8U);
    t17 = (t6 + 12U);
    t11 = *((unsigned int *)t9);
    t12 = (t11 >> 31);
    t13 = (t12 & 1);
    *((unsigned int *)t10) = t13;
    t14 = *((unsigned int *)t17);
    t15 = (t14 >> 31);
    t16 = (t15 & 1);
    *((unsigned int *)t7) = t16;
    t19 = (t0 + 1056);
    xsi_vlogvar_assign_value(t19, t10, 0, 0, 1);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 964);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = ((char*)((ng1)));
    xsi_vlog_unsigned_equal(t135, 64, t6, 64, t7, 64);
    t9 = (t0 + 1148);
    xsi_vlogvar_assign_value(t9, t135, 0, 0, 1);
    goto LAB2;

LAB7:    xsi_set_current_line(22, ng0);

LAB34:    xsi_set_current_line(23, ng0);
    t4 = (t0 + 564U);
    t6 = *((char **)t4);
    t4 = (t0 + 652U);
    t7 = *((char **)t4);
    xsi_vlog_unsigned_add(t8, 65, t6, 64, t7, 64);
    t4 = (t0 + 964);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 64);
    t9 = (t0 + 1240);
    xsi_vlogvar_assign_value(t9, t8, 64, 0, 1);
    xsi_set_current_line(24, ng0);
    t2 = (t0 + 564U);
    t4 = *((char **)t2);
    memset(t10, 0, 8);
    t2 = (t10 + 4U);
    t6 = (t4 + 8U);
    t7 = (t4 + 12U);
    t11 = *((unsigned int *)t6);
    t12 = (t11 >> 31);
    t13 = (t12 & 1);
    *((unsigned int *)t10) = t13;
    t14 = *((unsigned int *)t7);
    t15 = (t14 >> 31);
    t16 = (t15 & 1);
    *((unsigned int *)t2) = t16;
    t9 = (t0 + 652U);
    t17 = *((char **)t9);
    memset(t18, 0, 8);
    t9 = (t18 + 4U);
    t19 = (t17 + 8U);
    t20 = (t17 + 12U);
    t21 = *((unsigned int *)t19);
    t22 = (t21 >> 31);
    t23 = (t22 & 1);
    *((unsigned int *)t18) = t23;
    t24 = *((unsigned int *)t20);
    t25 = (t24 >> 31);
    t26 = (t25 & 1);
    *((unsigned int *)t9) = t26;
    memset(t27, 0, 8);
    t28 = (t27 + 4U);
    t29 = (t10 + 4U);
    t30 = (t18 + 4U);
    t31 = *((unsigned int *)t10);
    t32 = *((unsigned int *)t18);
    t33 = (t31 ^ t32);
    t34 = *((unsigned int *)t29);
    t35 = *((unsigned int *)t30);
    t36 = (t34 ^ t35);
    t37 = (t33 | t36);
    t38 = *((unsigned int *)t29);
    t39 = *((unsigned int *)t30);
    t40 = (t38 | t39);
    t41 = (~(t40));
    t42 = (t37 & t41);
    if (t42 != 0)
        goto LAB38;

LAB35:    if (t40 != 0)
        goto LAB37;

LAB36:    *((unsigned int *)t27) = 1;

LAB38:    memset(t43, 0, 8);
    t44 = (t43 + 4U);
    t45 = (t27 + 4U);
    t46 = *((unsigned int *)t45);
    t47 = (~(t46));
    t48 = *((unsigned int *)t27);
    t49 = (t48 & t47);
    t50 = (t49 & 1U);
    if (t50 != 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t45) != 0)
        goto LAB41;

LAB42:    t51 = (t43 + 4U);
    t52 = *((unsigned int *)t43);
    t53 = *((unsigned int *)t51);
    t54 = (t52 || t53);
    if (t54 > 0)
        goto LAB43;

LAB44:    memcpy(t103, t43, 8);

LAB45:    t134 = (t0 + 1332);
    xsi_vlogvar_assign_value(t134, t103, 0, 0, 1);
    goto LAB33;

LAB9:    xsi_set_current_line(27, ng0);

LAB57:    xsi_set_current_line(28, ng0);
    t4 = (t0 + 564U);
    t6 = *((char **)t4);
    t4 = (t0 + 652U);
    t7 = *((char **)t4);
    xsi_vlog_unsigned_minus(t135, 64, t6, 64, t7, 64);
    t4 = (t0 + 964);
    xsi_vlogvar_assign_value(t4, t135, 0, 0, 64);
    xsi_set_current_line(29, ng0);
    t2 = (t0 + 564U);
    t4 = *((char **)t2);
    t2 = (t0 + 652U);
    t6 = *((char **)t2);
    xsi_vlog_unsigned_greatereq(t135, 64, t4, 64, t6, 64);
    t2 = (t0 + 1240);
    xsi_vlogvar_assign_value(t2, t135, 0, 0, 1);
    xsi_set_current_line(30, ng0);
    t2 = (t0 + 564U);
    t4 = *((char **)t2);
    memset(t10, 0, 8);
    t2 = (t10 + 4U);
    t6 = (t4 + 8U);
    t7 = (t4 + 12U);
    t11 = *((unsigned int *)t6);
    t12 = (t11 >> 31);
    t13 = (t12 & 1);
    *((unsigned int *)t10) = t13;
    t14 = *((unsigned int *)t7);
    t15 = (t14 >> 31);
    t16 = (t15 & 1);
    *((unsigned int *)t2) = t16;
    t9 = (t0 + 652U);
    t17 = *((char **)t9);
    memset(t18, 0, 8);
    t9 = (t18 + 4U);
    t19 = (t17 + 8U);
    t20 = (t17 + 12U);
    t21 = *((unsigned int *)t19);
    t22 = (t21 >> 31);
    t23 = (t22 & 1);
    *((unsigned int *)t18) = t23;
    t24 = *((unsigned int *)t20);
    t25 = (t24 >> 31);
    t26 = (t25 & 1);
    *((unsigned int *)t9) = t26;
    memset(t27, 0, 8);
    t28 = (t27 + 4U);
    t29 = (t10 + 4U);
    t30 = (t18 + 4U);
    t31 = *((unsigned int *)t10);
    t32 = *((unsigned int *)t18);
    t33 = (t31 ^ t32);
    t34 = *((unsigned int *)t29);
    t35 = *((unsigned int *)t30);
    t36 = (t34 ^ t35);
    t37 = (t33 | t36);
    t38 = *((unsigned int *)t29);
    t39 = *((unsigned int *)t30);
    t40 = (t38 | t39);
    t41 = (~(t40));
    t42 = (t37 & t41);
    if (t42 != 0)
        goto LAB59;

LAB58:    if (t40 != 0)
        goto LAB60;

LAB61:    memset(t43, 0, 8);
    t44 = (t43 + 4U);
    t45 = (t27 + 4U);
    t46 = *((unsigned int *)t45);
    t47 = (~(t46));
    t48 = *((unsigned int *)t27);
    t49 = (t48 & t47);
    t50 = (t49 & 1U);
    if (t50 != 0)
        goto LAB62;

LAB63:    if (*((unsigned int *)t45) != 0)
        goto LAB64;

LAB65:    t51 = (t43 + 4U);
    t52 = *((unsigned int *)t43);
    t53 = *((unsigned int *)t51);
    t54 = (t52 || t53);
    if (t54 > 0)
        goto LAB66;

LAB67:    memcpy(t103, t43, 8);

LAB68:    t134 = (t0 + 1332);
    xsi_vlogvar_assign_value(t134, t103, 0, 0, 1);
    goto LAB33;

LAB11:    xsi_set_current_line(33, ng0);
    t4 = (t0 + 564U);
    t6 = *((char **)t4);
    t4 = (t0 + 652U);
    t7 = *((char **)t4);
    t11 = 0;

LAB83:    t12 = (t11 < 2);
    if (t12 == 1)
        goto LAB84;

LAB85:    t51 = (t0 + 964);
    xsi_vlogvar_assign_value(t51, t135, 0, 0, 64);
    goto LAB33;

LAB13:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 564U);
    t6 = *((char **)t4);
    t4 = (t0 + 652U);
    t7 = *((char **)t4);
    t11 = 0;

LAB89:    t12 = (t11 < 2);
    if (t12 == 1)
        goto LAB90;

LAB91:    t51 = (t0 + 964);
    xsi_vlogvar_assign_value(t51, t135, 0, 0, 64);
    goto LAB33;

LAB15:    xsi_set_current_line(35, ng0);
    t4 = (t0 + 564U);
    t6 = *((char **)t4);
    t4 = (t0 + 652U);
    t7 = *((char **)t4);
    t11 = 0;

LAB95:    t12 = (t11 < 2);
    if (t12 == 1)
        goto LAB96;

LAB97:    t29 = (t0 + 964);
    xsi_vlogvar_assign_value(t29, t135, 0, 0, 64);
    goto LAB33;

LAB17:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 564U);
    t6 = *((char **)t4);
    t4 = (t0 + 652U);
    t7 = *((char **)t4);
    t11 = 0;

LAB101:    t12 = (t11 < 2);
    if (t12 == 1)
        goto LAB102;

LAB103:    xsi_vlogtype_unsigned_bit_neg(t135, 64, t137, 64);
    t29 = (t0 + 964);
    xsi_vlogvar_assign_value(t29, t135, 0, 0, 64);
    goto LAB33;

LAB19:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 564U);
    t6 = *((char **)t4);
    t4 = (t0 + 652U);
    t7 = *((char **)t4);
    memset(t10, 0, 8);
    t4 = (t10 + 4U);
    t9 = (t7 + 4U);
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    *((unsigned int *)t10) = t12;
    t13 = *((unsigned int *)t9);
    t14 = (t13 >> 0);
    *((unsigned int *)t4) = t14;
    t15 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t15 & 63U);
    t16 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t16 & 63U);
    xsi_vlog_unsigned_lshift(t135, 64, t6, 64, t10, 6);
    t17 = (t0 + 964);
    xsi_vlogvar_assign_value(t17, t135, 0, 0, 64);
    goto LAB33;

LAB21:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 564U);
    t6 = *((char **)t4);
    t4 = (t0 + 652U);
    t7 = *((char **)t4);
    memset(t10, 0, 8);
    t4 = (t10 + 4U);
    t9 = (t7 + 4U);
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    *((unsigned int *)t10) = t12;
    t13 = *((unsigned int *)t9);
    t14 = (t13 >> 0);
    *((unsigned int *)t4) = t14;
    t15 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t15 & 63U);
    t16 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t16 & 63U);
    xsi_vlog_unsigned_rshift(t135, 64, t6, 64, t10, 6);
    t17 = (t0 + 964);
    xsi_vlogvar_assign_value(t17, t135, 0, 0, 64);
    goto LAB33;

LAB23:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 564U);
    t6 = *((char **)t4);
    t4 = (t0 + 652U);
    t7 = *((char **)t4);
    memset(t10, 0, 8);
    t4 = (t10 + 4U);
    t9 = (t7 + 4U);
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    *((unsigned int *)t10) = t12;
    t13 = *((unsigned int *)t9);
    t14 = (t13 >> 0);
    *((unsigned int *)t4) = t14;
    t15 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t15 & 63U);
    t16 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t16 & 63U);
    xsi_vlog_signed_arith_rshift(t137, 64, t6, 64, t10, 6);
    t17 = (t0 + 964);
    xsi_vlogvar_assign_value(t17, t137, 0, 0, 64);
    goto LAB33;

LAB25:    xsi_set_current_line(42, ng0);
    t4 = (t0 + 564U);
    t6 = *((char **)t4);
    t4 = (t0 + 652U);
    t7 = *((char **)t4);
    xsi_vlog_unsigned_equal(t137, 64, t6, 64, t7, 64);
    memset(t10, 0, 8);
    t4 = (t10 + 4U);
    t9 = (t137 + 4U);
    t11 = *((unsigned int *)t9);
    t12 = (~(t11));
    t13 = *((unsigned int *)t137);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB104;

LAB105:    if (*((unsigned int *)t9) != 0)
        goto LAB106;

LAB107:    t17 = (t10 + 4U);
    t16 = *((unsigned int *)t10);
    t21 = *((unsigned int *)t17);
    t22 = (t16 || t21);
    if (t22 > 0)
        goto LAB108;

LAB109:    t23 = *((unsigned int *)t10);
    t24 = (~(t23));
    t25 = *((unsigned int *)t17);
    t26 = (t24 || t25);
    if (t26 > 0)
        goto LAB110;

LAB111:    if (*((unsigned int *)t17) > 0)
        goto LAB112;

LAB113:    if (*((unsigned int *)t10) > 0)
        goto LAB114;

LAB115:    memcpy(t135, t20, 16);

LAB116:    t28 = (t0 + 964);
    xsi_vlogvar_assign_value(t28, t135, 0, 0, 64);
    goto LAB33;

LAB27:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 564U);
    t6 = *((char **)t4);
    t4 = (t0 + 652U);
    t7 = *((char **)t4);
    xsi_vlog_signed_less(t139, 64, t6, 64, t7, 64);
    memset(t10, 0, 8);
    t4 = (t10 + 4U);
    t9 = (t139 + 4U);
    t11 = *((unsigned int *)t9);
    t12 = (~(t11));
    t13 = *((unsigned int *)t139);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB117;

LAB118:    if (*((unsigned int *)t9) != 0)
        goto LAB119;

LAB120:    t17 = (t10 + 4U);
    t16 = *((unsigned int *)t10);
    t21 = *((unsigned int *)t17);
    t22 = (t16 || t21);
    if (t22 > 0)
        goto LAB121;

LAB122:    t23 = *((unsigned int *)t10);
    t24 = (~(t23));
    t25 = *((unsigned int *)t17);
    t26 = (t24 || t25);
    if (t26 > 0)
        goto LAB123;

LAB124:    if (*((unsigned int *)t17) > 0)
        goto LAB125;

LAB126:    if (*((unsigned int *)t10) > 0)
        goto LAB127;

LAB128:    memcpy(t135, t20, 16);

LAB129:    t28 = (t0 + 964);
    xsi_vlogvar_assign_value(t28, t135, 0, 0, 64);
    goto LAB33;

LAB29:    xsi_set_current_line(44, ng0);
    t4 = (t0 + 564U);
    t6 = *((char **)t4);
    t4 = (t0 + 652U);
    t7 = *((char **)t4);
    xsi_vlog_signed_greater(t139, 64, t6, 64, t7, 64);
    memset(t10, 0, 8);
    t4 = (t10 + 4U);
    t9 = (t139 + 4U);
    t11 = *((unsigned int *)t9);
    t12 = (~(t11));
    t13 = *((unsigned int *)t139);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB130;

LAB131:    if (*((unsigned int *)t9) != 0)
        goto LAB132;

LAB133:    t17 = (t10 + 4U);
    t16 = *((unsigned int *)t10);
    t21 = *((unsigned int *)t17);
    t22 = (t16 || t21);
    if (t22 > 0)
        goto LAB134;

LAB135:    t23 = *((unsigned int *)t10);
    t24 = (~(t23));
    t25 = *((unsigned int *)t17);
    t26 = (t24 || t25);
    if (t26 > 0)
        goto LAB136;

LAB137:    if (*((unsigned int *)t17) > 0)
        goto LAB138;

LAB139:    if (*((unsigned int *)t10) > 0)
        goto LAB140;

LAB141:    memcpy(t135, t20, 16);

LAB142:    t28 = (t0 + 964);
    xsi_vlogvar_assign_value(t28, t135, 0, 0, 64);
    goto LAB33;

LAB37:    *((unsigned int *)t27) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB38;

LAB39:    *((unsigned int *)t43) = 1;
    goto LAB42;

LAB41:    *((unsigned int *)t43) = 1;
    *((unsigned int *)t44) = 1;
    goto LAB42;

LAB43:    t55 = (t0 + 964);
    t56 = (t55 + 32U);
    t57 = *((char **)t56);
    memset(t58, 0, 8);
    t59 = (t58 + 4U);
    t60 = (t57 + 8U);
    t61 = (t57 + 12U);
    t62 = *((unsigned int *)t60);
    t63 = (t62 >> 31);
    t64 = (t63 & 1);
    *((unsigned int *)t58) = t64;
    t65 = *((unsigned int *)t61);
    t66 = (t65 >> 31);
    t67 = (t66 & 1);
    *((unsigned int *)t59) = t67;
    t68 = (t0 + 564U);
    t69 = *((char **)t68);
    memset(t70, 0, 8);
    t68 = (t70 + 4U);
    t71 = (t69 + 8U);
    t72 = (t69 + 12U);
    t73 = *((unsigned int *)t71);
    t74 = (t73 >> 31);
    t75 = (t74 & 1);
    *((unsigned int *)t70) = t75;
    t76 = *((unsigned int *)t72);
    t77 = (t76 >> 31);
    t78 = (t77 & 1);
    *((unsigned int *)t68) = t78;
    memset(t79, 0, 8);
    t80 = (t79 + 4U);
    t81 = (t58 + 4U);
    t82 = (t70 + 4U);
    t83 = *((unsigned int *)t58);
    t84 = *((unsigned int *)t70);
    t85 = (t83 ^ t84);
    t86 = *((unsigned int *)t81);
    t87 = *((unsigned int *)t82);
    t88 = (t86 ^ t87);
    t89 = (t85 | t88);
    t90 = *((unsigned int *)t81);
    t91 = *((unsigned int *)t82);
    t92 = (t90 | t91);
    t93 = (~(t92));
    t94 = (t89 & t93);
    if (t94 != 0)
        goto LAB47;

LAB46:    if (t92 != 0)
        goto LAB48;

LAB49:    memset(t95, 0, 8);
    t96 = (t95 + 4U);
    t97 = (t79 + 4U);
    t98 = *((unsigned int *)t97);
    t99 = (~(t98));
    t100 = *((unsigned int *)t79);
    t101 = (t100 & t99);
    t102 = (t101 & 1U);
    if (t102 != 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t97) != 0)
        goto LAB52;

LAB53:    t104 = *((unsigned int *)t43);
    t105 = *((unsigned int *)t95);
    t106 = (t104 & t105);
    *((unsigned int *)t103) = t106;
    t107 = (t43 + 4U);
    t108 = (t95 + 4U);
    t109 = (t103 + 4U);
    t110 = *((unsigned int *)t107);
    t111 = *((unsigned int *)t108);
    t112 = (t110 | t111);
    *((unsigned int *)t109) = t112;
    t113 = *((unsigned int *)t109);
    t114 = (t113 != 0);
    if (t114 == 1)
        goto LAB54;

LAB55:
LAB56:    goto LAB45;

LAB47:    *((unsigned int *)t79) = 1;
    goto LAB49;

LAB48:    *((unsigned int *)t79) = 1;
    *((unsigned int *)t80) = 1;
    goto LAB49;

LAB50:    *((unsigned int *)t95) = 1;
    goto LAB53;

LAB52:    *((unsigned int *)t95) = 1;
    *((unsigned int *)t96) = 1;
    goto LAB53;

LAB54:    t115 = *((unsigned int *)t103);
    t116 = *((unsigned int *)t109);
    *((unsigned int *)t103) = (t115 | t116);
    t117 = (t43 + 4U);
    t118 = (t95 + 4U);
    t119 = *((unsigned int *)t43);
    t120 = (~(t119));
    t121 = *((unsigned int *)t117);
    t122 = (~(t121));
    t123 = *((unsigned int *)t95);
    t124 = (~(t123));
    t125 = *((unsigned int *)t118);
    t126 = (~(t125));
    t5 = (t120 & t122);
    t127 = (t124 & t126);
    t128 = (~(t5));
    t129 = (~(t127));
    t130 = *((unsigned int *)t109);
    *((unsigned int *)t109) = (t130 & t128);
    t131 = *((unsigned int *)t109);
    *((unsigned int *)t109) = (t131 & t129);
    t132 = *((unsigned int *)t103);
    *((unsigned int *)t103) = (t132 & t128);
    t133 = *((unsigned int *)t103);
    *((unsigned int *)t103) = (t133 & t129);
    goto LAB56;

LAB59:    *((unsigned int *)t27) = 1;
    goto LAB61;

LAB60:    *((unsigned int *)t27) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB61;

LAB62:    *((unsigned int *)t43) = 1;
    goto LAB65;

LAB64:    *((unsigned int *)t43) = 1;
    *((unsigned int *)t44) = 1;
    goto LAB65;

LAB66:    t55 = (t0 + 964);
    t56 = (t55 + 32U);
    t57 = *((char **)t56);
    memset(t58, 0, 8);
    t59 = (t58 + 4U);
    t60 = (t57 + 8U);
    t61 = (t57 + 12U);
    t62 = *((unsigned int *)t60);
    t63 = (t62 >> 31);
    t64 = (t63 & 1);
    *((unsigned int *)t58) = t64;
    t65 = *((unsigned int *)t61);
    t66 = (t65 >> 31);
    t67 = (t66 & 1);
    *((unsigned int *)t59) = t67;
    t68 = (t0 + 564U);
    t69 = *((char **)t68);
    memset(t70, 0, 8);
    t68 = (t70 + 4U);
    t71 = (t69 + 8U);
    t72 = (t69 + 12U);
    t73 = *((unsigned int *)t71);
    t74 = (t73 >> 31);
    t75 = (t74 & 1);
    *((unsigned int *)t70) = t75;
    t76 = *((unsigned int *)t72);
    t77 = (t76 >> 31);
    t78 = (t77 & 1);
    *((unsigned int *)t68) = t78;
    memset(t79, 0, 8);
    t80 = (t79 + 4U);
    t81 = (t58 + 4U);
    t82 = (t70 + 4U);
    t83 = *((unsigned int *)t58);
    t84 = *((unsigned int *)t70);
    t85 = (t83 ^ t84);
    t86 = *((unsigned int *)t81);
    t87 = *((unsigned int *)t82);
    t88 = (t86 ^ t87);
    t89 = (t85 | t88);
    t90 = *((unsigned int *)t81);
    t91 = *((unsigned int *)t82);
    t92 = (t90 | t91);
    t93 = (~(t92));
    t94 = (t89 & t93);
    if (t94 != 0)
        goto LAB70;

LAB69:    if (t92 != 0)
        goto LAB71;

LAB72:    memset(t95, 0, 8);
    t96 = (t95 + 4U);
    t97 = (t79 + 4U);
    t98 = *((unsigned int *)t97);
    t99 = (~(t98));
    t100 = *((unsigned int *)t79);
    t101 = (t100 & t99);
    t102 = (t101 & 1U);
    if (t102 != 0)
        goto LAB73;

LAB74:    if (*((unsigned int *)t97) != 0)
        goto LAB75;

LAB76:    t104 = *((unsigned int *)t43);
    t105 = *((unsigned int *)t95);
    t106 = (t104 & t105);
    *((unsigned int *)t103) = t106;
    t107 = (t43 + 4U);
    t108 = (t95 + 4U);
    t109 = (t103 + 4U);
    t110 = *((unsigned int *)t107);
    t111 = *((unsigned int *)t108);
    t112 = (t110 | t111);
    *((unsigned int *)t109) = t112;
    t113 = *((unsigned int *)t109);
    t114 = (t113 != 0);
    if (t114 == 1)
        goto LAB77;

LAB78:
LAB79:    goto LAB68;

LAB70:    *((unsigned int *)t79) = 1;
    goto LAB72;

LAB71:    *((unsigned int *)t79) = 1;
    *((unsigned int *)t80) = 1;
    goto LAB72;

LAB73:    *((unsigned int *)t95) = 1;
    goto LAB76;

LAB75:    *((unsigned int *)t95) = 1;
    *((unsigned int *)t96) = 1;
    goto LAB76;

LAB77:    t115 = *((unsigned int *)t103);
    t116 = *((unsigned int *)t109);
    *((unsigned int *)t103) = (t115 | t116);
    t117 = (t43 + 4U);
    t118 = (t95 + 4U);
    t119 = *((unsigned int *)t43);
    t120 = (~(t119));
    t121 = *((unsigned int *)t117);
    t122 = (~(t121));
    t123 = *((unsigned int *)t95);
    t124 = (~(t123));
    t125 = *((unsigned int *)t118);
    t126 = (~(t125));
    t5 = (t120 & t122);
    t127 = (t124 & t126);
    t128 = (~(t5));
    t129 = (~(t127));
    t130 = *((unsigned int *)t109);
    *((unsigned int *)t109) = (t130 & t128);
    t131 = *((unsigned int *)t109);
    *((unsigned int *)t109) = (t131 & t129);
    t132 = *((unsigned int *)t103);
    *((unsigned int *)t103) = (t132 & t128);
    t133 = *((unsigned int *)t103);
    *((unsigned int *)t103) = (t133 & t129);
    goto LAB79;

LAB80:    t34 = (t11 * 8U);
    t35 = *((unsigned int *)t17);
    t36 = *((unsigned int *)t28);
    *((unsigned int *)t17) = (t35 | t36);
    t29 = (t6 + t34);
    t37 = (t34 + 4U);
    t30 = (t6 + t37);
    t44 = (t7 + t34);
    t38 = (t34 + 4U);
    t45 = (t7 + t38);
    t39 = *((unsigned int *)t29);
    t40 = (~(t39));
    t41 = *((unsigned int *)t30);
    t42 = (~(t41));
    t46 = *((unsigned int *)t44);
    t47 = (~(t46));
    t48 = *((unsigned int *)t45);
    t49 = (~(t48));
    t127 = (t40 & t42);
    t136 = (t47 & t49);
    t50 = (~(t127));
    t52 = (~(t136));
    t53 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t53 & t50);
    t54 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t54 & t52);
    t62 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t62 & t50);
    t63 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t63 & t52);

LAB82:    t11 = (t11 + 1);
    goto LAB83;

LAB81:    goto LAB82;

LAB84:    t13 = (t11 * 8U);
    t4 = (t6 + t13);
    t9 = (t7 + t13);
    t17 = (t135 + t13);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t9);
    t16 = (t14 & t15);
    *((unsigned int *)t17) = t16;
    t21 = (t11 * 8U);
    t22 = (t21 + 4U);
    t19 = (t6 + t22);
    t23 = (t21 + 4U);
    t20 = (t7 + t23);
    t24 = (t21 + 4U);
    t28 = (t135 + t24);
    t25 = *((unsigned int *)t19);
    t26 = *((unsigned int *)t20);
    t31 = (t25 | t26);
    *((unsigned int *)t28) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 != 0);
    if (t33 == 1)
        goto LAB80;
    else
        goto LAB81;

LAB86:    t34 = (t11 * 8U);
    t35 = *((unsigned int *)t17);
    t36 = *((unsigned int *)t28);
    *((unsigned int *)t17) = (t35 | t36);
    t29 = (t6 + t34);
    t37 = (t34 + 4U);
    t30 = (t6 + t37);
    t44 = (t7 + t34);
    t38 = (t34 + 4U);
    t45 = (t7 + t38);
    t39 = *((unsigned int *)t30);
    t40 = (~(t39));
    t41 = *((unsigned int *)t29);
    t127 = (t41 & t40);
    t42 = *((unsigned int *)t45);
    t46 = (~(t42));
    t47 = *((unsigned int *)t44);
    t136 = (t47 & t46);
    t48 = (~(t127));
    t49 = (~(t136));
    t50 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t50 & t48);
    t52 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t52 & t49);

LAB88:    t11 = (t11 + 1);
    goto LAB89;

LAB87:    goto LAB88;

LAB90:    t13 = (t11 * 8U);
    t4 = (t6 + t13);
    t9 = (t7 + t13);
    t17 = (t135 + t13);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t9);
    t16 = (t14 | t15);
    *((unsigned int *)t17) = t16;
    t21 = (t11 * 8U);
    t22 = (t21 + 4U);
    t19 = (t6 + t22);
    t23 = (t21 + 4U);
    t20 = (t7 + t23);
    t24 = (t21 + 4U);
    t28 = (t135 + t24);
    t25 = *((unsigned int *)t19);
    t26 = *((unsigned int *)t20);
    t31 = (t25 | t26);
    *((unsigned int *)t28) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 != 0);
    if (t33 == 1)
        goto LAB86;
    else
        goto LAB87;

LAB92:    t34 = *((unsigned int *)t17);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t17) = (t34 | t35);

LAB94:    t11 = (t11 + 1);
    goto LAB95;

LAB93:    goto LAB94;

LAB96:    t13 = (t11 * 8U);
    t4 = (t6 + t13);
    t9 = (t7 + t13);
    t17 = (t135 + t13);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t9);
    t16 = (t14 ^ t15);
    *((unsigned int *)t17) = t16;
    t21 = (t11 * 8U);
    t22 = (t21 + 4U);
    t19 = (t6 + t22);
    t23 = (t21 + 4U);
    t20 = (t7 + t23);
    t24 = (t21 + 4U);
    t28 = (t135 + t24);
    t25 = *((unsigned int *)t19);
    t26 = *((unsigned int *)t20);
    t31 = (t25 | t26);
    *((unsigned int *)t28) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 != 0);
    if (t33 == 1)
        goto LAB92;
    else
        goto LAB93;

LAB98:    t34 = *((unsigned int *)t17);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t17) = (t34 | t35);

LAB100:    t11 = (t11 + 1);
    goto LAB101;

LAB99:    goto LAB100;

LAB102:    t13 = (t11 * 8U);
    t4 = (t6 + t13);
    t9 = (t7 + t13);
    t17 = (t137 + t13);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t9);
    t16 = (t14 ^ t15);
    *((unsigned int *)t17) = t16;
    t21 = (t11 * 8U);
    t22 = (t21 + 4U);
    t19 = (t6 + t22);
    t23 = (t21 + 4U);
    t20 = (t7 + t23);
    t24 = (t21 + 4U);
    t28 = (t137 + t24);
    t25 = *((unsigned int *)t19);
    t26 = *((unsigned int *)t20);
    t31 = (t25 | t26);
    *((unsigned int *)t28) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 != 0);
    if (t33 == 1)
        goto LAB98;
    else
        goto LAB99;

LAB104:    *((unsigned int *)t10) = 1;
    goto LAB107;

LAB106:    *((unsigned int *)t10) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB107;

LAB108:    t19 = ((char*)((ng12)));
    goto LAB109;

LAB110:    t20 = ((char*)((ng1)));
    goto LAB111;

LAB112:    xsi_vlog_unsigned_bit_combine(t135, 64, t19, 64, t20, 64);
    goto LAB116;

LAB114:    memcpy(t135, t19, 16);
    goto LAB116;

LAB117:    *((unsigned int *)t10) = 1;
    goto LAB120;

LAB119:    *((unsigned int *)t10) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB120;

LAB121:    t19 = ((char*)((ng12)));
    goto LAB122;

LAB123:    t20 = ((char*)((ng1)));
    goto LAB124;

LAB125:    xsi_vlog_unsigned_bit_combine(t135, 64, t19, 64, t20, 64);
    goto LAB129;

LAB127:    memcpy(t135, t19, 16);
    goto LAB129;

LAB130:    *((unsigned int *)t10) = 1;
    goto LAB133;

LAB132:    *((unsigned int *)t10) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB133;

LAB134:    t19 = ((char*)((ng12)));
    goto LAB135;

LAB136:    t20 = ((char*)((ng1)));
    goto LAB137;

LAB138:    xsi_vlog_unsigned_bit_combine(t135, 64, t19, 64, t20, 64);
    goto LAB142;

LAB140:    memcpy(t135, t19, 16);
    goto LAB142;

}


extern void work_m_00000000000363408141_0886308060_init()
{
	static char *pe[] = {(void *)A15_0};
	xsi_register_didat("work_m_00000000000363408141_0886308060", "isim/_tmp/work/m_00000000000363408141_0886308060.didat");
	xsi_register_executes(pe);
}
