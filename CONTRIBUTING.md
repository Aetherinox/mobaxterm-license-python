<p align="center"><img src="Docs/images/banner.png" width="860"></p>
<h1 align="center"><b>Contributing</b></h1>

<div align="center">

![Version](https://img.shields.io/github/v/tag/Aetherinox/windowfx-patcher?logo=GitHub&label=version&color=ba5225) ![Downloads](https://img.shields.io/github/downloads/Aetherinox/windowfx-patcher/total) ![Repo Size](https://img.shields.io/github/repo-size/Aetherinox/windowfx-patcher?label=size&color=59702a) ![Last Commit)](https://img.shields.io/github/last-commit/Aetherinox/windowfx-patcher?color=b43bcc)

</div>

<br />

## Our Goal

The objective is to not only to expand our knowledge and help bring us to being better developers, but also to be transparent on how things are written. This is the great thing about open-source -- as it allows for a more personal relationship between the developers and the end-user.

We point out the flaws in software, and it's really that simple. We want companies to treat their customers as an individual, and not a money pumping entity. Companies should care about the product they release, and while we understand that companies must make money in order to maintain healthy operations; some companies have decided that they can raise the prices to anything, and if the user is desparate enough; they'll pay.

<br />

---

<br />

## Submitting Bugs

Please ensure that when you submit bugs; you are detailed.

* Explain the issue
* Describe how the function should operate, and what you are experiencing instead.
* Provide possible options for a resolution or insight

<br />

---

<br />

## Contributing

The source is here for everyone to collectively share and colaborate on. If you think you have a possible solution to a problem; don't be afraid to get your hands dirty.

If you wish to submit your own contribution, simply follow a few guidelines:

<br />

### Vertical alignment
Align similar elements vertically, to make typo-generated bugs more obvious

```c#
hash        = System.BitConverter.ToString( arrByteHash );
hash        = hash.Replace( "-", "" );
result      = hash;
```

<br />

### Spaces Instead Of Tabs
When writing your code, set your IDE to utilize **spaces**, with a configured tab size of `4 characters`.

<br />

### Indentation Style
Try to stick to `Allman` as your style for indentations. This style puts the brace associated with a control statement on the next line, indented to the same level as the control statement. Statements within the braces are indented to the next level

```C#
if ( File.Exists( my_file ) )
{
    string[] psq_perms =
    {
        "$user_current = $env:username",
        "takeown /f \"" + my_file + "\"",
    };
}
```

<br />

### Commenting
Please comment your code. If someone else comes along, they should be able to do a quick glance and have an idea of what is going on. Plus it helps novice readers with better understanding the process.

You may use block style commenting, or single lines:

```C#
/*
    My comment

    @arg    : str name
    @arg    : int age
*/

private void PersonA( string name, int age )
{
    
}

```

<br />

### Casing
When writing your code, stick to one of three different styles:

| Style | Example |
| --- | --- |
| Snake Case | `my_variable` |
| Camel Case | `myVariable` |
| Camel Snake Case | `my_Variable` |

<br />

The case style depends on the length of a method or variable name.