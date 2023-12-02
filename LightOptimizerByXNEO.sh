#!/bin/bash

# Function to set the system's refresh rate
set_refresh_rate() {
  read -p "Enter the minimum refresh rate: " refresh_rate

  # Check if the input is numeric
  if [[ "$refresh_rate" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    # Switch to superuser and set the refresh rate
    su -c "settings put system min_refresh_rate $refresh_rate"
    echo "Refresh rate set to $refresh_rate Hz"
  else
    echo "Invalid input. Please enter a valid number."
  fi
}

# Function to set the system's maximum refresh rate
set_max_refresh_rate() {
  read -p "Enter the maximum refresh rate: " max_refresh_rate

  # Check if the input is numeric
  if [[ "$max_refresh_rate" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    # Switch to superuser and set the maximum refresh rate
    su -c "settings put system max_refresh_rate $max_refresh_rate"
    echo "Maximum refresh rate set to $max_refresh_rate Hz"
  else
    echo "Invalid input. Please enter a valid number."
  fi
}

# Function to set the system's maximum refresh rate to 60
set_max_refresh_rate_60() {
  # Switch to superuser and set the maximum refresh rate to 60
  su -c "settings put system max_refresh_rate 60"
  echo "Maximum refresh rate set to 60 Hz"
}

# Function to set the system's minimum refresh rate to 60
set_min_refresh_rate_60() {
  # Switch to superuser and set the minimum refresh rate to 60
  su -c "settings put system min_refresh_rate 60"
  echo "Minimum refresh rate set to 60 Hz"
}

# Function to set the system's maximum refresh rate to 59.94
set_max_refresh_rate_59_94() {
  # Switch to superuser and set the maximum refresh rate to 59.94
  su -c "settings put system max_refresh_rate 59.94"
  echo "Maximum refresh rate set to 59.94 Hz"
}

# Function to set the system's minimum refresh rate to 59.94
set_min_refresh_rate_59_94() {
  # Switch to superuser and set the minimum refresh rate to 59.94
  su -c "settings put system min_refresh_rate 59.94"
  echo "Minimum refresh rate set to 59.94 Hz"
}

# Function to set the system's maximum refresh rate to 60.0
set_max_refresh_rate_60_0() {
  # Switch to superuser and set the maximum refresh rate to 60.0
  su -c "settings put system max_refresh_rate 60.0"
  echo "Maximum refresh rate set to 60.0 Hz"
}

# Function to set the system's minimum refresh rate to 60.0
set_min_refresh_rate_60_0() {
  # Switch to superuser and set the minimum refresh rate to 60.0
  su -c "settings put system min_refresh_rate 60.0"
  echo "Minimum refresh rate set to 60.0 Hz"
}

# Function to set the system's maximum refresh rate to 60.000004
set_max_refresh_rate_60_000004() {
  # Switch to superuser and set the maximum refresh rate to 60.000004
  su -c "settings put system max_refresh_rate 60.000004"
  echo "Maximum refresh rate set to 60.000004 Hz"
}

# Function to set the system's minimum refresh rate to 60.000004
set_min_refresh_rate_60_000004() {
  # Switch to superuser and set the minimum refresh rate to 60.000004
  su -c "settings put system min_refresh_rate 60.000004"
  echo "Minimum refresh rate set to 60.000004 Hz"
}

# Function to execute su and pm compile -r bg-dexopt -a
execute_bg_dexopt() {
  # Switch to superuser and execute the commands
  clear
  echo "Initiating the optimizer"
  echo 
  su -c "pm compile -r bg-dexopt -a"
  echo 
  echo "Optimizer operation completed successfully"
  echo 
  echo 
}

# Function to display the main menu
main_menu() {
  clear
  # Display
  echo "Enhance FPS through XNEO optimization"
  echo
  # Important Note
  echo "Root access is required for setting the refresh rate initially"

  # Present choices
  echo 
  echo "1. Set Maximum Refresh Rate"
  echo "2. Set Minimum Refresh Rate"
  echo "3. Set Maximum Refresh Rate 60"
  echo "4. Set Minimum Refresh Rate 60"
  echo "5. Set Maximum Refresh Rate 59.94"
  echo "6. Set Minimum Refresh Rate 59.94"
  echo "7. Set Maximum Refresh Rate 60.0"
  echo "8. Set Minimum Refresh Rate 60.0"
  echo "9. Set Maximum Refresh Rate 60.000004"
  echo "10. Set Minimum Refresh Rate 60.000004"
  echo "11. Enhance performance with an optimizer"
  echo "12. Terminate."
}

# Clear the terminal
clear

# Initial run of the main menu
main_menu

# Main loop
while true; do
  # Prompt user for input
  read -p "Enter your choice: " choice

  # Check if the input is numeric
  if [[ "$choice" =~ ^[0-9]+$ ]]; then
    case $choice in
      1)
        # Call the set_refresh_rate function
        set_max_refresh_rate
        ;;
      2)
        # Call the set_max_refresh_rate function
        set_refresh_rate
        ;;
      3)
        # Call the set_max_refresh_rate_60 function
        set_max_refresh_rate_60
        ;;
      4)
        # Call the set_min_refresh_rate_60 function
        set_min_refresh_rate_60
        ;;
      5)
        # Call the set_max_refresh_rate_59_94 function
        set_max_refresh_rate_59_94
        ;;
      6)
        # Call the set_min_refresh_rate_59_94 function
        set_min_refresh_rate_59_94
        ;;
      7)
      
      # Call the set_max_refresh_rate_60_0 function
        set_max_refresh_rate_60_0
        ;;
      8)
        # Call the set_min_refresh_rate_60_0 function
        set_min_refresh_rate_60_0
        ;;
      9)
        # Call the set_max_refresh_rate_60_000004 function
        set_max_refresh_rate_60_000004
        ;;
      10)
        # Call the set_min_refresh_rate_60_000004 function
        set_min_refresh_rate_60_000004
        ;;
      11)
        # Call the execute_bg_dexopt function
        execute_bg_dexopt
        ;;
      12)
        echo "Terminated"
        break
        ;;
      *)
        echo "Invalid choice"
        ;;
    esac
  else
    echo "Invalid input. Please enter a number."
  fi

  # Show the main menu again
  read -p "Press Enter to continue..."
  main_menu
done