# ahk_tools

## About

ahk_tools is a small set of tools for automating some tasks

## How to use

- install AutoHotkey and run the file;
- most files starts doing things after 'ctrl+1';
- all are finished with 'end' button;
- in files after the semicolon comments (non-executable code).

## About every tool

### cliker.ahk

When pressing the t key, presses the LMB as often as possible,
you can change both keys and also add a delay in ms.

### coub_history_maker.ahk

Created to automate the creation of stories on the coub website.

When you press ctrl+1, a window will open with a link to create a story at the top.
In the window you need to insert a list of links to coubs through a line break.

After pressing ok, the program will start entering links into the fields one by one and scrolling down the page (accordingly, when you press the button, there should be a full-screen tab with the creation of a story in the background).

If it does not hit the field, then the coordinates of its location can be found out with another tool and changed in the code.

### key_log.ahk

Just a keylogger that records input to a file at the path: C:\aaa\keylog.txt.

### paste_by_parts.ahk

Program for neural networks prohibiting pasting too much at once and with restrictions on the size of one message.
Allows you to quickly enter a large copied text automatically saving the unpasted remainder to the buffer.

### pixel_cord&color.ahk

Allows you to get the color and coordinates of the pixel the mouse is pointing at.

### send_clipboard.ahk

To bypass text paste protection.

- ctrl+1 enters the clipboard character by character
- ctrl+2 sends the clipboard with minimal delay
