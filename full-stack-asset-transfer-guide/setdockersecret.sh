#create docker secret
echo "Enter your docker username: "
read dockerusername
echo "Docker username, $dockerusername!"

echo "Enter your docker Password: "
read -s dockerpassword
echo "Docker Password, ***!"

echo "Enter your docker email: "
read dockeremail
echo "Docker email, $dockeremail!"

kubectl create secret docker-registry ghcr-pull-secret --docker-server=docker.io --docker-username=$dockerusername --docker-password=$dockerpassword --docker-email='$dockeremail'
