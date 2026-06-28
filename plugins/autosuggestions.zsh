###########################################################################
# plugins/autosuggestions.zsh
#
# Integración de zsh-autosuggestions.
#
# Muestra sugerencias en gris basadas en historial.
#
# Ejemplo:
#
#   git status  ← sugerido en gris
#
# Se acepta con:
#   → o Ctrl+E (dependiendo configuración)
###########################################################################

###########################################################################
# Comprobación de existencia
###########################################################################

if ! command -v zsh-autosuggestions >/dev/null 2>&1; then
    # fallback típico en Debian (paquete en /usr/share)
    if [[ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
        source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    else
        return
    fi
fi

###########################################################################
# Estilo de sugerencias
###########################################################################

# Color gris discreto (no molesto en tema oscuro)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=240"

###########################################################################
# Estrategia de sugerencias
###########################################################################

# Basado en historial (más útil en práctica real)
ZSH_AUTOSUGGEST_STRATEGY=(history)

###########################################################################
# Modo de sugerencia
###########################################################################

# Sugerencia inmediata mientras escribes
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

###########################################################################
# Keybind para aceptar sugerencia
###########################################################################

bindkey '^E' autosuggest-accept

# Flecha derecha también acepta sugerencia
bindkey '^[[C' autosuggest-accept

###########################################################################
# Fin
###########################################################################