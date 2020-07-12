
## Marks block

The **Marks** block is used to render **Marks** syntax inside a dedicated renderer. This can be used when you want to nest an entire block of **Marks** code. For example, you can set 2 blocks of Marks code inside a 2 columns table. Without a **Marks** block, you can ~*only nest 1*~ paragraph per `reference`.

```none
[marks ref:cell01]{{
  This is one line of **Marks**.

  * Item 1
  * Item 2
  * Item 3

  - [x] Task 1
  - [ ] Task 2
}}

[marks ref:cell02]{{
  This is one line of **Marks**.

  * Item 4
  * Item 5
  * Item 6

  - [x] Task 3
  - [ ] Task 4
}}

|   COL 1  |   COL2   |
|----------|----------|
|@@cell01@@|@@cell02@@|
```

[marks ref:cell01]{{
  This is one line of **Marks**.

  * Item 1
  * Item 2
  * Item 3

  - [x] Task 1
  - [ ] Task 2
}}

[marks ref:cell02]{{
  This is one line of **Marks**.

  * Item 4
  * Item 5
  * Item 6

  - [x] Task 3
  - [ ] Task 4
}}

|COL 1|COL2|
|-----|-----|
|@@cell01@@|@@cell02@@|