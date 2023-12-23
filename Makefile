venv-create:
	python3 -m venv env && source env/bin/activate && pip install -r requirements.txt
venv-activate:
	source env/bin/activate
venv-deactivate:
	deactivate

lint: 
	ansible --version
	ansible-lint --force-color --offline --version
	ansible-lint --force-color --offline -L
	export ANSIBLE_INVENTORY=".ansible-lint-fake-inventory"
	ansible-lint --force-color --offline -s 

graph:
	ansible-inventory --graph

apply:
	ansible-playbook playbook.yml --vault-pass-file ./pass

secret:
	ansible-vault encrypt

encrypt:
	ansible-vault encrypt group_vars/all/secrets.yml

decrypt:
	ansible-vault decrypt group_vars/all/secrets.yml

test1:
	ansible-playbook playbook.yml -l test --vault-pass-file ./pass
