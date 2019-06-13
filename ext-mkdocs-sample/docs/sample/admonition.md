[admonition plugin](https://python-markdown.github.io/extensions/admonition/) allows to create small section with easy way.

## Basic
    !!! note
        this is a note.

!!! note
    this is note.

## No title

    !!! note ""
        this is a note without title.

!!! note ""
    this is note without title.

## Custom title

    !!! question "FAQ"
        this is a note.


!!! question "FAQ"
    this is a question with customized title.

## Code block in note

    !!! example
        ```
        console.log("hellow world.")
        ```
        this is an example with code block.

!!! example
    ```
    console.log("hellow world.")
    ```
    this is an example with code block.

## More examples
To check full examples, please check [admonition section in mkdocs-material](https://squidfunk.github.io/mkdocs-material/extensions/admonition/)

!!! warning
    In Extended MkDocs Docker image, "Collapsible blocks" is not supported as default. You need to update docker image if you want to use the feature.
