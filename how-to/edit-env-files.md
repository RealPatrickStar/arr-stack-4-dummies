# Editing the `.env` File with Nano

If you're new to using the command line, don't worry—editing files with `nano` is straightforward! This guide will walk you through the process of editing the `.env` file using the `nano` text editor.

## What You'll Need

1. A terminal or command prompt open.
2. Access to the directory where your `.env` file is located.

## Steps to Edit the `.env` File

1. **Open the Terminal**

   Depending on your operating system, open your terminal or command prompt. On Windows, you might use Command Prompt or PowerShell. On macOS or Linux, open the Terminal application.

2. **Navigate to the Directory**

   Use the `cd` command to change to the directory where your `.env` file is located. For example, if your file is in a directory called `arr-stack-4-dummies`, you would use:

   ```shell
   cd $HOME/arr-stack-4-dummies
   ```

   Replace `path/to` with the actual path to your directory.

3. **Open the `.env` File with Nano**

   Type the following command and press Enter:

   ```shell
   nano .env
   ```

   This will open the `.env` file in the `nano` text editor.

4. **Edit the File**

   You’ll see the contents of the `.env` file displayed in `nano`. Use the arrow keys on your keyboard to navigate to the line you want to edit. 

   For example, if you want to change the `VPN_SERVICE_PROVIDER` from `nord` to `expressvpn`, find the line that looks like:

   ```shell
   VPN_SERVICE_PROVIDER=nord
   ```

   Move the cursor to `nord` and type `expressvpn` so it looks like:

   ```shell
   VPN_SERVICE_PROVIDER=expressvpn
   ```

5. **Save Your Changes**

   Once you’ve made your changes, you need to save the file. Press `Ctrl` + `O` (that's the letter O, not zero). 

   Nano will prompt you to confirm the file name. Just press Enter to save with the current name.

6. **Exit Nano**

   To exit `nano`, press `Ctrl` + `X`. This will close the editor and return you to the terminal.

7. **Verify Your Changes**

   You can verify that your changes were saved by opening the file again or using the `cat` command:

   ```shell
   cat .env
   ```

   This will display the contents of the file in the terminal.

## Tips

- **Undo Mistakes:** If you make a mistake, you can press `Ctrl` + `U` to undo the last change while still in `nano`.
- **Help:** If you need help while using `nano`, press `Ctrl` + `G` to bring up the help menu.

And that's it! You’ve successfully edited the `.env` file using `nano`. If you have any questions or run into any issues, feel free to ask!
