#!/bin/bash

function newproject() {
    cd ~/projects/ || mkdir ~/projects && cd ~/projects
    mkdir $1
    cd $1
    touch $1'.sh' || 'Operation Error! No file name detected'
    echo '#Do not delete this command'> $1'.sh'
    echo '#!/bin/bash'> $1'.sh'
    vim $1'.sh'
}

function editproject() {
    cd ~/projects/$1 || mkdir ~/projects/$1 && cd ~/projects/$1
    vim $1'.sh' || 'Operation Error! Project does not exist'
}

function listproject {
    cd ~/projects || mkdir ~/projects && cd ~/projects
    dir
}

function runproject() {
    cd ~/projects/$1 || mkdir ~/projects/$1 && cd ~/projects/$1
    chmod +x $1'.sh'
    ./$1'.sh'
}

function delproject() {
    cd ~/projects/ || mkdir ~/projects/ && cd ~/projects/
    rmdir $1
    sudo 'Bye bye project' $1 '!'
}

function project {
    sudo 'All commands avalible with Project'
    sudo 'newproject [name]'
    sudo 'editproject [name]'
    sudo 'listproject'
    sudo 'runproject [name]'
    sudo 'delproject [name]'
    sudo 'project'
    sudo 'Good luck makers!'
}
