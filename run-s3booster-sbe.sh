#!/bin/bash
python3 s3booster-snowball-v2.py \
--bucket_name <your-own-bucket-name> \
--src_dir <your-local-or-snowball-location> \
--endpoint https://s3.ap-northeast-2.amazonaws.com/ \
--profile_name <AWS credentials profile name> \
--prefix_root / \
--max_process 5 \
--max_tarfile_size $((10*(1024**3))) \
--max_part_size $((100*(1024**2))) \
--no_extract 'no'