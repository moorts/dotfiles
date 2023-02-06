all:
	stow --verbose --target=$$HOME --restow */

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

delete:
	stow --verbose --target=$$HOME --delete /*
