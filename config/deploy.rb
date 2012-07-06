require 'bundler/capistrano'

set :application, "gitlab"
server "mercury.azaupa.info", :app, :web, :db, :primary => true
set :branch, "master"
set :deploy_to, "/home/deploy/rails/arcidati"
set :rails_env, "production"
set :use_sudo, false

set :scm, "git"
set :repository, "git@github.com:andreazaupa/arcidati.git"
set :deploy_via, :remote_cache
set :scm_verbose, true
set :user, "deploy"

after "deploy:finalize_update" do
   run "mkdir -p #{shared_path}/uploads; ln -s #{shared_path}/uploads #{latest_release}/public/uploads"
   run "rm  -f #{latest_release}/config/database.yml; ln -s #{shared_path}/config/database.yml #{latest_release}/config/database.yml "
end
