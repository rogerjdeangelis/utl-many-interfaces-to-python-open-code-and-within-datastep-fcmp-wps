%let pgm=utl-many-interfaces-to-python-open-code-and-within-datastep-fcmp-wps;

Integrating SAS and frop down to Python inside and outside the SAS datastep

github                                                                                                  
https://tinyurl.com/bdeukwnn                                                                            
https://github.com/rogerjdeangelis/utl-many-interfaces-to-python-open-code-and-within-datastep-fcmp-wps 
                                                                                                        
You may neeed to use the 1980s classic editor for some of these, not tested on the many sas editors..

Drop down macros on end
                  _             _
  ___ ___  _ __ | |_ ___ _ __ | |_ ___
 / __/ _ \| `_ \| __/ _ \ `_ \| __/ __|
| (_| (_) | | | | ||  __/ | | | |_\__ \
 \___\___/|_| |_|\__\___|_| |_|\__|___/

 1. Open code drop down to python (uses wps)
    (comvert lbs to kilograms sashelp.classs)

 2. Open code drop down to python (does not use wps)
    (comvert lbs to kilograms sashelp.classs)

 3. open code drop down to python(use utl_submit_wps54 )
    (comvert lbs to kilograms sashelp.classs)

 4. open code drop down to python(same as 3. utl_submit_py64_310)
    (comvert lbs to kilograms sashelp.classs)

 5. Execute python function inside a datastep
    (comvert lbs to kilograms sashelp.classs. Not as efficient as fcmp YET)

 6. Setup to use fcmp inside a datastep

 7. Execute a function using fcmp & python inside a datastep
    Splits sashelp.class in Male and frmales sas datasets
    see https://www.lexjansen.com/wuss/2022/WUSS-2022-Paper-93.pdf

 8. Execute function inside datastep using dosubl & R to split sashel.class
    Splites sashelp.class in Male and frmales sas datasets

 9. Execute a function using inside datastep dosubl python sql to split sashel.class
    Split sashelp.class in Male and frmales sas datasets

 9. Execute function inside datastep dosubl R to split sashel.class
    Split sashelp.class in Male and frmales sas datasets

 10 Pass python & sas variables to sql inside datastep dosubl python to split sashel.class
    Split sashelp.class in Male and frmales sas datasets

 11 fcmp function inside datastep to validate an email using

 12 Open code email validator drop down python

 13 Open code yaml file to sas dataset using drop down R

 14 fcmp geocoding
    see https://www.lexjansen.com/wuss/2022/WUSS-2022-Paper-93.pdf

 15 open code geocoding mostly using drop down R
    https://tinyurl.com/2p8bdnmx
    https://github.com/rogerjdeangelis?tab=repositories&q=geocode&type=&language=&sort=

 16 Oprn code address stadarization drop down python
                 _     _
 _ __  _ __ ___ | |__ | | ___ _ __ ___
| `_ \| `__/ _ \| `_ \| |/ _ \ `_ ` _ \
| |_) | | | (_) | |_) | |  __/ | | | | |
| .__/|_|  \___/|_.__/|_|\___|_| |_| |_|
|_|


Related

PYTHON

https://github.com/rogerjdeangelis/utl-running-a-python-or-R-function-within-a-datastep
https://github.com/rogerjdeangelis/utl-runing-a-python-function-inside-your-drop-down-to-r
https://github.com/rogerjdeangelis/utl-four-ways-to-drop-down-from-sas-to-python-and-r
https://github.com/rogerjdeangelis/utl-an-alternative-to-saspy-returning-filter-from-python-to-use-in-sas
https://github.com/rogerjdeangelis/utl-four-ways-to-drop-down-from-sas-to-python-and-r

R

https://github.com/rogerjdeangelis/utl-academic-pipes-dosubl-open-defer-and-dropping-dowm-to-multiple-languages-in-one-datastep
https://github.com/rogerjdeangelis/utl-dosubl-more-precise-eight-byte-float-computations-at-macro-excecution-time
https://github.com/rogerjdeangelis/utl-dosubl-persistent-hash-across-datasteps-and-procedures
https://github.com/rogerjdeangelis/utl-error-checking-sql-and-executing-a-datastep-inside-sql-dosubl
https://github.com/rogerjdeangelis/utl-extracting-sas-meta-data-using-sas-macro-fcmp-and-dosubl
https://github.com/rogerjdeangelis/utl-in-memory-hash-output-shared-with-dosubl-hash-subprocess
https://github.com/rogerjdeangelis/utl-let-dosubl-and-the-sas-interpreter-work-for-you
https://github.com/rogerjdeangelis/utl-potentially-useful-dosubl-interface
https://github.com/rogerjdeangelis/utl-sas-array-macro-fcmp-or-dosubl-take-your-choice
https://github.com/rogerjdeangelis/utl-twelve-interfaces-for-dosubl
https://github.com/rogerjdeangelis/utl-using-dosubl-and-a-dynamic-arrays-to-add-new-variables
https://github.com/rogerjdeangelis/utl_dosubl_subroutine_interfaces
https://github.com/rogerjdeangelis/utl_pass_character_and_numeric_arrays_to_dosubl
https://github.com/rogerjdeangelis/utl_sharing_a_block_of_memory_with_dosubl
   Convert student weights from lbs to kilograms using interfaces to pythom

/*                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/

libname sd1 "d:/sd1";

data sd1.have;
  set sashelp.class(keep=name weight obs=5);
run;quit;

/**************************************************************************************************************************/
/*                                                                                                                        */
/*                                                                                                                        */
/*  Up to 40 obs from last table SD1.HAVE total obs=5 23JUN2023:14:39:22                                                  */
/*                                                                                                                        */
/*  Obs     NAME      WEIGHT                                                                                              */
/*                                                                                                                        */
/*   1     Alfred      112.5                                                                                              */
/*   2     Alice        84.0                                                                                              */
/*   3     Barbara      98.0                                                                                              */
/*   4     Carol       102.5                                                                                              */
/*   5     Henry       102.5                                                                                              */
/*                                                                                                                        */
/**************************************************************************************************************************/

Solutions

 _
/ |
| |  OPENN CODE WITH WPS PYTHON utl_submit_wps64x (comvert lbs to kilograms sashelp.classs)
| |
|_|  Open code wps proc python (can act as a function and/or pass a dataset back to sas )


   libname sd1 "d:/sd1";

   data sd1.have;
     set sashelp.class(keep=name weight obs=5);
   run;quit;

   proc datasets lib=sd1 nodetails nolist;
     delete want;
   run;quit;

   %utl_submit_wps64x('

      libname sd1 "d:/sd1";

      proc python;
      export data=sd1.have python=have;
      submit;

        import pyperclip;

        have = have.assign(WEIGHT_KG = lambda x: x["WEIGHT"]/2.2);
        print(have);

        lb2kg="2.2 lbs to 1 kg";
        pyvar=pyperclip.copy(lb2kg);

      endsubmit;
      import data=sd1.want python=have;
      run;quit;

   ',return=pyvar);

   %put &=pyvar;

   proc print data=sd1.want width=min;
   run;quit;

/**************************************************************************************************************************/
/*                                                                                                                        */
/*    WITHIN  WPS                              IMPORTED TO SAS                     RETURNED MACRO VARIABLE                */
/*                                                                                                                        */
/*                                    Up to 40 obs from SD1.WANT total obs=5       &put &=pyvar;                          */
/* The WPS System                                                 WEIGHT_                                                 */
/*                                    Obs     NAME      WEIGHT       KG            PYVAR = 2.2 lbs to 1 kg                */
/*        NAME  WEIGHT  WEIGHT_KG                                                                                         */
/* 0  Alfred     112.5  51.136364      1     Alfred      112.5    51.1364                                                 */
/* 1  Alice       84.0  38.181818      2     Alice        84.0    38.1818                                                 */
/* 2  Barbara     98.0  44.545455      3     Barbara      98.0    44.5455                                                 */
/* 3  Carol      102.5  46.590909      4     Carol       102.5    46.5909                                                 */
/* 4  Henry      102.5  46.590909      5     Henry       102.5    46.5909                                                 */
/*                                                                                                                        */
/**************************************************************************************************************************/

 ____
|___ \
  __) |  OPEN CODE WITHOUT WPS. Uses  utl_submit_py64_310x
 / __/
|_____|  Open code python WITHOUT WPS (can act as a function and/or pass a dataset back to sas )


   libname sd1 "d:/sd1";

   data sd1.have;
     set sashelp.class(keep=name weight obs=5);
   run;quit;

   proc datasets lib=work kill nodetails nolist;
   run;quit;

   %utlfkil(d:/xpt/want.xpt);

   %symdel pyvar / nowarn;

   %utl_submit_py64_310x('

      import pyreadstat;
      import pyperclip;

      have, meta = pyreadstat.read_sas7bdat("d:\\sd1\\have.sas7bdat");
      print(have);

      lb2kg="2.2 lbs to 1 kg";
      pyvar=pyperclip.copy(lb2kg);

      have = have.assign(WEIGHT_KG = lambda x: x["WEIGHT"]/2.2);

      pyreadstat.write_xport(have,"d:\\xpt\\want.xpt",table_name="want",file_format_version=5
      ,column_labels=["NAME", "WEIGHT", "WEIGHT_KG"]);

   ',return=pyvar);

   %put &=pyvar;

   /*--- handles long variable names by using the label to rename the variables  ----*/

   libname xpt xport "d:/xpt/want.xpt";
   proc contents data=xpt._all_;
   run;quit;

   data want_py_long_names;
     %utl_rens(xpt.want) ;
     set want;
   run;quit;
   libname xpt clear;

   proc print data=want_py_long_names ;
   run;quit;

/**************************************************************************************************************************/
/*                                                                                                                        */
/*           IMPORTED TO SAS                     RETURNED MACRO VARIABLE                                                  */
/*                                                                                                                        */
/*  Up to 40 obs from SD1.WANT total obs=5       &put &=pyvar;                                                            */
/*                              WEIGHT_                                                                                   */
/*  Obs     NAME      WEIGHT       KG            PYVAR = 2.2 lbs to 1 kg                                                  */
/*                                                                                                                        */
/*   1     Alfred      112.5    51.1364                                                                                   */
/*   2     Alice        84.0    38.1818                                                                                   */
/*   3     Barbara      98.0    44.5455                                                                                   */
/*   4     Carol       102.5    46.5909                                                                                   */
/*   5     Henry       102.5    46.5909                                                                                   */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*____
|___ /
  |_ \   REQUIRES WPS utl_wpsbeginx
 ___) |
|____/   open code wps parmcards (helps with quoting)  utl_wpsbeginx

*/

libname sd1 "d:/sd1";

data sd1.have;
  set sashelp.class(keep=name weight obs=5);
run;quit;

%utlfkil(d:/xpt/want.xpt);

%symdel pyvar / nowarn;

/*----  do not indent                                                    ----*/

%utl_wpsbeginx;
parmcards4;

libname sd1 "d:/sd1";
proc python;
export data=sd1.have python=have;
submit;
import pyperclip;

have = have.assign(WEIGHT_KG = lambda x: x["WEIGHT"]/2.2);

lb2kg="2.2 lbs to 1 kg";
pyvar=pyperclip.copy(lb2kg);
print(have);

endsubmit;
import data=sd1.want python=have;
run;quit;
;;;;

%utl_wpsendx(return=pyvar);

%put &=pyvar;

proc print data=sd1.want;
run;quit;

/**************************************************************************************************************************/
/*                                                                                                                        */
/*           IMPORTED TO SAS                     RETURNED MACRO VARIABLE                                                  */
/*                                                                                                                        */
/*  Up to 40 obs from SD1.WANT total obs=5       &put &=pyvar;                                                            */
/*                              WEIGHT_                                                                                   */
/*  Obs     NAME      WEIGHT       KG            PYVAR = 2.2 lbs to 1 kg                                                  */
/*                                                                                                                        */
/*   1     Alfred      112.5    51.1364                                                                                   */
/*   2     Alice        84.0    38.1818                                                                                   */
/*   3     Barbara      98.0    44.5455                                                                                   */
/*   4     Carol       102.5    46.5909                                                                                   */
/*   5     Henry       102.5    46.5909                                                                                   */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*  _
| || |    DOES NOT REQUIRE WPS. USES PYTHON utl_pybegin utl_pyend
| || |_
|__   _|
   |_|    open code python parmcards (helps with quoting)  utl_pybeginx

*/

libname sd1 "d:/sd1";

data sd1.have;
  set sashelp.class(keep=name weight obs=5);
run;quit;

proc datasets lib=work kill nodetails nolist;
run;quit;

/*----  do not indent                                                    ----*/

%utlfkil(d:/xpt/want.xpt);

%symdel pyvar / nowarn;

%utl_pybeginx;
parmcards4;
import pyreadstat;
import pyperclip;
have, meta = pyreadstat.read_sas7bdat("d:\\sd1\\have.sas7bdat");
have = have.assign(WEIGHT_KG = lambda x: x["WEIGHT"]/2.2);
lb2kg="2.2 lbs to 1 kg";
pyvar=pyperclip.copy(lb2kg);
print(have);
pyreadstat.write_xport(have,"d:\\xpt\\want.xpt",table_name="want",file_format_version=5
,column_labels=["NAME", "WEIGHT", "WEIGHT_KG"]);
;;;;
%utl_pyendx(return=pyvar);

/*--- handles long variable names by using the label to rename the variables  ----*/
libname xpt xport "d:/xpt/want.xpt";

proc contents data=xpt._all_;
run;quit;

data want_py_long_names;
  %utl_rens(xpt.want) ;
  set want;
run;quit;
libname xpt clear;

%put &=pyvar;

proc print data=want_py_long_names;
run;quit;

/**************************************************************************************************************************/
/*                                                                                                                        */
/*           IMPORTED TO SAS                     RETURNED MACRO VARIABLE                                                  */
/*                                                                                                                        */
/*  Up to 40 obs from SD1.WANT total obs=5       &put &=pyvar;                                                            */
/*                              WEIGHT_                                                                                   */
/*  Obs     NAME      WEIGHT       KG            PYVAR = 2.2 lbs to 1 kg                                                  */
/*                                                                                                                        */
/*   1     Alfred      112.5    51.1364                                                                                   */
/*   2     Alice        84.0    38.1818                                                                                   */
/*   3     Barbara      98.0    44.5455                                                                                   */
/*   4     Carol       102.5    46.5909                                                                                   */
/*   5     Henry       102.5    46.5909                                                                                   */
/*                                                                                                                        */
/**************************************************************************************************************************/


/*___
| ___|   EXECUTE A PYTHON FUNCTION INSIDE A DATASTEP WIHOUT PUBLISHING THE FUNCTION UTL_SUBMIT_WPS64
|___ \
 ___) |  MOST DIFFICULT method for moderaly long python scripts
|____/   Although this requires WPS you can use utl_submit_py64-310x or utl_submit_r64x

*/

libname sd1 "d:/sd1";

data sd1.have;
  set sashelp.class(keep=name weight obs=5);
run;quit;

proc datasets lib=work kill nodetails nolist;
run;quit;

  proc datasets lib=work nodetails nolist kill;
  run;quit;

 %symdel WEIGHT_KG / nowarn;

 data want_py_cats;

   length cmd $2096;

   set sd1.have;

   cmd=compbl(
    cats(
     '%utl_submit_wps64x('
        ,"'"
        ,'libname sd1 "d:/sd1";'
        ,'proc python;export data=sd1.have python=have;submit;'
        ,'import pyperclip;WEIGHT_KG ='
        ,WEIGHT
        ,'*0.454545;pyperclip.copy(WEIGHT_KG);endsubmit;'
        ,"'"
        ,',return=WEIGHT_KGC);'));

    put cmd=;

    rc=dosubl(cmd);

    WEIGHT_KG = input(symget('WEIGHT_KGC'),best.);

    keep name weight WEIGHT_KG;

run;quit;

/**************************************************************************************************************************/
/*                                                                                                                        */
/* Up to 40 obs from WANT_PY_CATS total obs=5 01JUL2023:11:36:09                                                          */
/*                                                                                                                        */
/*                             WEIGHT_                                                                                    */
/* Obs     NAME      WEIGHT       KG                                                                                      */
/*                                                                                                                        */
/*  1     Alfred      112.5    51.1363                                                                                    */
/*  2     Alice        84.0    38.1818                                                                                    */
/*  3     Barbara      98.0    44.5454                                                                                    */
/*  4     Carol       102.5    46.5909                                                                                    */
/*  5     Henry       102.5    46.5909                                                                                    */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*__              _                  __               __
 / /_    ___  ___| |_ _   _ _ __    / _| ___  _ __   / _| ___ _ __ ___  _ __
| `_ \  / __|/ _ \ __| | | | `_ \  | |_ / _ \| `__| | |_ / __| `_ ` _ \| `_ \
| (_) | \__ \  __/ |_| |_| | |_) | |  _| (_) | |    |  _| (__| | | | | | |_) |
 \___/  |___/\___|\__|\__,_| .__/  |_|  \___/|_|    |_|  \___|_| |_| |_| .__/
                           |_|                                         |_|
*/


Go to settings>about>advanced system settings>envionment variables>new system variables

ENTER Variable name

   MAS_M2PATH

ENTER Variable value

   C:\Program Files\SASHome\SASFoundation\9.4\tkmas\sasmisc\mas2py.py

Do the same for MAS_PYPATH

I rebooted which should not be needed. (leave SAS and set path=C in new command widow did not work for me)

MAS_M2PATH "C:\Program Files\SASHome\SASFoundation\9.4\tkmas\sasmisc\mas2py.py"';
MAS_PYPATH "D:\python310\python.exe"';

/*____
|___  |  Executing a published python function inside a datastep using fcmo
   / /   Much faster than re-initiating python
  / /
 /_/
*/

proc fcmp outlib=work.funcs.python;

 function data_driven_hello_from_python(weight $) $ 25;
 length Message $ 25;
 declare object py(python);
 submit into py;
 def data_driven_hello(weight):
 """Output: hello_return_value"""
 weight = str(float(weight)/2.2);
 return f'{weight}'
 endsubmit;

 rc = py.publish();
 rc = py.call('data_driven_hello', weight);
 Message = py.results['hello_return_value'];
 return(Message);
 endfunc;
run;

data want_fcmp;
 set sashelp.class(rename=weight=weight_lb obs=5);
 weight=put(weight_lb,best.);
 weight_kg = input(data_driven_hello_from_python(weight),5.1);
run;

proc print data=want_fcmp(drop=sex age height);
 format weight_kg 5.1;
 var name weight_lb weight_kg;
run;

/**************************************************************************************************************************/
/*                                                                                                                        */
/*                    WEIGHT_    WEIGHT_                                                                                  */
/*  Obs     NAME        LB         KG                                                                                     */
/*                                                                                                                        */
/*   1     Alfred      112.5       51.1                                                                                   */
/*   2     Alice        84.0       38.2                                                                                   */
/*   3     Barbara      98.0       44.5                                                                                   */
/*   4     Carol       102.5       46.6                                                                                   */
/*   5     Henry       102.5       46.6                                                                                   */
/*                                                                                                                        */
/**************************************************************************************************************************/


/*___
 ( _ )   Uses dosubl, wps, r and sqldf with three level quotes
 / _ \
| (_) |  can subsitute utl_submit_py64_310x or utl_submit_r64 for utl_submit_wps64
 \___/

PROBLEM SPLIT SASHELP.CLASS in M and F datasets

/*                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/

data sd1.have;
 set sashelp.class(keep=name sex weight);
run;quit;


proc datasets lib=sd1 nodetails nolist;
 delete f m;
run;quit;

%symdel sex / nowarn;

data log;

 do sex='F','M' ;

  call symputx('sex'   ,sex);

  rc=dosubl('
    %utl_submit_wps64x("
        libname sd1 `d:\sd1`;
        proc r;
        export data=sd1.have r=have ;
        submit;
        library(sqldf);
        PYVAR <- `&SEX`;
        SEXQ  <- sQuote(PYVAR);
        print(PYVAR2);
        want<-sqldf(paste(`select NAME ,SEX, WEIGHT from have where SEX=`,SEXQ));
        want;
        endsubmit;
        import data=sd1.&sex r=want;
        ");
        %let status=&syserr;
   ');

  if symgetn('status')=0 then status="SQL SUCESSFUL";
  else                        status="SQL FAILED";
  output;

 end;
 stop;

run;quit;

/**************************************************************************************************************************/
/*                                                                                                                        */
/*  SD1.F total obs=9                       SD1.M total obs=10                                                            */
/*  Obs    NAME       SEX    WEIGHT         Obs    NAME       SEX    WEIGHT                                               */
/*                                                                                                                        */
/*   1     Alice       F       84.0           1    Alfred      M      112.5                                               */
/*   2     Barbara     F       98.0           2    Henry       M      102.5                                               */
/*   3     Carol       F      102.5           3    James       M       83.0                                               */
/*   4     Jane        F       84.5           4    Jeffrey     M       84.0                                               */
/*   5     Janet       F      112.5           5    John        M       99.5                                               */
/*   6     Joyce       F       50.5           6    Philip      M      150.0                                               */
/*   7     Judy        F       90.0           7    Robert      M      128.0                                               */
/*   8     Louise      F       77.0           8    Ronald      M      133.0                                               */
/*   9     Mary        F      112.0           9    Thomas      M       85.0                                               */
/*                                           10    William     M      112.0                                               */
/**************************************************************************************************************************/

/*___
 / _ \   Uses dosubl, wps, Python and sqldf with three level quotes
| (_) |
 \__, |  can subsitute utl_submit_py64_310x or utl_submit_r64 for utl_submit_wps64
   /_/

*/

libname sd1 "d:/sd1";

data sd1.have;
 set sashelp.class(keep=name sex weight);
run;quit;

proc datasets lib=sd1 nodetails nolist;
  delete f m;
 run;quit;

 %symdel sex / nowarn;

 data log;

 do sex='F','M' ;

   call symputx('sex'   ,sex);

  rc=dosubl('
     %utl_submit_wps64x("
       libname sd1 `d:\sd1`;
       proc python;
         export data=sd1.have python=have;
         submit;
         from os import path;
         import pandas as pd;
         import numpy as np;
         import pandas as pd;
         from pandasql import sqldf;
         mysql = lambda q: sqldf(q, globals());
         from pandasql import PandaSQL;
         pdsql = PandaSQL(persist=True);
         sqlite3conn = next(pdsql.conn.gen).connection.connection;
         sqlite3conn.enable_load_extension(True);
         sqlite3conn.load_extension(`c:/temp/libsqlitefunctions.dll`);
         mysql = lambda q: sqldf(q, globals());
         out = pdsql(```
               select
                   `Mrs Bloom` as HOMEROOM
                   ,*
               from
                    have
               where
                    sex          = `&sex`
               ```);
         print(out);
         endsubmit;
         import data=sd1.&sex python=out;
     ");
      %let status=&syserr;
    ');

  if symgetn('status')=0 then status="SQL SUCESSFUL";
  else                        status="SQL FAILED   ";

end;

run;quit;

/*           _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| `_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
*/

/**************************************************************************************************************************/
/*                                                                                                                        */
/* SD1.F total obs=9                                SD1.M total obs=10                                                    */
/*                                                                                                                        */
/* Obs    HOMEROOM     NAME       SEX    WEIGHT     Obs    HOMEROOM     NAME       SEX    WEIGHT                          */
/*                                                                                                                        */
/*  1     Mrs Bloom    Alice       F       84.0       1    Mrs Bloom    Alfred      M      112.5                          */
/*  2     Mrs Bloom    Barbara     F       98.0       2    Mrs Bloom    Henry       M      102.5                          */
/*  3     Mrs Bloom    Carol       F      102.5       3    Mrs Bloom    James       M       83.0                          */
/*  4     Mrs Bloom    Jane        F       84.5       4    Mrs Bloom    Jeffrey     M       84.0                          */
/*  5     Mrs Bloom    Janet       F      112.5       5    Mrs Bloom    John        M       99.5                          */
/*  6     Mrs Bloom    Joyce       F       50.5       6    Mrs Bloom    Philip      M      150.0                          */
/*  7     Mrs Bloom    Judy        F       90.0       7    Mrs Bloom    Robert      M      128.0                          */
/*  8     Mrs Bloom    Louise      F       77.0       8    Mrs Bloom    Ronald      M      133.0                          */
/*                                                    9    Mrs Bloom    Thomas      M       85.0                          */
/**************************************************************************************************************************/


/*  ___                                      _   _                                         ____              _
/ |/ _ \   _ __   __ _ ___ ___   _ __  _   _| |_| |__   ___  _ __   __   ____ _ _ __ ___  |___ \   ___  __ _| |
| | | | | | `_ \ / _` / __/ __| | `_ \| | | | __| `_ \ / _ \| `_ \  \ \ / / _` | `__/ __|   __) | / __|/ _` | |
| | |_| | | |_) | (_| \__ \__ \ | |_) | |_| | |_| | | | (_) | | | |  \ V / (_| | |  \__ \  / __/  \__ \ (_| | |
|_|\___/  | .__/ \__,_|___/___/ | .__/ \__, |\__|_| |_|\___/|_| |_|   \_/ \__,_|_|  |___/ |_____| |___/\__, |_|
          |_|                   |_|    |___/                                                              |_|
*/

 proc datasets lib=sd1 nodetails nolist;
  delete f m;
 run;quit;

 %symdel course sex status / nowarn;

 data log;

  do sex = 'F', 'M';

   call symputx('sex'   ,sex);

   rc=dosubl('
     %utl_submit_wps64x("
       libname sd1 `d:\sd1`;
       proc python;
         export data=sd1.have python=have;
         submit;
         from os import path;
         import pandas as pd;
         import numpy as np;
         import pandas as pd;
         from pandasql import sqldf;
         mysql = lambda q: sqldf(q, globals());
         from pandasql import PandaSQL;
         pdsql = PandaSQL(persist=True);
         sqlite3conn = next(pdsql.conn.gen).connection.connection;
         sqlite3conn.enable_load_extension(True);
         sqlite3conn.load_extension(`c:/temp/libsqlitefunctions.dll`);
         mysql = lambda q: sqldf(q, globals());
         sexval    = `&sex`;
         q = ```
               select
                    *
               from
                    have
               where
                    sex = ``` + repr(sexval) ;
         while `  ` in q: q = q.replace(`  `, ` `);
         print(q);
         out = pdsql(q);
         print(out);
         endsubmit;
         import data=sd1.&sex python=out;
     ");
      %let status=&syserr;
    ');

  if symgetn('status')=0 then status="SQL SUCESSFUL";
  else                        status="SQL FAILED   ";

end;

run;quit;


/**************************************************************************************************************************/
/*                                                                                                                        */
/* SD1.F total obs=9                                SD1.M total obs=10                                                    */
/*                                                                                                                        */
/* Obs    HOMEROOM     NAME       SEX    WEIGHT     Obs    HOMEROOM     NAME       SEX    WEIGHT                          */
/*                                                                                                                        */
/*  1     Mrs Bloom    Alice       F       84.0       1    Mrs Bloom    Alfred      M      112.5                          */
/*  2     Mrs Bloom    Barbara     F       98.0       2    Mrs Bloom    Henry       M      102.5                          */
/*  3     Mrs Bloom    Carol       F      102.5       3    Mrs Bloom    James       M       83.0                          */
/*  4     Mrs Bloom    Jane        F       84.5       4    Mrs Bloom    Jeffrey     M       84.0                          */
/*  5     Mrs Bloom    Janet       F      112.5       5    Mrs Bloom    John        M       99.5                          */
/*  6     Mrs Bloom    Joyce       F       50.5       6    Mrs Bloom    Philip      M      150.0                          */
/*  7     Mrs Bloom    Judy        F       90.0       7    Mrs Bloom    Robert      M      128.0                          */
/*  8     Mrs Bloom    Louise      F       77.0       8    Mrs Bloom    Ronald      M      133.0                          */
/*                                                    9    Mrs Bloom    Thomas      M       85.0                          */
/**************************************************************************************************************************/

/* _    __                                             _ _              _ _     _
/ / |  / _| ___ _ __ ___  _ __     ___ _ __ ___   __ _(_) | __   ____ _(_) | __| |
| | | | |_ / __| `_ ` _ \| `_ \   / _ \ `_ ` _ \ / _` | | | \ \ / / _` | | |/ _` |
| | | |  _| (__| | | | | | |_) | |  __/ | | | | | (_| | | |  \ V / (_| | | | (_| |
|_|_| |_|  \___|_| |_| |_| .__/   \___|_| |_| |_|\__,_|_|_|   \_/ \__,_|_|_|\__,_|
                         |_|
 _                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/

/*----  https://www.lexjansen.com/wuss/2022/WUSS-2022-Paper-93.pdf       ----*/

data sd1.have;
   informat id 4. primary_email $55.;
   input id primary_email;
cards4;
13 offjcx@zimmontxvvorj.com
83 zdmjn@lzmbo.vchool
88 johnmuvtxr@mxntorjngzczdxmy.org
144 unibibliczm@@gmzil@com
156 jnfo@crxvtmontvchool.org
230 @vcbcfzm10@gmzil
294 znnxttx.rjggjo@vrbburbznkvchool..com
331 nzjzhlowxvjvtzmzrvchool.org
357 dzrryl.vollxrh@trxxzczdxmy.org
413 bmuth@mypzz.nxt
458 ktowlx@fzjrmontprjvztxvchool.com
463 @gmzjl.com
660 zdmjvvjonv@vtznzzzczdxmy.org
691 gjrlvjnfo@yulz.org
;;;;
run;quit;

/**************************************************************************************************************************/
/*                                                           |                                                            */
/* WORK.WANT total obs=14 27JUN2023:07:55:03                 | RULES  (EXAMPLES)                                          */
/*                                                           |                                                            */
/*   ID    PRIMARY_EMAIL                           EMAIL     |                            PROBLEM                         */
/*                                                           |                                                            */
/*   13    offjcx@zimmontxvvorj.com                OK        |                                                            */
/*   83    zdmjn@lzmbo.vchool                      OK        |                                                            */
/*   88    johnmuvtxr@mxntorjngzczdxmy.org         OK        |                                                            */
/*  144    unibibliczm@@gmzil@com                  PROBLEM   |   unibibliczm@@gmzil@com    @@                             */
/*  156    jnfo@crxvtmontvchool.org                OK        |                                                            */
/*  230    @vcbcfzm10@gmzil                        PROBLEM   |   @vcbcfzm10@gmzil          leading @                      */
/*  294    znnxttx.rjggjo@vrbburbznkvchool..com    PROBLEM   |                                                            */
/*  331    nzjzhlowxvjvtzmzrvchool.org             PROBLEM   |                                                            */
/*  357    dzrryl.vollxrh@trxxzczdxmy.org          OK        |                                                            */
/*  413    bmuth@mypzz.nxt                         OK        |                                                            */
/*  458    ktowlx@fzjrmontprjvztxvchool.com        OK        |                                                            */
/*  463    @gmzjl.com                              PROBLEM   |                                                            */
/*  660    zdmjvvjonv@vtznzzzczdxmy.org            OK        |                                                            */
/*  691    gjrlvjnfo@yulz.org                      OK        |                                                            */
/*                                                           |                                                            */
/**************************************************************************************************************************/

proc datasets lib=work nodetails nolist;
 delete want;
run;quit;

proc fcmp outlib=work.funcs.python;
    function get_normalized_email(email $) $ 100;
        length normalized_email $ 100 Exception_Encountered $ 500;
        declare object py(python);
        submit into py;
            def normalize_email(e):
                """Output: normalize_email_return_value, exception"""
                from email_validator import (
                validate_email, EmailNotValidError
                )
                try:
                    normalized_email = validate_email(
                        e, check_deliverability=False
                    )
                    return normalized_email.email, ' '
                except EmailNotValidError:
                    return ' ', repr(e)
             endsubmit;

             rc = py.publish();
             rc = py.call('normalize_email', email);
             Exception_Encountered = py.results['exception'];

             if not missing(Exception_Encountered) then
                 put Exception_Encountered=;

             normalized_email = py.results['normalize_email_return_value'];
             return(normalized_email);
    endfunc;
run;

data want;
 retain  id;
 set sd1.have;
 email = get_normalized_email(primary_email);
 if  primary_email eq email then email="OK     ";
 else                            email="PROBLEM";
run;quit;


/*           _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| `_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
*/
/**************************************************************************************************************************/
/*                                                                                                                        */
/* WORK.WANT total obs=14 27JUN2023:07:55:03                                                                              */
/*                                                                                                                        */
/*   ID    PRIMARY_EMAIL                           EMAIL                                                                  */
/*                                                                                                                        */
/*   13    offjcx@zimmontxvvorj.com                OK                                                                     */
/*   83    zdmjn@lzmbo.vchool                      OK                                                                     */
/*   88    johnmuvtxr@mxntorjngzczdxmy.org         OK                                                                     */
/*  144    unibibliczm@@gmzil@com                  PROBLEM                                                                */
/*  156    jnfo@crxvtmontvchool.org                OK                                                                     */
/*  230    @vcbcfzm10@gmzil                        PROBLEM                                                                */
/*  294    znnxttx.rjggjo@vrbburbznkvchool..com    PROBLEM                                                                */
/*  331    nzjzhlowxvjvtzmzrvchool.org             PROBLEM                                                                */
/*  357    dzrryl.vollxrh@trxxzczdxmy.org          OK                                                                     */
/*  413    bmuth@mypzz.nxt                         OK                                                                     */
/*  458    ktowlx@fzjrmontprjvztxvchool.com        OK                                                                     */
/*  463    @gmzjl.com                              PROBLEM                                                                */
/*  660    zdmjvvjonv@vtznzzzczdxmy.org            OK                                                                     */
/*  691    gjrlvjnfo@yulz.org                      OK                                                                     */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*
 _ ____                                           _                            _ _              _ _     _
/ |___ \    ___  _ __   ___ _ __     ___ ___   __| | ___   ___ _ __ ___   __ _(_) | __   ____ _| (_) __| |
| | __) |  / _ \| `_ \ / _ \ `_ \   / __/ _ \ / _` |/ _ \ / _ \ `_ ` _ \ / _` | | | \ \ / / _` | | |/ _` |
| |/ __/  | (_) | |_) |  __/ | | | | (_| (_) | (_| |  __/|  __/ | | | | | (_| | | |  \ V / (_| | | | (_| |
|_|_____|  \___/| .__/ \___|_| |_|  \___\___/ \__,_|\___| \___|_| |_| |_|\__,_|_|_|   \_/ \__,_|_|_|\__,_|
                |_|
*/

proc datasets lib=work nodetails nolist;
 delete want;
run;quit;

/*----  SAME AS FCMP OUTPUT                                              ----*/

%utl_submit_wps64x('
libname sd1 "d:/sd1";
proc python;
export data=sd1.have python=have;
submit;
import pandas as pd;
from validate_email import validate_email;
have["PRIMARY_EMAIL"]=have["PRIMARY_EMAIL"].str.strip();
have["VALID_EMAIL"] = have["PRIMARY_EMAIL"].apply(lambda x:validate_email(x));
endsubmit;
import python=have data=sd1.want_py;
run;quit;
');

data want;
 retain  id;
 set sd1.want_py;
 if  valid_email eq 1 then email="OK     ";
 else                      email="PROBLEM";
run;quit;


/**************************************************************************************************************************/
/*                                                                                                                        */
/*  Up to 40 obs from WANT total obs=14 27JUN2023:08:18:42                                                                */
/*                                                                                                                        */
/*  Obs     ID    PRIMARY_EMAIL                           EMAIL                                                           */
/*                                                                                                                        */
/*    1     13    offjcx@zimmontxvvorj.com                OK                                                              */
/*    2     83    zdmjn@lzmbo.vchool                      OK                                                              */
/*    3     88    johnmuvtxr@mxntorjngzczdxmy.org         OK                                                              */
/*    4    144    unibibliczm@@gmzil@com                  PROBLEM                                                         */
/*    5    156    jnfo@crxvtmontvchool.org                OK                                                              */
/*    6    230    @vcbcfzm10@gmzil                        PROBLEM                                                         */
/*    7    294    znnxttx.rjggjo@vrbburbznkvchool..com    PROBLEM                                                         */
/*    8    331    nzjzhlowxvjvtzmzrvchool.org             PROBLEM                                                         */
/*    9    357    dzrryl.vollxrh@trxxzczdxmy.org          OK                                                              */
/*   10    413    bmuth@mypzz.nxt                         OK                                                              */
/*   11    458    ktowlx@fzjrmontprjvztxvchool.com        OK                                                              */
/*   12    463    @gmzjl.com                              PROBLEM                                                         */
/*   13    660    zdmjvvjonv@vtznzzzczdxmy.org            OK                                                              */
/*                                                                                                                        */
/**************************************************************************************************************************/


/* _____                                          _                        _   _                              _       _                 _
/ |___ /    ___  _ __   ___ _ __     ___ ___   __| | ___   _   _ _ __ ___ | | | |_ ___    ___  __ _ ___    __| | __ _| |_ __ _ ___  ___| |_
| | |_ \   / _ \| `_ \ / _ \ `_ \   / __/ _ \ / _` |/ _ \ | | | | `_ ` _ \| | | __/ _ \  / __|/ _` / __|  / _` |/ _` | __/ _` / __|/ _ \ __|
| |___) | | (_) | |_) |  __/ | | | | (_| (_) | (_| |  __/ | |_| | | | | | | | | || (_) | \__ \ (_| \__ \ | (_| | (_| | || (_| \__ \  __/ |_
|_|____/   \___/| .__/ \___|_| |_|  \___\___/ \__,_|\___|  \__, |_| |_| |_|_|  \__\___/  |___/\__,_|___/  \__,_|\__,_|\__\__,_|___/\___|\__|
                |_|                                        |___/
*/


filename ft15f001 "d:/yml/simple.yml";
parmcards4;
apples: 20
mangoes: 2
bananas: 3
grapes: 100
pineapples: 1
;;;;
run;quit;

/**************************************************************************************************************************/
/*                                                                                                                        */
/*  d:/yml/simple.yml;                                                                                                    */
/*                                                                                                                        */
/*   apples: 20                                                                                                           */
/*   mangoes: 2                                                                                                           */
/*   bananas: 3                                                                                                           */
/*   grapes: 100                                                                                                          */
/*   pineapples: 1                                                                                                        */
/*                                                                                                                        */
/**************************************************************************************************************************/

%utl_submit_wps64('
libname sd1 "d:/sd1";
proc r;
submit;
library(yaml);
want <- as.data.frame(yaml::yaml.load_file("d:/yml/simple.yml"));
str(want);
print(want);
endsubmit;
import data=sd1.simple_yaml r=want;
run;quit;
');

libname sd1 "d:/sd1";
proc print data=sd1.simple_yaml;
run;quit;
/*           _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| `_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
*/
/**************************************************************************************************************************/
/*                                              |                                                                         */
/*  The WPS Proc R System                       |  SAS Datset                                                             */
/*                                              |                                                                         */
/*   data.frame  obs. of 5 variables:           |  SD1.SIMPLE_YAML total obs=1 27JUN2023:11:38:58                         */
/*                                              |                                                                         */
/*   $ apples    : int 20                       |  Obs    APPLES    MANGOES    BANANAS    GRAPES    PINEAPPLES            */
/*   $ mangoes   : int 2                        |                                                                         */
/*   $ bananas   : int 3                        |   1       20         2          3         100          1                */
/*   $ grapes    : int 100                      |                                                                         */
/*   $ pineapples: int 1                        |                                                                         */
/*                                              |                                                                         */
/*    apples mangoes bananas grapes pineapples  |                                                                         */
/*  1     20       2       3    100          1  |                                                                         */
/*                                              |                                                                         */
/**************************************************************************************************************************/

/* _  _      __                                                       _ _
/ | || |    / _| ___ _ __ ___  _ __     __ _  ___  ___   ___ ___   __| (_)_ __   __ _
| | || |_  | |_ / __| `_ ` _ \| `_ \   / _` |/ _ \/ _ \ / __/ _ \ / _` | | `_ \ / _` |
| |__   _| |  _| (__| | | | | | |_) | | (_| |  __/ (_) | (_| (_) | (_| | | | | | (_| |
|_|  |_|   |_|  \___|_| |_| |_| .__/   \__, |\___|\___/ \___\___/ \__,_|_|_| |_|\__, |
                              |_|      |___/                                    |___/

 see https://www.lexjansen.com/wuss/2022/WUSS-2022-Paper-93.pdf
*/
                                                                                              _ _
/* ____                                   _               __    __ _  ___  ___   ___ ___   __| (_)_ __   __ _
/ | ___|    _____  ____ _ _ __ ___  _ __ | | ___    ___  / _|  / _` |/ _ \/ _ \ / __/ _ \ / _` | | `_ \ / _` |
| |___ \   / _ \ \/ / _` | `_ ` _ \| `_ \| |/ _ \  / _ \| |_  | (_| |  __/ (_) | (_| (_) | (_| | | | | | (_| |
| |___) | |  __/>  < (_| | | | | | | |_) | |  __/ | (_) |  _|  \__, |\___|\___/ \___\___/ \__,_|_|_| |_|\__, |
|_|____/   \___/_/\_\__,_|_| |_| |_| .__/|_|\___|  \___/|_|    |___/                                    |___/
                                   |_|

 https://tinyurl.com/2p8bdnmx
 https://github.com/rogerjdeangelis?tab=repositories&q=geocode&type=&language=&sort=
*/

/*  __              _     _                         _            _            _          _   _
/ |/ /_    __ _  __| | __| |_ __ ___  ___ ___   ___| |_ __ _  __| | __ _ _ __(_)______ _| |_(_) ___  _ __
| | `_ \  / _` |/ _` |/ _` | `__/ _ \/ __/ __| / __| __/ _` |/ _` |/ _` | `__| |_  / _` | __| |/ _ \| `_ \
| | (_) || (_| | (_| | (_| | | |  __/\__ \__ \ \__ \ || (_| | (_| | (_| | |  | |/ / (_| | |_| | (_) | | | |
|_|\___/  \__,_|\__,_|\__,_|_|  \___||___/___/ |___/\__\__,_|\__,_|\__,_|_|  |_/___\__,_|\__|_|\___/|_| |_|
*/

 https://tinyurl.com/2rhreped
 https://github.com/rogerjdeangelis/utl_US_address-standardization

/*
 _ __ ___   __ _  ___ _ __ ___  ___
| `_ ` _ \ / _` |/ __| `__/ _ \/ __|
| | | | | | (_| | (__| | | (_) \__ \
|_| |_| |_|\__,_|\___|_|  \___/|___/

*/

/*     _   _             _               _ _                   __   _  _     _____ _  ___
 _   _| |_| |  ___ _   _| |__  _ __ ___ (_) |_    _ __  _   _ / /_ | || |   |___ // |/ _ \__  __
| | | | __| | / __| | | | `_ \| `_ ` _ \| | __|  | `_ \| | | | `_ \| || |_    |_ \| | | | \ \/ /
| |_| | |_| | \__ \ |_| | |_) | | | | | | | |_   | |_) | |_| | (_) |__   _|  ___) | | |_| |>  <
 \__,_|\__|_|_|___/\__,_|_.__/|_| |_| |_|_|\__|__| .__/ \__, |\___/   |_|  _|____/|_|\___//_/\_\
           |___|                             |___|_|    |___/             |__|

*/
filename ft15f001 "c:/oto/utl_submit_py64_310x.sas";
parmcards4;
%macro utl_submit_py64_310x(                                                                                                                                  
      pgm                                                                                                                                                     
     ,return=  /* name for the macro variable from Python */                                                                                                  
     )/des="Semi colon separated set of python commands - drop down to python";                                                                               
  * delete temporary files;                                                                                                                                   
  %utlfkil(%sysfunc(pathname(work))/py_pgm.py);                                                                                                               
  %utlfkil(%sysfunc(pathname(work))/stderr.txt);                                                                                                              
  %utlfkil(%sysfunc(pathname(work))/stdout.txt);                                                                                                              
  filename py_pgm "%sysfunc(pathname(work))/py_pgm.py" lrecl=32766 recfm=v;                                                                                   
                                                                                                                                                              
  data _null_;                                                                                                                                                
      length pgm  $32755 cmd $1024;                                                                                                                           
      file py_pgm ;                                                                                                                                           
      pgm=resolve(&pgm);                                                                                                                                      
      semi=countc(pgm,";");                                                                                                                                   
        do idx=1 to semi;                                                                                                                                     
          cmd=cats(scan(pgm,idx,";"));                                                                                                                        
          if cmd=:". " then                                                                                                                                   
             cmd=trim(substr(cmd,2));                                                                                                                         
           if index(cmd,"`") then cmd=tranwrd(cmd,"`","27"x);                                                                                                 
           put cmd $char384.;                                                                                                                                 
           putlog cmd $char171.;                                                                                                                              
        end;                                                                                                                                                  
    run;quit;                                                                                                                                                 
  %let _loc=%sysfunc(pathname(py_pgm));                                                                                                                       
  %let _stderr=%sysfunc(pathname(work))/stderr.txt;                                                                                                           
  %let _stdout=%sysfunc(pathname(work))/stdout.txt;                                                                                                           
  filename rut pipe  "d:\Python310\python.exe &_loc 2> &_stderr";                                                                                             
  data _null_;                                                                                                                                                
    file print;                                                                                                                                               
    infile rut;                                                                                                                                               
    input;                                                                                                                                                    
    put _infile_;                                                                                                                                             
  run;                                                                                                                                                        
  filename rut clear;                                                                                                                                         
  filename py_pgm clear;                                                                                                                                      
data _null_;                                                                                                                                                  
    file print;                                                                                                                                               
    infile "%sysfunc(pathname(work))/stderr.txt";                                                                                                             
    input;                                                                                                                                                    
    put _infile_;                                                                                                                                             
  run;                                                                                                                                                        
  filename rut clear;                                                                                                                                         
  filename py_pgm clear;                                                                                                                                      
  * use the clipboard to create macro variable;                                                                                                               
  %if "&return" ^= "" %then %do;                                                                                                                              
    filename clp clipbrd ;                                                                                                                                    
    data _null_;                                                                                                                                              
     length txt $200;                                                                                                                                         
     infile clp;                                                                                                                                              
     input;                                                                                                                                                   
     putlog "xxxxxx  " _infile_;                                                                                                                              
     call symputx("&return",_infile_,"G");                                                                                                                    
    run;quit;                                                                                                                                                 
  %end;                                                                                                                                                       
%mend utl_submit_py64_310x;                                                                                                                                 
;;;;;
run;quit;


/*     _   _               _               _ _                         __   _  _
 _   _| |_| |    ___ _   _| |__  _ __ ___ (_) |_  __      ___ __  ___ / /_ | || |__  __
| | | | __| |   / __| | | | `_ \| `_ ` _ \| | __| \ \ /\ / / `_ \/ __| `_ \| || |\ \/ /
| |_| | |_| |   \__ \ |_| | |_) | | | | | | | |_   \ V  V /| |_) \__ \ (_) |__   _>  <
 \__,_|\__|_|___|___/\__,_|_.__/|_| |_| |_|_|\__|___\_/\_/ | .__/|___/\___/   |_|/_/\_\
           |_____|                             |_____|     |_|

*/

filename ft15f001 "c:/oto/utl_submit_wps64x.sas";
parmcards4;
%macro utl_submit_wps64x(pgmx,return=)/des="submiit a single quoted sas program to wps";
  * whatever you put in the Python or R clipboard will be returned in the macro variable
    returnVarName;
  * if you delay resolution, use resove=Y to resolve macros and macro variables passed to python;
  * write the program to a temporary file;
  %utlfkil(%sysfunc(pathname(work))/wps_pgmtmp.wps);
  %utlfkil(%sysfunc(pathname(work))/wps_pgm.wps);
  %utlfkil(%sysfunc(pathname(work))/wps_pgm001.wps);
  %utlfkil(wps_pgm.lst);
  filename wps_pgm "%sysfunc(pathname(work))/wps_pgmtmp.wps" lrecl=32756 recfm=v;
  data _null_;
    length pgm  $32756 cmd $32756;
    file wps_pgm ;
    pgm=&pgmx;
    semi=countc(pgm,';');
      do idx=1 to semi;
        cmd=cats(scan(pgm,idx,';'),';');
        if index(cmd,"`") then cmd=tranwrd(cmd,"`","27"x);
        len=length(strip(cmd));
        put cmd $varying32756. len;
        putlog cmd $varying32756. len;
      end;
  run;
  filename wps_001 "%sysfunc(pathname(work))/wps_pgm001.wps" lrecl=255 recfm=v ;
  data _null_ ;
    length textin $ 32767 textout $ 255 ;
    file wps_001;
    infile "%sysfunc(pathname(work))/wps_pgmtmp.wps" lrecl=32767 truncover;
    format textin $char32767.;
    input textin $char32767.;
    putlog _infile_;
    if lengthn( textin ) <= 255 then put textin ;
    else do while( lengthn( textin ) > 255 ) ;
       textout = reverse( substr( textin, 1, 255 )) ;
       ndx = index( textout, ' ' ) ;
       if ndx then do ;
          textout = reverse( substr( textout, ndx + 1 )) ;
          put textout $char255. ;
          textin = substr( textin, 255 - ndx + 1 ) ;
    end ;
    else do;
      textout = substr(textin,1,255);
      put textout $char255. ;
      textin = substr(textin,255+1);
    end;
    if lengthn( textin ) le 255 then put textin $char255. ;
    end ;
  run ;
  %put xxxxxxx file %sysfunc(pathname(work))/wps_pgm.wps ****;
  filename wps_fin "%sysfunc(pathname(work))/wps_pgm.wps" lrecl=255 recfm=v ;
  data _null_;
      retain switch 0;
      infile wps_001;
      input;
      file wps_fin;
      if substr(_infile_,1,1) = "." then  _infile_= substr(left(_infile_),2);
      select;
         when(left(upcase(_infile_))=:"SUBMIT;")     switch=1;
         when(left(upcase(_infile_))=:"ENDSUBMIT;")  switch=0;
         otherwise;
      end;
      if lag(switch)=1 then  _infile_=compress(_infile_,";");
      if left(upcase(_infile_))= "ENDSUBMIT" then _infile_=cats(_infile_,";");
      put _infile_;
      putlog _infile_;
  run;quit;
  %let _loc=%sysfunc(pathname(wps_fin));
  %let _w=%sysfunc(compbl(C:\progra~1\worldp~1\wpsana~1\4\bin\wps.exe -autoexec c:\oto\Tut_Otowps.sas -config c:\cfg\wps.cfg -sasautos c:\otowps));
  %put &_loc;
  filename rut pipe "&_w -sysin &_loc";
  data _null_;
    file print;
    infile rut;
    input;
    put _infile_;
    putlog _infile_;
  run;
  filename rut clear;
  filename wps_pgm clear;
  data _null_;
    infile "wps_pgm.lst";
    input;
    putlog _infile_;
  run;quit;
  * use the clipboard to create macro variable;
  %if "&return" ne ""  %then %do;
    filename clp clipbrd ;
    data _null_;
     infile clp;
     input;
     putlog "xxxxxx  " _infile_;
     call symputx("&return.",_infile_,"G");
    run;quit;
  %end;
%mend utl_submit_wps64x;


/*     _   _                  _                _
 _   _| |_| |     _ __  _   _| |__   ___  __ _(_)_ __  __  __
| | | | __| |    | `_ \| | | | `_ \ / _ \/ _` | | `_ \ \ \/ /
| |_| | |_| |    | |_) | |_| | |_) |  __/ (_| | | | | | >  <
 \__,_|\__|_|____| .__/ \__, |_.__/ \___|\__, |_|_| |_|/_/\_\
           |_____|_|    |___/            |___/
*/

filename ft15f001 "c:/oto/utl_submit_pybeginx.sas";
parmcards4;
%macro utl_pybeginx;
%utlfkil(c:/temp/py_pgm.py);
%utlfkil(c:/temp/py_pgm.log);
filename ft15f001 "c:/temp/py_pgm.py";
%mend utl_pybeginx;
;;;;
run;quit;

/*     _   _                                 _
 _   _| |_| |     _ __  _   _  ___ _ __   __| | __  __
| | | | __| |    | `_ \| | | |/ _ \ `_ \ / _` | \ \/ /
| |_| | |_| |    | |_) | |_| |  __/ | | | (_| |  >  <
 \__,_|\__|_|____| .__/ \__, |\___|_| |_|\__,_| /_/\_\
           |_____|_|    |___/
*/
filename ft15f001 "c:/oto/utl_submit_pyendx.sas";
parmcards4;
%macro utl_pyendx(return=);
* EXECUTE THE PYTHON PROGRAM;
options noxwait noxsync;
filename rut pipe  "d:\Python310\python.exe c:/temp/py_pgm.py 2> c:/temp/py_pgm.log";
run;quit;
data _null_;
  file print;
  infile rut;
  input;
  put _infile_;
  putlog _infile_;
run;quit;
data _null_;
  infile " c:/temp/py_pgm.log";
  input;
  putlog _infile_;
run;quit;
%if "&returnVarName" ne ""  %then %do;
  filename clp clipbrd ;
  data _null_;
   infile clp;
   input;
   putlog "xxxxxx  " _infile_;
   call symputx("&return.",_infile_,"G");
  run;quit;
  %end;
%mend utl_pyendx;
;;;;
run;quit;

/*     _   _                      _                _
 _   _| |_| | __      ___ __  ___| |__   ___  __ _(_)_ __  __  __
| | | | __| | \ \ /\ / / `_ \/ __| `_ \ / _ \/ _` | | `_ \ \ \/ /
| |_| | |_| |  \ V  V /| |_) \__ \ |_) |  __/ (_| | | | | | >  <
 \__,_|\__|_|___\_/\_/ | .__/|___/_.__/ \___|\__, |_|_| |_|/_/\_\
           |_____|     |_|                   |___/
*/

filename ft15f001 "c:/oto/utl_submit_wpsbeginx.sas";
parmcards4;
%macro utl_wpsbeginx;
%utlfkil(c:/temp/wps_pgm.wps);
%utlfkil(topc:/temp/wps_pgm.log);
filename clp clipbrd ;
filename ft15f001 "c:/temp/wps_pgm.wps";
%mend utl_wpsbeginx;
;;;;
run;quit;

/*     _   _                                     _
 _   _| |_| | __      ___ __  ___  ___ _ __   __| |_  __
| | | | __| | \ \ /\ / / `_ \/ __|/ _ \ `_ \ / _` \ \/ /
| |_| | |_| |  \ V  V /| |_) \__ \  __/ | | | (_| |>  <
 \__,_|\__|_|___\_/\_/ | .__/|___/\___|_| |_|\__,_/_/\_\
           |_____|     |_|
*/

filename ft15f001 "c:/oto/utl_submit_wpsendx.sas";
parmcards4;
%macro utl_wpsendx(return=);
run;quit;
%put xxxxxx &return;
* EXECUTE THE PYTHON PROGRAM;
options noxwait noxsync;
%let _w=%sysfunc(compbl(C:\progra~1\worldp~1\wpsana~1\4\bin\wps.exe -autoexec c:\oto\Tut_Otowps.sas -config c:\cfg\wps.cfg
         -log c:/temp/wps_pgm.log
         -print c:/temp/wps_pgm.lst
         -sysin c:/temp/wps_pgm.wps));
filename rut pipe "&_w" ;
run;quit;
data _null_;
  file print;
  infile rut;
  input;
  put _infile_;
  putlog _infile_;
run;quit;
data _null_;
  infile "c:/temp/wps_pgm.log";
  input;
  putlog _infile_;
run;quit;
data _null_;
  infile "c:/temp/wps_pgm.lst";
  input;
  file print;
  put _infile_;
run;quit;
* use the clipboard to create macro variable;
%if "&return" ne ""  %then %do;
   data _null_;
    infile clp;
    input;
    putlog "xxxxxxx  " _infile_;
    call symputx("&return",_infile_,"G");
   run;quit;
%end;
%mend utl_wpsendx;
;;;;
run;quit;

/*     _   _               _               _ _             __   _  _       
 _   _| |_| |    ___ _   _| |__  _ __ ___ (_) |_     _ __ / /_ | || |__  __
| | | | __| |   / __| | | | `_ \| `_ ` _ \| | __|   | `__| `_ \| || |\ \/ /
| |_| | |_| |   \__ \ |_| | |_) | | | | | | | |_    | |  | (_) |__   _>  < 
 \__,_|\__|_|___|___/\__,_|_.__/|_| |_| |_|_|\__|___|_|   \___/   |_|/_/\_\
           |_____|                             |_____|                     
*/

filename ft15f001 "c:/oto/utl_submit_r64x.sas";
parmcards4;
%macro utl_submit_r64x(
      pgmx
     ,return=N
     ,resolve=N
     )/des="Semi colon separated set of R commands - drop down to R";
  %utlfkil(%sysfunc(pathname(work))/r_pgm.txt);
  /* clear clipboard */
  filename _clp clipbrd;
  data _null_;
    file _clp;
    put " ";
  run;quit;
  * write the program to a temporary file;
  filename r_pgm "%sysfunc(pathname(work))/r_pgm.txt" lrecl=32766 recfm=v;
  data _null_;
    length pgm $32756;
    file r_pgm;
    if substr(upcase("&resolve"),1,1)="Y" then do;
        pgm=resolve(&pgmx);
     end;
    else do;
        pgm=&pgmx;
     end;
     if index(pgm,"`") then cmd=tranwrd(pgm,"`","27"x);
    put pgm;
    putlog pgm;
  run;
  %let __loc=%sysfunc(pathname(r_pgm));
  * pipe file through R;
  filename rut pipe "D:\r412\R\R-4.1.2\bin\R.exe --vanilla --quiet --no-save < &__loc";
  data _null_;
    file print;
    infile rut recfm=v lrecl=32756;
    input;
    put _infile_;
    putlog _infile_;
  run;
  filename rut clear;
  filename r_pgm clear;
  * use the clipboard to create macro variable;
  %if %upcase(%substr(&return.,1,1)) ne N %then %do;
    filename clp clipbrd ;
    data _null_;
     infile clp;
     input;
     putlog "macro variable &return = " _infile_;
     call symputx("&return.",_infile_,"G");
    run;quit;
  %end;
%mend utl_submit_r64x;
;;;;
run;quit;

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
