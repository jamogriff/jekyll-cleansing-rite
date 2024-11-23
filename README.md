# Praise the Omnissiah! 

Jekyll Cleansing Rite purges heretical voidspace from HTML to appease Jekyll's Machine Spirit.

## Huh?

The Cleansing Rite first consists of lighting incense to appease Jekyll's Machine Spirit. Then, when Jekyll is rendering documents and pages, sacred Rituals will be performed to cleanse voidspace-ridden files. Those with arcane mastery of the command prompt may view these rituals if the following incantation is invoked:
```
$ JEKYLL_LOG_LEVEL='debug' jekyll build
```

## The Following is Considered Great Heresy

This plugin uses [htmlbeautifier](https://github.com/threedaymonk/htmlbeautifier) to format HTML output before its written to a file in Jekyll's render pipeline. It exists because the resulting HTML source code that Jekyll outputs by default is pretty gross:

### HTML without Cleaning Rite
```html
<body>
    <div class="container">
      <header class="masthead">
        <h3 class="masthead-title">
          <a href="/" title="Home">Jamogriff</a>
        </h3>
        
  <ul class="nav">
    
      
      
        <li>
          <a href="/about/">About</a>
        </li>
      
    
  </ul>


      </header>
```

### HTML with Cleansing Rite
```html
<body>
    <div class="container">
      <header class="masthead">
        <h3 class="masthead-title">
          <a href="/" title="Home">Jamogriff</a>
        </h3>
        <ul class="nav">
          <li>
            <a href="/about/">About</a>
          </li>
        </ul>
      </header>
```

## Available as a Gem
Just add the following to your Jekyll site's `_config.yml`:
```yaml
plugins:
  - jekyll-cleansing-rite
```
