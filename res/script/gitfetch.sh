#!/bin/bash
#!/bin/bash -x   
  
PROJECTS_DIR=$PWD
  
##排除以下情况：  
##1.非目录  
##2.非git目录  
function is_git_dir(){  
    param=`find $PWD -name ".git"`  
    if [ -z "$param" ];then  
    return 1 #1为假  
    else  
    return 0 #0为真  
    fi      
}  

function update_all()  
{  
    for d in `ls`  
    do  
        if [ -d "$PROJECTS_DIR/$d" ];then  
        #  echo $d;    
            cd $PROJECTS_DIR/$d  
  
        if is_git_dir $PWD;then  
            update

        else  
        echo "$PWD is not a git dir!"  
        fi  
    else  
        echo "$d is not a dirctory"  
    fi  
    done  
}  
  
function update()  
{  
    echo "update project:current_dir: $PWD"  
    `git fetch -p` >> "$PROJECTS_DIR/test.log" 2>&1 &  
    echo "update success  ^_^"  
}  

  
function clean()  
{  
    echo "update project:current_dir: $PWD"  
    `gradle clean` >> "$PROJECTS_DIR/test.log" 2>&1 &  
    echo "update success  ^_^"  
}  
cd $PROJECTS_DIR  
  
if [ -z  "$1"  ];then  
    update_all  
elif [ -d  "$PROJECTS_DIR/$1" ];then  
    cd $PROJECTS_DIR/$1  
    echo $PWD  
    if is_git_dir $PWD;then  
      update  
    else  
    echo "$PWD is not a git dir!"  
    fi  
else  
    echo "not exist \"$PROJECTS_DIR/$1\""  
    exit 0;  
fi  