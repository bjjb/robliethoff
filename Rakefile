require 'rake/clean'

CLOBBER << FileList['index.html', 'application.js', 'application.css']

file "index.html" => "index.haml" do |t|
  system "haml index.haml index.html"
end

file "application.css" => FileList["css/*.{css,scss}"] do |t|
  system "sass css/application.scss application.css"
end

file "application.js"  => FileList["js/*.{js,coffee}"] do
  system "coffee -c js/*.coffee"
  system "cat js/modernizr.js js/jquery.js js/application.js > application.js"
end

task default: FileList[ "index.html", "application.js", "application.css" ]
