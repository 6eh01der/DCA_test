#!/usr/bin/env tclsh
package require http
set url [http::geturl [lindex $argv 0]]
set code [http::code $url]
set good "200"
if {[string first $good $code] != -1} {
  exit 0
} else {
exit 1
}
