enviroment_name='env'

function help (){
  cat ./.things/help.txt
}
function generate () {
    echo "generate $1.cpp $1.hpp" &&
    touch ${PWD}/src/$1.cpp &&
    touch ${PWD}/include/$1.hpp &&
    echo '#include "./'$1'.hpp"' >> ./include/module.hpp
  }
function remove () {
  echo "remove $1.cpp $1.hpp" &&
  rm ${PWD}/src/$1.cpp &&
  rm ${PWD}/include/$1.hpp &&
  tr -d '#include "./'$1'.hpp"'
}
function build() {
    make clean && make TARGET=$1
}
function run () {
    make clean && make TARGET=$1 && ./$1
}

