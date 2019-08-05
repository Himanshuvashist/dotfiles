#first switch to zsh terminal by => chsh -s $(which zsh)
#check avialable shell by using =>  cat /etc/shells

#then install oh-my-zsh by script =>    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#then go to home/.oh-my-zsh/themes and paste this file there

#after that go to ~/.zshrc and change the theme by typing this file name(whithout .zsh-theme,for example => filename = custom.zsh-theme, then name in ZSH_THEME = "custom") in ZSH_THEME

if [[ -z $ZSH_THEME_CLOUD_PREFIX ]]; then
    ZSH_THEME_CLOUD_PREFIX='☘'
fi

PROMPT='%{$fg_bold[yellow]%}$ZSH_THEME_CLOUD_PREFIX %{$fg_bold[green]%}%p %{$fg[green]%}%~ %{$fg_bold[cyan]%}$(git_prompt_info)%{$fg_bold[blue]%}➜ % %{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}] %{$fg[yellow]%}⚡ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}]"