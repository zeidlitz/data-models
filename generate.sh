#!/bin/bash

# clean old builds
rm -rf src/data_models/v1/*_pb2.py

# build
protoc -I=proto \
       --python_out=src/data_models/v1/ \
       proto/data_models.proto

# ensure correct package structure
touch src/data_models/__init__.py
touch src/data_models/v1/__init__.py

echo "Generation complete!"
