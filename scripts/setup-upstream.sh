#!/usr/bin/env bash
# Clone your GitHub fork of an upstream drone project into upstream/<repo>
# and add the official repository as the "upstream" remote.
#
# Usage: ./scripts/setup-upstream.sh <github-username> <project>
# Projects: fos_uav, ardupilot, ardupilot_wiki, pymavlink, px4, mavsdk, qgc, mavlink, odm
set -euo pipefail

if [ $# -ne 2 ]; then
  echo "Usage: $0 <github-username> <project>" >&2
  echo "Projects: fos_uav ardupilot ardupilot_wiki pymavlink px4 mavsdk qgc mavlink odm" >&2
  exit 1
fi

user="$1"
project="$2"
submodules=false

case "$project" in
  ardupilot)      upstream_repo="ArduPilot/ardupilot";    submodules=true ;;
  ardupilot_wiki) upstream_repo="ArduPilot/ardupilot_wiki" ;;
  pymavlink)      upstream_repo="ArduPilot/pymavlink" ;;
  px4)            upstream_repo="PX4/PX4-Autopilot";      submodules=true ;;
  mavsdk)         upstream_repo="mavlink/MAVSDK";         submodules=true ;;
  qgc)            upstream_repo="mavlink/qgroundcontrol"; submodules=true ;;
  mavlink)        upstream_repo="mavlink/mavlink" ;;
  fos_uav)        upstream_repo="rahulsarchive/FOS_UAV" ;;
  odm)            upstream_repo="OpenDroneMap/ODM" ;;
  *)
    echo "Unknown project: $project" >&2
    exit 1
    ;;
esac

repo_name="${upstream_repo#*/}"
root="$(cd "$(dirname "$0")/.." && pwd)"
dest="$root/upstream/$repo_name"
fork_url="https://github.com/$user/$repo_name.git"
upstream_url="https://github.com/$upstream_repo.git"

if ! GIT_TERMINAL_PROMPT=0 git ls-remote --exit-code "$fork_url" >/dev/null 2>&1; then
  echo "Fork not found: $fork_url" >&2
  echo "Fork https://github.com/$upstream_repo on GitHub first." >&2
  exit 1
fi

if [ -d "$dest/.git" ]; then
  echo "Already cloned: $dest"
  # Point origin at the fork (an earlier read-only clone may lack it).
  if git -C "$dest" remote get-url origin >/dev/null 2>&1; then
    git -C "$dest" remote set-url origin "$fork_url"
  else
    git -C "$dest" remote add origin "$fork_url"
  fi
else
  mkdir -p "$root/upstream"
  git clone "$fork_url" "$dest"
fi

if git -C "$dest" remote get-url upstream >/dev/null 2>&1; then
  git -C "$dest" remote set-url upstream "$upstream_url"
else
  git -C "$dest" remote add upstream "$upstream_url"
fi
git -C "$dest" fetch upstream

if [ "$submodules" = true ]; then
  git -C "$dest" submodule update --init --recursive
fi

echo
echo "Ready: $dest"
git -C "$dest" remote -v
