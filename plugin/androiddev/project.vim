function! androiddev#project#create()
  echo androiddev#util#RunCommand("android", "create project --target android-17")
endfunction
