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
    ahmedasmar/devops-claude-skills:gitops-workflows
  )
}

######################################################################
#<
#
# Function: p6df::modules::argocd::home::symlinks()
#
#  Environment:	 HOME P6_DFZ_SRC_DIR
#>
######################################################################
p6df::modules::argocd::home::symlinks() {

  p6_file_symlink "$P6_DFZ_SRC_DIR/ahmedasmar/devops-claude-skills/gitops-workflows"  "$HOME/.claude/skills/gitops-workflows"

  p6_return_void
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
# Function: p6df::modules::argocd::mcp()
#
#>
######################################################################
p6df::modules::argocd::mcp() {

  p6_js_npm_global_install "argocd-mcp"

  p6df::modules::anthropic::mcp::server::add "argocd" "npx" "-y" "argocd-mcp"
  p6df::modules::openai::mcp::server::add "argocd" "npx" "-y" "argocd-mcp"

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
