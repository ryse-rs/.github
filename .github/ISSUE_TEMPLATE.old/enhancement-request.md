---
name: Enhancement request
about: Some improvement suggestions are always welcome! Please fill with care.
title: "[ENHANCE]"
labels: upgrade
assignees: ""
---

<!-- Thank you for your dedication 🙏🏻 -->

## **What** change are you proposing?

<!--
FILL ME
Current situation vs new situation. Context, to help understand your proposal.
-->

## **Why** should we do that?

<!--
FILL ME
What would be the benefits?
-->

## **How** can we achieve this?

<!--
FILL ME
Feel free to provide implementation details. This will speed up the process.
-->

<!--
SUBMIT ME then update at least priorities
-->

## Priority - Score

### Impact

_How many users would benefit from this enhancement and how big would the impact be? (`average(reach, impact)`)_

- [ ] I1 - Negligible impact | Benefits really few users
- [ ] I2 - Interesting enhancement | Benefits a fair proportion of users
- [ ] I3 - Non-blocking but essential enhancement | Every user will benefit from having this enhancement.
- [ ] I4 - This enhancement is a prerequisite for other essential enhancements | Would have no user without this enhancement.

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

- [ ] Ask a maintainer to consider adding it to the `BACKLOG`.
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

*status*es: [ `NEW BACKLOG ACTIVE TEST REVIEW CHANGES REBASE DONE CANCELLED` ]
