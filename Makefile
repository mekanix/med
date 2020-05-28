REGGAE_PATH = /usr/local/share/reggae
SERVICES = backend git@github.com:mekanix/medback \
	   frontend git@github.com:mekanix/medfront

build_lib: up
	@bin/build.sh

publish: build_lib
	@bin/publish.sh

.include <${REGGAE_PATH}/mk/project.mk>

