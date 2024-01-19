<p align="center"><img src="Docs/images/banner.png" width="860"></p>
<h1 align="center"><b>MobaXterm Command-line</b></h1>

<div align="center">

![Version](https://img.shields.io/github/v/tag/Aetherinox/mobaxterm-license-python?logo=GitHub&label=version&color=ba5225) ![Downloads](https://img.shields.io/github/downloads/Aetherinox/mobaxterm-license-python/total) ![Repo Size](https://img.shields.io/github/repo-size/Aetherinox/mobaxterm-license-python?label=size&color=59702a) ![Last Commit)](https://img.shields.io/github/last-commit/Aetherinox/mobaxterm-license-python?color=b43bcc)

</div>

---

<br />

# About

Mobaxterm CLI allows you to manage Mobaxterm licenses using a command-line.

<br />

This utility has been developed to work on the following versions:
- MobaXterm v23.x

<br />

Developed under the following conditions:
- Python 3.12.1
- Pyinstaller 6.3.0

<br />

---

<br />

# Notice

Developer holds no responsibility with what people decide to do with this app. It was developed strictly for demonstration purposes only related to software securit and used as an example for presentations.

<br />

---

<br />

# Usage

If you wish to simply use this utility, head over to the [Releases](https://github.com/Aetherinox/mobaxterm-license-python/releases) section and download the latest binary as a `zip` or `rar`. The download is a single `exe`.

- `mobaxterm_cli.exe`

<br />

---

<br />

## Usage
How to utilize this CLI utility:

<br />

### Binary (.exe)

```bash
mobaxtgen_cli.exe [OPTIONS] <name> <version> <users>
```

<br />

### Script (.py)

```bash
mobaxtgen_cli.py [OPTIONS] <name> <version> <users>
```

<br />

#### Options

| Arg    | Desc                 |
| ------ | -------------------- |
| `-s` | Returns just the license key as a string, nothing else printed.   |
| `-h` | Displays help information about the utility       |

<br />

#### Arguments

|                       | Desc                                | State    | Default |
| --------------------- | ----------------------------------- | -------- | ------- |
| **`user`**    | Username for license                | _required_ |         |
| **`version`** | Version license to be generated for | _optional_ | 23.6    |
| **`users`**   | Number of users allowed for license | _optional_ | 1       |


<br />

---

<br />

## Example:

Generate (Normal)

```bash
$ mobaxtgen_cli.exe "Aetherx" 23.6 4
```

<br />

Output:

```ini
Created File .............: X:\XmobaTerms\Custom.mxtpro
Username .................: Aetherx
License Enc ..............: 2sWCtwDItoDM0o3e6tGfrp3e7pnf6tGerh3a4tG
License Str ..............: 1#Aetherx|232#4#233262#0#0#0#
Version ..................: 23.6
Users ....................: 4
```

<br />

Generate (Simple)

```bash
$ mobaxtgen_cli.exe -s "Aetherx" 23.6 4
```

<br />

Output:

```ini
2sWCtwDItoDM0o3e6tGfrp3e7pnf6tGerh3a4tG
```

<br />

---

<br />

Generate + return simple result

```bash
$ mobaxtgen_cli.exe -s "Aetherx" 23.6 4
```

Output:

```ini
2sWCtwDItoDM0o3e6tGfrp3e7pnf6tGerh3a4tG
```

<br />

---

<br />

## Compile Binary
The following will instruct you on how to convert your python script into a stand-alone executable

<br />

### Manual

- Install Python `3.x`
- Install pip
```shell
python -m pip install --upgrade pip
```
- Install pyinstaller
```shell
python -m pyinstaller install
```
- Execute the following command in terminal:

```bash
pyinstaller -Fwc --distpath "release" --workpath "temp" "mobaxterm_cli.py" --version-file="mobaxterm_verinfo.py" -i "mobaxterm.ico"
```

<br />

> [!WARNING]
> If you do not include the `c` parameter, the exe will build, but you will not get any output to console.

<br />

The newly built .exe will be placed in the folder you executed the commands under, in a subfolder called `release`.

<br />

### Build.bat
This script will automatically execute all of the required commands to build your exe. It should create a new exe and place it inside `/release/`

<br />

---

<br />

# Todo
May add argument parser later. The script is pretty simple, no need to complicate it.

<br />

---

<br />

## Notes

- Does not support IronPython 2.x; will return errors:

```
SyntaxError: unexpected token ':'
```

- If integrating with Visual Studio; best to use the binary solution. Attempting to run the .py will resort in a large list of .DLL library files required for operation. Turning into binary cuts all the .DLLs down into a single exe.

<br />

---

<br />

# Signed Releases

As of `v1.0.0.0` and onwards, binaries are GPG signed with the key `CB5C4C30CD0D4028`. You can find the key available on most keyservers:

- [pgp.mit.edu](https://pgp.mit.edu/)
- [keyserver.ubuntu.com](keyserver.ubuntu.com)
- [keys.openpgp.org](https://keys.openpgp.org)

<br />

Binaries are signed with one of the following x509 certificates:

| Thumbprint | Starting Date |
| --- | --- |
| `58a1539d6988d76f44bae27c27ed5645d3b1222a` | 02/2024 |
| `70575bdfb02b3f1b45a37431bef9a8c9933a4ace` | 07/2023 |

<br />

If you downloaded this elsewhere on the internet and the files are not signed with with above certificates; **IT IS NOT MINE**. You should delete it.

<br />

---

<br />

