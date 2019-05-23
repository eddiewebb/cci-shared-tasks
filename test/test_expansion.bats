#!/usr/bin/env bats

# load custom assertions and functions
load bats_helper


# setup is run beofre each test
function setup {
  INPUT_PROJECT_CONFIG=${BATS_TMPDIR}/input_config-${BATS_TEST_NUMBER}
  PROCESSED_PROJECT_CONFIG=${BATS_TMPDIR}/packed_config-${BATS_TEST_NUMBER} 
  JSON_PROJECT_CONFIG=${BATS_TMPDIR}/json_config-${BATS_TEST_NUMBER} 
	echo "#using temp file ${BATS_TMPDIR}/"

  # the name used in example config files.
  INLINE_ORB_NAME="common_tasks"
}


@test "Job: full job expands properly" {
  # given
  process_config_with test/inputs/simple.yml

  # when
  assert_jq_match '.jobs | length' 1 #only 1 job
  assert_jq_match '.jobs["common_tasks/common_task"].steps | length' 4

}
