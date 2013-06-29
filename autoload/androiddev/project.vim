function! androiddev#project#create()
  androiddev#util#RunCommand("android", "create project --target 21")
endfunction
