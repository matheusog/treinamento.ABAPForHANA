site_install:
	pip install mkdocs==0.16.3

#Não funciona em Windows
#site_link:
#	ln -sf ./README.md ./docs/index.md

#site_preview: site_link
site_preview: 
	mkdocs serve
	
#site_deploy: site_link
site_deploy:	
	mkdocs gh-deploy --clean