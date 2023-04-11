#!/usr/bin/env zsh

echo "\n<<< Testing $0 >>>\n"

exists brew && echo "ok!" || echo "bogus"
exists nonexistent && echo "ok" || echo "bogus!"