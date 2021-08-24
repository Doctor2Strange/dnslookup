# dnslookup
This is a PowerShell script to automate Nameserver lookup for huge list of websites. Helps to check if a valid DNS entry exists or not and IP addresses if the DNS entry exists.

**Step-1:** Create a common text file and save it to a filepath. Copy & Paste the filepath along with filename into '$inputpath' parameter.

**Step-2:** Include all the URLs (without http(s) scheme) into that text file and 'Save'. Ensure no blank spaces in the txt file.

**Step-3:** Provide a filepath for the output (.CSV) file in the '$outputpath' parameter. (The file will be created automatically with the provided filename in the filepath)

**Step-4:** Execute the 'dnslookup' PowerShell script file using Windows PowerShell ISE which is available by default on all Windows machines.

The output file is now created and available on the filepath provided for '$outputpath' parameter!

**Happy Automation!!!**
