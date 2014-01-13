name             "sendfile"
maintainer       "Monsoon Co"
maintainer_email "blake@monsoonco.com"
license          "All rights reserved"
description      "Installs/Configures sendfile"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "0.1.0"

recipe  "sendfile", "Site configuration for local dev"

depends "apache2"