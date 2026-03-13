# GIRAF

GIRAF is a multi-disciplinary student project at Aalborg University (AAU) developing tablet applications to support autistic children in Danish institutional settings. The project is developed in collaboration with Egebakken Specialskole and brings together students from computer science, interaction design, and other disciplines to create tools that improve daily routines for children and their caregivers.

## Applications

| Application | Description | Tech Stack | Repo Link |
|---|---|---|---|
| Weekplanner | Schedule management for daily routines | Expo/React Native, .NET, PostgreSQL | [weekplanner](https://github.com/aau-giraf/weekplanner) |
| VTA | Visual communication boards for non-verbal children | Flutter, .NET, MySQL | [visual-tangible-artefacts](https://github.com/aau-giraf/visual-tangible-artefacts) |
| Foodplanner | Meal planning for institutions | Flutter, .NET, PostgreSQL | [foodplanner](https://github.com/aau-giraf/foodplanner) + [foodplanner-api](https://github.com/aau-giraf/foodplanner-api) |
| giraf-core | Shared domain service (users, orgs, auth) | Django, PostgreSQL | [giraf-core](https://github.com/aau-giraf/giraf-core) |
| giraf-ai | AI services: image generation & TTS | FastAPI, Python | [giraf-ai](https://github.com/aau-giraf/giraf-ai) |

## Architecture

```
┌─────────────────────────────────────────────────────────────────┐
│                    Mobile Apps (Expo / React Native)            │
│   Weekplanner          Food Planner          VTA               │
└──────┬──────────────────────┬───────────────────┬──────────────┘
       │ domain data          │ domain data       │ domain data
       ▼                      ▼                   ▼
┌──────────────┐   ┌──────────────┐   ┌──────────────────┐
│ Weekplanner  │   │ Food Planner │   │ VTA Backend      │
│ Backend      │   │ Backend      │   │                  │
│ (.NET 8)     │   │ (planned)    │   │ (.NET + SignalR) │
│ Activities,  │   │ Meals, Menus │   │ Exercises,       │
│ Schedules    │   │ Nutrition    │   │ Progress         │
└──────┬───────┘   └──────┬───────┘   └──────┬───────────┘
       │                  │                   │
       │  users, orgs, citizens, pictograms   │
       ▼                  ▼                   ▼
┌─────────────────────────────────────────────────────────────────┐
│                    GIRAF Core API                               │
│                    (Django + Ninja, Python)                     │
│                                                                 │
│  Auth/JWT │ Users │ Orgs │ Citizens │ Grades │ Pictos │ Invites │
└─────────────────────────┬───────────────────────────────────────┘
                          │
                    ┌─────▼─────┐
                    │  Core DB  │
                    │ PostgreSQL│
                    └───────────┘

┌─────────────────────────────────────────────────────────────────┐
│                    giraf-ai (FastAPI, Python)                   │
│           Stateless AI services — image generation & TTS       │
│                    Available to all apps                        │
└─────────────────────────────────────────────────────────────────┘
```

## Get Involved

- Read our [Contributing Guide](../CONTRIBUTING.md) to learn how to contribute
- Browse [good first issues](https://github.com/search?q=org%3Aaau-giraf+label%3A%22good+first+issue%22&type=issues) across all GIRAF repositories
- Visit the [Project Wiki](https://aau-giraf.github.io/wiki/) for documentation and onboarding guides

## Resources

- [Architecture Overview](https://aau-giraf.github.io/wiki/Architecture/) -- System design, tech stack, and architecture decisions
- [Wiki](https://aau-giraf.github.io/wiki/) -- Documentation, architecture guides, and onboarding
- [Website](https://giraf.cs.aau.dk) -- Project website
