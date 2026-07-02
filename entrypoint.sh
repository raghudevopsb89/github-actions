rm -f .runner
./config.sh --url https://github.com/raghudevopsb89 --unattended --replace --name ${RUNNER_NAME} --token ${TOKEN}
./run.sh

