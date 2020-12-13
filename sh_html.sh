#!/bin/bash

# sysinfo_page - A script to produce an HTML file
# based on : http://linuxcommand.org/lc3_writing_shell_scripts.php

title="System Information for"

cat <<- _EOF_
    <html>
    <head>
        <title>
        $title $HOSTNAME
        </title>
    </head>

    <body>
    <h1>$title $HOSTNAME</h1>
    <p>Updated on $(date +"%x %r %Z") </p>
    </body>
    </html>
_EOF_