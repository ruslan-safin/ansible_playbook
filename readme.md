# Ansible roles and playbooks for HomeLab (Nextcloud, Resilio, WireGuard, ShadowSocks, Traefik, IPsec, FileBrowser, Brook, Docker)

## Requirements:
* MacOS or Linux
* git
* python3 
* python3-venv

```bash
git clone git@github.com:ruslan-safin/ansible_playbook.git
cd ansible_playbook
python3.12 -m venv env && source env/bin/activate && pip install -r requirements.txt
```

## Check inventory:

```shell
ansible-inventory -i hosts.yml --graph
```

All variables stored in `secrets.yml`.

## Encrypt and decrypt sensitive variables:
```bash
ansible-vault encrypt 
ansible-vault decrypt 
```

## Linter:
```bash
ansible --version
ansible-lint --force-color --offline --version
ansible-lint --force-color --offline -L
export ANSIBLE_INVENTORY=".ansible-lint-fake-inventory"
ansible-lint --force-color --offline -s 
```

## Apply playbook to the inventory:
```bash
ansible-playbook playbook.yml --vault-pass-file ./pass
ansible-playbook playbook.yml -l test --vault-pass-file ./pass
ansible-playbook -i hosts.yml playbook.yml --ask-vault-pass
```

Enjoy your self-hosted services.

Who do I talk to?

Repo owner CyberManiac
