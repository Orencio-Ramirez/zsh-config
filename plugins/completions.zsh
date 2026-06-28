###########################################################################
# plugins/completions.zsh
#
# Integración de zsh-completions.
#
# Aumenta el numero de comandos con autocompletar
###########################################################################

###########################################################################
# Comprobación de existencia
###########################################################################

if [[ -f $ZSH_DIR/externos/zsh-completions/zsh-completions.plugin.zsh ]]; then
    source $ZSH_DIR/externos/zsh-completions/zsh-completions.plugin.zsh
else
    return
fi
autoload -Uz compinit
compinit
###########################################################################
# Fin
###########################################################################