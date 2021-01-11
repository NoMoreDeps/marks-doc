

# Nesting ::- classes:text-center


If you've ever worked with *Markdown*, you've seen that there are limits to how you can / cannot nest one component into another. For example, it is not possible to nest one table into another, the syntax is not flexible enough to allow this.

To remove this limitation while keeping it simple, **Marks** introduce an option, `ref`. If you add the option ref to a component, it will not be rendered where you declared it. Instead, it will be added where a placeholder exist, with the same ref name.

In the following example, we want to nest the first table into the middle column of the last row of the second table. To do the magic, just put a ref on the first one, and nest it in the other. 

The placeholder must be the same name as the ref, sourounded with `@@`

```none ::- ref:cell01
| Rows id       | A1            | A2    | ::- ref:TAB_1
| ------------- |:-------------:| -----:|
| Row 1         | AA-AA         | AA-AA |
```

```none ::- ref:cell02
| Rows id       | B1            | B2    |
| ------------- |:-------------:| -----:|
| Row 1         | @@TAB_1@@     | BB-BB |
```

___ ::- variant:dashed

In the following example, the table block use an option, `format` to define wich format is used in input. Options depend on block type.
[bs-grid]{{
col-sm-12,col-md-6|@@cell01@@
col-sm-12,col-md-6|@@cell02@@
}}

___ ::- variant:dashed

~**_Et voilà_**~ (We added some variant style just to help visualize the result)

| Rows id       | A1            | A2    | ::- ref:TAB_1 variant:small,bordered theme:dark
| ------------- |:-------------:| -----:|
| Row 1         | AA-AA         | AA-AA |

| Rows id       | B1            | B2    | ::- variant:small,bordered
| ------------- |:-------------:| -----:|
| Row 1         | @@TAB_1@@     | BB-BB |

____ ::- variant:dashed