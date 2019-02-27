# HPL AMD64 Benchmark
# - Executes the HPL (Linpack) benchmark for AMD 64-bit based machines running Docker containers

FROM rhel7
MAINTAINER Seth Cook <sethcook@purdue.edu>

# Prep Directories
RUN mkdir /hpl-output /hpl
VOLUME /hpl-output

# Load AMD HPL files
ADD hpl /hpl
ENTRYPOINT cd /hpl && ./runme_xhpl
