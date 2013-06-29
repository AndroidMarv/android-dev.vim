function! androiddev#project#create()
  echo androiddev#util#RunCommand("android", "create project --target 21")
endfunction
