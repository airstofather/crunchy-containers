#!/bin/bash
# Copyright 2017 - 2018 Crunchy Data Solutions, Inc.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$CCP_CLI delete pod pr-replica
$CCP_CLI delete pod pr-replica-2
sleep  2
$CCP_CLI delete service pr-replica
$CCP_CLI delete service pr-primary
$CCP_CLI delete pod pr-primary
$CCPROOT/examples/waitforterm.sh pr-primary $CCP_CLI
$CCPROOT/examples/waitforterm.sh pr-replica $CCP_CLI
$CCPROOT/examples/waitforterm.sh pr-replica-2 $CCP_CLI
