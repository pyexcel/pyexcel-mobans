find templates/ -type f -exec echo '{}' \;|sed -e "s/templates\//{%include \"/" -e "s/$/\" %}/" > test.file
moban -c config/pyexcel.yaml -t test.file -td templates setupmobans/templates .
