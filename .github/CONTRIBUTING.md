# HOW TO CONTRIBUTE?

To the attention of contributors.

We call a task: a submitted _feature_, _task_ (i.e. tweak), or _bug_.

# Expected attitude

**Empathy** is a core programming trait. Have empathy for users; for product managers; for support folks and developers; any of whom may be future you.

- We foster a collaborative environment by admitting what we don’t know and look for help or alternative points of view.  
- We encourage respectful, non-judgmental discussions so better ideas emerge.  
- We embrace challenges as opportunities to learn, innovate, and improve together.  
- We share knowledge and feedback to support each other’s growth.  

# Task Lifecycle

All tasks must be tracked as a Discussion or Issue and linked to a Project.

## 1 - You have an idea of how to improve (or fix) a product?

Open a Discussion or Issue, link it to a Project, and follow the rules:

- set the issue type, milestone, assignee, and scores.
- If possible, propose a solution in the issue description or as a comment.

A maintainer reviews the task and collaborates with the author until it moves to **BACKLOG** or is closed with an explanation.  

## 2 - If you want to implement this task yourself

- Self-assign the issue
- Create a branch from the GitHub development panel with the __feat/task/bug/__#_id_.  
    Do not alter proposed branch name.
- Immediately open a pull request, using our pull request template.
- GitHub keywords to link PRs to issues (`Fixes #...`, `Closes #...`).
- Set issue _status_ to `ACTIVE`
- Start working on it.
- Rebase the branch onto **main** on a daily basis (at least): `git pull --rebase origin main`

## 3 - Implementation rules

Always ask yourself the following questions:

- Have your design / implementation choices been written down in comments? What worked, what did not or would not, why you chose this over that.
- Have you implemented unit and/or integration tests?
- Have you written documentation? Make sure anyone else working over your code can understand it.

Make sure to create a new issue for any future **expected** improvement and reference your task in the new issue description.

## 4 - Once done working on the implementation

- Ensure tests, linting, and formatting pass.  
- Rebase onto **main**.  
- Document changes with issue and PR comments:  
    - Add screenshots or recordings for UI/UX updates.  
    - Explain challenges and solutions.  
    - Highlight high-risk areas.  
- Assign a maintainer for review and address feedback while continuing rebases until approval.
- Set issue _status_ to `REVIEW`.

> Note: IDEs like VSCode offer tools to streamline code review.

After approval, a maintainer will rebase and merge the PR into **main**.

> These rules apply to deployable projects. Internal libraries follow a separate process.

To deploy a new internal version, open a PR from **main** to **staging**. A maintainer will merge and trigger deployment.

> Automated workflows update issue _status_:  
> - Opening a PR → `ACTIVE` and self-assign  
> - Requesting a review → `REVIEW`  
> - Requesting changes → `CHANGES`  
> - Merging a PR → `DONE`

# Task Guidelines

- Provide clear, actionable comments on issues and pull requests.  
- Break work into tasks that take no more than two days to complete for focused reviews and fewer conflicts.  
- Prioritize reviewing PRs; complete reviews within two days.  
- Adhere to the Single Responsibility Principle: one feature per branch, splitting larger features into atomic units.  
- Coordinate proactively to avoid overlapping work.  
- Refactoring, cleaning, or widespread renaming must be submitted as standalone PRs, never during a sprint.

# Branching Strategy

- **feat/**: New features → merge into **main**.  
- **task/**: Refactoring or minor updates → merge into **main**.  
- **bug/**: Bug fixes → merge into **main**.  
- **main**: Primary development branch representing the latest version.  
    No code may be merged into **main** without at least one approved review. 
- **staging**: Stable, human-testable builds from **main**; merging triggers internal deployment.  
- **pre-release**: Populated by merging **staging**; apply release-candidate tags.  
- **release**: Created by merging a stable **pre-release** and tagging the final version.  
- **hotfix/**: Urgent fixes → merge into **release** and cherry-pick to **main** as needed.

# Issue Templates

We provide templates in English and French to guide contributors.

Please follow the task lifecycle when contributing and use the appropriate template.

## Labels

All organization repositories provide the following issue labels:
- A-data:            api / models / orm / cache"
- A-domain:          business logic / core"
- A-UI:              UI / UX / design / frontend"
- A-fullstack:       UI + data + domain"
- A-infra:           devops / cloud / observability / system architecture"
- B-blocking:        Another issue is pending because of this one"
- B-clarification:   Should be discussed during next meeting"
- B-help-wanted:     Extra attention is needed"
- B-idea:            Discussion; or implementation attempt, to be reviewed before further work"
- EPIC:              Audit or huge issue, encompassing multiple tasks"
- HOTFIX:            Fix bug in production"

# PR Strategy

## 1. Upon PR creation

- PR title must follow the [Conventional Commits](https://www.conventionalcommits.org) format:
    ```
    <type>(opt. scope): <imperative title>
    ```
    - _type_: `fix:`, `feat:`, `task:` mainly, or: `ci:`, `refactor:`, `docs:`, `style:`, `test:`, `perf:`.
    - `feat(domain feature):` to indicate scope (optional).
    - `!` to indicate a breaking change (such as `feat!:`). e.g. library crate api changed.
- Impact, complexity, and effort scores are set in the issue’s right sidebar.
- Issue is assigned to PR creator, _status_ is set to `ACTIVE`.

## 2. While / Once task is implemented

- Code is documented for developers / users to understand and maintain / use.
- Unit and / or integration tests are included, or justification is provided.
- Code: debug, temporary comments, and dead code are removed.
- All automated checks (formatting, linting, see CI checks) are passing.
- The _📸 CAPTURES_ section is updated with screenshots or clips illustrating UI/UX changes.
- The _🧪 STANDUP_ section has been updated.
- Branch is `git pull --rebase origin main`
- Status is set to `REVIEW` and reviewers are assigned.
- (once reviewed) Branch is again `git pull --rebase origin main`; Scores are updated; status is set to `DONE`.

Pull request can then be squashed merged.

# Commit Strategy

- Aim for one clear, imperative, descriptive commit per task.  
- Explain the “what” and “why” in commit messages.  
- Avoid WIP commits: `--amend`.  
- Before requesting review, clean up your git history.

# Code Standards

1. Use meaningful names
2. Comment, document and test
3. _Keep It Simple, Stupid (KISS)_: Readable over clever
4. Consistent coding styles  
    Use the agreed-upon linter, formatter, and code quality tools on save and before review.  
    Refer to the repository’s CI configuration as our requirements.
5. _Don't Repeat Yourself (DRY)_: Refactor repeated code  
    But _You Ain't Gonna Need It (YAGNI)_: avoid premature optimization, solve only the problems you know exist.  
    making behavior predictable and tests reliable.
6. [SOLID](https://blog.bytebytego.com/p/mastering-design-principles-solid) which comes with the _Single Responsibility Principle (SRP)_:  
Methods should have a single, focused responsibility, making behavior predictable and tests reliable.  
It also applies to a broader architectural concept: _Separation of Concerns (SoC)_: Modules and classes should be highly cohesive, and loosely coupled.
7. Follow the _Open/Closed Principle_: code should be open for extension but closed for modification.  
8. Fail fast: throw errors as early as possible.

## Design patterns & principles

Take the time to learn them. Then apply them.

Design patterns & principles:
    - Prevent common pitfalls with battle-tested solutions.
    - Enhance readability and maintainability for all contributors by making code intent explicit.
    - Encourage consistency across modules and teams.
    - Facilitate testing, refactoring, and safe evolution.
    - Promote scalability and adaptability as requirements change.
    - Foster a shared vocabulary to speed up design discussions.

## Test Driven Development

As a guiding principle, write tests before implementing functionality.

Test-Driven Development provides several advantages over traditional development:

1. Proactive Design: Writing tests first forces you to define clear requirements and interfaces before implementation, leading to a more focused, maintainable codebase.  
2. Problem-Centric Communication: Tests become executable specifications that describe the problem domain and why each behavior matters—far more insightful than post-hoc documentation.  
3. Rapid Feedback & Regression Safety: Immediate feedback from failing tests accelerates development and ensures future changes don’t introduce regressions.  
4. Confident Refactoring: A comprehensive test suite lets you refactor or evolve code with confidence, as any unintended side-effects are caught early.  
5. Living Documentation: Tests double as up-to-date documentation, evolving alongside your codebase and reducing knowledge gaps.  
6. Design Simplicity: By driving implementation with tests, you avoid over-engineering and keep your code lean and purpose-driven.  

## Tackling a problem

- Research requirements, constraints, and existing solutions
- Prototype key behaviors with [SSCCE](http://sscce.org/)s: Small, Self-Contained, Correct Examples.  
    Prototyping ideas in isolation before integrating has the following benefits:  
    - Lower cognitive load  
    - Faster iteration without external dependencies  
    - Easier collaboration and knowledge sharing  
- Evaluate and choose the most suitable architectural or design patterns
- Sketch system diagrams, data flows, and module interactions
- Ensure your plan adheres to established coding principles and standards
- Draft a commented skeleton outlining core modules, interfaces, and workflows
