# Improved Town Layouts

## Overview

- Visual improvements to building placement, zoning, and clustering, as early as 1700
- Towns grow around your transit network. High-density residential and commercial buildings only appear where passenger and/or mail service is provided.
- Office buildings need residential buildings to house their workers. Town sprawl is suburbs, not skyscrapers.
- Landmarks and districts persist through decades and lend character to your city. When a landmark building is receiving cargo, it won’t disappear and break your network.
- Expanded cargo deliveries with FIRS and ECS compatibility: Deliver food and goods to shops and markets, alcohol to stadiums, and wood or coal to heat pre-1945 buildings.
- Uses only base game sprites, so visually compatible with any base graphics set including Original TTD, OpenGFX, aBase, zBase, and NightGFX.
- Requires OpenTTD version 1.10.0, JGR version 0.34, or better.

## Town Growth 101
Town growth speed is unchanged from the base game. [Check the Wiki](https://wiki.openttd.org/Towns#Town_Growth) if you need a refresher.

If you’re playing with an early start, I suggest using Slow town growth or turning off Towns Can Build Roads. Before public transit and cars, the radius of a city or town was limited to how far a resident could walk to work and how much food and fuel for heating (often wood, before canal boats and railways could bring coal from further away) could be sustainably sourced from the surrounding land. While early houses accept wood and coal, I haven’t figured out how to enforce size limits in-game. A GameScript which limits town size, like [Villages Is Villages](https://www.tt-forums.net/viewtopic.php?t=74685), may be a good option.

## Definitions
- Protection: If a building is protected, the town will not demolish it to build a different building. Does not affect player bulldozing.
- Station receiving service: Some buildings will only appear, or will be protected, if they are within the coverage area of a station receiving Passenger or Mail service. Technically speaking, this measures whether the station accepted that cargo last month.
- Landmarks: Buildings which encourage specific transport and/or are a visual landmark in your city. Asterick denotes building which must be enabled in parameters.
  - Stadiums (old and modern)
  - Historic church
  - Market (2x2 Shopping Centre sprite)
  - Hotel (temperate)
  - Neo-Moorish church*
  - Museum*
  - Courthouse*
  - Spa*
  - [Nakagin capsule tower](https://en.wikipedia.org/wiki/Nakagin_Capsule_Tower) — limit 1 per map
## Features

### Towns don’t excessively cycle through buildings
- Longer Minimum Lifespans keep towns from churning through buildings
- Major destinations become actually useful with new service needs and protection from redevelopment
- Stadiums accept Food and Alcohol (if FIRS is enabled) and will be protected if either of these cargos, or passengers, was delivered last month. The Modern Stadium also generates quite a lot more passenger traffic.
- Hotel, Museum, Resort, University, and Courthouse protected if receiving Passengers
- Shopping Mall, Stores now accept Food and Goods and will be protected if either cargo was delivered last month
- Warehouse protected if receiving Goods

### High-density buildings need population and service
- Flats, Offices, and Shops and Offices only appear within the coverage of a station which accepted passengers last month
  - Transit Oriented Development, baby!
- Towns need sufficient residential neighborhoods for their workers before office buildings will appear.
  - Stadiums also need a minimum population
    - Old stadium: 500 population (with Reduced Early Population)
	- Modern stadium (available 1958): 10,000 population

### Start as early as 1700
- Introduction dates range from 1700 to 2000, allowing a slow progression over time
- Old buildings are phased out gradually between 1945 and 1960
- Early buildings have reduced population to allow older, slower vehicles to keep up with demand
  - 1700-1850: 1/4 population
  - 1850-1950: 1/2 population

### Pre-1945 buildings need fuel
- 1700-1850: Coal and Wood* (*Residential buildings only)
- 1850-1945: Coal
- 1945-9999: none

### Historic Preservation keeps some buildings...but only in some cities
- Some churches are Historic Churches. In these towns, prewar Shops and Offices will be protected from demolition if they are within 2 tiles of another historic Shops and Offices or the church itself. This creates a historic downtown area as seen in many real cities
- Towns with regular churches won’t create historic downtown districts, but Churches and pre-1945 Shops and Offices have a 1/8 chance of being randomly preserved

### Zoning improves building placement
- Shops and Offices only appear within 2 tiles of another Shops and Offices, simulating a commercial district
- Pre- and post-1945 buildings cluster independently, allowing separate Old Town and New Town areas
- Some buildings don't appear within 2 tiles of Houses (Town Houses are fine)
  - Shopping Mall, Warehouse, Fountain, Statue

### Many other visual improvements
- Additional buildings from Sub-Arctic and Sub-Tropical climates
- More variety in churches, offices, and flats
- Buildings with an obvious orientation face the road
  - Cinema, Theatre, Hotel, Houses with driveways
- Buildings which look dumb on slopes don’t build on slopes
  - Park, Fountain, Houses with driveways
- Distinctive buildings don’t appear near each other
  - 2 tiles: Park, Statue, Fountain
  - 10 tiles: Cinema, Theatre
  - 30 tiles: Hotel, Spa
    - Only build in cities
- Recolors of Shops and Offices buildings add visual variety, with more muted/realistic colors than in default towns

## Limitations / Not in Scope
-  This set is intended for the Temperate climate. It does not include snow-aware sprites, because they do not exist for most buildings.
- Buildings do not have construction stages. The sprites exist but they need coding. Feel free to add them and submit a pull request.
