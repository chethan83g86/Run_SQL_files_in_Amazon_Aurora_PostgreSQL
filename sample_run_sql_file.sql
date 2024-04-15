CREATE OR REPLACE FUNCTION public.sample_run_unit_test()

RETURNS VOID

/*SELECT * FROM public.sample_run_unit_test();*/

AS

$BODY$

DECLARE

BEGIN

          PERFORM public.run_sql_file

                        ('sample_s3_bucket_7392823',

                         'database_unit_test_cases/sample_unit_test_cases/schema_unit_test_file1.sql',

                        'us-east-1');

          PERFORM public.run_sql_file

                        ('sample_s3_bucket_7392823',

                         'database_unit_test_cases/sample_unit_test_cases/schema_unit_test_file2.sql',

                        'us-east-1');

          PERFORM public.run_sql_file

                        ('sample_s3_bucket_7392823',

                         'database_unit_test_cases/sample_unit_test_cases/schema_unit_test_file3.sql',

                        'us-east-1');

          /*.*/

          /*.*/

          /*.*/

          /*.*/
          
          PERFORM public.run_sql_file

                        ('sample_s3_bucket_7392823',

                         'database_unit_test_cases/sample_unit_test_cases/schema_unit_test_fileN.sql',

                        'us-east-1');

END;

$BODY$

LANGUAGE plpgsql;