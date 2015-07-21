#!/bin/bash

set -e

for vm in $( vboxmanage list vms | sed -ne 's/"<inaccessible>" //p' ); do
  echo "Unregistering: ${vm}"
  vboxmanage unregistervm ${vm}
done
