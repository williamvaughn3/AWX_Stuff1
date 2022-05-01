## 

docker install caldera for red team automation

added as install as a role, see below information from git

cw3wv

--

Full documentation, training and use-cases can be found here.

CALDERA™ is a cyber security platform designed to easily automate adversary emulation, assist manual red-teams, and automate incident response.

It is built on the MITRE ATT&CK™ framework and is an active research project at MITRE.

The framework consists of two components:

    The core system. This is the framework code, consisting of what is available in this repository. Included is an asynchronous command-and-control (C2) server with a REST API and a web interface.
    Plugins. These repositories expand the core framework capabilities and providing additional functionality. Examples include agents, reporting, collections of TTPs and more.

Plugins

star Create your own plugin! Plugin generator: Skeleton star
Default

    Access (red team initial access tools and techniques)
    Atomic (Atomic Red Team project TTPs)
    Builder (dynamically compile payloads)
    CalTack (embedded ATT&CK website)
    Compass (ATT&CK visualizations)
    Debrief (operations insights)
    Emu (CTID emulation plans)
    Fieldmanual (documentation)
    GameBoard (visualize joint red and blue operations)
    Human (create simulated noise on an endpoint)
    Manx (shell functionality and reverse shell payloads)
    Mock (simulate agents in operations)
    Response (incident response)
    Sandcat (default agent)
    SSL (enable https for caldera)
    Stockpile (technique and profile storehouse)
    Training (certification and training course)

More

These plugins are ready to use but are not included by default:

    Pathfinder (vulnerability scanning)
    SAML (SAML authentication)

Requirements

These requirements are for the computer running the core framework:

    Any Linux or MacOS
    Python 3.7+ (with Pip3)
    Recommended hardware to run on is 8GB+ RAM and 2+ CPUs
    Recommended: GoLang 1.17+ to dynamically compile GoLang-based agents.

Installation

Concise installation steps:

git clone https://github.com/mitre/caldera.git --recursive
cd caldera
pip3 install -r requirements.txt
python3 server.py --insecure

Full steps: Start by cloning this repository recursively, passing the desired version/release in x.x.x format. This will pull in all available plugins.

git clone https://github.com/mitre/caldera.git --recursive --branch x.x.x

Next, install the PIP requirements:

pip3 install -r requirements.txt

Super-power your CALDERA server installation! Install GoLang (1.17+)

Finally, start the server.

python3 server.py --insecure

Once started, log into http://localhost:8888 using the default credentials red/admin. Then go into Plugins -> Training and complete the capture-the-flag style training course to learn how to use CALDERA.
Docker Deployment

To build a CALDERA docker image, ensure you have docker installed and perform the following actions:

# Recursively clone the CALDERA repository if you have not done so
git clone https://github.com/mitre/caldera.git --recursive

# Build the docker image. Change image tagging as desired.
# WIN_BUILD is set to true to allow CALDERA installation to compile windows-based agents.
# Alternatively, you can use the docker compose YML file via "docker-compose build"
cd caldera
docker build . --build-arg WIN_BUILD=true -t caldera:latest

# Run the image. Change port forwarding configuration as desired.
docker run -p 8888:8888 caldera:latest

To gracefully terminate your docker container, do the following:

# Find the container ID for your docker container running CALDERA
docker ps

# Send interrupt signal, e.g. "docker kill --signal=SIGINT 5b9220dd9c0f"
docker kill --signal=SIGINT [container ID]