function pcd() {
    PACKAGENAME=$1;
    cd $PACKAGENAME;
    if [ -d "src" ]; then
        cd "src"
    fi
    cd `echo $PACKAGENAME | sed -e 's/\./\//g'`;
}
