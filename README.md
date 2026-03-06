# IT Automation Scripts

This repository contains small automation tools designed to simulate common IT operational workflows.

The goal of this project is to demonstrate how scripting can be used to automate repetitive support tasks such as user onboarding, system preparation, and operational logging.

---

## Current Script

### PowerShell User Onboarding Automation

This script simulates the process of onboarding a new employee account within an organization.

Rather than creating real system users, the script safely simulates the workflow so it can run on any machine without requiring administrator privileges.

---

## Features

• Simulates user account creation  
• Creates a home directory for the user  
• Logs onboarding events  
• Maintains a simple user inventory file  
• Demonstrates IT automation workflow logic  

---

## Example Workflow

When the script runs it will:

1. Prompt for a username and department  
2. Create a simulated user directory  
3. Log the onboarding event  
4. Record the user in a CSV inventory file  

Example output:
User onboarding simulation complete.

---

## How to Run

Open PowerShell and run:

```powershell
.\powershell\new-user-onboarding.ps1

##Why I Built This

IT teams often automate repetitive operational tasks to improve efficiency and reduce manual errors.

This project demonstrates how scripting can automate onboarding workflows commonly performed by help desk technicians and system administrators.

##Author

Kharee Bellamy
GitHub: https://github.com/Gvld3iii