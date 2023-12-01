#!/usr/bin/env tclsh
proc webServer {chan addr port} {
    while {[gets $chan] ne ""} {}
    puts $chan "HTTP/1.1 200 OK\nConnection: close\nContent-Type: text/plain\n"
    puts $chan "Hello v1.0!"
    close $chan
}

socket -server webServer 80
vwait forever
