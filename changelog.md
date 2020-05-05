# Improved Town Layouts

## Changelog

### 1.01 (hotfix)
- Changed low-density shops to nearly always appear in a town, to accept food and goods and avoid a chicken-and-egg-problem with citybuilder scripts which require food or goods to grow towns.
  - Now available 1700-9999, Probability 15 (maximum), limit 1 per town.

- Added support for ECS Tourists (cargo label TOUR)
  - Accepted by: Old Church, Neo-Moorish Church, Stadium (new and old), Hotel, Theatre, Nakagin Capsule Tower.
  - Future update will let these buildings generate tourists, once I figure out the cargo_production callback.