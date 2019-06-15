SuperFences is one of the PyMdown Extensions for advanced fenced (Code) block syntax.

## In a quotation block
    > Sentence in quotation.
    >
    > ```
      1st sentence in a fenced block

    > 2nd sentence in a fenced block
      ```
    > Other sentence in quotation.

> Sentence in quotation.
>
> ```
  1st sentence in a fenced block

> 2nd sentence in a fenced block
  ```
> Other sentence in quotation.


## In a list
    - a list item
    ```
    a fenced block
    ```
        - an indented list item
    ```
    a fenced block
    ```

- a list item
```
a fenced block
```
    - an indented list item
```
a fenced block
```

## Tabbed Fences

    ```Bash tab=
    #!/bin/bash
    STR="Hello World!"
    echo $STR
    ```

    ```JavaScript tab=
    console.log("Hello World!")
    ```

    ```Bash tab="My Title"
    You can customize title of tab.
    ```

```Bash tab=
#!/bin/bash
STR="Hello World!"
echo $STR
```

```JavaScript tab=
console.log("Hello World!")
```

```Bash tab="My Title"
You can customize title of tab.
```

## Show line number and highlight lines
To show line number, use `linenums` option which can receive 3 arguments.
```
linenums="{start number} {(optional) step} {(optional) special interval}"
```

!!! warning
      3rd argument "Special interval" seems not work well with current our image. We will check and try to fix in the future.

And, to highlight specific lines, use `hl_lines` option.

```
hl_lines="{target line} {target line} ..."
```

!!! warning
      {target line} doesn't refer for {start number} of `linenums` option. {target line} is always expected that the start number is 1.

### Basic
    ``` linenums="1"
    public class MyClass {
      public void main(String[] args) {
        if (args.length != 1) {
          System.out.println("Please input your name as an argument!");
          return;
        }

        Sytem.out.println("Hello " + args[0])
      }
    }
    ```

``` linenums="1"
public class MyClass {
  public void main(String[] args) {
    if (args.length != 1) {
      System.out.println("Please input your name as an argument!");
      return;
    }

    Sytem.out.println("Hello " + args[0])
  }
}
```
### With start number and step
    ``` linenums="10 3"
    public class MyClass {
      public void main(String[] args) {
        if (args.length != 1) {
          System.out.println("Please input your name as an argument!");
          return;
        }

        Sytem.out.println("Hello " + args[0])
      }
    }
    ```

``` linenums="10 3" hl_lines="10 11 9 18"
public class MyClass {
  public void main(String[] args) {
    if (args.length != 1) {
      System.out.println("Please input your name as an argument!");
      return;
    }

    Sytem.out.println("Hello " + args[0])
  }
}
```

### With highlight
    ``` linenums="10 2" hl_lines="1 2 8"
    public class MyClass {
      public void main(String[] args) {
        if (args.length != 1) {
          System.out.println("Please input your name as an argument!");
          return;
        }

        Sytem.out.println("Hello " + args[0])
      }
    }
    ```

``` linenums="10 2" hl_lines="1 2 8"
public class MyClass {
  public void main(String[] args) {
    if (args.length != 1) {
      System.out.println("Please input your name as an argument!");
      return;
    }

    Sytem.out.println("Hello " + args[0])
  }
}
```


## More detail and Samples
See [SuperFences in PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/superfences/)
