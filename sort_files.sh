#!/usr/bin/env fish
function sort_pictures
    set fileExt  $argv[1]
    set year $argv[2]
    set flag $argv[3]
    mkdir output
    find *fileExt | xargs mv -t output/
    if [ $flag -eq n ]
    then
        find *$fileExt -newermt $year'-01-01' | xargs mv -t output/
    else
        find *$fileExt -not -newermt $year'-01-01' | xargs mv -t output/
    fi
end
