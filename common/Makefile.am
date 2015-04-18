themedir       = $(datadir)/themes/Vertex
themedarkdir   = $(datadir)/themes/Vertex-Dark
themelightdir  = $(datadir)/themes/Vertex-Light

ithemedir      = $(DESTDIR)$(themedir)
ithemedarkdir  = $(DESTDIR)$(themedarkdir)
ithemelightdir = $(DESTDIR)$(themelightdir)

install-data-local:
	$(MKDIR_P) $(ithemedir)
	cp --no-preserve=mode,ownership $(srcdir)/index.theme $(ithemedir)

if ENABLE_DARK
	$(MKDIR_P) $(ithemedarkdir)
	cp --no-preserve=mode,ownership $(srcdir)/index.theme-dark $(ithemedarkdir)/index.theme
endif # ENABLE_DARK



if ENABLE_LIGHT
	$(MKDIR_P) $(ithemelightdir)
	cp --no-preserve=mode,ownership $(srcdir)/index.theme-light $(ithemelightdir)/index.theme
endif # ENABLE_LIGHT



if ENABLE_CINNAMON
	cp -r --no-preserve=mode,ownership $(srcdir)/cinnamon $(ithemedir)
endif # ENABLE_CINNAMON



if ENABLE_GNOME_SHELL
	cp -rH --no-preserve=mode,ownership $(srcdir)/gnome-shell/$(GNOME_VERSION) $(ithemedir)/gnome-shell
endif # ENABLE_GNOME_SHELL



if ENABLE_GTK2
	cp -r --no-preserve=mode,ownership $(srcdir)/gtk-2.0 $(ithemedir)
	cd $(ithemedir)/gtk-2.0 && rm -f gtkrc-light

if ENABLE_DARK
	cp -r --no-preserve=mode,ownership $(srcdir)/gtk-2.0-dark $(ithemedarkdir)/gtk-2.0
endif # ENABLE_DARK

if ENABLE_LIGHT
	cp -r --no-preserve=mode,ownership $(srcdir)/gtk-2.0 $(ithemelightdir)
	cd $(ithemelightdir)/gtk-2.0 && mv gtkrc-light gtkrc
endif # ENABLE_LIGHT
endif # ENABLE_GTK2



if ENABLE_GTK3
	cp -rH --no-preserve=mode,ownership $(srcdir)/gtk-3.0/$(GNOME_VERSION) $(ithemedir)/gtk-3.0

	cd $(ithemedir)/gtk-3.0 && rm -f \
		gtk-contained-light.css \
		thumbnail-dark.png

if ENABLE_DARK
	cp -rH --no-preserve=mode,ownership $(srcdir)/gtk-3.0/$(GNOME_VERSION) $(ithemedarkdir)/gtk-3.0

	cd $(ithemedarkdir)/gtk-3.0 && rm -rf \
		gtk-dark.css \
		gtk-contained-light.css

	cd $(ithemedarkdir)/gtk-3.0 && \
		mv gtk-contained-dark.css gtk-contained.css
endif # ENABLE_DARK

if ENABLE_LIGHT
	cp -rH --no-preserve=mode,ownership $(srcdir)/gtk-3.0/$(GNOME_VERSION) $(ithemelightdir)/gtk-3.0
	cd $(ithemelightdir)/gtk-3.0 && rm -rf thumbnail-dark.png

	cd $(ithemelightdir)/gtk-3.0 && \
		mv gtk-contained-light.css gtk-contained.css

endif # ENABLE_LIGHT
endif # ENABLE_GTK3



if ENABLE_METACITY
	cp -r --no-preserve=mode,ownership $(srcdir)/metacity-1 $(ithemedir)

	cd $(ithemedir)/metacity-1 && rm -f \
		metacity-theme-1-dark.xml \
		metacity-theme-1-light.xml \
		metacity-theme-2-dark.xml \
		metacity-theme-2-light.xml \
		metacity-theme-3-dark.xml \
		metacity-theme-3-light.xml

if ENABLE_DARK
	cp -r --no-preserve=mode,ownership $(srcdir)/metacity-1 $(ithemedarkdir)

	cd $(ithemedarkdir)/metacity-1 && rm -f \
		metacity-theme-1.xml \
		metacity-theme-1-light.xml \
		metacity-theme-2.xml \
		metacity-theme-2-light.xml \
		metacity-theme-3.xml \
		metacity-theme-3-light.xml

	cd $(ithemedarkdir)/metacity-1 && \
		mv metacity-theme-1-dark.xml metacity-theme-1.xml && \
		mv metacity-theme-2-dark.xml metacity-theme-2.xml && \
		mv metacity-theme-3-dark.xml metacity-theme-3.xml
endif # ENABLE_DARK

if ENABLE_LIGHT
	cp -r --no-preserve=mode,ownership $(srcdir)/metacity-1 $(ithemelightdir)

	cd $(ithemelightdir)/metacity-1 && rm -f \
		metacity-theme-1.xml \
		metacity-theme-1-dark.xml \
		metacity-theme-2.xml \
		metacity-theme-2-dark.xml \
		metacity-theme-3.xml \
		metacity-theme-3-dark.xml

	cd $(ithemelightdir)/metacity-1 && \
		mv metacity-theme-1-light.xml metacity-theme-1.xml && \
		mv metacity-theme-2-light.xml metacity-theme-2.xml && \
		mv metacity-theme-3-light.xml metacity-theme-3.xml
endif # ENABLE_LIGHT
endif # ENABLE_METACITY



if ENABLE_UNITY
	cp -r --no-preserve=mode,ownership $(srcdir)/unity $(ithemedir)

if ENABLE_DARK
	cp -r --no-preserve=mode,ownership $(srcdir)/unity $(ithemedarkdir)
endif # ENABLE_DARK

if ENABLE_LIGHT
	cp -r --no-preserve=mode,ownership $(srcdir)/unity $(ithemelightdir)
endif # ENABLE_LIGHT
endif # ENABLE_UNITY



if ENABLE_XFWM
	cp -r --no-preserve=mode,ownership $(srcdir)/xfwm4 $(ithemedir)

if ENABLE_DARK
	cp -r --no-preserve=mode,ownership $(srcdir)/xfwm4 $(ithemedarkdir)
endif # ENABLE_DARK

if ENABLE_LIGHT
	cp -r --no-preserve=mode,ownership $(srcdir)/xfwm4-light $(ithemelightdir)/xfwm4
endif # ENABLE_LIGHT
endif # ENABLE_XFWM



uninstall-local:
	rm -rf $(ithemedir)

if ENABLE_DARK
	rm -rf $(ithemedarkdir)
endif # ENABLE_DARK

if ENABLE_LIGHT
	rm -rf $(ithemelightdir)
endif # ENABLE_LIGHT

	-rmdir -p $(DESTDIR)$(datadir)/themes 2>/dev/null



dist-hook:
	cp -r \
		cinnamon \
		gnome-shell \
		gtk-2.0 \
		gtk-2.0-dark \
		gtk-3.0 \
		metacity-1 \
		unity \
		xfwm4 \
		xfwm4-light \
		index.theme \
		index.theme-dark \
		index.theme-light \
		$(distdir)
