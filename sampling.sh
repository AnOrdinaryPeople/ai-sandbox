#!/bin/sh

cd ./generative-models && \
  export PYTHONPATH=$PYTHONPATH:/app/generative-models && \
  streamlit run ./scripts/demo/sampling.py
