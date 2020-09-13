## Using it

Here you can find samples of what can be done in your documents

#### Flowchart
Go to official [documentation](https://mermaid-js.github.io/mermaid/#/flowchart "new")

```markdown
[mermaid] {{
graph LR
    A[Hard edge] -->|Link text| B(Round edge)
    B --> C{Decision}
    C -->|One| D[Result one]
    C -->|Two| E[Result two]
}}
```
[mermaid classes:center] {{
graph LR
    A[Hard edge] -->|Link text| B(Round edge)
    B --> C{Decision}
    C -->|One| D[Result one]
    C -->|Two| E[Result two]
}}

___ ::- variant:dashed

#### Sequence diagram
Go to official [documentation](https://mermaid-js.github.io/mermaid/#/sequenceDiagram "new")

```markdown
[mermaid] {{
graph LR
sequenceDiagram
    autonumber
    Alice->>John: Hello John, how are you?
    loop Healthcheck
        John->>John: Fight against hypochondria
    end
    Note right of John: Rational thoughts!
    John-->>Alice: Great!
    John->>Bob: How about you?
    Bob-->>John: Jolly good!
}}
```
[mermaid] {{
sequenceDiagram
  autonumber
  Alice->>John: Hello John, how are you?
  loop Healthcheck
      John->>John: Fight against hypochondria
  end
  Note right of John: Rational thoughts!
  John-->>Alice: Great!
  John->>Bob: How about you?
  Bob-->>John: Jolly good!
}}

___ ::- variant:dashed


#### Class diagram
Go to official [documentation](https://mermaid-js.github.io/mermaid/#/classDiagram "new")

```markdown
[mermaid] {{
classDiagram
class Square~Shape~{
    int id
    List~int~ position
    setPoints(List~int~ points)
    getPoints() List~int~
}

Square : -List~string~ messages
Square : +setMessages(List~string~ messages)
Square : +getMessages() List~string~
}}
```
[mermaid classes:center] {{
classDiagram
class Square~Shape~{
    int id
    List~int~ position
    setPoints(List~int~ points)
    getPoints() List~int~
}

Square : -List~string~ messages
Square : +setMessages(List~string~ messages)
Square : +getMessages() List~string~
}}

___ ::- variant:dashed

#### State diagram
Go to official [documentation](https://mermaid-js.github.io/mermaid/#/stateDiagram "new")

```markdown
[mermaid] {{
stateDiagram-v2
        State1: The state with a note
        note right of State1
            Important information! You can write
            notes.
        end note
        State1 --> State2
        note left of State2 : This is the note to the left.
}}
```
[mermaid classes:center] {{
stateDiagram-v2
        State1: The state with a note
        note right of State1
            Important information! You can write
            notes.
        end note
        State1 --> State2
        note left of State2 : This is the note to the left.
}}

___ ::- variant:dashed

#### Entity relationship diagram
Go to official [documentation](https://mermaid-js.github.io/mermaid/#/entityRelationshipDiagram "new")

```markdown
[mermaid] {{
erDiagram
    CUSTOMER ||--o{ ORDER : places
    ORDER ||--|{ LINE-ITEM : contains
    CUSTOMER }|..|{ DELIVERY-ADDRESS : uses 
}}
```
[mermaid classes:center] {{
erDiagram
    CUSTOMER ||--o{ ORDER : places
    ORDER ||--|{ LINE-ITEM : contains
    CUSTOMER }|..|{ DELIVERY-ADDRESS : uses 
}}

___ ::- variant:dashed

#### User Journey
Go to official [documentation](https://mermaid-js.github.io/mermaid/#/user-journey "new")

```markdown
[mermaid] {{
journey
    title My working day
    section Go to work
      Make tea: 5: Me
      Go upstairs: 3: Me
      Do work: 1: Me, Cat
    section Go home
      Go downstairs: 5: Me
      Sit down: 5: Me
}}
```
[mermaid classes:center] {{
journey
    title My working day
    section Go to work
      Make tea: 5: Me
      Go upstairs: 3: Me
      Do work: 1: Me, Cat
    section Go home
      Go downstairs: 5: Me
      Sit down: 5: Me
}}

___ ::- variant:dashed

#### Gantt
Go to official [documentation](https://mermaid-js.github.io/mermaid/#/gantt "new")

```markdown
[mermaid] {{
gantt
    title A Gantt Diagram
    dateFormat  YYYY-MM-DD
    section Section
    A task           :a1, 2014-01-01, 30d
    Another task     :after a1  , 20d
    section Another
    Task in sec      :2014-01-12  , 12d
    another task      : 24d
}}
```
[mermaid classes:center] {{
gantt
    title A Gantt Diagram
    dateFormat  YYYY-MM-DD
    section Section
    A task           :a1, 2014-01-01, 30d
    Another task     :after a1  , 20d
    section Another
    Task in sec      :2014-01-12  , 12d
    another task      : 24d
}}

___ ::- variant:dashed

#### Pie chart
Go to official [documentation](https://mermaid-js.github.io/mermaid/#/pie "new")

```markdown
[mermaid] {{
pie title What Voldemort doesn't have?
         "FRIENDS" : 2
         "FAMILY" : 3
         "NOSE" : 45
}}
```
[mermaid classes:center] {{
pie title What Voldemort doesn't have?
         "FRIENDS" : 2
         "FAMILY" : 3
         "NOSE" : 45
}}

___ ::- variant:dashed
