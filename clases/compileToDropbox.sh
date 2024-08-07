# Compile everything and copy to dropbox
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

pushd $SCRIPT_DIR
for FOLDER in clase*; do
    echo $FOLDER
    pushd ${FOLDER}
    make
    cp *.pdf ~/Dropbox/Bio210B-clases/
    popd
done
popd
