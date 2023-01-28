all:
	stow --verbose --target=$$HOME --restow */

justemacs:
	stow --verbose --target=$$HOME --restow emacs

justawesome:
	stow --verbose --target=$$HOME --restow awesome

justvim:
	stow --verbose --target=$$HOME --restow nvim

delete:
	stow --verbose --target=$$HOME --delete /*
