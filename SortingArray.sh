2)
#!/bin/bash -x
mysort(){
    for((i=${#array[@]}-1;i>=0; i--)); do
        for((j=1;j<=$i; j++)); do
            if [[ ${array[j-1]} -gt ${array[j]} ]]; then
                temp="${array[j-1]}"
                array[j-1]="${array[j]}"
                array[j]="$temp"
            fi
        done
    done
}
DIFF=$((999-100+1))
array[0]=$(($(($RANDOM%$DIFF))+100))
array[1]=$(($(($RANDOM%$DIFF))+100))
array[2]=$(($(($RANDOM%$DIFF))+100))
array[3]=$(($(($RANDOM%$DIFF))+100))
array[4]=$(($(($RANDOM%$DIFF))+100))
mysort $array
printf '%s\n' "${array[@]}"
echo "second smallest element:${array[1]}"
echo "second largest element:${array[3]}"


