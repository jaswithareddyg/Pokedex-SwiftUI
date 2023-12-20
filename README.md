# Pokédex App 🌟

Welcome to the Pokédex app, your go-to companion for exploring the vast world of Pokémon! This iOS-exclusive app is designed to provide a comprehensive and interactive experience for Pokémon trainers and enthusiasts.


## Functionality

1. **List of Pokémon:** Browse through a list of all existing Pokémon.
2. **Search Pokémon:** Find specific Pokémon by searching their names.
3. **Favorite Pokémon:** Mark your favorite Pokémon for quick access.
4. **3D Pokémon Models:** View 3D models of Pokémon to get a closer look.

## Implementation

- **SwiftUI:** The app is built using SwiftUI, ensuring a modern and engaging user interface.
- **Pokémon API:** Utilizes the [Pokémon API](https://pokeapi.co/docs/v2#pokemon) to fetch Pokémon information.
- **3D Models:** Incorporates 3D Pokémon models from open-source websites like sketchfab.com, turbosquid.com, free3d.com, etc.

## Attributions

- **Pokémon API:** [pokeapi.co](https://pokeapi.co/docs/v2#pokemon)
- **Pokédex Icon / AppIcon:** [Icons for Free](https://icons-for-free.com/Pokedex+tool-1320568182154727832/)
- **Pokéball Icon:** [Free Icons PNG](https://www.freeiconspng.com/downloadimg/45330)
- **Splash Screen:** [Medium](https://medium.com/@liyicky/how-to-make-a-splash-screen-in-swift-ui-83b02984a6ab)
- **Fonts:** [Pokemon Font](https://www.dafont.com/pokemon.font) | [Adding Fonts to Project](https://sarunw.com/posts/swiftui-custom-font/)
- **Sheet View:** [Presenting Sheets](https://www.avanderlee.com/swiftui/presenting-sheets/)
- **SceneKit / 3D View:** [YouTube Tutorial](https://www.youtube.com/watch?v=d4ciSOLvIH8)

## Known Issues

- **API Errors:** On changing the `let id = UUID()` to `var id = UUID()` in PokemonModel's `Pokemon` struct, I get the below error. I tried looking up solutions online but haven't found a source that resolves this issues.
  - ```keyNotFound(CodingKeys(stringValue: "id", intValue: nil), Swift.DecodingError.Context(codingPath: [CodingKeys(stringValue: "results", intValue: nil), _JSONKey(stringValue: "Index 0", intValue: 0)], debugDescription: "No value associated with key CodingKeys(stringValue: \"id\", intValue: nil) (\"id\").", underlyingError: nil))```
- **Packages:** The PokemonAPI Swift Package Manager was added but never used and cannot be removed from Xcode.

## Executive Summary

The Pokédex app offers a user-friendly interface, 3D Pokémon exploration, and a wealth of information on various Pokémon species. It's designed to cater to Pokémon enthusiasts of all ages, providing a valuable resource for learning and enjoyment. Explore, discover, and embark on your Pokémon journey with the Pokédex app!

[Watch Video Preview](https://youtube.com/shorts/ytGRPo9pbUY?si=uoU-F24_IgrCbK9d) 🎥

## Additional Information

- This project was developed using Xcode and SwiftUI.
- For issues or questions, contact [(Jas) Jaswitha](mailto:jaswithareddyguntaka@gmail.com).

**Happy Pokémon exploring!** 🚀✨
