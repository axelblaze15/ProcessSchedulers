#!/bin/sh

if [ -z "$1" ]
  then
    echo 'Must enter a parameter <student-id-number>';
    exit;
fi

echo 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'

SUBMISSION="$1"'.zip'
HOME="$1"'/'

echo 'Creating a directory for' $HOME;
rm -rf $1;
mkdir $HOME;

echo 'Unzipping the submission' $SUBMISSION;
cp $SUBMISSION $HOME;
cd $HOME;
unzip -q $SUBMISSION;

echo 'Copying input files and Tester.java into' $HOME;
cp '../'Tester.java '.';
mkdir 'p-tests'
cp '../'p-tests/*.input p-tests/

echo 'Copying the report at '$HOME;
#cp *".pdf" "../../reports/";
echo 'Copying the code.java at '$HOME;
# cp code.java '../../codes/'$1'_code.java';
# echo 'Copying the Makefile at '$HOME;
# cp '../'Makefile '.';
# echo 'Copying the Scheduler at '$HOME;
# cp '../'Scheduler.java '.';

echo 'Compiling the submission'
make clean;
make;
java Tester;

echo 'Copying expected files into' $HOME;
cp '../'p-tests/*.expected p-tests/

# Declare grade variables
fcfsPublic=0;
fcfsPublicWorth=2;
fcfsPublicCount=0;
fcfsPrivate=0;
fcfsPrivateWorth=4;
fcfsPrivateCount=0;

srtfPublic=0;
srtfPublicWorth=3;
srtfPublicCount=0;
srtfPrivate=0;
srtfPrivateWorth=6;
srtfPrivateCount=0;

psPublic=0;
psPublicWorth=1;
psPublicCount=0;
psPrivate=0;
psPrivateWorth=2;
psPrivateCount=0;

# FCFS
echo 'Testing FCFS...'
if diff -q p-tests/fcfs1.output p-tests/fcfs1.expected > /dev/null; then
  : # files are the same
  echo '+++++passing fcfs1'
  fcfsPublic=$((fcfsPublic + fcfsPublicWorth))
  fcfsPublicCount=$((fcfsPublicCount + 1))
else
  : # files are different
  echo '-----failing fcfs1'
fi

if diff -q p-tests/fcfs2.output p-tests/fcfs2.expected > /dev/null; then
  : # files are the same
  echo '+++++passing fcfs2'
  fcfsPublic=$((fcfsPublic + fcfsPublicWorth))
  fcfsPublicCount=$((fcfsPublicCount + 1))
else
  : # files are different
  echo '-----failing fcfs2'
fi

if diff -q p-tests/fcfs3.output p-tests/fcfs3.expected > /dev/null; then
  : # files are the same
  echo '+++++passing fcfs3'
  fcfsPublic=$((fcfsPublic + fcfsPublicWorth))
  fcfsPublicCount=$((fcfsPublicCount + 1))
else
  : # files are different
  echo '-----failing fcfs3'
fi

if diff -q p-tests/fcfs4.output p-tests/fcfs4.expected > /dev/null; then
  : # files are the same
  echo '+++++passing fcfs4'
  fcfsPublic=$((fcfsPublic + fcfsPublicWorth))
  fcfsPublicCount=$((fcfsPublicCount + 1))
else
  : # files are different
  echo '-----failing fcfs4'
fi

# SRTF
echo 'Testing SRTF...'
if diff -q p-tests/srtf1.output p-tests/srtf1.expected > /dev/null; then
  : # files are the same
  echo '+++++passing srtf1'
  srtfPublic=$((srtfPublic + srtfPublicWorth))
  srtfPublicCount=$((srtfPublicCount + 1))
else
  : # files are different
  echo '-----failing srtf1'
fi

if diff -q p-tests/srtf2.output p-tests/srtf2.expected > /dev/null; then
  : # files are the same
  echo '+++++passing srtf2'
  srtfPublic=$((srtfPublic + srtfPublicWorth))
  srtfPublicCount=$((srtfPublicCount + 1))
else
  : # files are different
  echo '-----failing srtf2'
fi

if diff -q p-tests/srtf3.output p-tests/srtf3.expected > /dev/null; then
  : # files are the same
  echo '+++++passing srtf3'
  srtfPublic=$((srtfPublic + srtfPublicWorth))
  srtfPublicCount=$((srtfPublicCount + 1))
else
  : # files are different
  echo '-----failing srtf3'
fi

if diff -q p-tests/srtf4.output p-tests/srtf4.expected > /dev/null; then
  : # files are the same
  echo '+++++passing srtf4'
  srtfPublic=$((srtfPublic + srtfPublicWorth))
  srtfPublicCount=$((srtfPublicCount + 1))
else
  : # files are different
  echo '-----failing srtf4'
fi

if diff -q p-tests/srtf5.output p-tests/srtf5.expected > /dev/null; then
  : # files are the same
  echo '+++++passing srtf5'
  srtfPublic=$((srtfPublic + srtfPublicWorth))
  srtfPublicCount=$((srtfPublicCount + 1))
else
  : # files are different
  echo '-----failing srtf5'
fi

# PS
echo 'Testing PS...'
if diff p-tests/ps1.output p-tests/ps1.expected > /dev/null; then
  : # files are the same
  echo '+++++passing ps1'
  psPublic=$((psPublic + psPublicWorth))
  psPublicCount=$((psPublicCount + 1))
else
  : # files are different
  echo '-----failing ps1'
fi

if diff -q p-tests/ps2.output p-tests/ps2.expected > /dev/null; then
  : # files are the same
  echo '+++++passing ps2'
  psPublic=$((psPublic + psPublicWorth))
  psPublicCount=$((psPublicCount + 1))
else
  : # files are different
  echo '-----failing ps2'
fi

if diff -q p-tests/ps3.output p-tests/ps3.expected > /dev/null; then
  : # files are the same
  echo '+++++passing ps3'
  psPublic=$((psPublic + psPublicWorth))
  psPublicCount=$((psPublicCount + 1))
else
  : # files are different
  echo '-----failing ps3'
fi

if diff -q p-tests/ps4.output p-tests/ps4.expected > /dev/null; then
  : # files are the same
  echo '+++++passing ps4'
  psPublic=$((psPublic + psPublicWorth))
  psPublicCount=$((psPublicCount + 1))
else
  : # files are different
  echo '-----failing ps4'
fi

if diff -q p-tests/ps5.output p-tests/ps5.expected > /dev/null; then
  : # files are the same
  echo '+++++passing ps5'
  psPublic=$((psPublic + psPublicWorth))
  psPublicCount=$((psPublicCount + 1))
else
  : # files are different
  echo '-----failing ps5'
fi

###################
# PRIVATE p-tests #
###################
echo 'Starting private p-tests'

#################
# FCFS
#################
if diff -q p-tests/fcfs100.output p-tests/fcfs100.expected > /dev/null; then
  : # files are the same
  echo '+++++passing fcfs100'
  fcfsPrivate=$((fcfsPrivate + fcfsPrivateWorth))
  fcfsPrivateCount=$((fcfsPrivateCount + 1))
else
  : # files are different
  echo '-----failing fcfs100'
fi

if diff -q p-tests/fcfs101.output p-tests/fcfs101.expected > /dev/null; then
  : # files are the same
  echo '+++++passing fcfs101'
  fcfsPrivate=$((fcfsPrivate + fcfsPrivateWorth))
  fcfsPrivateCount=$((fcfsPrivateCount + 1))
else
  : # files are different
  echo '-----failing fcfs101'
fi

if diff -q p-tests/fcfs200.output p-tests/fcfs200.expected > /dev/null; then
  : # files are the same
  echo '+++++passing fcfs200'
  fcfsPrivate=$((fcfsPrivate + fcfsPrivateWorth))
  fcfsPrivateCount=$((fcfsPrivateCount + 1))
else
  : # files are different
  echo '-----failing fcfs200'
fi

if diff -q p-tests/fcfs900.output p-tests/fcfs900.expected > /dev/null; then
  : # files are the same
  echo '+++++passing fcfs900'
  fcfsPrivate=$((fcfsPrivate + fcfsPrivateWorth))
  fcfsPrivateCount=$((fcfsPrivateCount + 1))
else
  : # files are different
  echo '-----failing fcfs900'
fi

if diff -q p-tests/fcfs901.output p-tests/fcfs901.expected > /dev/null; then
  : # files are the same
  echo '+++++passing fcfs901'
  fcfsPrivate=$((fcfsPrivate + fcfsPrivateWorth))
  fcfsPrivateCount=$((fcfsPrivateCount + 1))
else
  : # files are different
  echo '-----failing fcfs901'
fi

#################
# SRTF
#################
if diff -q p-tests/srtf100.output p-tests/srtf100.expected > /dev/null; then
  : # files are the same
  echo '+++++passing srtf100'
  srtfPrivate=$((srtfPrivate + srtfPrivateWorth))
  srtfPrivateCount=$((srtfPrivateCount + 1))
else
  : # files are different
  echo '-----failing srtf100'
fi

if diff -q p-tests/srtf101.output p-tests/srtf101.expected > /dev/null; then
  : # files are the same
  echo '+++++passing srtf101'
  srtfPrivate=$((srtfPrivate + srtfPrivateWorth))
  srtfPrivateCount=$((srtfPrivateCount + 1))
else
  : # files are different
  echo '-----failing srtf101'
fi

if diff -q p-tests/srtf200.output p-tests/srtf200.expected > /dev/null; then
  : # files are the same
  echo '+++++passing srtf200'
  srtfPrivate=$((srtfPrivate + srtfPrivateWorth))
  srtfPrivateCount=$((srtfPrivateCount + 1))
else
  : # files are different
  echo '-----failing srtf200'
fi

if diff -q p-tests/srtf900.output p-tests/srtf900.expected > /dev/null; then
  : # files are the same
  echo '+++++passing srtf900'
  srtfPrivate=$((srtfPrivate + srtfPrivateWorth))
  srtfPrivateCount=$((srtfPrivateCount + 1))
else
  : # files are different
  echo '-----failing srtf900'
fi

if diff -q p-tests/srtf901.output p-tests/srtf901.expected > /dev/null; then
  : # files are the same
  echo '+++++passing srtf901'
  srtfPrivate=$((srtfPrivate + srtfPrivateWorth))
  srtfPrivateCount=$((srtfPrivateCount + 1))
else
  : # files are different
  echo '-----failing srtf901'
fi

#################
# PS
#################
if diff -q p-tests/ps100.output p-tests/ps100.expected > /dev/null; then
  : # files are the same
  echo '+++++passing ps100'
  psPrivate=$((psPrivate + psPrivateWorth))
  psPrivateCount=$((psPrivateCount + 1))
else
  : # files are different
  echo '-----failing ps100'
fi

if diff -q p-tests/ps101.output p-tests/ps101.expected > /dev/null; then
  : # files are the same
  echo '+++++passing ps101'
  psPrivate=$((psPrivate + psPrivateWorth))
  psPrivateCount=$((psPrivateCount + 1))
else
  : # files are different
  echo '-----failing ps101'
fi

if diff -q p-tests/ps102.output p-tests/ps102.expected > /dev/null; then
  : # files are the same
  echo '+++++passing ps102'
  psPrivate=$((psPrivate + psPrivateWorth))
  psPrivateCount=$((psPrivateCount + 1))
else
  : # files are different
  echo '-----failing ps102'
fi

if diff -q p-tests/ps200.output p-tests/ps200.expected > /dev/null; then
  : # files are the same
  echo '+++++passing ps200'
  psPrivate=$((psPrivate + psPrivateWorth))
  psPrivateCount=$((psPrivateCount + 1))
else
  : # files are different
  echo '-----failing ps200'
fi

if diff -q p-tests/ps900.output p-tests/ps900.expected > /dev/null; then
  : # files are the same
  echo '+++++passing ps900'
  psPrivate=$((psPrivate + psPrivateWorth))
  psPrivateCount=$((psPrivateCount + 1))
else
  : # files are different
  echo '-----failing ps900'
fi

if diff -q p-tests/ps901.output p-tests/ps901.expected > /dev/null; then
  : # files are the same
  echo '+++++passing ps901'
  psPrivate=$((psPrivate + psPrivateWorth))
  psPrivateCount=$((psPrivateCount + 1))
else
  : # files are different
  echo '-----failing ps901'
fi
# END OF p-tests

# Calculate the total grade
grade=$((fcfsPublic + fcfsPrivate + srtfPublic + srtfPrivate));
bonus=$((psPublic + psPrivate));

if [ $fcfsPrivateCount -gt 0 ]; then
  grade=$((grade + 2))
fi
if [ $srtfPrivateCount -gt 0 ]; then
  grade=$((grade + 5))
fi
if [ $psPrivateCount -eq 6 ]; then
  bonus=$((bonus + 8))
fi

# Print the grades
fcfsResult='FCFS:[public='$fcfsPublicCount','$fcfsPublic', private='$fcfsPrivateCount','$fcfsPrivate']'
srtfResult='SRTF:[public='$srtfPublicCount','$srtfPublic', private='$srtfPrivateCount','$srtfPrivate']'
psResult='PS:[public='$psPublicCount','$psPublic', private='$psPrivateCount','$psPrivate']'

# echo "$1, $fcfsResult, $srtfResult, Total=$grade, $psResult, TotalBonus=$bonus";
echo "Printing excel output"
echo "submission_folder fcfsPublicCount fcfsPrivateCount srtfPublicCount srtfPrivateCount Bonus psPublicCount psPrivateCount"
echo "$1 $fcfsPublicCount $fcfsPrivateCount $srtfPublicCount $srtfPrivateCount Bonus $psPublicCount $psPrivateCount";
# echo "$1 BonusPSScheduler $psPublicCount $psPrivateCount";
echo 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'

cd '../';
rm -rf $1;