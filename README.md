# notion-export-template

Action to auto backup your notion workspace as a json set of files:
* Decide if you back is public or private (Note: Forks can't be private)
    * For public backup (be carefull, if you have private stuff in your workspace, you should create a private repo)
        * Fork this repo with a name like `notion-export-myproject` with myproject describing your project.
    * For private backup (be carefull, if you have private stuff in your workspace, you should create a private repo)
        * Create a new *private* repo with a name like `notion-export-myproject` with myproject describing your project.
        * Clone this repo
        * Remove remote origin
            * git remote remove origin
        * Add you new repo as origin
            * git remote add origin https://github.com/{yourname}/{yourproject}
        * Push the content to your repo
            * git push -u origin master
* Enable github actions
* Create a Notion intergration
    * Go to https://www.notion.so/my-integrations and create an integration linked to your workspace
* Add the integration to your workspace
    * Go to the root page of your workspace (or the root pages if several) and add the integration to the page...
        * In the "..." of the page, in the section "Connections", click on the "+", and select the name of you integration
* Set repo secret `NOTION_TOKEN` to the token of your integration
* Start the github action `backup` or wait 01:07 each day for backup to start

# Disclamer

This export is not supposed to be ready for any import of any kind.
Neither the official export is suppoed to be ready for any import of any kind.

This export is just a way to store the information in a way exploitable by a software "yet to write", so in case of a lose of workspace, the information is not totally lost. You'll still need to write something to extract the informations you've lost.