# notion-export-template

Action to auto backup your notion workspace as a json set of files:
* Clone this repo with a name like `notion-export-myproject` with myproject describing your project. Be sure to set the repo as private if you have private stuff in your repo.
* Enable github actions
* Create a Notion intergration
    * Go to https://www.notion.so/my-integrations and create an integration linked to your workspace
* Add the integration to your workspace
    * Go to the root page of your workspace (or the root pages if several) and add the integration to the page...
        * In the "..." of the page, in the section "Connections", click on the "+", and select the name of you integration
* Set repo secret `NOTION_TOKEN` to the token of your integration
* Start the github action `backup` or wait 01:07 each day for backup to start