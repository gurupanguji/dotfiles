SPACESHIP_PROMPT_ORDER=(
  sudo
  user
  host
  dir
  time
  git
)
# Display time
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_FORMAT='%D{%H:%M}'

# Display username always
SPACESHIP_USER_SHOW=always
SPACESHIP_USER_PREFIX=""

# Display hostname
SPACESHIP_HOST_SHOW=always
SPACESHIP_HOST_PREFIX="@"

# Sudo indicator
SPACESHIP_SUDO_SHOW=true

# Do not truncate path in repos
SPACESHIP_DIR_TRUNC_REPO=false

# Add a custom vi-mode section to the prompt
# See: https://github.com/spaceship-prompt/spaceship-vi-mode
# spaceship add --before char vi_mode

# Add git
spaceship add git
SPACESHIP_GIT_STATUS_SHOW=true
SPACESHIP_GIT_STATUS_ASYNC=true
