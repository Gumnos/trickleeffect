#!/usr/bin/awk -f
function random_indexes(s, output) {
    delete output;
    delete input;
    ls=length(s);
    for (i=0; i < ls; i++){input[i]=i;}
    for (; ls; ls--){
        i=int(rand() * ls);
        output[ls-1]=input[i];
        # shift things down
        for (; i<ls; i++){input[i]=input[i+1];}
        }
}

BEGIN {
    srand();
}

{
    line=$0;
    random_indexes(line, indexes);
    ls=length(line);
    # initialize out[]
    delete out;
    for (i=0; i<ls; i++){
        out[i]=" ";
    }
    for (i=0; i<ls; i++) {
        offset=indexes[i];
        out[offset]=substr(line,offset+1, 1);
        printf("\r");
        for (c=0; c<ls; c++) {
            printf("%s", out[c]);
        }
    }
    printf("\n");
}
