SCRIPTFILE=$(readlink -f "$0")
BASEPATH=$(dirname "$SCRIPTFILE")
cd "$BASEPATH/libs"
mvn -B dependency:copy
cd "$BASEPATH"