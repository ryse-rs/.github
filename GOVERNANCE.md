# Vision

We believe that great software is built on:

- **Empathy & Respect**: anticipating user needs and nurturing a respectful, collaborative environment.  
- **Responsibility**: documented decisions and responsibilities, end-to-end ownership in contributions.  
- **Modularity**: separation of concerns and composable architecture.  
- **Validation**: testing, type safety, and continuous integration.  

# ✔️ Methodology

We use a hybrid Agile-Kanban workflow. Work items progress through a lifecycle defined by GitHub _status_ labels.

We apply values and code principles of [Extreme Programming](https://wikipedia.org/wiki/Extreme_programming), at a slower release cycle pace.

Every suggestion, request, or bug report is tracked as a GitHub issue. Issues are refined before being added to the `BACKLOG` GitHub project.

Prioritization and workload allocation rely on our in-house scoring system (see “Scoring System” below).

During the incubation phase of a project, we focus on backlog grooming and ensuring implementation readiness—no active sprints are held. Once a project enters the release phase (including alpha and beta), we switch to time-boxed sprints with defined deliverables.

Although we support multiple end-user applications, many of our repositories serve as reusable foundations or advanced templates.

# 🗂️ Project Management

**Vision & Business:** Managed in Notion (roadmaps, business plans).  
**Development:** Managed in GitHub (projects, issues, discussions).

# Release system

Crates are released upon commit on main, on our [private crate registry](https://kellnr.ryse.ovh/).

Upon commit on main, _CD_ automatically updates the following by amending your commit:
- bumps package version (updates `Cargo.toml` and `Containerfile` versions)
- generate the changelog using commits history
- publish the new version along with documentation in __kellnr__
- publish a new git tag

Note that _CD_ is automatically called if (and only if) _CI_ passed.

## Versioning - SemVer (libraries only)

Binaries versioning is handled manually

Version is automatically bumped by our _CD_ upon commit on main branch.

Important note:  
Version will not be bumped when adding new API elements.  
Version will be bumped when an already added API element changes, gets deleted, or gets inner elements added.  
This way, one can still manually bump a version when important features are added.

### Pre release (0.x.x)

| Change                                    | SemVer bump |
| ----------------------------------------- | ----------- |
| Fixed bugs, refactored internals          | 🛠 Patch    |
| Added new public APIs (traits, fns, etc.) | 🛠 Patch    |
| Removed or changed existing APIs          | ✨ Minor    |

✨ Minor is manually bumped when a bunch of additions packed in a milestone is released as a whole set of functionalities.

Note: before 1.0 release, it is strongly recommend to users to specify the exact patch.

### Post release (1.x.x)

| Change                                    | SemVer bump |
| ----------------------------------------- | ----------- |
| Fixed bugs, refactored internals          | 🛠 Patch    |
| Added new public APIs (traits, fns, etc.) | 🛠 Patch    |
| Removed or changed existing APIs          | 🚨 Major    |

✨ Minor is manually bumped when a bunch of additions packed in a milestone is released as a whole set of functionalities.

# 🔢 Scoring System

We adapt [RICE scoring system](https://www.productplan.com/glossary/rice-scoring-model/) to evaluate contributions by Impact, Effort, and Complexity.

```
priority = impact × effort × complexity
```

> Contribution is computed a bit differently:
> ```
> contribution (upon merge) = impact × 0.5 × complexity × effort
> ```

Where:  
- Effort = max(additions, deletions)  
- Impact = average(reach, impact)  
- Complexity = difficulty level (algorithmic challenge, uncertainty, cognitive load)

### Impact  
Estimate how many users will benefit and the overall effect. 

> 1. Negligible impact | Affects really few users
> 2. Affects a specific part of the application, but not critical | Affects a small number of users
> 3. Affects a core part of the application | Affects a large number of users
> 4. Nothing works | Every user is affected

### Complexity  
Assess the difficulty of solving the problem, taking into account algorithmic challenges, uncertainty, and cognitive load.

Do not consider lines of code.

> 1. Easy. Use of brain cells is mostly null.
> 2. Manageable. Will require hours of research / experimentation.
> 3. Hard. Will require days of research / experimentation, **prior to implementation**.
> 4. Black Magic level. May require weeks of research / experimentation, **prior to implementation**. May even be unsolvable.

### Effort  
Estimate the coding effort as the maximum of additions and deletions.

Do not factor in complexity.  

> 1. < 200 LoC
> 2. < 750 LoC
> 3. < 1k5 LoC
> 4. \> 1k5 LoC
