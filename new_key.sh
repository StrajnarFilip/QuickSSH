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
public_key="$(cat ~/.ssh/ed25519.pub)"
echo "

Copy the line below into ~/.ssh/authorized_keys on target device:"
echo $public_key
echo "

Alternatively, use this script with bash:"
echo 'echo "'$public_key'" >> ~/.ssh/authorized_keys'
echo "

Or this script with powershell:"
echo 'Set-Content -Path "~/.ssh/authorized_keys" -Value "'$public_key'"'
echo "

On a Windows machine for Administrator accout:"
echo 'Set-Content -Path "${env:ProgramData}\ssh\administrators_authorized_keys" -Value "'$public_key'"'