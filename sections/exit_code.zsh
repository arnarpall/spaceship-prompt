# EXECUTION TIME
SPACESHIP_EXEC_TIME_SHOW="${SPACESHIP_EXEC_TIME_SHOW:=true}"
SPACESHIP_EXEC_TIME_PREFIX="${SPACESHIP_EXEC_TIME_PREFIX:="took "}"
SPACESHIP_EXEC_TIME_SUFFIX="${SPACESHIP_EXEC_TIME_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_EXEC_TIME_COLOR="${SPACESHIP_EXEC_TIME_COLOR:="yellow"}"
SPACESHIP_EXEC_TIME_ELAPSED="${SPACESHIP_EXEC_TIME_ELAPSED:=2}"

# EXIT CODE
# Show exit code of last statement
spaceship_exit_code() {
  [[ $SPACESHIP_EXIT_CODE_SHOW == false || $RETVAL == 0 ]] && return

  _prompt_section \
    "$SPACESHIP_EXIT_CODE_COLOR" \
    "$SPACESHIP_EXIT_CODE_PREFIX" \
    "${SPACESHIP_EXIT_CODE_SYMBOl}$RETVAL" \
    "$SPACESHIP_EXIT_CODE_SUFFIX"
}
