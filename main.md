\tableofcontents

# What is this?

This is the main markdown file.[^1] Pandoc will turn this into a PDF.

If we were to use this workflow for writing up reports and so forth in this project, we would write everything in markdown in this file (and any others we choose to include), pull in or custom-generate images and plots, and version control it using Git and GitHub.

[^1]: Unless you're viewing the PDF. In that case, this is the output of the workflow. Yes, the template is not very visually appealing but at least we're guaranteed to be compliant.

# Creating the PDF

## Automatically with GitHub Actions

I've set up a GitHub action to convert this file main.md to main.pdf whenever changes are pushed to the repository. You'll find the result by clicking through to the 'Actions' page, selecting the relevant commit message name whose PDF version you'd like to view, and scrolling down to the 'Artifacts' section.

Feel free to clone this repo, mess around, and push it back if you're interested in seeing how this part of it works. The Action works on all branches, so if you want your own branch for testing then you can make one.

## Manually on your local machine

I appreciate few people have MiKTeX installed and even fewer probably have Pandoc installed. Plus, even with these installed, versioning can be finnicky. If you want to compile the PDF on your local machine I suggest you install Docker and then run the script `make-pdf.sh` (the exact same script run by the GitHub Action). If you're on Windows, you can run this with Git Bash. It should run natively on macOS and on Linux distros.

# Advantages and disadvantages

```{.include shift-heading-level-by=1}
pros-and-cons.md
```