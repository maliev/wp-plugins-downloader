# WordPress Plugin Downloader

A simple Bash script to download WordPress plugins directly from the official WordPress repository as ZIP files. This script is ideal for users who want to download multiple plugins in bulk for offline installation on a WordPress site.

## Features

- Automatically downloads the latest stable versions of specified WordPress plugins.
- Saves plugins as ZIP files in a local directory for easy upload and installation via the WordPress dashboard.
- Simple and easy to use with no need for a WordPress installation in the local environment.

## Requirements

- `curl` must be installed and accessible in your system's environment.
- A Unix-based operating system (Linux, macOS) or Windows Subsystem for Linux (WSL) is recommended.

## Installation

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/yourusername/wordpress-plugin-downloader.git
   cd wordpress-plugin-downloader
   ```

2. **Make the Script Executable:**

   Run the following command to make the `download-plugins.sh` script executable:

   ```bash
   chmod +x download-plugins.sh
   ```

## Usage

1. **Prepare the List of Plugins:**

   Create a file named `plugins.txt` in the same directory as the script. List the slugs of the WordPress plugins you want to download, one per line. The slug is the name used in the URL of the plugin on the WordPress repository. For example, the plugin "Contact Form 7" has the URL `https://wordpress.org/plugins/contact-form-7/`, so the slug is `contact-form-7`.

   Example `plugins.txt`:

   ```text
   akismet
   jetpack
   wordpress-seo
   contact-form-7
   ```

2. **Run the Script:**

   Execute the script by running the following command in your terminal:

   ```bash
   ./download-plugins.sh
   ```

   The script will read the plugin slugs from `plugins.txt`, construct the appropriate download URLs, and use `curl` to download the ZIP files to a local directory named `wp-plugins`.

3. **Check the Downloaded Plugins:**

   After running the script, all downloaded plugins will be saved in the `wp-plugins` directory. You can then upload these ZIP files via the WordPress dashboard to install them on your site.

## Troubleshooting

- If a plugin fails to download, the script will display an error message. Ensure that the plugin slug is correct and corresponds to a valid plugin on the WordPress repository.

- Make sure you have `curl` installed and configured correctly in your environment. You can check by running `curl --version` in your terminal.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributions

Contributions are welcome! Please open an issue or submit a pull request with any improvements or bug fixes.

## Disclaimer

This script is intended for educational purposes and personal use only. It relies on publicly available data from the WordPress repository.
