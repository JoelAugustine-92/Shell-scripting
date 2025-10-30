🧠 General Knowledge: Running Bash Scripts in Linux

In Linux, Bash scripts are simple text files that contain a series of commands you want the system to execute automatically.

🧩 1️⃣ What is chmod +x?

chmod means change mode — it changes the file permissions.

+x means add execute permission.

When you run:
chmod +x filename.sh
You’re telling the system:

“Make this file executable — I want to be able to run it like a program.”
🧩 2️⃣ What is ./filename.sh?

./ means current directory.

By default, Linux doesn’t search your current directory for executables (for security reasons).

So when you type:
./filename.sh
You’re saying:

“Run the script named filename.sh from this current folder.”
🧩 3️⃣ What is a .sh file?

.sh is the file extension for shell scripts (Bash scripts).

It’s not required, but it helps identify that it’s a Bash script.
🧩 4️⃣ What actually happens

When you run:
./filename.sh
The system:

Checks if the file has execute permission.

Reads the first line (called the shebang — usually #!/bin/bash) to know which interpreter to use.

Executes the commands line by line.
