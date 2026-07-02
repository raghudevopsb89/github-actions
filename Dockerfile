FROM          docker.io/redhat/ubi10
RUN           dnf install libicu -y
RUN           useradd runner
USER          runner
WORKDIR       /home/runner
RUN           curl -o actions-runner-linux-x64-2.335.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.335.1/actions-runner-linux-x64-2.335.1.tar.gz && tar -xf ./actions-runner-linux-x64-2.335.1.tar.gz && rm -f  ./actions-runner-linux-x64-2.335.1.tar.gz
COPY          entrypoint.sh  entrypoint.sh
ENTRYPOINT    ["bash", "entrypoint.sh"]

