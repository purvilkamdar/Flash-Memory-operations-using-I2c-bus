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
    work_m_00000000000481420773_2587408365_init();
    work_m_00000000000065388573_3792588587_init();
    work_m_00000000001807962880_4144471541_init();
    work_m_00000000000883624021_2354236171_init();
    work_m_00000000001202545187_3383072609_init();
    work_m_00000000001025725795_2393349462_init();
    work_m_00000000000534265633_2994484970_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000534265633_2994484970");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
