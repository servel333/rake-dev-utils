
require File.join( File.dirname(__FILE__), 'utils.rb');

namespace :git do

    desc "git log, multi-line custom Format + graphed + all"
    task( :f ) { cd_invoked_dir; puts_exec 'git log --graph --all --pretty=tformat:"%h%d %ad %an%n%-s%n%-b"' }

    desc "git log, multi-line custom Format + graphed + all + color"
    task( :fc ) { cd_invoked_dir; puts_exec 'git log --graph --all --pretty=tformat:"%h%C(yellow black bold)%d%Creset %Cred%ad%Creset %Cgreen%an%Creset%n%-s%n%-b"' }

    desc "git log, 1 line custom format + graphed + all"
    task( '1' ) { cd_invoked_dir; puts_exec 'git log --graph --all --pretty=tformat:"%h%d %ad %an %-s"' }

    desc "git log, 1 line custom format + graphed + all + color"
    task( '1c' ) { cd_invoked_dir; puts_exec 'git log --graph --all --pretty=tformat:"%h%C(yellow black bold)%d%Creset %Cred%ad%Creset %Cgreen%an%Creset %-s"' }

    desc "git log, lineline + graphed + abbrev + decorate + all"
    task( :oneline ) { cd_invoked_dir; puts_exec 'git log --graph --oneline --all --abbrev-commit --decorate' }

    desc "git log, Name-Status + multi-line custom Format + graphed + all"
    task( :nsf ) { cd_invoked_dir; puts_exec 'git log --graph --name-status --all --pretty=tformat:"%h%d %ad %an%n%-s%n%-b"' }

    desc "git log, Name-Status + graphed + abbrev"
    task( :ns ) { cd_invoked_dir; puts_exec 'git log --graph --name-status --all --abbrev-commit --decorate' }

    desc "git cherry-pick, without commit"
    task( :pick, %w( commit ) ) { |t,a| puts_exec 'git cherry-pick -n ' + a.commit }

    desc 'force undo all changes, including new files'
    task( :forceundo ) { cd_invoked_dir; puts_exec 'git clean -d --force' }

    desc 'List ignored files'
    task( :ignored ) { cd_invoked_dir; puts_exec 'git clean -dX --dry-run' }

end
