# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::argocd::deps()
#
#>
######################################################################
p6df::modules::argocd::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-kubernetes
    ohmyzsh/ohmyzsh:plugins/argocd
  )
}

######################################################################
#<
#
# Function: p6df::modules::argocd::external::brew()
#
#>
######################################################################
p6df::modules::argocd::external::brew() {

  p6df::modules::homebrew::cli::brew::install argocd
  p6df::modules::homebrew::cli::brew::install argocd-autopilot
  p6df::modules::homebrew::cli::brew::install argocd-vault-plugin

  p6_return_void
}

######################################################################
#<
#
# Function: str info = p6df::modules::argocd::prompt::line()
#
#  Returns:
#	str - info
#
#>
######################################################################
p6df::modules::argocd::prompt::line() {

  #  local info="argocd:"
  local info=""

  p6_return_str "$info"
}
