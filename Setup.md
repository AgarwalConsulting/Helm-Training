# Setup

We are going to be using the latest tools like `helm`, `kind` & `docker`, within a vagrant box (You can also do this locally.)

## Local VM setup

### Step 1

Make sure you have [VirtualBox](https://www.virtualbox.org/) and [vagrant](https://www.vagrantup.com/) installed.

### Step 1.1

Make sure you have set the appropriate premissions...

On macOS: "System Preferences > Security & Privacy > General > Allow System Extension"

### Step 2

Install the guest plugins for vagrant & virtualbox.

```bash
vagrant plugin install vagrant-vbguest
```

### Step 3

Get the base image and start the box.

```bash
# If setting up first time...
vagrant box add --insecure ubuntu/focal64

vagrant up
```

### Step 4

SSH into the box...

```bash
vagrant ssh

# (or)

make vagrant-tssh
```
