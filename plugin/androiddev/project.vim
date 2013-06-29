function! androiddev#project#create()
  echo androiddev#util#RunCommand("android", ["create", "project", "--target android-17", "--package me.jalcine.sampleproject", "--activity MainActivity", "--path $PWD/SampleProject"])
  cd "$PWD/SampleProject"
endfunction
