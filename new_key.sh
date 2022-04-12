#!/bin/sh
#   Copyright 2022 Filip Strajnar
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

ssh-keygen -t ed25519 -f ~/.ssh/ed25519 -N ""
echo "Copy the line below into ~/.ssh/authorized_keys on target device:"
echo "$(cat ~/.ssh/ed25519.pub)"