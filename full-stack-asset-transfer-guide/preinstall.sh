#Install Kubectl
curl -LO https://dl.k8s.io/release/v1.28.2/bin/linux/amd64/kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

#Installs Kind
sudo curl --fail --silent --show-error -L https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64 -o /usr/local/bin/kind
sudo chmod 755 /usr/local/bin/kind

#Installs Just
curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --tag 1.2.0 --to /usr/local/bin

#Installs Jq
sudo apt install jq -y

#Installs Fabric
curl -sSL https://raw.githubusercontent.com/hyperledger/fabric/main/scripts/install-fabric.sh | bash -s -- binary


#Installs Node
sudo snap install node --classic

#Installs Docker
snap install docker

#Install Weft
npm install -g @hyperledger-labs/weft


source ./setenvvariables.sh

./check.sh