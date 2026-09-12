# install
```
gh repo clone rvavr/dots
```

or

```
git clone https://github.com/rvavr/dots
```


cd dotfiles

stow -R */

or pick and choose if you dont want them all change * to app name


------------------------------------------------------------------

Hyprland + Noctalia with some extra's living in unused in case you want use waybar etc instead.

I also just use Vim now. I really don't see a point in complicating anything anymore.


follow at your own risk;

Current setup : Bazzite

```
sudo dnf copr enable lionheartp/Hyprland
sudo rpm-ostree install hyprland hyprland-guiutils xdg-desktop-portal-hyprland noctalia-git nwg-look
```

those commands should install a full environment for hyprland, before rebooting make sure you get whatever config you want to run for hypr, in ~/.config/hypr

the main hyprland package should install a ton of different things that are "needed" after that you basically don't touch rpm-ostree ever again unless its 100% mandatory for something. I typically just run flatpaks with occasional stuff on brew like pass (password-store), my password manager of choice.

Noctalia plugins are really neat, there is one that allows you to use presets for visual effects like animations so you can try a bunch out fairly easily.

KDE is just the fallback, I'll eventually purge KDE and provide steps on how to do so while keeping stuff like dolphin, 
