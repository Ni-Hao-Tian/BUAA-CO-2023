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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003582955190_2018721085_init();
    work_m_00000000002492935138_3224323566_init();
    work_m_00000000004007144133_0112637215_init();
    work_m_00000000000045441436_4144471541_init();
    work_m_00000000004172630715_0757879789_init();
    work_m_00000000000533209821_1621229167_init();
    work_m_00000000000040717078_1785967555_init();
    work_m_00000000003136089978_1579609468_init();
    work_m_00000000001629547617_1907459465_init();
    work_m_00000000001341222917_0886308060_init();
    work_m_00000000002632850114_2137656763_init();
    work_m_00000000002990865019_2924402094_init();
    work_m_00000000004136192952_2181625025_init();
    work_m_00000000003327411692_3877310806_init();
    work_m_00000000002047498008_3671711236_init();


    xsi_register_tops("work_m_00000000002047498008_3671711236");


    return xsi_run_simulation(argc, argv);

}
