read -p "Style check and unit test? (y/n) " rebuild
if [ "$rebuild" == "y" ]; then
    ./gradlew checkstyleMain checkstyleTest spotbugsMain spotbugsTest spotbugsScoverage compileTestJava && ./gradlew unitTest
fi

# read -p "Unit test? (y/n)" unit
# if [ "$unit" == "y" ]; then
#    ./gradlew unitTest
# fi

read -p "Proceed? (y/n)" go
if [ "$go" == "y" ]; then
    git add -u && git commit --amend && git push -f
fi
