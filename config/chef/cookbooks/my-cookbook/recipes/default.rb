# %w{emacs emas-nox lsof strace tmux htop}.each do |pkg|
#   package pkg do
#     action :install
#   end
# end

user 'epic_person' do
  # home '/epic_person'
  shell '/usr/src/codecraft-lab/current/lib/menu.rb'
  action :create
end

rbenv_global '2.0.0-p451' do
  user 'epic_person'
end

%w{bundler rake}.each do |gem|
  rbenv_gem gem do
    rbenv version '2.0.0-p451'
  end
end