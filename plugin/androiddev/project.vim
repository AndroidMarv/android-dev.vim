function! androiddev#project#create(project_target, package_name, activity_name, project_path)
  echo androiddev#util#RunCommand("android", ["create", "project", "--target", a:project_target, "--package", a:package_name, "--activity", a:activity_name, "--path", a:project_path])
endfunction

function! androiddev#project#update(project_target, project_path)
  echo androiddev#util#RunCommand("android", ["update", "project", "--target", a:project_target, "--path", a:project_path])
endfunction

function! g:AndroidDevCreateAppProject(project_target, package_name, activity_name, project_path)
  call androiddev#project#create(a:project_target, a:package_name, a:activity_name, a:project_path)
  cd a:project_path
endfunction

function! g:AndroidDevUpdateAppProject(project_target)
  let l:root_path = androiddev#util#GetRootDirectory()
  if !l:root_path
    echomsg "[Android.Dev] Can't find the project to be updated."
  else
    call androiddev#project#update(a:project_target, &l:root_path)
    cd &l:root_path
  end
end
