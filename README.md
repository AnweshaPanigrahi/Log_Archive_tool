# Log_Archive_tool

This Bash script is designed to automate the process of archiving `.log` files that are older than 10 days. It compresses them into a timestamped `.tar.gz` archive for storage or further processing.

## 📂 Folder Structure
🔍 Checks for .log files in the specified directory

📦 Archives and compresses logs older than 7 days into a timestamped .tar.gz file

📂 Moves compressed archives to a dedicated archive folder

📜 Maintains a clear log of all operations performed

**#Folder structure**
Log_Archive_tool/
├── archive/               # Contains compressed archive files
├── logs/                  # Stores sample logs for processing
├── log_archiver.sh        # Bash script that automates archiving
└── log_tool.log           # Log of all operations

### 🔧 Setup & Run Instructions

```bash
# 1️⃣ Clone the repository
git clone https://github.com/AnweshaPanigrahi/Log_Archive_tool.git
cd logs

# 2️⃣ Make the script executable
chmod +x old_archive.sh

# 3️⃣ Run the script
./old_archive.sh
```


