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

if [[ -f /usr/share/zsh-completions/zsh-completions.zsh ]]; then
    source /usr/share/zsh-completions/zsh-completions.zsh
else
    return
fi

###########################################################################
# Fin
###########################################################################