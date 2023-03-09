# Final Project - Pokédex

- Name: Jaswitha Reddy Guntaka
- UChicago Email: jaswithareddy@uchicago.edu
- Github Id: jasuchicago
- Slack User Name: Jaswitha Reddy Guntaka

# Attributions

Pokémon API <br>
https://pokeapi.co/docs/v2#pokemon <br>
Pokédex Icon / AppIcon <br>
https://icons-for-free.com/Pokedex+tool-1320568182154727832/ <br>
Pokéball Icon <br>
https://www.freeiconspng.com/downloadimg/45330 <br>
Splach Screen <br>
https://medium.com/@liyicky/how-to-make-a-splash-screen-in-swift-ui-83b02984a6ab <br>
Fonts <br>
https://www.dafont.com/pokemon.font<br>
Adding Fonts to Project <br>
https://sarunw.com/posts/swiftui-custom-font/ <br>

# Notes

**API Errors** <br> 
On changing the `let id = UUID()` to `var id = UUID()` in PokemonModel's `Pokemon` struct, I get the below error. I tried looking up solutions online but haven't found a source that resolves this issues. <br>
```keyNotFound(CodingKeys(stringValue: "id", intValue: nil), Swift.DecodingError.Context(codingPath: [CodingKeys(stringValue: "results", intValue: nil), _JSONKey(stringValue: "Index 0", intValue: 0)], debugDescription: "No value associated with key CodingKeys(stringValue: \"id\", intValue: nil) (\"id\").", underlyingError: nil))```
<br><br>
**Packages** <br>
`PokemonAPI` Swift Package Manager was added but never used (and I am unable to delete it from XCode). <br>
