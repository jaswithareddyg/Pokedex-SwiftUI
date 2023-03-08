# Final Project - Pokédex

- Name: Jaswitha Reddy Guntaka
- UChicago Email: jaswithareddy@uchicago.edu
- Github Id: jasuchicago
- Slack User Name: Jaswitha Reddy Guntaka

# Attributions

Pokédex Icon <br>
https://icons-for-free.com/Pokedex+tool-1320568182154727832/ <br>

# Notes

API Errors <br> 
On changing the `let id = UUID()` to `var id = UUID()` in PokemonModel's `Pokemon` struct, I get the below error. I tried looking up solutions online but haven't found a source that resolves this issues. <br>
```keyNotFound(CodingKeys(stringValue: "id", intValue: nil), Swift.DecodingError.Context(codingPath: [CodingKeys(stringValue: "results", intValue: nil), _JSONKey(stringValue: "Index 0", intValue: 0)], debugDescription: "No value associated with key CodingKeys(stringValue: \"id\", intValue: nil) (\"id\").", underlyingError: nil))```
<br>
