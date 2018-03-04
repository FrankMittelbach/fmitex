
for f in `ls *.pdftex.log` ; do
  echo FILE $f
  echo `basename $f '.pdftex.log'`
  mv -f $f `basename $f '.pdftex.log'`.tlg
done

for f in `ls *.xetex.log` ; do
  echo FILE $f
  mv -f $f `basename $f '.log'`.tlg
done

for f in `ls *.luatex.log` ; do
  echo FILE $f
  mv -f $f `basename $f '.log'`.tlg
done
