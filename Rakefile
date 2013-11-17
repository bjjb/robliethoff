file "index.html" => "index.haml"
file "style.css"  => "style.scss"
file "script.js"  => "script.coffee"

task default: FileList[ "index.html", "js/script.js", "css/style.css" ]

rule(".css" => ".scss")  { |t| system "sass --scss #{t.source} #{t.name}" }
rule(".js" => ".coffee") { |t| system "coffee -c #{t.source}" }
rule(".html" => ".haml") { |t| system "haml #{t.source} #{t.name}" }
