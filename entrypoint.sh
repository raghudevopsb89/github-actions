az login --service-principal --username ${az_username} --password ${az_password} --tenant ${az_tenant} --subscription ${az_subscription}
rm -f .runner
./config.sh --url https://github.com/raghudevopsb89 --unattended --replace --name ${RUNNER_NAME} --token ${TOKEN}
./run.sh

