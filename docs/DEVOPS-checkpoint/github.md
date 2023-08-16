# Git Workflow Checkpoint


### GITHUB

1. Create a folder called `learn_git`:

    ```bash
    mkdir learn_git
    ```

2. Change into the `learn_git` folder:

    ```bash
    cd learn_git
    ```

3. Create a file called `third.txt`:

    ```bash
    touch third.txt
    ```

4. Initialize an empty git repository:

    ```bash
    git init
    ```

5. Add `third.txt` to the staging area:

    ```bash
    git add third.txt
    ```

6. Commit with the message "adding third.txt":

    ```bash
    git commit -m "adding third.txt"
    ```

7. Check out your commit history with git log:

    ```bash
    git log
    ```

8. Create another file called `fourth.txt`:

    ```bash
    touch fourth.txt
    ```

9. Add `fourth.txt` to the staging area:

    ```bash
    git add fourth.txt
    ```

10. Commit with the message "adding fourth.txt":

    ```bash
    git commit -m "adding fourth.txt"
    ```

11. Remove the `third.txt` file:

    ```bash
    rm third.txt
    ```

12. Add this change to the staging area:

    ```bash
    git add .
    ```

13. Commit with the message "removing third.txt":

    ```bash
    git commit -m "removing third.txt"
    ```

14. Check out your commits using git log:

    ```bash
    git log
    ```

15. Change your global settings to `core.pager=cat`:

    ```bash
    git config --global core.pager "cat"
    ```

16. List all the global configurations for git on your machine:

    ```bash
    git config --global --list
    ```
    