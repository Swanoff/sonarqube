FROM sonarqube:9.9.1-community

COPY ./plugin /opt/sonarqube/extensions/plugins

ENV SONAR_WEB_JAVAADDITIONALOPTS=-javaagent:./extensions/plugins/sonarqube-community-branch-plugin-1.14.0.jar=web
ENV SONAR_CE_JAVAADDITIONALOPTS=-javaagent:./extensions/plugins/sonarqube-community-branch-plugin-1.14.0.jar=ce