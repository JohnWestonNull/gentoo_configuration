backupConfs=(
  "./patches.conf" 
  "./savedconfig.conf"
  "./dotfile.conf"
)

targetDir="./confOverlay"
homeDir=~

rm -rf $targetDir
mkdir $targetDir

for conf in ${backupConfs[*]}
do 
  echo Reading configuration $conf ;
  sed '/^[ \t]*$/d' $conf | while read filePath; do
    echo Copying $filePath
    findHome="~/"
    replaceHome="$homeDir/"
    originalFile="${filePath//${findHome}/${replaceHome}}"
    cp --parents --recursive $originalFile $targetDir
  done
done

git add .
