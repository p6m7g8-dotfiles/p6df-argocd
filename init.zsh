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

  p6df::core::homebrew::cli::brew::install argocd
  p6df::core::homebrew::cli::brew::install argocd-autopilot
  p6df::core::homebrew::cli::brew::install argocd-vault-plugin

  p6_return_void
}

######################################################################
#<
#
# Function: str info = p6df::modules::argocd::prompt::mod()
#
#  Returns:
#	str - info
#
#>
######################################################################
p6df::modules::argocd::prompt::mod() {

  #  local info="argocd:"
  local info=""

  p6_return_str "$info"
}
