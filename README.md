# Docker Linpack Benchmark Container
A Docker container used to perform computational benchmarking.

# How To Use
The container is designed to execute the benchmark and exit. There is no daemon
to the process and the results are written to a directory rather than pushed to
`stdout` to be collected by Docker. The data is written to an internal directory
`/hpl-output` which is intended to be a Docker volume specified by the user.

### Volumes
* `/hpl-output` - directory where output from the Linpack benchmark will be placed

### Example
```syntax=bash
docker build -t hpl-benchmark:latest .
docker run -ti --rm --name hpl-benchmark -v ~/log/hpl-benchmark:/hpl-output hpl-benchmark:latest
```

# Additional Information

### Goal
The goal of this container was to compare computational performance between a
standard RCAC RHEL6/CentOS7 system and a service running in a Docker container.

### Results
After comparing the Linpack benchmark results of a native system and a service
in a Docker container, there was a negligible computational difference between
Linpack directly on an OS and Linpack through a Docker container.
