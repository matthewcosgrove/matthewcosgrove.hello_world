![Collection Molecule Tests](https://github.com/matthewcosgrove/matthewcosgrove.hello_world/hello-world/workflows/.github/workflows/main.yml/badge.svg) 
![Hello World Role Molecule Tests](https://github.com/matthewcosgrove/matthewcosgrove.hello_world/hello-world/workflows/.github/role_hello_world.yml/badge.svg)

# Ansible Collection - matthewcosgrove.hello_world

Hello World collection which just prints to debug

## Development prereqs

Initial installs (for Ubuntu, adapt for other OSs)

```
sudo apt install python3-venv
```

General Set Up

```
# cd into the root of this repo then
pip3 install pre-commit
pre-commit install
python3 -m venv .venv
source .venv/bin/activate
docker --version
pip3 install -U setuptools pip ansible ansible-lint yamllint 'molecule[docker]'
molecule --version
molecule --debug test
```
