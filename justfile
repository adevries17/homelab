run:
    terraform apply
    ansible-playbook main.yaml

ansible *FLAGS:
    ansible-playbook main.yaml {{FLAGS}}

check *FLAGS:
    ansible-playbook main.yaml -C {{FLAGS}}

deps:
    ansible-galaxy install -r requirements.yaml

vault ACTION:
    ansible-vault {{ACTION}} vars/vault.yaml

terraform:
    terraform apply
