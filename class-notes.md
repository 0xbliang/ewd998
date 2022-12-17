For rendering diagram

```bash
sudo apt update && sudo apt install graphviz
```

Check model option parameters:

```
-deadlock -noTE -dump dot diagram-out
```

Tool: 
- ShiViz: space time sequence diagram, for visualizing TLA+ trace output

Syntax
`<>`: eventually
`[]`: always true (for every state)
`<>[]`: eventually gets into terminal state

References:
- https://lamport.azurewebsites.net/tla/tla.html
- https://lamport.azurewebsites.net/video/intro.html
- https://www.amazon.science/publications/how-amazon-web-services-uses-formal-methods
- https://learntla.com/index.html
- https://github.com/tlaplus/azure-cosmos-tla
- https://github.com/tlaplus/Examples
    - Towers of Hanoi, etc.
    - EWD998Chan.tla
