HOMEDIR= /home/antoine/Documents/Menus

all: recipe menu

recipe: 
	for file in $(shell ls $(HOMEDIR)/recipe/md/ | sed 's/.md//g') ; do \
		pandoc -o "$(HOMEDIR)/recipe/html/$$file.html" -s -c "$(HOMEDIR)/styles/recipe.css" $(HOMEDIR)/recipe/md/$$file.md; done

menu:
	for file in $(shell ls $(HOMEDIR)/menu/md/ | sed 's/.md//g') ; do \
		pandoc -o "$(HOMEDIR)/menu/html/$$file.html" -s -c "$(HOMEDIR)/styles/menu.css" $(HOMEDIR)/menu/md/$$file.md; done
