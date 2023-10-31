#!/bin/bash
# Usage: ./wait-for-it.sh host:port [-s] [-t timeout] [-- command args]
#   -s, --strict         Only execute subcommand if the test succeeds
#   -q, --quiet          Don't output any status messages
#   -t, --timeout        Timeout in seconds, zero for no timeout
host=""
port=""
strict=false
quiet=false
timeout=15
cmd=()

while :; do
  case "$1" in
    *:* )
    host=${1%:*}
    port=${1#*:}
    shift
    ;;
    -q | --quiet )
    quiet=true
    shift
    ;;
    -s | --strict )
    strict=true
    shift
    ;;
    -t | --timeout )
    timeout="$2"
    if [ "$timeout" -eq "$timeout" ] 2>/dev/null; then
      shift 2
    else
      echo "Error: Invalid timeout value." >&2
      exit 1
    fi
    ;;
    --)
    shift
    cmd=("$@")
    break
    ;;
    *)
    break
    ;;
  esac
done

if [[ "$host" == "" || "$port" == "" ]]; then
  echo "Error: You must provide a host and port." >&2
  exit 1
fi

if ! $quiet; then
  echo "Waiting for $host:$port..."
fi

start_ts=$(date +%s)
while :
do
  nc -z -w 1 "$host" "$port" 2> /dev/null
  result=$?
  end_ts=$(date +%s)
  if [ $result -eq 0 ]; then
    if ! $quiet; then
      echo "Service is available after $((end_ts - start_ts)) seconds."
    fi
    break
  fi
  if [ $timeout -gt 0 ] && [ $((end_ts - start_ts)) -ge $timeout ]; then
    if ! $quiet; then
      echo "Timeout reached after $((end_ts - start_ts)) seconds."
    fi
    if $strict; then
      exit 1
    else
      break
    fi
  fi
  sleep 1
done

exec "${cmd[@]}"
