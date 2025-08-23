#!/bin/bash

# Word list (more random techy/CS words)
WORDS=("RUGBY" "HOCKY" "SKATE" "BOXER" \
       "RACES" "SWIMS" "SKIER" "DIVES" "ROWER" "FENCE" \
       "CHESS" "CARDS" "CHECK" "LOTTO" "BINGO" "TABOO" \
       "POKER" "BLACK" "SPADE" "HEART" "CLUBS" "RUMMY" "WHIST")
SECRET=${WORDS[$RANDOM % ${#WORDS[@]}]}

MAX_ATTEMPTS=5
ATTEMPTS=0

echo "🐮 Welcome back to WordleCow!"
echo "Guess the 5-letter secret word."
echo "Clues: Revealed in correct position only, others stay hidden."
echo "You only have $MAX_ATTEMPTS WRONG attempts (guesses with NO correct-position letters)."
echo "---------------------------------------------"

while true; do
    read -p "> " GUESS
    GUESS=$(echo "$GUESS" | tr '[:lower:]' '[:upper:]')
    
    if [ ${#GUESS} -ne 5 ]; then
        echo "Please enter a 5-letter word."
        continue
    fi

    # Check guess
    RESULT=""
    MATCH_FOUND=false
    for ((i=0; i<5; i++)); do
        LETTER=${GUESS:$i:1}
        if [ "${LETTER}" == "${SECRET:$i:1}" ]; then
            RESULT+="$LETTER"
            MATCH_FOUND=true
        else
            RESULT+="_"
        fi
    done

    cowsay "$RESULT"

    if [ "$GUESS" == "$SECRET" ]; then
        cowsay "MOO! You solved it: $SECRET"
        break
    fi

    # Wrong attempt = no correct-position letters
    if [ "$MATCH_FOUND" = false ]; then
        ((ATTEMPTS++))
        echo "❌ Wrong attempt: $ATTEMPTS/$MAX_ATTEMPTS"
    fi

    # Reset if max wrong attempts reached
    if [ $ATTEMPTS -ge $MAX_ATTEMPTS ]; then
        cowsay "GAME OVER! The word was $SECRET. Resetting..."
        SECRET=${WORDS[$RANDOM % ${#WORDS[@]}]}
        ATTEMPTS=0
    fi
done

