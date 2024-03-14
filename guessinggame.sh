file_count () {
	local count=$(ls -l | grep "^-" | wc -l);
	echo "$count";
}

main() {
	local files=$(file_count)
	local guess=-1

	echo "Welcome to the guessing game!"
    echo "How many files are in the current directory?"

	while [ $guess -ne $files ]; do 
		read -p "Enter your guess" guess
		if [ $guess -lt $files ]; then
			echo "too low"
		elif [ $guess -gt $files ]; then
			echo "too high"
		fi 
	done

	echo "Congratulations! You guessed correctly. There are $files files in the current directory."

}

main