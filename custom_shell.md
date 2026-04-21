What you’re seeing in the “nice” terminal is a **custom shell prompt** that shows Git info (branch, status, colors, etc.). You don’t get that by default—you configure it.

Here are the easiest ways to get that exact kind of look 👇

---

# 🔥 Option 1 (Best & Easiest): Install **Oh My Zsh + Powerlevel10k**

This is the most popular setup and will give you exactly that style.

## 1. Install Zsh (if you don’t have it)

```bash
sudo apt install zsh   # Ubuntu/Debian
brew install zsh       # macOS
```

Set it as default:

```bash
chsh -s $(which zsh)
```

---

## 2. Install Oh My Zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

---

## 3. Install Powerlevel10k theme

```bash
git clone https://github.com/romkatv/powerlevel10k.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Edit your config:

```bash
nano ~/.zshrc
```

Change:

```bash
ZSH_THEME="powerlevel10k/powerlevel10k"
```

Then reload:

```bash
source ~/.zshrc
```

---

## 4. Run the setup wizard

It will auto-start, or run:

```bash
p10k configure
```

Pick:

* ✅ “Lean” or “Classic”
* ✅ Enable Git status
* ✅ Enable icons

---

## 5. Install a Nerd Font (IMPORTANT)

Without this, it won’t look right.

👉 Install something like:

* **MesloLGS NF** (recommended)
* or FiraCode Nerd Font

Then set it in your terminal settings.

---

# ⚡ Option 2: Just Add Git Info (Simpler)

If you don’t want all the fancy stuff:

## Bash users:

Install git prompt:

```bash
sudo apt install git
```

Then add to `~/.bashrc`:

```bash
source /usr/share/git/git-prompt.sh

PS1='\u@\h:\w$(__git_ps1 " (%s)")\$ '
```

Reload:

```bash
source ~/.bashrc
```

---

# 🧠 What’s Actually Happening?

That fancy prompt includes:

* Current user + host
* Current directory
* Git branch (`main`)
* Colors/icons
* Sometimes Git status (✔, ✗, etc.)

---

# 💡 Bonus (Make It Look EXACTLY Like Your Screenshot)

In Powerlevel10k config:

* Enable:

  * `vcs` (Git info)
  * `dir` (directory)
* Choose:

  * “Two-line prompt” (like your example)
  * “Angled separators” or “flat”

---

# 🧩 Alternative Tools (if curious)

* **Starship** (works with any shell, super fast)
* **Prezto** (Zsh framework)
* **Pure prompt** (minimal)

---

# 👍 Recommendation

If you want that exact modern dev look:
👉 Go with **Oh My Zsh + Powerlevel10k + Nerd Font**

---

If you want, tell me your OS + terminal (Windows Terminal, iTerm2, GNOME Terminal, etc.), and I’ll give you a **copy-paste setup tailored exactly for you**.
