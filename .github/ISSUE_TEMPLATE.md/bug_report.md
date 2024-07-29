<!-- Thank you for your hawk eye 🙏🏻 -->

## **What** is the issue?

<!--
FILL ME
Expected behaviour vs Current behaviour.
-->

## Steps to reproduce

<!--
FILL ME
-->

## Relevant information about your environment

<!--
FILL ME
(e.g. browser, OS, versions of rust, tools, logs, etc.)
-->

## **How** can we fix it?

<!--
FILL ME
Feel free to provide implementation details. This will speed up the process.
-->

<!--
SUBMIT ME then update at least priorities
-->

## Priority - Score

### Impact

_How many users are affected and how severe is the impact? (`average(reach, impact)`)_

- [ ] I1 - Negligible impact | Affects really few users
- [ ] I2 - Affects a specific part of the application, but not critical | Affects a small number of users
- [ ] I3 - Affects a core part of the application | Affects a large number of users
- [ ] I4 - Nothing works | Every user is affected

### Complexity

_How complex do you think the problem resolution will be? Consider factors such as algorithmic, brainfuck, novelty, experimentation and uncertainty. Do not take lines of code into account_.

- [ ] C1 - Easy. Use of brain cells is mostly null.
- [ ] C2 - Manageable. Will require hours of research / experimentation.
- [ ] C3 - Hard. Will require days of research / experimentation, **prior to implementation**.
- [ ] C4 - Black Magic level. May require weeks of research / experimentation, **prior to implementation**. May even be unsolvable.

### Effort

_Select the estimated number of lines of code (`max(additions, deletions)`). Do not take complexity into account._

- [ ] E1 - < 200 LoC
- [ ] E2 - < 750 LoC
- [ ] E3 - < 1k5 LoC
- [ ] E4 - >= 1k5 LoC

> [!NOTE] > **Priority Formula** ➧ `impact * effort * complexity` > **Contribution Formula** ➧ `impact * 0.5 * complexity * (actually merged) effort`
> Effort being computed this way: `max(additions, deletions)`

---

POST ISSUE SUBMISSION

> [!IMPORTANT]
> Please make sure you made yourself aware of our [CONTRIBUTING rules](https://github.com/ryse-rs/.github/blob/main/CONTRIBUTING.md) and our [GOVERNANCE processes and vision](https://github.com/ryse-rs/.github/blob/main/GOVERNANCE.md).
> Please fill this form with care. Ready to process requests are prioritized.
> If you have any questions or need guidance, feel free to add related labels and ping a maintainer.

### To the attention of the request author

- [ ] Ready to be processed by a maintainer?
      Set its status to `PROCESS` and wait for the status to be updated to `BACKLOG`.
- [ ] I'd like to implement this myself.

### To the attention of the assignee

#### 1 - On Github

- [ ] Self-assign the issue
- [ ] Propose a solution in the issue description / comments.
- [ ] Set the appropriate _status_: `BACKLOG` (if ready) or `ACTIVE` (if actually working on the implementation)
- [ ] Create a branch from the GitHub development panel and start working on it.

#### 2 - On Code

- [ ] Write design / implementation choices down in comments.
- [ ] Unit and/or integration tests? Or justify why not in comments.
- [ ] Documentation. Make sure anyone else working over your code can understand it.
- [ ] Make sure to create a new issue for any future **expected** improvement and reference this one in the new issue description.

#### 3 - On Github

- [ ] Create a Pull Request from your branch.
- [ ] Set the _status_ of the issue to `REVIEW`.
- [ ] Request the review from a maintainer. Once reviewed, rebase main in your branch (if needed).
- [ ] Set the _status_ of the issue to `DONE`.

*status*es: [ `NEW PROCESS BACKLOG ACTIVE TEST REVIEW CHANGES REBASE DONE CANCELLED` ]
