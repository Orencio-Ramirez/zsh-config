###########################################################################
# plugins/history-substring-search.zsh
#
# Integración de zsh-history-substring-search.
#
# Permite navegar por el historial mostrando los parametros del comando 
# en gris basadas en historial del comando.
#
#
###########################################################################

###########################################################################
# Comprobación de existencia
###########################################################################

if ! command -v zsh-history-substring-search >/dev/null 2>&1; then
    # fallback típico en Debian (paquete en /usr/share)
    if [[ -f $ZSH_DIR/externos/zsh-history-substring-search/zsh-history-substring-search.zsh ]]; then
        source $ZSH_DIR/externos/zsh-history-substring-search/zsh-history-substring-search.zsh
    else
        return
    fi
fi

###########################################################################
# Configuracion de teclas
###########################################################################

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


###########################################################################
# Configuracion de busqueda
###########################################################################
# HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND` is a global variable that defines
#  how the query should be highlighted inside a matching command. Its default
#  value causes this script to highlight using bold, white text on a magenta
#  background. See the "Character Highlighting" section in the zshzle(1) man
#  page to learn about the kinds of values you may assign to this variable.

# HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND` is a global variable that
#  defines how the query should be highlighted when no commands in the
#  history match it. Its default value causes this script to highlight using
#  bold, white text on a red background. See the "Character Highlighting"
#  section in the zshzle(1) man page to learn about the kinds of values you
#  may assign to this variable.

# HISTORY_SUBSTRING_SEARCH_GLOBBING_FLAGS` is a global variable that defines
#  how the command history will be searched for your query. Its default value
#  causes this script to perform a case-insensitive search. See the "Globbing
#  Flags" section in the zshexpn(1) man page to learn about the kinds of
#  values you may assign to this variable.

# HISTORY_SUBSTRING_SEARCH_FUZZY` is a global variable that defines
#  how the command history will be searched for your query. If set to a non-empty
#  value, causes this script to perform a fuzzy search by words, matching in
#  given order e.g. `ab c` will match `*ab*c*`


# HISTORY_SUBSTRING_SEARCH_PREFIXED` is a global variable that defines how
#  the command history will be searched for your query. If set to a non-empty
#  value, your query will be matched against the start of each history entry.
#  For example, if this variable is empty, `ls` will match `ls -l` and `echo
#  ls`; if it is non-empty, `ls` will only match `ls -l`.

# HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE` is a global variable that defines
#  whether all search results returned are _unique_. If set to a non-empty
#  value, then only unique search results are presented. This behaviour is off
#  by default. An alternative way to ensure that search results are unique is
#  to use `setopt HIST_IGNORE_ALL_DUPS`. If this configuration variable is off
#  and `setopt HIST_IGNORE_ALL_DUPS` is unset, then `setopt HIST_FIND_NO_DUPS`
#  is still respected and it makes this script skip duplicate _adjacent_ search
#  results as you cycle through them, but this does not guarantee that search
#  results are unique: if your search results were "Dog", "Dog", "HotDog",
#  "Dog", then cycling them gives "Dog", "HotDog", "Dog". Notice that the "Dog"
#  search result appeared twice as you cycled through them. If you wish to
#  receive globally unique search results only once, then use this
#  configuration variable, or use `setopt HIST_IGNORE_ALL_DUPS`.

# HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_TIMEOUT` is a global variable that
#  defines a timeout in seconds for clearing the search highlight.
###########################################################################
# Fin
###########################################################################