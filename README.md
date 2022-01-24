# OS :
    open terminal cd to any directory you wish then run these commands 
    Note : made in Ubuntu distribution so best used in Ubuntu distribution
## downloading : 
   * **To install git** : `sudo apt install git` 
   * **Configure git**: 
        >From your GitHub account, go to Settings -> Developer Settings -> Personal Access Token -> Generate New Token -> Fill up the form (tick repo and admin::org )-> click Generate token -> Copy the generated Token, it will be something like ghp_sFhFsSHhTzMDreGRLjmks4Tzuzgthdvfsrta 
        Note : insert your username or token where ever its shown <,> are not included
        1. `git config credential.https://github.com.username "<your username>"`
        2. `git config credential.https://<your username>@github.com.password "<your token>"`
   * **Clone the repository** :`git clone https://github.com/beaterblank/OS.git`
   * **Into the project directory** : `cd OS`
## Installation : 
   * **To install required pakages** : `bash init.sh` 
## Compile and run : 
   * **To compile and run** : `bash run.sh` 
## Pull and push from  git :
   * **Pull changes from server** : `git pull origin main`
   * **Send chages to server**:
        > to push changes you need permission for this repository (message me) or u could fork the repository clone form there and use it
        1. `git add .`
        2. `git commit -m "your commit message"`
        3. `git push origin main`

