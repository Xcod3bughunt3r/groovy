#!/bin/sh
# __FUCK LICENSE FOR YOU__
# __The MIT License (MIT)__
# __Copyright (C) 2022 ALIF FUSOBAR. Master Of ITSecurity <https://itsecurity.id/>__

##############################################################################
##                                                                          ##
##  Groovy JVM Bootstrap for UNIX                                           ##
##                                                                          ##
##############################################################################

##
## $Revision$
## $Date$
##

GROOVY_APP_NAME=GroovyC

# resolve links - $0 may be a soft-link
PRG="$0"

while [ -h "$PRG" ] ; do
    ls=`ls -ld "$PRG"`
    link=`expr "$ls" : '.*-> \(.*\)$'`
    if expr "$link" : '/.*' > /dev/null; then
        PRG="$link"
    else
        PRG=`dirname "$PRG"`/"$link"
    fi
done

DIRNAME=`dirname "$PRG"`

. "$DIRNAME/startGroovy.sh"

startGroovy org.codehaus.groovy.tools.FileSystemCompiler "$@"
