# MusicSpace API

[Demo Video](https://www.youtube.com/watch?v=jox1A4WOzlU)
[Front-End](https://github.com/donkeywaffles/musicSpaceFrontend)

## Models
1. Bands
2. Venues
3. Shows
4. BandShow (Join table)

## Running the the program

Make sure to run the local server in port 3000; all the fetch requests from the front-end are set up for this port. 

```
bundle
rails db:create
rails db:migrate
rails db:seed
rails s
```
