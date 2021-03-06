#!/usr/bin/env bash

BIN=phpcs
PHPCBF_BIN=phpcbf
STANDARD=''
PHPCBF=false

# The reading options part
while [[ $# -gt 0 ]] && [[ ."$1" = .* ]] ;
do
    opt="$1";
    shift;              #expose next argument
    case "$opt" in
        "--bin="* )
           BIN="${opt#*=}";;
        "--phpcbf-bin="* )
           PHPCBF_BIN="${opt#*=}";;
        "--phpcbf="* )
           PHPCBF="${opt#*=}";;
        "--standard="* )
           STANDARD="--standard=${opt#*=}";;
   esac
done

FILES=$(gitamine f:c | grep "\\.php$" | tr '\r\n' ' ')
LINES=${#FILES}

if [ "$LINES" -gt "1" ]
then
    if [ "$PHPCBF" -eq 1 ]; then
        eval "${PHPCBF_BIN}" "${STANDARD}" "${FILES}"
    fi
    eval "${BIN}" --colors -p "${STANDARD}" "${FILES}"
fi
