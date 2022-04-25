#




## TODO: import collection to awx tasker

# AWX Stuff Here
* [ADD Credentials creation screenshots]
* [ADD Inventory Screenshot and ini conversion using the ansible-inventory] 
* [ADD host awx-manage inventory_import --inventory-name nix_Hosts --source win_hosts screenshot]
* [ADD Project Screenshot]
* [ADD Templates Screenshot]


# Linux


# nix 
nix Tasks and Roles 

# Todos: 
1. enter the todos here 
1. add the 

## Setup multiple targets with the SAME credentials
### Configure hosts.ini
1. `cp hosts-same-pass.ini hosts.ini`
1. `vim hosts.ini` and add IP addresses under [nix-targets]
    1. ![Ansible hosts](../.img/Screen-Shot-2019-02-25-at-2.07.52-PM.png)

### Configure group_vars/nix.yml
1. `cp group_vars/nix-same-pass.yml group_vars/nix.yml`
1. `vim group_vars/nix.yml` and set:
    1. `ansible_user` – Set to an administrator account on box
    1. `ansible_password` – Enter the password for the account above


## Setup multiple targets with DIFFERENT credentials
### Configure hosts.ini
1. `cp hosts-diff-pass.ini hosts.ini`
1. `vim hosts.ini` and add:
1. Create hosts group and add each group name under “[nix:children]”
    1. ![hosts](../.img/Screen-Shot-2019-02-25-at-2.11.19-PM.png)
1. Under each host group add IP addresses
    1. ![lolz](../.img/Screen-Shot-2019-02-25-at-2.10.32-PM-164x300.png)

### Configure group_vars/nix.yml
1. `cp group_vars/nix-diff-pass.yml nix.yml`
1. `vim group_vars/<host group name>.yml` and set:
    1. `ansible_user` – Set to an administrator account on box
    1. `ansible_password` – Enter the password for the account above
1. `vim group_vars/<host group name>.yml` and set:
    1. `ansible_user` – Set to an administrator account on box
    1. `ansible_password` – Enter the password for the account above
