# thesis-template
Latex template for writing a thesis in the style required by Saarland University, Germany

## Writing your thesis
The template is built so you don't have to adjust much to use it.
In the main `Thesis.tex` file you will find a section near the top where you can specify the parameters (title, advisors, etc.) of your thesis.
You can also set the template into proposal mode there if your are writing only a thesis proposal. This will exclude some stuff which is irrelevant for a proposal.

Your content should be defined in `.tex` files in `Chapters` folder. You can just write normal tex code and don't have to keep a special format in mind.
Refer to the examples contained in the template.

To tell the template what chapters you have and in what order they go you have to specify filename and chapter title in the `Thesis.tex` file near the bottom.
Use the `\loadchapter{x}{y}` command where you replace `x` by the filename of your chapter file (without `.tex`) and `y` by the title of your chapter.
This will add a new chapter, set the chapter title and craete a label which you can reference by `\ref{chapter:filename}`.

Your bibliography should be located in the `Bibliophy.bib` file in Bibtex format. See the included examples to see how to use references.

## How to build
I would suggest using a sophisticated editor for this stuff. For example [Sublime text](https://www.sublimetext.com/) with the [Latex tools](https://github.com/SublimeText/LaTeXTools) works very well.
If you want to build it by hand use bibtex to generate the bibliography and build it with pdflatex. You will need to build it multiple times for references to work correctly.

## FAQ

### Can I use this to write my Thesis?
Sure.

### Can I make adjustments to the template and redistribute it?
Sure.

### I don't know how to use this can you help me?
Nope. Google probably can help with most of your troubles. This template requires basic latex knowledge to use. If you want to extend the documentation you can submit a pull request though.

### I found a bug/problem
Feel free to open an issue and/or pull request.
