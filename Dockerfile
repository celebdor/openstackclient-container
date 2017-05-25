FROM centos:latest
MAINTAINER Antoni Segura Puimedon <asegurap@redhat.com>

WORKDIR /etc/yum.repos.d
RUN yum install -y centos-release-openstack-ocata \
  && yum install -y python-openstackclient python-heatclient

ENTRYPOINT ["/usr/bin/openstack"]
