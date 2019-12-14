# create dummy many files
# usage: NUM=1000 SIZE=10 RAND=true bash <(curl https://raw.githubusercontent.com/ozota1/cmdbase/master/create-zero-files.sh)
# NUM: number of files. default is 100
# SIZE: size of files. default is 10
# RAND: flag for create random content file. default is zero content file 

NUM=${NUM:-"100"}
SIZE=${SIZE:-"10"}

if "${RAND}"; then
  SRC=/dev/urandom
else
  SRC=/dev/zero
fi

for i in $(seq 1 $NUM); do dd if=$SRC of=dummy_file_${i} bs=1 count=$SIZE ; done
