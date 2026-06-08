#!/usr/bin/env bash

set -euo pipefail

# 프로젝트 루트에서 실행해야 합니다.
if [ ! -f build.gradle ] && [ ! -f settings.gradle ] && [ ! -f settings.gradle.kts ]; then
  echo "Error: 현재 디렉터리는 Gradle 프로젝트 루트가 아닙니다. build.gradle 또는 settings.gradle 파일이 있는 위치에서 실행하세요."
  exit 1
fi

if [ -f gradlew ]; then
  echo "gradlew wrapper already exists."
  exit 0
fi

if command -v gradle >/dev/null 2>&1; then
  echo "Generating Gradle wrapper using local Gradle..."
  gradle wrapper --gradle-version 8.6
  chmod +x gradlew
  echo "Gradle wrapper files created. Commit gradlew, gradlew.bat and gradle/wrapper to the repository."
  exit 0
fi

echo "Error: Gradle command not found. Install Gradle locally or generate the wrapper manually."
exit 1
