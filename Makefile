all:
	stow --verbose --target=$$HOME --restow */

xmonad:
	stow --verbose --target=$$HOME --restow xmonad
	stow --verbose --target=$$HOME --restow emacs
	stow --verbose --target=$$HOME --restow zathura
	stow --verbose --target=$$HOME --restow qutebrowser
	stow --verbose --target=$$HOME --restow zsh

justemacs:
	stow --verbose --target=$$HOME --restow emacs

justawesome:
	stow --verbose --target=$$HOME --restow awesome

justxmonad:
	stow --verbose --target=$$HOME --restow xmonad

justvim:
	stow --verbose --target=$$HOME --restow nvim

justzathura:
	stow --verbose --target=$$HOME --restow zathura

justqute:
	stow --verbose --target=$$HOME --restow qutebrowser

justzsh:
	stow --verbose --target=$$HOME --restow zsh

justoffline:
	stow --verbose --target=$$HOME --restow offlineIMAP

delete:
	stow --verbose --target=$$HOME --delete /*
