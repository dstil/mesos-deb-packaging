set -e
apt-get update
# From README
apt-get install -y ruby ruby-dev python-dev autoconf automake git make libssl-dev libcurl3 libtool
gem install fpm
# Not in README
apt-get install -y dpkg-dev
# Required by Mesos
apt-get install -y autoconf libtool g++ libcurl4-openssl-dev libapr1-dev libsvn-dev libsasl2-dev openjdk-8-jdk-headless maven python-dev
rm -f *.egg
export VERSION=0.22.1
CPPFLAGS='-Wno-error=deprecated-declarations' ./build_mesos --repo https://github.com/apache/mesos?tag=$VERSION --nominal-version $VERSION --build-version "0.1-dstil.ubuntu1604"
