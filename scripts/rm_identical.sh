#!/bin/bash

#the script should be called with the following arguments: base_dir new_dir
#all files from new_dir that match (both relative path and content) to other files from base_dir will be deleted

#files main file1 file2
function files()
{
        if cmp --silent "$2" "$3" #bitwise comparation
        then
            echo -e "\tremoving ${3##*/}"
            rm "$3"
        fi
}

#drcts main subdir1 subdir2
function drcts()
{
    $1 "$2" "$3" #recursive script call for subdirectories
}

#process main function
function process()
{
    i1=0
    i2=0
    if [[ $1 == "drcts" ]]  #the first directory (with index 0) is the current one
    then                    #this one should be skipped to avoid processing the same content indefinetly
        i1=1
        i2=1
    fi
   
    #this works because both arrays are ordered (sorted)
    while [ $i1 -lt ${#arrayDir1[@]} ] && [ $i2 -lt ${#arrayDir2[@]} ]
    do
        # ${#arrayDir1[@]} is the length of arrayDir1
        
        # arrayDir1[i1]##*/ gets the name of the file
        # from the absolute path arrayDir1[i1]
        
        if [[ ${arrayDir1[i1]##*/} == ${arrayDir2[i2]##*/} ]]
        then
            $1 $2 "${arrayDir1[i1]}" "${arrayDir2[i2]}"
            i1=$(($i1+1))
            i2=$(($i2+1))
        elif [[ ${arrayDir1[i1]##*/} < ${arrayDir2[i2]##*/} ]]
        then
            i1=$(($i1+1))
        else
            i2=$(($i2+1))
        fi
    done
}



echo -e "\n$1\n$2"

#processing files
SAVEDIFS=$IFS
IFS=$'\n'
arrayDir1=($(find "$1" -maxdepth 1 -type f | sort))
arrayDir2=($(find "$2" -maxdepth 1 -type f | sort))
IFS=$SAVEDIFS
process files $0

#processing directories
SAVEDIFS=$IFS
IFS=$'\n'
arrayDir1=($(find "$1" -maxdepth 1 -type d | sort))
arrayDir2=($(find "$2" -maxdepth 1 -type d | sort))
IFS=$SAVEDIFS
process drcts $0

#deleting all empty folders recursively
find "$2" -type d -empty -delete
