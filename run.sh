#!/bin/bash

set -e

export JULIA_DEPOT_PATH=$(mktemp -d)

julia main.jl
