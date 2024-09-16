#!/bin/bash

# Directory where the plugins will be downloaded
DOWNLOAD_DIR="./wp-plugins"

# Create the directory if it doesn't exist
mkdir -p "$DOWNLOAD_DIR"

# File containing the list of plugins
PLUGIN_LIST="plugins.txt"

# Base URL for downloading plugins from WordPress.org repository
BASE_URL="https://downloads.wordpress.org/plugin"

# Read each plugin name from the file and download it as a zip file
while IFS= read -r PLUGIN || [ -n "$PLUGIN" ]; do
  # Trim whitespace (if any) and check if PLUGIN is not empty
  PLUGIN=$(echo "$PLUGIN" | xargs)
  
  if [[ ! -z "$PLUGIN" ]]; then
    echo "Downloading plugin: $PLUGIN..."
    
    # Construct the download URL using the plugin slug
    DOWNLOAD_URL="$BASE_URL/$PLUGIN.latest-stable.zip"
    
    # Use curl to download the plugin ZIP file to the target directory
    curl -f -s -L -o "$DOWNLOAD_DIR/$PLUGIN.zip" "$DOWNLOAD_URL"
    
    # Check if the download was successful
    if [ $? -eq 0 ]; then
      echo "Downloaded $PLUGIN successfully."
    else
      echo "Failed to download $PLUGIN. Please check if the plugin slug is correct or if the plugin exists on WordPress.org."
    fi
  fi
done < "$PLUGIN_LIST"

echo "All downloads attempted. Check $DOWNLOAD_DIR for downloaded plugins."