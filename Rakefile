SSH = 'ssh -A -i ~/git/evans8580/evans8580.pem -l evans'

desc "Run Puppet on ENV['CLIENT']"
task :apply do
  client = ENV['CLIENT']
  sh "git push"
  sh "#{SSH} #{client} pull-updates"
end
