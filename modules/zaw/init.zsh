#
# Configuration for zaw
#


zstyle ':filter-select:highlight' matched fg=blue
zstyle ':filter-select' max-lines 10         # use 10 lines for filter-select
#zstyle ':filter-select' max-lines -10        # use $LINES - 10 for filter-select
zstyle ':filter-select' rotate-list yes      # enable rotation for filter-select
zstyle ':filter-select' case-insensitive yes # enable case-insensitive search

#extended-search:
#    If this style set to be true value, the searching bahavior will be
#    extended as follows:
#
#    ^ Match the beginning of the line if the word begins with ^
#    $ Match the end of the line if the word ends with $
#    ! Match anything except the word following it if the word begins with !
#    so-called smartcase searching
#
#    If you want to search these metacharacters, please doubly escape them.
zstyle ':filter-select' extended-search yes

source "${0:h}/external/zaw.zsh"

[[ -d "${0:h}/custom-sources" ]] && for f ("${0:h}/custom-sources"/^*.zwc) do source "${f}" ; done
unset f
