<img src="html-css.jpg" width="100%">

# CSS Basics

_CSS stands for cascading stylesheets. CSS allows us to design our webpages according to the structure that was defined in our html document._

## Adding to HTML

The following are ways to add css styling to a webpage:

### Inline

```html
  <span style="color: red" />
```

### Style

```html
  <style>
    color: blue;
  </style>
```

### File

```html
  <link rel="stylesheet" href="main.css">
```

### Comments

```css
/* Everything within here is a comment */
```

### Rulesets

_Rulesets are rules that dictate how an element will display on a webpage._

![Image of Yaktocat](https://en-support.files.wordpress.com/2011/09/css-selectors-lrg.png)

* Selectors target elements on an html page
* Declarations encompass one or more properties with assigned values
* Properties identify what is being styled
* Values define how a property is being styled


## Types of Selectors

_Selectors allow us to target a specific html element or elements on an html page based on its element name or attribute value. We then use css properties to change the look of said html element._

### Individual
```css
/* we can select a single element */
span { color: red; }
```

### Multiple

```css
/* we can select many elements */
span, div { color: green; }
```

### By Element

```html
<!-- html -->
<span></span>
```

```css
/* css */
span { 
  color: blue;
  background-color: red;
}
```

### By Class Attribute

```html
<!-- html -->
<div class="class-name"></div>
```

```css
/* css */
.class-name {
  height: 100px;
  width: 100px;
}
```

### By Id Attribute

```html
<!-- html -->
<div id="identifier"></div>
```

```css
/* css */
#identifier-name {
  height: 100px;
  width: 100px;

```

### Mixing and Matching

```html
<!-- html -->
<div id="identifier"></div>
<div class="class-name"></div>
<p>Hello!</p>
```

```css
/* css */
#identifier, div.class-name, p {
  color: blue;
}
```

### By Psuedo-Class Attribute

_A CSS pseudo-class is a keyword added to a selector that specifies a special state of the selected element(s)._

#### Syntax

```css
selector:pseudo-class {
  property: value;
}
```

#### Examples

The following psuedoclass only selects the scenario in which a user hovers over a div:

```css
div:hover {
  background-color: #F89B4D;
}
```

The following psuedoclass only selects anchors that have already been visited:

```css
a:visited {
  color: red;
}
```

Remember that the selector can also be a class, id or can be used when selecting multiple elements:

```css
/* selects the first li as well an element with the class of "small"  */
ul li:first-child, .small {
  height: 100px;
  width: 100px;
}
```

[MDN: Psuedoclasses](https://developer.mozilla.org/en-US/docs/Web/CSS/Pseudo-classes)

### Common Properties

* color
* font-family
* font-size
* background-color
* background-image
* width
* height
* text-align
* margin
* padding
* border
* display
* position
* list-style

### Less Common But Useful

* first-child / last-child / nth-child()
* box-shadow
* text-transform
* border-radius
* max-width / max-height
* min-width / min-height
* translate / translateX / translateY
* scale
* rotate / rotateX / rotateY / rotateZ / rotate3d
* skew

[CSS Reference](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference)

### Display Property

```css
display: inline | block | inline-block | table-cell | ...
```

[MDN: Display Property](https://developer.mozilla.org/en-US/docs/Web/CSS/display)

### Units

_In css, units refer to the measurement units being utilized when dealing with distance in either x, y or z coordinates._

Common Types
- px
- %
- vh
- vw
- em
- rem

Less Common Types
- pt
- mm / cm / in

[MDN: Values and Units](https://developer.mozilla.org/en-US/docs/Learn/CSS/Introduction_to_CSS/Values_and_units)

## Layouts

### Box Model

![Box Model](https://mdn.mozillademos.org/files/13647/box-model-standard-small.png)

#### Box Model Exercise

##### Setup

Create a new folder in their class directory called CSS-practice and make a new HTML called index.html and a CSS file called styles.css. Make sure they are linked properly linked together.

##### Instructions
1. Make a div with an id of "container" and give it a height of 400px.
2. Within that div, make 3 smaller divs with a class of "box".
3. Give the boxes a width equal to one quarter of the size of the parent div and a height of 300px. 
4. Next, give these elements a display property which will display the divs in a single line.
5. Let's give the boxes some padding of 10px as well.
6. These boxes look a little crammed together so let's give them a margin on the left and on the right of 20px. Try using the margin attribute instead of margin-left and margin-right.
7. Give each div some lorem ipsum text of your choice and resize the text to be 10% larger.


### Positioning

_Positioning is used to change how elements are placed on the page._

```css
position: absolute | fixed / sticky | relative;
```

* Static
  * default when no position is defined
* Absolute
  * based on the top left corner of the window
* Relative
  * based on the starting point of the element
* Sticky / Fixed
  * based on top left corner of the window 
  * will be in the same position regardless of scroll

[MDN Reference](https://developer.mozilla.org/en-US/docs/Web/CSS/position)

#### Positioning Exercise

##### Setup

Use the same folder as the prior exercise

##### Instructions

Replicate the following four box mockups using positioning: 
https://imgur.com/a/4WJv5 

_Note: Boxes are 150px by 150px_

### Flexbox

[MDN Reference](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)

[Flexbox Froggy Practice](http://flexboxfroggy.com/)

[Flexbox Defense](http://www.flexboxdefense.com/)

## Floats (Do not use floats for layouts)

_Floating an element was originally designed for the purpose of having text surround images inline_

![Float](float.jpg)

```css
img {
  float: left | right | both;
}
```

Floating elements have traditionally have also been used for laying out pages but more recently it is a better practice to use flexbox for layouts.

[MDN Reference: Float](https://developer.mozilla.org/en-US/docs/Web/CSS/float)

## Specificity

CSS will decide which styles to "take" when reading a stylesheet in the following order. 

1. Type selectors (e.g., h1) and pseudo-elements (e.g., ::before).
2. Class selectors (e.g., .example), attributes selectors (e.g., [type="radio"]) and pseudo-classes (e.g., :hover).
3. ID selectors (e.g., #example).

[MDN Reference: Specificity](https://developer.mozilla.org/en-US/docs/Web/CSS/Specificity)


## Vendor prefixing

The following prefixes are used to target specific browsers:
* `-moz-` (firefox)
* `-webkit-` (chrome, safari)
* `-ms-` (microsoft ie, edge)
* `-o-` (opera)

## Mobile Responsive Design

[MDN Reference: Media Queries](https://developer.mozilla.org/en-US/docs/Web/CSS/Media_Queries/Using_media_queries)

[Smashing Magazine Example](https://www.smashingmagazine.com/2018/03/comprehensive-website-planning-guide-part3/)

[Mobile vs Desktop First](https://themeover.com/mobile-first-vs-desktop-first-responsive-design/)

[My Own Github: Mobile First Example](https://github.com/orlandocaraballo/mobile-first-example)

Testing on Browser
* Resizing browser
* Chrome view as mobile button
* Test within target device

To scale properly on mobile device:

```html
<meta name="viewport" content="width=device-width, initial-scale=1">
```

#### Exercise

##### Setup

Use the same folder as the prior exercises

##### Instructions

Create the following Media Queries: 
1. For a phone screen of max width of 480 px and orientation is landscape
2. For a laptop screen of min-width of 481 px and max-width of 1200 px.

## Animations

Different types of Animation Libraries
* [Greensock](https://greensock.com/)
* [Web Animation API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API/Using_the_Web_Animations_API)
* CSS Animations

### CSS Animations

There are two major ways to run animations using CSS:
1. Transitions
2. Keyframes

#### Transitions

**By far the simplest way**

Properties to Modify:
* `transition-property` - what to change
* `transition-duration` - how long it lasts
* `transition-timing-function` - what movement it uses
* `transition-delay` - how long to wait before doing the thing

[MDN Reference](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Transitions/Using_CSS_transitions)

[CSS Transitions Explained](https://zellwk.com/blog/css-transitions/)

#### Keyframes

**A little more challenging to understand but more powerful**

Requires the creation of an keyframe group using the `@keyframes` keyword like so:

```css
@keyframes fadeOut { ... }
```

Where `fadeOut` can be replaced with any name you would like.

Keyframes Properties to Modify:
* `from` - starting point
* `to` - end point
* `%` values - dictate the properties at specific intervals

Ruleset Properties to Modify:
* `animation` - animation to be used
* `animation-duration` - how long the animation will last

```css
/* simple example */
@keyframes fadeOut {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
  }
}

div {
  animation: fadeOut;
  animation-duration: 1s;
}
```

^ Would run the `fadeOut` keyframe on any div

```css
/* percentage example */
@keyframes fadeOut {
  0% {
    opacity: 1;
  }

  33% {
    opacity: .6;
  }

  66% {
    opacity: .3
  }

  100% {
    opacity: 0;
  }
}

div {
  animation: fadeOut;
  animation-duration: 1s;
}
```

^ Would run the `fadeOut` keyframe on any div but specifying properties on 4 different intervals

[MDN Reference](https://developer.mozilla.org/en-US/docs/Web/CSS/@keyframes)

[CSS Animations Explained](https://zellwk.com/blog/css-animations/)

## Use cases

* Use restraint
* Decide to use animations after the app is already functioning
* When it’s necessary and not just to “flex” your animation muscles

## Workshop

[UX Enhancing Transitions](https://drive.google.com/open?id=1BJQbmHAM3EvuABEZnur4ADt9RqlZAFBQMHYPsl2aJOY)
