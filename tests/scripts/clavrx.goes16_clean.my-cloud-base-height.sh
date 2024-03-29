# # # Distribution Statement A. Approved for public release. Distribution unlimited.
# # #
# # # Author:
# # # Naval Research Laboratory, Marine Meteorology Division
# # #
# # # This program is free software: you can redistribute it and/or modify it under
# # # the terms of the NRLMMD License included with this program. This program is
# # # distributed WITHOUT ANY WARRANTY; without even the implied warranty of
# # # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the included license
# # # for more details. If you did not receive the license, for more information see:
# # # https://github.com/U-S-NRL-Marine-Meteorology-Division/

#!/bin/bash

# Produces My-Cloud-Base-Height for the goes16 sector without annotations

run_procflow \
    $GEOIPS_TESTDATA_DIR/test_data_clavrx/data/goes16_2023101_1600/clavrx_OR_ABI-L1b-RadF-M6C01_G16_s20231011600207.level2.hdf \
    --procflow single_source \
    --reader_name clavrx_hdf4 \
    --product_name "My-Cloud-Base-Height" \
    --compare_path "$GEOIPS_PACKAGES_DIR/plugin_tutorial_solution/tests/outputs/clavrx.goes16_clean.my-cloud-base-height" \
    --output_formatter imagery_clean \
    --filename_formatter geoips_fname \
    --minimum_coverage 0 \
    --sector_list goes16
ss_retval=$?

exit $((ss_retval))
