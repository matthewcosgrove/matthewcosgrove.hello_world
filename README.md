![Collection Molecule Tests](https://github.com/matthewcosgrove/matthewcosgrove.hello_world/workflows/Collection%20Molecule%20Tests/badge.svg)
![Hello World Role Molecule Tests](https://github.com/matthewcosgrove/matthewcosgrove.hello_world/workflows/Hello%20World%20Role%20Molecule%20Tests/badge.svg)

# Ansible Collection - matthewcosgrove.hello_world

Hello World collection which just prints to debug

## Development prereqs

Clone the repo into a location that can be run by the overall molecule tests (See the env var set [here](https://github.com/matthewcosgrove/matthewcosgrove.hello_world/blob/e0d860b39e9fe1cbd1bef0ed2bee990a1f8c70c5/molecule/default/molecule.yml#L18))

```
mkdir -p ~/collections/ansible_collections/matthewcosgrove/hello_world && cd "$_"
git clone https://github.com/matthewcosgrove/matthewcosgrove.hello_world.git
```

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
