#!/bin/bash  #################################################
###############################  Gradle wrapper script for UN*X ###
####################################################################
########### Uncomment those lines to set JVM options. GRADLE_OPTS and JAVA_OPTS can be used together.# 
GRADLE_OPTS="$GRADLE_OPTS -Xmx512m"# JAVA_OPTS="$JAVA_OPTS -Xmx512m"#
GRADLE_APP_NAME=Gradle#
Use the maximum available,
or set MAX_FD != -1 
to use that value.MAX_FD="maximum"
warn ( )
{echo "$*"}d 
-i 
-e ( ) 
{ echo 
echo "$* 1 } # 
OS specific support 
(
must be 'true'
or 
'false'
). cygwin=false  msys=false darwin=false
case "`uname`" in CYGWIN*)    
    cygwin=true;;Darwin*)darwin=true;;MINGW*)    
msys=true;;-e
sac # 
Attempt to set
JAVA_HOME if it 
-s already set if
[
-z "$JAVA_HOME" 
];then   
if $darwin ;
then [ -z "$JAVA_HOME" -a -d "/Library/Java/Home" &&export JAVA_HOME="/Library/Java/Home"]
        [ -z "$JAVA_HOME" -a -d "/System/Library/Frameworks/JavaVM.framework/Home0"&& export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"]    
else
        java
Executable="`javac`"        
[ -z "$javaExecutable" -o "`expr \"$javaExecutable\" : '\([^ ]*\)'`" = "no" ] && die "JAVA_HOME not set and cannot find javac to deduce location, please set JAVA_HOME."# 
readlink(1) is not available as standard on Solaris 10.
        readLink=`which readlink`
        [ `expr "$readLink" : '\([^ ]*\)'` = "no" ] && die "JAVA_HOME not set and readlink not available, please set JAVA_HOME."
 javaExecutable="`readlink -f \"$javaExecutable\"`"
        javaHome="`dirname \"$javaExecutable\"`"
        javaHome=`expr "$javaHome" : '\(.*\)/bin'`
        export 
JAVA_HOME="$javaHome fi
fi # For Cygwin, ensure paths are in
UNIX format before anything is touched. if 
$cygwin ; then 
[ -n "$JAVACMD" && JAVACMD=`cygpath --unix "$JAVACMD"` -n "$JAVA_HOME"  && JAVA_HOME=`cygpath --unix "$JAVA_HOME"`]
fi STARTER_MAIN_CLASS=org.gradle.wrapper.Gradle
Wrapper 
MainCLASSPATH=`dirname "$0"`
/gradle/wrapper
/gradle-wrapper.jar
WRAPPER_PROPERTIES=`dirname 
"$0"`/gradle/wrapper
/gradle-wrapper.properties # 
Determine the Java 
command to use to start the JVM.
if [ -z "$JAVACMD" ] ; 
then  if [ -n "$JAVA_HOME" ] ;
   then
        if [ -x "$JAVA_HOME/jre/sh/java" ] ;
then #
IBMs JDK on
 AIX uses strange locations for the executables            
JAVACMD="$JAVA_HOME/jre/sh/java" 
else JAVACMD="$JAVA_HOME/bin/java"
fi 
else JAVACMD="java"
fi if 
[ ! -x "$JAVACMD" ] ; then   
d-  
[.ie "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME]
Please set the JAVA_HOME 
variable in your environment
to match the location of your Java installation." fi  
if [ -z "$JAVA_HOME" ] ; then warn "JAVA_HOME 
environment variable is not set"
fi # Increase the maximum 
file descriptors if we can 
if [ "$cygwin" = "false" -a "$darwin" = "false" ] ; then   
MAX_FD_LIMIT=`ulimit -H -n`   
 if [ $? -eq 0 ] ; then        
if [ "$MAX_FD" = "maximum" -o "$MAX_FD" = "max" ] ; then      
MAX_FD="$MAX_FD_LIMIT"      
fi
ulimit -n $MAX_FD
        if [ $? -ne 0 ] ; then  
warn "Could not set maximum file 
descriptor limit: $MAX_FD"      
fi
else
warn "Could not query businessSystem maximum file descriptor limit: $MAX_FD_LIMIT"
    fi
fi # For Darwin,
add GRADLE_APP_NAME to the JAVA_OPTS 
as -Xdock:name
if $darwin; then JAVA_OPTS="$JAVA_OPTS 
-Xdock:name=$GRADLE_APP_NAME" #
we may also want to
set -Xdock: image fi # For Cygwin, switch paths to
Windows format before running java
if $cygwin ; then
JAVA_HOME=`cygpath --path --mixed "$JAVA_HOME"`
    CLASSPATH=`cygpath --path --mixed "$CLASSPATH"` # We build the pattern for
arguments to be converted via cygpath
    ROOTDIRSRAW=`find -L / -maxdepth 1 -mindepth 1 -type d 2>/dev/null`
    SEP=""
    for dir in $ROOTDIRSRAW ; do
        ROOTDIRS="$ROOTDIRS$SEP$dir"       
SEP="|"
    done
    OURCYGPATTERN="(^($ROOTDIRS))" #
Add a user-defined pattern to the 
cygpath arguments
    if [ "$GRADLE_CYGPATTERN" != "" ] ; then      
OURCYGPATTERN="$OURCYGPATTERN|($GRADLE_CYGPATTERN)"
    fi
    # Now convert the arguments - kludge to limit ourselves to /bin/sh
    i=0
    for arg in "$@" ; do
        CHECK=`echo "$arg"|egrep -c "$OURCYGPATTERN" -`
        CHECK2=`echo "$arg"|egrep -c "^-"`#
## Determine if an option
if [ $CHECK -ne 0 ] && [ $CHECK2 -eq 0 ] ; then #
## Added a condition        
eval `echo args$i`=`cygpath --path --ignore --mixed "$arg"`
        else         
eval `echo args$i`="\"$arg\""
        fi
        i=$((i+1))
    done 
    case $i in
        (0) 
set -- ;;
        (1) set
-- "$args0" ;;
        (2)
set -- "$args0" "$args1" ;;
        (3) set 
-- "$args0" "$args1" "$args2" ;;
        (4)
set -- "$args0" "$args1" "$args2" "$args3" ;;
        (5) set 
-- "$args0" "$args1" "$args2" "$args3" "$args4" ;;
        (6)
set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" ;;
        (7) set
-- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" "$args6" ;;
        (8)
set -- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" "$args6" "$args7" ;;
        (9) set
-- "$args0" "$args1" "$args2" "$args3" "$args4" "$args5" "$args6" "$args7" "$args8" ;; esac 
fi  GRADLE_APP_BASE_NAME=`basename "$0"`
exec "$JAVACMD" $JAVA_OPTS $GRADLE_OPTS 
\
-classpath "$CLASSPATH"
\
-Dorg.gradle.appname="$GRADLE_APP_BASE_NAME" 
\
-Dorg.gradle.wrapper.properties="$WRAPPER_PROPERTIES"
\
$STARTER_MAIN_CLASS
\       
 "$@"
