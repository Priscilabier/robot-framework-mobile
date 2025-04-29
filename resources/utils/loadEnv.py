import os
from dotenv import load_dotenv
from pathlib import Path

# Get the root directory (two levels up from this file)
root_dir = Path(__file__).parent.parent.parent

# Load .env file from root directory
load_dotenv(os.path.join(root_dir, '.env'))