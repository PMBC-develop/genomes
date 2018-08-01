# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
[ -z "$PS1" ] && return

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ -f /etc/bashrc ]; then
            . /etc/bashrc
            fi
            case $HOSTNAME in
            GENOSEQ)
            PS1="\e[31;1m[\e[0m\u@\h \T \e[36m\$PWD\\$\e[0m\e[31;1m]\e[0m\n"

            esac
unset color_prompt force_color_prompt

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

PS1="\[\e[1;35m\][\u@\h:\d \t] \e[32m\][\w]\[\e[33m\]\n $\[\e[m\]"

## readlink -m 
function get_asolute_path (){
    perl -e 'if ($ARGV[0]=~/(.*)\/([^\/]+)$/){$base=$2;chdir "$1";}else{$base=$ARGV[0]};$pwd=`pwd`;chomp $pwd;$a_path="$pwd/$base";if (-f $a_path){print $a_path,"\n"}else{print "no such file or directory!\n"}' $1
}
alias gp='get_asolute_path'

user=`whoami`
alias tt="top -u $user"
alias ht="htop -u xiaoyh"
alias b='vi ~/.bashrc'
alias bb=". ~/.bashrc"
alias les="less -S"
alias le="less -SN"
#alias tp="top -u $use "
alias mdkir='mkdir'
alias cs='cd /home/xiaoyh/software/'
alias cl='cd /home/xiaoyh/Pipeline/'
alias cc='cd /home/xiaoyh/custom'
alias ll='ls -l'
alias l='ls -lh'
alias ..='cd ..'
alias ....='cd ../..'
alias rz="/home/xiaoyh/software/lrzsz/bin/lrz"
alias sz="/home/xiaoyh/software/lrzsz/bin/lsz"
alias qiime="source activate qiime1"
alias qe="source deactivate qiime1"
alias otu="vi /home/xiaoyh/Pipeline/16S/script/run_OTU.py"
## python
#export PATH="/home/xiaoyh/software/python/bin:"$PATH
export PATH=/home/xiaoyh/miniconda2/envs/qiime1/bin/:$PATH
# added by Miniconda2 4.3.21 installer
export PATH="/home/xiaoyh/miniconda2/bin:$PATH"

## automake  m4
export PATH=/home/xiaoyh/software/automake/m4-1.4.13/bin:$PATH
export PATH=/home/xiaoyh/software/automake/autoconf/bin:$PATH
export PATH=/home/xiaoyh/software/automake/bin:$PATH


## java
export JAVA_HOME=/home/xiaoyh/software/java/jdk1.8.0_144
export PATH=$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

# R
export PATH=/home/xiaoyh/software/R/R-3.4.1/bin:$PATH
export LD_LIBRARY_PATH=/home/xiaoyh/software/R/lib/R/lib:$LD_LIBRARY_PATH
## R  dev
export LD_LIBRARY_PATH=/home/xiaoyh/software/R/pcre/lib:/home/xiaoyh/software/R/icuuc/usr/lib64:/home/xiaoyh/software/R/stdc/usr/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/home/xiaoyh/software/R/bzip2/lib:$LD_LIBRARY_PATH
export PATH=/home/xiaoyh/software/R/bzip2/bin:$PATH
export C_INCLUDE_PATH=/home/xiaoyh/software/R/bzip2/include:$C_INCLUDE_PATH
export PATH=/home/xiaoyh/software/R/dev/bin2:$PATH

## stdc  vsearch
export LD_LIBRARY_PATH=/home/xiaoyh/software/R/stdc/usr/lib/:$LD_LIBRARY_PATH
## fastq-join
export PATH=/home/xiaoyh/software/fastq-join/fastq-join-master:$PATH
## picrust
export PATH=/home/xiaoyh/software/picrust/picrust/scripts/:$PATH
## 
export PATH=/home/xiaoyh/software/mafft/usr/bin:$PATH

## ant
export PATH=/home/xiaoyh/software/RDPtools/apache-ant-1.10.1/bin:$PATH

## gmap
export PATH=/home/xiaoyh/software/gmap/bin/:$PATH
## export2graphlan
export PATH=/home/xiaoyh/software/graphlan/export2graphlan:$PATH
export PATH=/home/xiaoyh/software/graphlan/graphlan:$PATH

## lefse
export PATH=/home/xiaoyh/software/lefse/lefse/:$PATH

## mothur
export PATH=/home/xiaoyh/software/mothur/mothur:$PATH
## gcc
#export PATH=/home/xiaoyh/software/gcc/gcc-trunk/bin/:$PATH
#export C_INCLUDE_PATH=/home/xiaoyh/software/gcc/gcc-trunk/include/:$C_INCLUDE_PATH
#export LD_LIBRARY_PATH=/home/xiaoyh/software/gcc/gcc-trunk/lib:$LD_LIBRARY_PATH


## sratools
export PATH=/home/xiaoyh/software/sratools/sratoolkit.2.8.2-1-ubuntu64/bin:$PATH
## meta  spades
export PATH=/home/xiaoyh/software/SPAdes/SPAdes-3.1.0-Linux/bin:$PATH

## MetaGeneMark
export PATH=/home/xiaoyh/software/MetaGeneMark/MetaGeneMark_linux_64/mgm:$PATH


## blast
export PATH=/home/xiaoyh/software/blast/ncbi-blast-2.6.0+/bin:$PATH


export LD_LIBRARY_PATH=/home/xiaoyh/source:$LD_LIBRARY_PATH

# htop
export PATH=/home/xiaoyh/software/htop/bin:$PATH
