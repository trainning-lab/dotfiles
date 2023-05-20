# Dotfiles

# Intro

> 👋  Welcome! Get information and basic concept about Dotfiles.

You can find a lot of content in the internet, so, I don’t like expand in this topic, only I tell our

*`“DotFile, manage our configuration more easy and spend little time to you have ready your PC”`*

Although, If you like more information, You could read more information [here](https://dev.to/jogendra/intro-to-dotfiles-4bb8).

## Begining

### Change bash to zsh promt

Verify If zsh in the prompt

```bash
*echo $0
# if the response is:
bash
# then, you need change to [zsh], using the command follow
chsh -s /bin/zsh
# to finish, and validate the change... you need close&open terminal*
```

# Get Started

Recomend this website:



[https://dotfiles.github.io/](https://dotfiles.github.io/)

## Basic Structure ~.zshrc

```bash
# Set Variables

# Change ZSH options

# Create Aliases

# Custom the prompt(s)

# Add Locations to $PATH Variables

# Write Handy Functions

# Use ZSH plugins

# ... and Others

```

### Check my prompt and others things

```bash
echo $PS1
# %n@%m %1~ %#
echo $PROMPT
# %n@%m %1~ %#
echo $SHLVL
# 1

```

> 👉 **Have a question?** Click the `?` at the bottom right for more guides, or to send us a message.

# Using Dotbot

[https://github.com/anishathalye/dotbot](https://github.com/anishathalye/dotbot)

## Quickly note:

### Tips to links


> 💡 If the source location is omitted or set to `null`, Dotbot will use the basename of the destination, with a leading `.`stripped if present. This makes the following two config files equivalent.


### Tips to Shell


>💡 Shell commands support an extended syntax as well, which provides more fine-grained control.Note that `quiet`controls whether the command (a string) is printed in log output, it does not control whether the output from running the command is printed (that is controlled by `stdout`/ `stderr`). When a command's `stdin`/ `stdout`/ `stderr`is not enabled (which is the default), it's connected to `/dev/null`, disabling input and hiding output.

### Before, Install some tools

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install httpie
brew install bat
```

### And, Begin install apps

using brew, begin as soon to install apps to your pc.

```bash
brew search chrome
brew info google-chrome
brew install google-chrome
```

```bash
brew search code
brew info visual-studio-code
brew install visual-studio-code

# Config
which code
#> /usr/local/bin/code
rm $(which code)
#> code not found

```

Open VSCode from App louncher and changes config….

Suggesst change:

zoom -**Zoom Level - 4**

whitespace - **Render Whitespace - all**

spaces - **Tab Size - 2**

keyboard shortcuts

create symbolic link from VSCode GUI, and …

```bash
ls $(which code)
ls "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code"
#> -rwxr-xr-x@ 1 lg  admin   1.0K Mar 14 18:51 /Applications/Visual Studio Code.app/Contents/Resources/app/bin/code*
```

Fixed problem with symbolink to VSCode when it is created manually and automatic from the app.

```bash
brew search intellij
#IntelliJ IDEA Ultimate
brew info intellij-idea
#IntelliJ IDEA Community Edition
brew info intellij-idea-ce

# If you have a license to Ultimate, So, 
#You sould intall (intellij-idea) in other case intall(intellij-idea-ce)
brew install intellij-idea

brew search notion
brew search miro
brew search rectangle
#gitmind
brew search postman
brew search drawio
brew search iterm2
```

### The best recomendation to install apps


> 💡  It’s using **brew boundle**


**brew boundle dump**

Write all installed casks/formulae/images/taps into a Brewfile in the
current directory.


> 🚨 Command recommend is: ***brew bundle dump --force --describe***



## Important Tools


> 💡 **bat:** Clone of cat(1) with syntax highlighting and Git integration



```bash
#   Important!!
# You can see the list languages available, using the command following
bat --list-languages
```


> 💡 **exa:** Modern replacement for 'ls’

[https://the.exa.website/](https://the.exa.website/)

```bash
alias exa='exa -laFh --git'
alias ls='exa'

alias tree='ls --tree --level=2'
alias tree_all='ls --tree'
alias tree_level='f(){ ls --tree --level="$@";  unset -f f; }; f'
```

---


> 💡 **mas-cli:** Mac App Store command-line interface https://github.com/mas-cli/mas



> 💡 **bat-extras:**

```bash
man git
batman git
alias man=batman
```

## Mas CLI

Mac App Store command-line interface

```bash
mas list
mas search
mas install #idApp

```

# Brew

***`brew bundle dump --force --describe`***

```bash
brew search
brew info 
***brew bundle dump --force --describe

###
brew update
brew outdated
brew upgrade***
```

# Important commands & functions

## Exists() Prevent unnecessary install

```bash
# Get info process PID
ps $$
 
# Get name from process PID 
ps $$ -ocomm=
```

## Important! `Command -v ` Vs `Which `


> 💡 `Command -v ` Vs `Which` is similar to `Which`
[https://stackoverflow.com/a/677212/1341838](https://stackoverflow.com/a/677212/1341838)

[How can I check if a program exists from a Bash script?](https://stackoverflow.com/a/677212/1341838)

## Redirections using `> ` and `>> `

```bash
# redirect the output to 'redirect_output' file, but override the 'redirect_output' file
echo "Hello World" > redirect_output
echo "World Hello" > redirect_output

# redirect the output to 'redirect_output' file, but it not override the 'redirect_output' file, only add content more
echo "Java" >> redirect_output
echo "Python" >> redirect_output
```

## /dev/null

```bash
bat /dev/null
# redirect the output to '/dev/null' file, but it always is empty
echo "C++" >> /dev/null
echo "C#" >> /dev/null
bat /dev/null
```

## 2>&1;

Por instance: `command -v $1 >/dev/null 2>&1;`

> STDIN  (Keybroad) = 0
STDOUT (Display) = 1
STDERR (Display) = 2
>

```bash
# 1 to outputs success register in the system
exa gitconfig 1>> redirect_output 2>>redirect_error

# 2 to outputs error register in the system
exa nonexistent 1>> redirect_output 2>>redirect_error
```

## Command rm to MacOs

[npm: trash-cli](https://www.npmjs.com/package/trash-cli?activeTab=readme)

# NodeJs Management Version

## Have two alternatives:

[https://github.com/tj/n](https://github.com/tj/n)

[https://github.com/nvm-sh/nvm](https://github.com/nvm-sh/nvm)

In this case, use N, simply tool. But, it is good and does your work good.

```bash
brew info n
brew install n

# Need add more configuration, 
n doctor 
```

## Another package manager YARM

It’s important because the doc to install YARN version 1.X is different with the version 2.X, follow the links to both versions

### Step by step for version 1.X

[Yarn](https://classic.yarnpkg.com/en/docs/install#alternatives-stable)

### Step by step for version 2.X

[Home](https://yarnpkg.com/)

# Java Management Version

## Some alternatives:

[https://github.com/jenv/jenv](https://github.com/jenv/jenv)

[https://github.com/shyiko/jabba](https://github.com/shyiko/jabba)

# Ruby Management Version

## Some alternatives:

[https://github.com/rbenv/rbenv](https://github.com/rbenv/rbenv)

[https://github.com/rvm/rvm](https://github.com/rvm/rvm)

# Fixed problem with duplicate paths

**Part 01:** When have duplicate path, as can see follow picture, is important fixed this problem

[https://drive.google.com/file/d/1z9XEaRc8_J3IhEAZHuS1qz1r00b4Z13q/view?usp=drive_web](https://drive.google.com/file/d/1z9XEaRc8_J3IhEAZHuS1qz1r00b4Z13q/view?usp=drive_web)

Before, begin to read this article about `PATH` and `typeset` commands([more details](https://zsh.sourceforge.io/Guide/zshguide02.html#:~:text=one)%20for%20parameters.-,2.5.11%3A%20Path,-It%20helps%20to)).

**Part 02(example):** For the fix this problem, you can use `typeset -U` . Before, begin with a simple array(`*meatball_sandwich*`) as example.

```bash
~ 2 % meatball_sandwich=(
utah
get
me
two
)

~ 2 % echo $meatball_sandwich
>> utah get me two

# Add duplicate element
meatball_sandwich=(
	$meatball_sandwich
	utah
)

~ 2 % echo $meatball_sandwich
>> utah get me two utah
```

**Part 03(Solution):** Now, using the command `typeset -U` on `meatball_sandwich` array, so we have an array with unique values.

```bash
~ 2 % typeset -U meatball_sandwich

~ 2 % echo $meatball_sandwich
>> utah get me two

# Other test, try added the element "two" again.
~ 2 % meatball_sandwich=(
	two
	$meatball_sandwich
)

~ 2 % echo $meatball_sandwich
>> two utah get me 
```





# Overview
- [x]  Terminal Preferences
- [x]  Changed Shell to ZSH
- [x]  Dock Preferences
- [x]  Mission Control Preference (don't rearrange spaces)
- [x]  Finder Show Path Bar
- [x]  Trackpad (Three Finger Drag and Tap to Click)
- [x]  .zshrc
- [x]  Git (config and SSH)
- [x] Homebrew intalling
- [x] Alfred(Turn off Spotligh shortcut and use for Alfred)

## Author:
Luis Fernando García Quiroga
dotfiles.luisfer.labs
