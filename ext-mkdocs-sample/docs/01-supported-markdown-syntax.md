Title: Supported Markdown Extensions

!!! note
    Python-Markdown assumes intention should be 4 spaces or 1 tab.

## Block Elements

### Paragraphs and Line Breaks
    Just a new line will be ignore and handled as 1 space.
    Like here.

    But if you add 2 or more space at line end, `<br />` will be added there.  
    Like here.

    Other way it just add 1 blank lines between sentences. But it will be 2 `<p>` elements.

    Like here.


Just a new line will be ignore and handled as 1 space.
Like here.

But if you add 2 or more space at line end, `<br />` will be added there.  
Like here.

Other way it just add 1 blank lines between sentences. But it will be 2 `<p>` elements.

Like here.


### Headers
    # H1
    ## H2
    until
    ###### H6

!!! note
    Omit sample result to prevent dirty ToC.

### Blockquotes
    > quoted text.
    >> double quoted text.
    >
    > One blank quoted line is needed after multiple quoted text.

> quoted text.
>> double quoted text.
>
> One blank quoted line is needed after multiple quoted text.


### Lists

#### Ordered list

#### Written by 1, 2, 3 ...
    1. ordered item1
    2. ordered item2
    3. ordered item3
        1. ordered item3-1

1. ordered item1
2. ordered item2
3. ordered item3
    1. ordered item3-1

#### Written by only one number
    1. ordered item5
    1. ordered item6
    1. ordered item7
        1. ordered item

1. ordered item1
1. ordered item2
1. ordered item3
    1. ordered item3-1

#### Written by only starting number
    5. ordered item1
    5. ordered item2
    5. ordered item3
        2. ordered item B

5. ordered item1
5. ordered item2
5. ordered item3
    2. ordered item B


#### Unordered list
    - unordered item
    - unordered item
    * unordered item
    * unordered item
    + unordered item
    + unordered item
        - unordered item
             * unordered item
                 + unordered item

- unordered item
- unordered item
* unordered item
* unordered item
+ unordered item
+ unordered item
    - unordered item
         * unordered item
             + unordered item

### Code Blocks
    ```
    Lines between 3 back quote (`) craete code block.
    Like this.
    ```
    Also,

        by starting with 4 spaces, the line becomes code block.
        like this.


```
Lines between 3 back quote (`) craete code block.
Like this.
```
Also,

    by starting with 4 spaces, the line becomes code block.
    like this.

### Horizontal Rules
    * * *

    ***

    *****

    - - -

    ---------------------------------------

* * *

***

*****

- - -

---------------------------------------


## Span Elements
### Links
    This is [an example](https://www.google.com/ "Google") inline link.
    Title argument is optional.

    Also, you can use Reference-style links for well used links like [Google][google]

    [google]: https://www.google.com/ "Optional title"

This is [an example](https://www.google.com/ "Google") inline link.
Title argument is optional.

Also, you can use Reference-style links for well used links like [Google][google]

[google]: https://www.google.com/ "Optional title"

### Emphasis
    *single asterisks*

    _single underscores_

    **double asterisks**

    __double underscores__

*single asterisks*

_single underscores_

**double asterisks**

__double underscores__

!!! note
    You can write strike throw and combined bold and italic text. See [default extensions](/02-default-extentions/) for detail.

### Code
    Call the `awesome()` function.  
    You can use ``back quote (`) by starting 2 `back quotes` ``.


Call the `awesome()` function.  
You can use ``back quote (`) by starting 2 `back quotes` ``.

### Images
    ![Markdown logo](https://github.com/dcurtis/markdown-mark/blob/master/png/48x30.png?raw=true)  
    ![Markdown logo][markdown]

    [markdown]: https://github.com/dcurtis/markdown-mark/blob/master/png/48x30.png?raw=true


![Markdown logo](https://github.com/dcurtis/markdown-mark/blob/master/png/48x30.png?raw=true)  
![Markdown logo][markdown]

[markdown]: https://github.com/dcurtis/markdown-mark/blob/master/png/48x30.png?raw=true

## Extended Syntax
See [Default Extensions](/02-default-extensions/).

## Miscellaneous
At [the original markdown syntax](https://daringfireball.net/projects/markdown/) by John Gruber, there is a very simple basics. But some parts are not clear.

See [differences page in Python-Markdown](https://python-markdown.github.io/#differences) for detail.
