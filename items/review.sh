
for item in '*.pdf'
do
    fo1=`echo $item | awk -F. '{print $2}'`
     fi2=`echo $item | awk -F. '{print $1}'`
    mkdir -p ~/Desktop/backup/$fo1/$fi2
    cp -r $item ~/Desktop/backup/$fo1/$fi2
done
for item in '*.docx'
do
    fo1=`echo $item | awk -F. '{print $2}'`
     fi2=`echo $item | awk -F. '{print $1}'`
    mkdir -p ~/Desktop/backup/$fo1/$fi2
    cp -r $item ~/Desktop/backup/$fo1/$fi2
done
for item in '*.mp3'
do
    fo1=`echo $item | awk -F. '{print $2}'`
     fi2=`echo $item | awk -F. '{print $1}'`
    mkdir -p ~/Desktop/backup/$fo1/$fi2
    cp -r $item ~/Desktop/backup/$fo1/$fi2
done
