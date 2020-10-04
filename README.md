![Collection Molecule Tests](https://github.com/matthewcosgrove/matthewcosgrove.hello_world/workflows/Collection%20Molecule%20Tests/badge.svg)
![Hello World Role Molecule Tests](https://github.com/matthewcosgrove/matthewcosgrove.hello_world/workflows/Hello%20World%20Role%20Molecule%20Tests/badge.svg)

# Ansible Collection - matthewcosgrove.hello_world

Hello World collection which just prints to debug

## Development prereqs

Clone the repo into a location as required by `ANSIBLE_COLLECTIONS_PATHS` that enables running the molecule integration tests (See the env var set [here](https://github.com/matthewcosgrove/matthewcosgrove.hello_world/blob/e0d860b39e9fe1cbd1bef0ed2bee990a1f8c70c5/molecule/default/molecule.yml#L18))

```
mkdir -p ~/collections/ansible_collections/matthewcosgrove/hello_world && cd "$_"
git clone https://github.com/matthewcosgrove/matthewcosgrove.hello_world.git
# for convenience
ln -s ~/collections/ansible_collections/matthewcosgrove/hello_world/ ~/matthewcosgrove.hello_world
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
```

## Testing

### Integration test of all roles via collection

```
# cd into the root of this repo then
molecule --debug test
```

### Individual role

```
# cd into role dir e.g.
cd ~/collections/ansible_collections/matthewcosgrove/hello_world
molecule --debug test
```

## Release Process via GitHub Actions

1) Update the version in [galaxy.yml](galaxy.yml) e.g. `version: 1.1.0`
2) Create a release with the same version number using convention of prefix with letter v e.g. `v1.1.0` via https://github.com/matthewcosgrove/matthewcosgrove.hello_world/releases/new 
3) Check nothing went wrong https://github.com/matthewcosgrove/matthewcosgrove.hello_world/actions?query=workflow%3A%22Publish+To+Ansible+Galaxy%22
