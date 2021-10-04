#!/bin/bash
# -----------------------------------------------------------------------------
# Copyright Siemens AG, 2020. Part of the SW360 Portal Project.
#
# This program and the accompanying materials are made
# available under the terms of the Eclipse Public License 2.0
# which is available at https://www.eclipse.org/legal/epl-2.0/
#
# SPDX-License-Identifier: EPL-2.0
#
# This script is executed on startup of Docker container.
# (execution of docker run cmd) starts tomcat.
# -----------------------------------------------------------------------------

start_sw360() {
  cd /app/liferay-ce-portal-7.3.4-ga5/tomcat-9.0.33/bin/
  rm -rf ./indexes/*
  ./startup.sh
  tail_logs
}

tail_logs()
{
  tail -f --lines=500 /app/liferay-ce-portal-7.3.4-ga5/tomcat-9.0.33/logs/catalina.out 
}

start_sw360
