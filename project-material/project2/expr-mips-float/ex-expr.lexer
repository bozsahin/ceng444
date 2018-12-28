#!/bin/bash
# this is a script to wrap around all special symbols in |..| so that Lisp reader
# can treat them as data
# Then wraps them all in one (..) so that they can be read by Lisp reader in one fell swoop
# I enumerated all cases one by one rather than \([..]\) match because i cant remember ordering!
# -cem bozsahin
sed -e 's/\|/ \\| /g' $1|sed -e 's?\\? \|\\\\\| ?g'|sed -e "s?'? |'| ?g" -e 's/\`/ |\`| /g' -e 's/\~/ |\~| /g' -e 's/\!/ |\!| /g' -e 's/\@/ |\@| /g' -e 's/\#/ |\#| /g' -e 's/\$/ |\$| /g' -e 's/\%/ |\%| /g' -e 's/\^/ |\^| /g' -e 's/\&/ |\&| /g' -e 's/\*/ |\*| /g' -e 's/(/ |(| /g' -e 's/)/ |)| /g' -e 's/\-/ |\-| /g' -e 's/\_/ |\_| /g' -e 's/\+/ |\+| /g' -e 's/=/ |=| /g' -e 's?{? |{| ?g' -e 's/}/ |}| /g' -e 's/\[/ |\[| /g' -e 's/\]/ |\]| /g' -e 's/\:/ |:| /g' -e 's/\;/ |;| /g' -e 's/\"/ |\"| /g' -e 's/\</ |\<| /g' -e 's/\,/ |,| /g' -e 's/\>/ |\>| /g' -e 's/\./ |\.| /g' -e 's/\?/ |?| /g' -e 's?\/? |/| ?g'|sed -e 's? \| ?\|?g'|sed -e 's?\|\\\\\|?\|\\\|?g'|sed -e 's?\|\\\|[^\| ]?\|\\\\\|?g'|sed -e 's/\|\|\([^ ]\)/\|\| \1/g'|sed -e 's/\([0-9][0-9]*\)[ ]*\|\.\|[ ]*\([0-9][0-9]*\)/\1\.\2/g'|sed -e '1,1s/^/(/' -e '$s/$/)/'
