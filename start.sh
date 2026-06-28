#!/bin/sh
set -e

uvicorn airline_api:app --host 0.0.0.0 --port 8000 &

exec streamlit run airline_ui.py --server.port 8501 --server.address 0.0.0.0
