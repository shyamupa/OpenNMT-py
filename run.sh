#!/usr/bin/env bash
ME=`basename $0` # for usage message

if [ "$#" -ne 0 ]; then 	# number of args
    echo "USAGE: "
    echo "$ME"
    exit
fi

frac=0.1

# python preprocess.py \
#        -train_src ../lowres-translit/data/hindi_train_${frac}.fr \
#        -train_tgt ../lowres-translit/data/hindi_train_${frac}.en \
#        -valid_src ../lowres-translit/data/hindi_test.fr \
#        -valid_tgt ../lowres-translit/data/hindi_test.en \
#        -save_data hindi_news15_${frac}

python train.py \
       -data hindi_news15_${frac} \
       -save_model model.hindi_news15_${frac}_v2 \
       -src_word_vec_size 100 \
       -tgt_word_vec_size 100 \
       -rnn_size 200





if [[ $? == 0 ]]        # success
then
    :                   # do nothing
else                    # something went wrong
    echo "SOME PROBLEM OCCURED";            # echo file with problems
fi
