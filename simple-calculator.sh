re="^-?[0-9.]+ [+*-/^] -?[0-9.]+$"
echo "Welcome to the basic calculator!" >> operation_history.txt
echo "Welcome to the basic calculator!"
enter_text="Enter an arithmetic operation or type 'quit' to quit:"

while "true"
do
    echo "$enter_text" >> operation_history.txt
    echo "$enter_text"
    read input >> operation_history.txt
    if [ "$input" = "quit" ]; then
        echo "$input" >> operation_history.txt
        echo "Goodbye!" >> operation_history.txt
        echo "Goodbye!"
        break;
    elif [[ "$input" =~ $re ]]; then
        x=$(echo "scale=2; $input" | bc) # scale=2 is for 2 decimal places
        echo "$input" >> operation_history.txt
        echo "$x" >> operation_history.txt
        echo "$x"
    else
        echo "$input" >> operation_history.txt
        echo "Operation check failed!" >> operation_history.txt
        echo "Operation check failed!"
    fi
done
