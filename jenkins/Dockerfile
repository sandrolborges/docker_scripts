FROM jenkins/jenkins:lts

# if we want to install via apt
USER root

RUN \
  apt-get update && \
  apt-get install -y unixodbc-dev && \
  apt-get install -y python3 && \
  apt-get install -y python3-pip && \
  python3 -m pip install --upgrade pip

RUN \
  pip3 install requests && \
  pip3 install elasticsearch && \
  pip3 install pyodbc

# Client MQTT
RUN \
  apt-get install -y mosquitto-clients

#RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -

#Download appropriate package for the OS version
#RUN curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list > /etc/apt/sources.list.d/mssql-release.list

#RUN \
#  apt-get update && \
#  ACCEPT_EULA=Y apt-get install -y msodbcsql17

# optional: for bcp and sqlcmd
#RUN \
#  ACCEPT_EULA=Y apt-get install -y mssql-tools && \
#  echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile && \
#  echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc && \
#  source ~/.bashrc

#optional: for unixODBC development headers
#RUN apt-get install -y unixodbc-dev

#Install Dotnet Core SDK 3.1
#RUN \
#  apt-get update && \
#  apt-get install -y apt-transport-https && \
#  apt-get update && \
#  apt-get install -y dotnet-sdk-3.1

#Install Dotnet Core Runtime 3.1
#RUN \
#  apt-get update && \
#  apt-get install -y apt-transport-https && \
#  apt-get update && \
#  apt-get install -y aspnetcore-runtime-3.1
