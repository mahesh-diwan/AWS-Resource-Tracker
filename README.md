# AWS Resource Tracker

## Overview
The **AWS Resource Tracker** is a simple Bash script designed to report usage statistics for various AWS resources. This script utilizes the AWS CLI to gather information about AWS S3 buckets, EC2 instances, Lambda functions, and IAM users, making it easier to monitor your cloud resources.

## Features
- **S3 Buckets**: Lists all S3 buckets and saves the details to a file.
- **EC2 Instances**: Retrieves and displays a list of all EC2 instances.
- **Lambda Functions**: Lists all available Lambda functions in your AWS account.
- **IAM Users**: Outputs a list of IAM users.

## Prerequisites
Before running the script, ensure the following:
1. **AWS CLI**: The AWS CLI must be installed and configured with appropriate access keys and permissions. Follow [AWS CLI Installation Guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html).
2. **jq**: This script uses `jq` to parse JSON outputs. Install it using:
   - On Linux: `sudo apt install jq`
   - On macOS: `brew install jq`
3. **Permissions**: Ensure your AWS user has read permissions for S3, EC2, Lambda, and IAM.

## How to Use
1. Clone the repository or download the script:
   ```bash
   git clone <repository_url>
   cd <repository_folder>
   ```
2. Make the script executable:
   ```bash
   chmod +x aws_resource_tracker.sh
   ```
3. Run the script:
   ```bash
   ./aws_resource_tracker.sh
   ```
4. View the output:
   - S3 bucket details are saved in the `resource_tracker` file.
   - Other resource details are printed directly to the terminal.

## Example Output
- **S3 Buckets**:
  ```
  Print list of S3 buckets
  bucket-1
  bucket-2
  bucket-3
  ```
- **EC2 Instances**:
  ```
  Print EC2 instances
  "i-0123456789abcdef0"
  "i-0987654321fedcba0"
  ```
- **Lambda Functions**:
  ```
  Print Lambda functions
  function-1
  function-2
  ```
- **IAM Users**:
  ```
  Print IAM users
  user1
  user2
  ```

## Notes
- The script assumes the AWS CLI is already configured with a default profile.
- Outputs are simplified for readability but can be modified to include more details if needed.

## Future Improvements
- Add support for additional AWS services.
- Format output into a more readable report (e.g., CSV or HTML).
- Include error handling for missing dependencies or insufficient permissions.

## License
This project is licensed under the MIT License.

---
**Author**: Mahesh Diwan  
**Date**: 23/12/2024  
**Version**: v1

