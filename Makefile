BASE_URL = https://raw.githubusercontent.com/vlang/v/master
DATE_UPDATE = $(shell date -u +"%Y-%m-%d-%H:%M%z")

update:
	echo $(DATE_UPDATE)
	curl -sSL $(BASE_URL)/LICENSE > LICENSE.md
	curl -sSL $(BASE_URL)/doc/docs.md > docs.md
	curl -sSL $(BASE_URL)/doc/upcoming.md > upcoming.md
	curl -sSL $(BASE_URL)/doc/vscode.md > vscode.md
	curl -sSL $(BASE_URL)/doc/packaging_v_for_distributions.md > packaging_v_for_distributions.md
	@mkdir -p img
	curl -sSL $(BASE_URL)/doc/img/vscode-debugger.png > img/vscode-debugger.png
	@echo "{\"schemaVersion\": 1, \"label\": \"Updated\",\"message\": \"$(DATE_UPDATE)\", \"color\": \"blue\"}" > updated.json
