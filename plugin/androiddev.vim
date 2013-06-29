let g:android_sdk_package_root   = "com.example"
let g:android_sdk_projects_root  = "$HOME/projects"
let g:android_sdk_default_target = "android-17"

function! g:AndroidDevCreateAppProject(project_target, package_name, activity_name, project_path)
  call androiddev#project#create(a:project_target, a:package_name, a:activity_name, a:project_path)
  cd a:project_path
endfunction
