#!/bin/bash
declare -a Linux=('Debian' 'Redhat' 'Ubuntu' 'Fedora')
echo -e "Original elements in an array Linux: ${Linux[@]} \n"
echo -e "The two elements starting from index one(Redhat): ${Linux[@]:1:2} \n"


Linux[2]='Mandriva'
echo -e "All elements after replacement: ${Linux[@]} \n"

Linux=("${Linux[@]}" "Suse")
echo -e "All elements after appending Suse: ${Linux[@]} \n"

unset Linux[2]
echo -e "All elements after after removal of third element: ${Linux[@]} \n"
