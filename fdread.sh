#!/bin/bash
exec 3< output.txt
cat <&3
# Close fd # 3
exec 3<&-

