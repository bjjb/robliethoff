require 'rake/clean'

CLOBBER << FileList['index.html']

file "index.html" => "index.haml" do |t|
  system "haml index.haml index.html"
end

task :default => "index.html"
