# Project management

We mostly apply a simplified / mixed version of Agile and Kanban methodology.

It all boils down to a list of states (_GitHub_ `status` label).

Every suggestion, request or report is refined before ending up in a `BACKLOG`, ready to be implemented, reviewed, then merged into the main service.

For now, there are no sprints as there is no release.
Items are prioritized based on our own scoring system.
Early milestones have been set towards usability. These milestones definitions are common to all repositories.

## Vision

As of now (early 2024), every development revolves around modularity.
Even though there are multiple end-user projects, most of our repositories could be considered as advanced templates with great code reusability.

## Project management location

From a visionary perspective, project is managed using Notion. This includes business plan, products vision. Most of the content that is not development related.
From a developer perspective, project is exclusively managed through GitHub Projects, Issues, and Discussions.
Every piece of information, milestone, status, questions, TODO, must happen on GitHub.

## Github usage rules

- Use related _project_ for every task
- Every task is either a discussion or an issue. Always make use of issues features: Comments, Assignees, Labels, Milestones...
- Always create a branch for tasks
- No code goes into _main_ without at least one code review
- Make actionable comments whenever possible: comments the author can act on.
- Use issue labels

## Issues

Please follow the issue lifecycle whenever you want to contribute.
We provide various templates in english and french for users to help improving our services.
These templates follow strict material, including a project status field that must be kept up to date both from issue author and maintainers.
This schema explains everything.

![Issue lifecyle - status](issue-lifecyle-status.svg)

## Pull Requests

As we use GitHub free edition for now, _Pull requests_ are only created for review, upon issue implementation completion.

A really important subject to treat well as a bad PR handling:

- reflects code smells and irresponsibility
- costs a lot of time
- generates frustration and uncertainty over the product stability
- causes issues: bugs, regressions

### Git related rules

- PRs should be small. Why? Easier to review, less conflicts, quicker problem detection.
- Merge ASAP
- Frequently sync up your feature branch with _main_.
- Do pair merging when having any doubt.
- [[Single Responsibility Principle]]: one feature, one branch, even try to split one feature in atomic elements.
- Cleaning, refactoring and widespread renaming changes should always be their own PR (one PR per change), and not during a sprint.
- Branch from _main_ unless necessary. Do not branch too deeply. Merge children to direct parent, not to sibling.
- CI should check for:
  - format
  - lints, code quality. IE _clippy_ for _rust_.
  - code coverage tools (tests)
  - possible vulnerabilities

> [!Note]
> Branching strategy - common scenarios: main + release + maintenance + per isolated feature + per isolated team.
>
> 1. _release_ is created from main on [[feature freeze]].
> 2. During _feature freeze_, only create branches from _release_
> 3. On release, apply fixes to _release_, which is merged into _main_ periodically

### Code related rules

- High unit test coverage to protect against regressions.
- Open Closed Principle: open for extension, closed for modification. It means:
  - A merged feature should be stable, so not subject to change (only extension).
  - By exception if a modification must be made, do it on its own PR (_OCP Exception_).
    Exception case: bug fix, refactoring and improvement.
  - Must be coupled with SRP: the shorter the method, the less prone it will be to update.
- Single Responsibility Principle (SRP): one class, one responsibility.
- Short methods, one task per method. Split code into atomic elements.
- Everyone must use the same standard linter + formatter + code quality, which must be applied on save and checked on CI so as a reviewer you do not have to watch this.
- [[Microservices]] or modular architecture to avoid multiple devs working on the same codebase

### Process related

- Break everything down into tasks, each being less than two days.
- Anticipate overlapping areas during meetings to raise awareness and eventually delay a feature.

### Developer rules

What should be done as the author:

- Comment the PR, it should always mention:
  - Difficulties you went through, what made some changes difficult
  - Special concern / high risk areas of change
  - New code that is not yet in its definitive form
    Always leave at least one comment to explain what the feature does, indicate which issues it closes if multiple.

### Review *PR*s from Visual Studio Code

1. Install the official _Github pull Requests and Issues_ extension
2. Accept the github account integration
   From here, you will be able to interact with the usual graphical PR from the _Description_ view:

- Adding comments
- Checkout the branch
- Check _Github Actions_
  When checking out the pull request, it will open a new view, very similar to Github's review space.
  Enjoy.

## Scoring System

Our scoring system is derived from RICE and leverages Impact, Effort, Complexity to prioritize and evaluate contribution.
**Priority Formula** ➧ `impact * effort * complexity`
**Contribution Formula** ➧ `impact * 0.5 * complexity * (actually merged) effort`
Effort being computed this way: `max(additions, deletions)`

### Impact

How many users would benefit from this feature and how big would the impact be? `average(reach, impact)`

### Complexity

How complex do you think the problem resolution will be? Consider factors such as algorithmic, brainfuck, and uncertainty. Do not take lines of code into account

### Effort

Select the estimated number of lines of code `max(additions, deletions)`. Do not take complexity into account.
