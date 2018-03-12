
# simple script to mov log files to tlgs (after checking them manually)
#
# copy the logs into the testfiles dir and then run this script

echo ===== handling all logs  ===========

for f in `ls *.xetex.log 2>/dev/null` ; do
  echo Handle FILE $f
  BASE=`basename $f '.xetex.log'`
  cmp -s $f $BASE.pdftex.log
  if test $? -eq 0 ; then
    echo ' => files are identical ==='
    rm $f
    echo removing $f and $BASE.xetex.tlg
    rm -f $f $BASE.xetex.tlg
  else
    echo ' => files are different ==='
    mv -f $f $BASE.xetex.tlg
  fi
done

for f in `ls *.luatex.log 2>/dev/null` ; do
  echo Handle FILE $f
  BASE=`basename $f '.luatex.log'`
  cmp -s $f $BASE.pdftex.log
  if test $? -eq 0 ; then
    echo ' => files are identical ==='
    rm $f
    echo removing $f and $BASE.luatex.tlg
    rm -f $f $BASE.luatex.tlg
  else
    echo ' => files are different ==='
    mv -f $f $BASE.luatex.tlg
  fi
done

for f in `ls *.pdftex.log 2>/dev/null` ; do
  echo Handle FILE $f
  mv -f $f `basename $f '.pdftex.log'`.tlg
done

#
echo ===== surplus logs if any =========
for f in `ls *.log 2> /dev/null` ; do 
  echo Handle FILE $f
  rm -i $f
done
