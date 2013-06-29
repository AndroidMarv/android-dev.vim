function! androiddev#project#create(project_type, project_target, package_name, project_path, ...)
  let dict = ["create", a:project_type, "--target", a:project_target, "--package", a:package_name, "--path", a:project_path]

  if a:project_type ==# "project"
    call add(dict, "--activity")
    call add(dict, a:1)
  endif

  echo androiddev#util#RunCommand("android", dict)
endfunction

function! androiddev#project#update(project_type, project_target, project_path, ...)
  let dict = ["update", a:project_type, "--target", a:project_target, "--path", a:project_path])

  if a:project_type ==# "project"
    call add(dict, "--activity")
    call add(dict, a:1)
  endif

  echo androiddev#util#RunCommand("android", dict)
endfunction

function! g:AndroidDevCreateAppProject(project_target, package_name, activity_name, project_path)
  call androiddev#project#create("project", a:project_target, a:package_name, a:activity_name, a:project_path)
  "cd a:project_path
endfunction

function! g:AndroidDevUpdateAppProject(project_target)
  let l:root_path = androiddev#util#GetRootDirectory()

  if !l:root_path
    echomsg "[Android.Dev] Can't find the project to be updated."
  else
    call androiddev#project#update(a:project_target, &l:root_path)
    cd &l:root_path
  endif

endfunction

function! g:AndroidDevCreateLibProject(project_target, package_name, project_path)
  call androiddev#project#create("lib-project", a:project_target, a:package_name, a:project_path)
endfunction

function! g:AndroidDevUpdateLibProject(project_target)
  let l:root_path = androiddev#util#GetRootDirectory()

  if !l:root_path
    echomsg "[Android.Dev] Can't find the lib project to be updated."
  else
    call androiddev#project#update("lib-project", a:project_target, &l:root_path)
    cd &l:root_path
  endif

endfunction
