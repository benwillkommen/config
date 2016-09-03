#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
# >>>>BEGIN ADDED BY CNCHI INSTALLER<<<< #
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/nano
# >>>>>END ADDED BY CNCHI INSTALLER<<<<< #

# disable tap to click
synclient MaxTapTime=0

# make right click area smaller. default is 3471.
synclient RightButtonAreaLeft=4600

JAVA_HOME=/usr/bin/java

#osx like "open" behavior (opens thing using default program)
alias open='xdg-open'

source /usr/bin/virtualenvwrapper.sh

alias subl=/opt/sublime_text_3/sublime_text

# for macrolog dev
export DJANGO_SETTINGS_MODULE=macrolog.settings.dev

