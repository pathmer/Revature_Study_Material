# HTML Notes

- going forward, we won't be using java as the presentation layer of our project
### Definitions

**Client**: computer that is running/using an application    

**Server**: providing data to the client  

## HTML
- Hyper Text Markup Language
    - this is not a programming language
    - it's a markup language
        - this means that it tells us how a document should be displayed (how it should look when viewed)

**Purpose of html**: to display information and content to a webpage

`.html` - is the file extension
- this tells our browser to interpret and parse the characters inside the file to create a webpage

- HTML contains/uses a paricular syntax (elements and attributes)

**N.B.**: html defines the structure and content, and NOT the style or dynamic behavior of a webpage

> HTML Elements = core building blocks of a webpage  
- they define the structure
- they tell us what changes (markup) should be applied to given components/portions of our web page. 
- they does this using tags
- the tags denote the type of element and how the browser should read the content inside

syntax: `<tagname>Content goes here</tagname>`

- some tags are self-closing 
`<img ......./>`

**Basic Elements of an HTML page**
```html
<!DOCTYPE html>
<html>
    <head></head>
    <body>
        CONTENT
    </body>
</html>

```

**N.B.**: 
- tags should not overlap
- tags should be nested
- tags should always be closed

NO: `<h1><b>Incorrect Bold Header</h1></b>`  
NO: `<h1>Header`

Yes: `<h1><b>Correctly Bolded Header</b></h1>`  
Yes: `<h1><b>Also </b>correct bold header</h1>`  

## Block and Inline Elements
- Block Elements for a large structure to contain other elements
    - create a new line by default
    - `<html>, <body>, <div>, <p>, <h1>`

- Inline Elements contain data or other inline elements
    - and no new line is added by default
    - `<button>, <input>, <b>, <i>, <a>, <span>`

HTML elements can have Attributes

**Attributes**: are key=value pairs that give metadata about the tag

`<img src="PATH/to/get/grumpycat.jpeg" alt="grumpy cat image"/>`

**Global attributes**: attributes that can be applied to any element on the page
- title, id, class, lang, style, etc.

`<p id="paragraph">This is a paragraph</p>`

# CSS
Cascading Style Sheets
- language for styling html documents
    - it specifies  certains rules for layout and display in key:value pairs.
- helps display html elements
- style things like background color, font color, size, etc. 

- highly reusable
- makes webpages more human accessible and user friendly

A CSS consists of a set of rules that define style for a web page
    - the rules are composed of selectors and decalarations

**Selector**: identifies which areas of our webpage we wish to apply the design changes to

**Declaration**: tells us what changes or modifications to make to the selected areas (elements)
    - declaration is comprised of a property and a value surround by curly braces.

syntax: selector { declaration(s) }

```css
body {
    background-color: blue;
    margin: 10px;
    font-size:.....
}
```

> Three ways to implement CSS in our HTML

1. Inline CSS
- CSS statements that are inside of an element tag
`<h1 style="color: red">My Header</h1>`

2. Internal CSS
- CSS code inside of a `<style>` tag inside of the `<head>` element

```html
<head>
    <style>
        div {
            border: 5em;
        }

        p {
            color: purple;
        }

    </style>
</head>
```

3. External CSS
- CSS code that is abstracted out of our html document into a separate stylesheet (`.css`)
- then we reference that file inside our head element, using a link tag