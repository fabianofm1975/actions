TF_PLAN_FILE=tf-plan

config:
	@cd terraform && \
	rm -rf ~/.tfenv && \
	git clone https://github.com/tfutils/tfenv.git ~/.tfenv && \
	export PATH="${HOME}/.tfenv/bin:${PATH}" && \
	tfenv install

init:
	@cd terraform/ && \
	export PATH="${HOME}/.tfenv/bin:${PATH}" && \
	terraform init -backend-config=backend_${TF_VAR_environment}.tfvars -reconfigure

tests:
	@cd terraform && \
	export PATH="${HOME}/.tfenv/bin:${PATH}" && \
	terraform fmt -recursive && \
	terraform validate

plan:
	@cd terraform && \
	export PATH="${HOME}/.tfenv/bin:${PATH}" && \
	terraform plan -out ${TF_PLAN_FILE}

apply:
	@cd terraform && \
	export PATH="${HOME}/.tfenv/bin:${PATH}" && \
	chmod -R +x .terraform/ && \
	terraform apply -auto-approve ${TF_PLAN_FILE}
