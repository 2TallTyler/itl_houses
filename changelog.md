# Improved Town Layouts

## Changelog

### 1.01 (hotfix)
- Changed low-density shops to nearly always appear in a town, to accept food and goods and avoid a chicken-and-egg-problem with citybuilder scripts which require food or goods to grow towns.
  - Now available 1700-9999, Probability 15 (maximum), limit 1 per town.

- Removed in 1.02 ~~Added support for ECS Tourists (cargo label TOUR)~~
  - ~~Accepted by: Old Church, Neo-Moorish Church, Stadium (new and old), Hotel, Theatre, Nakagin Capsule Tower.~~
  - ~~Future update will let these buildings generate tourists, once I figure out the cargo_production callback.~~

### 1.02
- Added population requirements for stadiums
  - Old stadium has a minimum of 1,000 people
  - Modern stadium has a minimum of 10,000 people
  - Towns can now have both types of stadiums
- Town buildings no longer accept ECS Tourists
  - This was improperly implemented and needs revision.
- Revised mail cargo scheme
  - Commercial building (offices) production boosted slightly
  - Residential building production decreased to near-zero (not completely; you'll still get letters from grandma)