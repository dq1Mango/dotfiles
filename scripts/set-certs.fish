#!/usr/bin/env fish

# @fish-lsp-enable 
# this script must be sourced or ran with ". /script.fish" syntax to set env vars of user shell

# address to the proxy server
set PROXY "http://127.0.0.1:8080"

# path to the root certificate autority
set CERT_PATH "/home/mqngo/Downloads/mitmproxy-ca-cert.pem"

# set a bunch of env vars to hopefully coerce the terminal to use the proxy 
export HTTP_PROXY=$PROXY
export HTTPS_PROXY=$PROXY
export http_proxy=$PROXY
export https_proxy=$PROXY
export WS_PROXY=$PROXY
export WSS_PROXY=$PROXY
export GLOBAL_AGENT_HTTP_PROXY=$PROXY

# set a whole bunch more env vars to trust the certificate
export SSL_CERT_FILE=$CERT_PATH
export NODE_EXTRA_CA_CERTS=$CERT_PATH
export DENO_CERT=$CERT_PATH
export PERL_LWP_SSL_CA_FILE=$CERT_PATH
export GIT_SSL_CAINFO=$CERT_PATH
export CARGO_HTTP_CAINFO=$CERT_PATH
export CURL_CA_BUNDLE=$CERT_PATH
export AWS_CA_BUNDLE=$CERT_PATH
