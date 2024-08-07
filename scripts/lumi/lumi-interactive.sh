#!/bin/bash
# Run an interactive shell in our singularity image on LUMI.

singularity shell \
  -B"$PROJECT_DIR:$PROJECT_DIR" \
  -B"$SCRATCH_DIR:$SCRATCH_DIR" \
  -B"$FLASH_DIR:$FLASH_DIR" \
  -B /opt/cray:/opt/cray \
  -B /usr/lib64/libcxi.so.1:/usr/lib64/libcxi.so.1 \
  -B /usr/lib64/libjson-c.so.3:/usr/lib64/libjson-c.so.3 \
  $PROJECT_DIR/containers/llm-lumi-torch23_latest.sif
