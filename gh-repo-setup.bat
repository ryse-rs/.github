:: === Run this script upon new repository creation ===

@echo off
setlocal

:: === Check for repo name argument ===
if "%~1"=="" (
    echo Usage: gh-repo-setup.bat ^<repo-name^>
    exit /b 1
)

:: === Configuration ===
set REPO=%~1
set ORG=ryse-rs

:: === Deleting default GitHub labels
echo Deleting default GitHub labels...
gh label delete --repo %ORG%/%REPO% --yes "bug"  2>nul
gh label delete --repo %ORG%/%REPO% --yes "documentation"  2>nul
gh label delete --repo %ORG%/%REPO% --yes "enhancement"  2>nul
gh label delete --repo %ORG%/%REPO% --yes "duplicate"  2>nul
gh label delete --repo %ORG%/%REPO% --yes "good first issue"  2>nul
gh label delete --repo %ORG%/%REPO% --yes "help wanted"  2>nul
gh label delete --repo %ORG%/%REPO% --yes "invalid"  2>nul
gh label delete --repo %ORG%/%REPO% --yes "question"  2>nul
gh label delete --repo %ORG%/%REPO% --yes "test"  2>nul
gh label delete --repo %ORG%/%REPO% --yes "wontfix"  2>nul

:: === Creating custom labels
echo Creating custom labels...

gh label create "A-data"          --repo %ORG%/%REPO% --force --color "#1E90FF"   --description "api / models / orm / cache"
gh label create "A-domain"        --repo %ORG%/%REPO% --force --color "#9E80AE"   --description "business logic / core"
gh label create "A-UI"            --repo %ORG%/%REPO% --force --color "#BA8E23"   --description "UI / UX / design / frontend"
gh label create "A-fullstack"     --repo %ORG%/%REPO% --force --color "#FFFFFF"   --description "UI + data + domain"
gh label create "A-infra"         --repo %ORG%/%REPO% --force --color "#2E8B57"   --description "devops / cloud / observability / system architecture"
gh label create "B-blocking"      --repo %ORG%/%REPO% --force --color "#F8F1AC"   --description "Another issue is pending because of this one"
gh label create "B-clarification" --repo %ORG%/%REPO% --force --color "#000000"   --description "Should be discussed during next meeting"
gh label create "B-help-wanted"   --repo %ORG%/%REPO% --force --color "#2943E2"   --description "Extra attention is needed"
gh label create "B-idea"          --repo %ORG%/%REPO% --force --color "#D876E3"   --description "Discussion; or implementation attempt, to be reviewed before further work"
gh label create "EPIC"            --repo %ORG%/%REPO% --force --color "#C5DEF5"   --description "Audit or huge issue, encompassing multiple tasks"
gh label create "HOTFIX"          --repo %ORG%/%REPO% --force --color "#FF0000"   --description "Fix bug in production"

:: === Configure merge strategy
echo Configuring merge strategy...

gh repo edit %ORG%/%REPO% ^
  --enable-squash-merge=true ^
  --enable-merge-commit=false ^
  --enable-rebase-merge=false ^
  --enable-auto-merge=false ^
  --default-branch main ^
  --delete-branch-on-merge=true

echo Done.
