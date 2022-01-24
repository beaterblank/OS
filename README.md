# OS :
    open terminal cd to any directory you wish then run these commands 
    Note : made in Ubuntu distribution so best used in Ubuntu distribution
## downloading : 
   * to install git : `sudo apt install git` 
   * configure git  : 
        1. `git config --global user.name "your_username"`
        2. `git config --global user.email "your_email_address@example.com"`
   * clone the repository :`git clone https://github.com/beaterblank/OS.git`
   * into the project directory : `cd OS`
## installation : 
   * to install required pakages : `bash init.sh` 
## compile and run : 
   * to compile and run : `bash run.sh` 
## pull and push from  git :
   * pull changes from server : `git pull origin main`
   * send chages to server:
        1. `git add .`
        2. `git commit -m "your commit message"`
        3. `git push origin main`
            * on push it might ask your github username and password 
            * for username enter ur username
            * for password From your GitHub account, go to Settings => Developer Settings => Personal Access Token => Generate New Token (fill all nessary details) => Fillup the form => click Generate token => Copy the generated Token, it will be something like ghp_sFhFsSHhTzMDreGRLjmks4Tzuzgthdvfsrta  copy and use it as password
