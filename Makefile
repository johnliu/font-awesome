default: data
	@mkdir -p css fonts scss less
	@cd $< && git pull
	@cp -f $</css/* ./css
	@cp -f $</fonts/* ./fonts
	@cp -f $</scss/* ./scss
	@cp -f $</less/* ./less
	@du -bh css* fonts* scss* less*

data:
	@git clone https://github.com/FortAwesome/Font-Awesome.git $@

.PHONY: default
