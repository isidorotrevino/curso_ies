
#!/bin/bash
P1=$1
P2=$2

echo "TODOS LOS PARAMETROS = $@"

shift
shift
cmd=$@
exec $cmd


