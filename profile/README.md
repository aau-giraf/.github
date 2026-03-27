# GIRAF

GIRAF is a multi-disciplinary student project at Aalborg University (AAU) developing tablet applications to support autistic children in Danish institutional settings. The project is developed in collaboration with Egebakken Specialskole and brings together students from computer science, interaction design, and other disciplines to create tools that improve daily routines for children and their caregivers.

## Applications

| Application | Description | Tech Stack | Repo Link |
|---|---|---|---|
| Weekplanner | Schedule management for daily routines | Flutter, .NET, PostgreSQL | [weekplanner](https://github.com/aau-giraf/weekplanner) |
| VTA | Visual communication boards for non-verbal children | Flutter, .NET, MySQL | [visual-tangible-artefacts](https://github.com/aau-giraf/visual-tangible-artefacts) |
| Foodplanner | Meal planning for institutions | Flutter, .NET, PostgreSQL | [foodplanner](https://github.com/aau-giraf/foodplanner) + [foodplanner-api](https://github.com/aau-giraf/foodplanner-api) |
| giraf-core | Shared domain service (users, orgs, auth) | Django, PostgreSQL | [giraf-core](https://github.com/aau-giraf/giraf-core) |
| giraf-ai | AI services: image generation & TTS | FastAPI, Python | [giraf-ai](https://github.com/aau-giraf/giraf-ai) |

## Architecture

```
┌─────────────────────────────────────────────────────────────────┐
│                    Mobile Apps (Flutter)            │
│   Weekplanner          Food Planner          VTA               │
└──────┬──────────────────────┬───────────────────┬──────────────┘
       │                      │                   │
       ▼                      ▼                   ▼
┌──────────────┐   ┌──────────────┐   ┌──────────────────┐
│ Weekplanner  │   │ Food Planner │   │ VTA Backend      │
│ Backend      │   │ Backend      │   │                  │
│ (.NET 10)    │   │              │   │ (.NET + SignalR) │
└──────┬───────┘   └──────┬───────┘   └──────┬───────────┘
       │                  │                   │
       └──────────────────┼───────────────────┘
                          │
              ┌───────────┴───────────┐
              ▼                       ▼
┌──────────────────────┐  ┌──────────────────────┐
│   GIRAF Core API     │  │      giraf-ai        │
│  (Django + Ninja)    │  │     (FastAPI)         │
│                      │  │                       │
│ Users, Orgs, Auth    │  │ Image generation, TTS │
│ Citizens, Pictograms │  │ Stateless, no DB      │
└──────────┬───────────┘  └───────────────────────┘
           │
     ┌─────▼─────┐
     │  Core DB  │
     │ PostgreSQL│
     └───────────┘
```

Both shared services validate Core-issued JWTs — backends call either with the same token.

## Get Involved

- Read our [Contributing Guide](../CONTRIBUTING.md) to learn how to contribute
- Browse [good first issues](https://github.com/search?q=org%3Aaau-giraf+label%3A%22good+first+issue%22&type=issues) across all GIRAF repositories
- Visit the [Project Wiki](https://aau-giraf.github.io/wiki/) for documentation and onboarding guides

## Resources

- [Architecture Overview](https://aau-giraf.github.io/wiki/Architecture/) -- System design, tech stack, and architecture decisions
- [Wiki](https://aau-giraf.github.io/wiki/) -- Documentation, architecture guides, and onboarding
- [Website](https://giraf.cs.aau.dk) -- Project website
