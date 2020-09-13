[mermaid theme:forest] {{
sequenceDiagram
  par Alice to Bob
    Alice->>Bob: Go help John
  and Alice to John
    Alice->>John: I want this done today
    par John to Charlie
      John->>Charlie: Can we do this today?
    and John to Diana
      John->>Diana: Can you help us today?
    end
  end
}}

___ ::- variant:dashed

[mermaid theme:forest] {{
  pie title NETFLIX
    "Time spent looking for movie" : 90
    "Time spent watching it" : 10
}}

___ ::- variant:dashed

[mermaid theme:forest] {{
classDiagram
  Animal <|-- Duck
  Animal <|-- Fish
  Animal <|-- Zebra
  Animal : +int age
  Animal : +String gender
  Animal: +isMammal()
  Animal: +mate()
  class Duck{
    +String beakColor
    +swim()
    +quack()
    }
  class Fish{
    -int sizeInFeet
    -canEat()
    }
  class Zebra{
    +bool is_wild
    +run()
    }
}}