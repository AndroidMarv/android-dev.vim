function! androiddev#project#create()
  echo androiddev#util#RunCommand("android", "create project --target android-21 --name me.jalcine.sampleproject --activity MainActivity --path $PWD/SampleProject")
  cwd("$PWD/SampleProject")
endfunction
