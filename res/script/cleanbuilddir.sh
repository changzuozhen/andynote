#!/bin/bash
#!/bin/bash -x   
  
PROJECTS_DIR=$PWD

#!/bin/bash
function readDir(){
    for element in `ls $1`
    do
        dir_or_file=$1"/"$element
        if [ -d $dir_or_file ]
        then
            if [ $element = "build" ]
            then
                echo "$dir_or_file"
                rm -rfv $dir_or_file
            else
                readDir $dir_or_file
            fi
        fi
    done
}
readDir $1

  
if [ -z  "$1"  ];then  
    readDir $PROJECTS_DIR
elif [ -d  "$PROJECTS_DIR/$1" ];then  
    readDir $PROJECTS_DIR/$1
    cd $PROJECTS_DIR/$1  
else  
    echo "not exist \"$PROJECTS_DIR/$1\""  
    exit 0;  
fi  