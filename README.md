# dropdown

This does make Flutter Framework complicated dropdown button less complicated.

Simple widget:

```
DropDown(
  items: ["Male", "Female", "Other"],
  hint: "Male",
  onChange: print,
),
```

With custom dropdown item widget:

```
DropDown<String>(
  items: <String>["Male", "Female", "Other"],
  customWidgets: <Widget>[
    Row(
      children: <Widget>[
        Text("Male"),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://raw.githubusercontent.com/rrousselGit/provider/master/resources/expanded_devtools.jpg"),
        ),
      ],
    ),
    Row(
      children: <Widget>[
        Text("Female"),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://raw.githubusercontent.com/rrousselGit/provider/master/resources/expanded_devtools.jpg"),
        ),
      ],
    ),
    Row(
      children: <Widget>[
        Text("Other"),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://raw.githubusercontent.com/rrousselGit/provider/master/resources/expanded_devtools.jpg"),
        ),
      ],
    )
  ],
  hint: "Select gender",
  onChange: print,
),
```