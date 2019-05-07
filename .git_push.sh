read -p "Style check? (y/n) " rebuild
if [ "$rebuild" == "y" ]; then
    ./gradlew build -x test
fi

read -p "Proceed? (y/n)" go
if [ "$go" == "y" ]; then
    git push -f
fi
