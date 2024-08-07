# Compile everything and copy to dropbox
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# As an arg, one must give the folders to compile as a single string, i.e.
# $ ./compileToDropbox.sh "clase1 clase2 clase4"
pushd $SCRIPT_DIR
for FOLDER in $1; do
    echo $FOLDER
    pushd ${FOLDER}
    make
    cp *.pdf ~/Dropbox/Bio210B-clases/
    popd
done
popd
