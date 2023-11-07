run:
    terraform apply
    ansible-playbook main.yml

ansible *FLAGS:
    ansible-playbook main.yml {{FLAGS}}

check *FLAGS:
    ansible-playbook main.yml -C {{FLAGS}}

deps:
    ansible-galaxy install -r requirements.yml

vault ACTION:
    ansible-vault {{ACTION}} vars/vault.yml

tf:
    terraform apply
