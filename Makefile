README.md: guessinggame.sh
    echo "# Guessing Game" > README.md
    echo >> README.md
    echo "This is a guessing game project." >> README.md
    echo >> README.md
    echo "Date and time of make execution: $$(date)" >> README.md
    echo >> README.md
    echo "Number of lines in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

.PHONY: clean
clean:
    rm README.md