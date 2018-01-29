# vrun.vim
This is a plugin to set shortcuts to run a project. All commands will be executed using [AsyncRun](https://github.com/skywind3000/asyncrun.vim).

## Requirements
1. Vim8+
2. Vim compiled with the option +python
3. [AsyncRun](https://github.com/skywind3000/asyncrun.vim) module installed

## Install
### Using [Pathogen](https://github.com/tpope/vim-pathogen)
Just clone in your bundle directory.
```
git clone https://github.com/Millares/vrun.vim.git
```

### Manual
Download the zip file and extract it in your .vim directory

## How to use
Create in your project root a file named '.vrunconfig'. The file must be in JSON format.

Basic example:
```
{
    "<F7>": "cordova run browser",
    "<F8>": "cordova run android"
}
```

If you add new shortcuts to the .vrunconfig file, you do not need to close and open again for them to work, just run:
```
:VrunReload
```

Author: Millares
