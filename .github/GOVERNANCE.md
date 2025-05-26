# Vision

We believe that great software is built on:

- **Clarity**: clean interfaces, documented decisions, and clear responsibilities.
- **Transparency**: clear and structured processes and constructive feedback loops.
- **Modularity**: separation of concerns and composable architecture.
- **Validation**: testing, type safety, and continuous integration.
- **Responsibility**: each contributor owns their work from draft to merge.

# ✔️ Methodology

We use a hybrid Agile-Kanban workflow. Work items progress through a lifecycle defined by GitHub status labels.

Every suggestion, request, or bug report is tracked as a GitHub issue. Issues are refined before being added to the `BACKLOG` GitHub project.

Prioritization and workload allocation rely on our in-house scoring system (see “Scoring System” below).

During the incubation phase of a project, we focus on backlog grooming and ensuring implementation readiness—no active sprints are held. Once a project enters the release phase (including alpha and beta), we switch to time-boxed sprints with defined deliverables.

Although we support multiple end-user applications, many of our repositories serve as reusable foundations or advanced templates.

# 🗂️ Project Management

**Vision & Business:** Managed in Notion (roadmaps, business plans).  
**Development:** Managed in GitHub (projects, issues, discussions).

# 🔢 Scoring System

We adapt RICE to evaluate contributions by Impact, Effort, and Complexity.

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
