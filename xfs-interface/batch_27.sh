load --os ../spl/spl_proj/s27/os_startup.xsm
load --idle ../expl/samples/s12/idle.xsm
load --init ..expl/samples/s26/login.xsm
load --exhandler ../spl/spl_proj/s21/exhandler.xsm
load --int=console ../spl/spl_proj/s16/console_int.xsm
load --int=disk ../spl/spl_proj/s18/int_2.xsm
load --int=9 ../spl/spl_proj/s19/int_9.xsm
load --int=8 ../spl/spl_proj/s24/fork.xsm
load --int=7 ../spl/spl_proj/s25/int_7.xsm
load --int=6 ../spl/spl_proj/s24/int_6.xsm
load --int=4 ../spl/spl_proj/s23/int_4.xsm
load --int=5 ../spl/spl_proj/s25/int_5.xsm
load --int=10 ../spl/spl_proj/s20/exit.xsm
load --int=11 ../spl/spl_proj/s21/int_11.xsm
load --int=12 ../spl/spl_proj/s26/int_12.xsm
load --int=13 ../spl/spl_proj/s22/int_13.xsm
load --int=14 ../spl/spl_proj/s22/int_14.xsm
load --int=15 ../spl/spl_proj/s26/int_15.xsm
load --int=16 ../spl/spl_proj/s26/int_16.xsm
load --int=17 ../spl/spl_proj/s26/int_17.xsm
load --module 0 ../spl/spl_proj/s24/mod_0.xsm
load --module 1 ../spl/spl_proj/s25/mod_1.xsm
load --module 2 ../spl/spl_proj/s27/mod_2.xsm
load --module 3 ../spl/spl_proj/s25/file_manager.xsm
load --module 4 ../spl/spl_proj/s23/mod_4.xsm
load --module 5 ../spl/spl_proj/s27/scheduler.xsm
load --module 6 ../spl/spl_proj/s27/mod_6.xsm
load --module 7 ../spl/spl_proj/s27/mod_7.xsm
load --int=timer ../spl/spl_proj/s27/timer.xsm
load --shell ../expl/samples/s26/shell.xsm
rm ls.xsm
load --exec ../expl/samples/s25/ls.xsm
rm cat.xsm
load --exec ../expl/samples/s25/cat.xsm
rm rm.xsm
load --exec ../expl/samples/s25/rm.xsm
rm cp.xsm
load --exec ../expl/samples/s25/cp.xsm
rm lu.xsm
load --exec ../expl/samples/s26/lu.xsm
rm ru.xsm
load --exec ../expl/samples/s26/ru.xsm
rm sample.dat
load --data ../expl/samples/sample.dat
rm open.xsm
load --exec ../expl/samples/s24/Assgn1/open.xsm
rm create.xsm
load --exec ../expl/samples/s23/Assgn1/create.xsm
rm delete.xsm
load --exec ../expl/samples/s23/Assgn2/delete.xsm
rm pid.xsm
load --exec ../expl/samples/s21/Assgn2/pid.xsm
rm pgm1.xsm
load --exec ../expl/samples/s27/Assgn/pgm1.xsm
rm pgm2.xsm
load --exec ../expl/samples/s27/Assgn/pgm2.xsm
rm fork4.xsm
load --exec ../expl/samples/s27/Assgn/fork4.xsm
rm assgn2.xsm
load --exec ../expl/samples/s27/Assgn/assgn2.xsm
rm assgn3.xsm
load --exec ../expl/samples/s27/Assgn/assgn3.xsm
rm assgn4.xsm
load --exec ../expl/samples/s27/Assgn/assgn4.xsm
rm merge.xsm
load --exec ../expl/samples/s27/Assgn/merge.xsm
rm m_store.xsm
load --exec ../expl/samples/s27/Assgn/m_store.xsm
rm m_sort.xsm
load --exec ../expl/samples/s27/Assgn/m_sort.xsm
rm m_merge.xsm
load --exec ../expl/samples/s27/Assgn/m_merge.xsm
