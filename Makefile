opensearch:
	$(eval VARS := $(shell cat config/opensearch.json))
	@ansible-playbook playbooks/opensearch/install_deploy.yaml --extra-vars='$(VARS)' -K