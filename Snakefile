# vim: syntax=python expandtab tabstop=4
# aron test 10/7 2020


rule all:
        input:
               "log.uploaded",

rule create_hi:
        input:
        output:
                "log.uploaded",
        shell:
                """
                source config.sh 
                touch hi1.txt 
                s3cmd \
                    -c /opt/s3_cfg \
                    --access_key=$akey \
                    --secret_key=$skey \
		            put hi1.txt s3://ctmr-test/aron/ 
		        touch log.uploaded 
		        echo file uploaded at `date` > log.uploaded
                rm hi1.txt
                """
