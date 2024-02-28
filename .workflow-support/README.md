# .workflow-support

This directory stores all of the support files needed for Pandoc to convert Markdown files into the PDF format specified by the Capstone course coordinators. This includes several things:

- A few scripts and a Dockerfile. These allow this project to be run anywhere with ease. This is needed for GitHub Actions but is also helpful if you want to build the PDF on your local machine without worrying about manually installing MiKTeX and Pandoc and who knows what else.
- The LaTeX templates. There are two. One is the master template which is used by Pandoc as it converts Markdown to a standalone LaTeX document with all of the fancy extra features Pandoc supports out of the box. The second runs the commands supplied by the course coordinators that ensure the output PDF meets their specified (and rather visually challenged) format.
- Some supporting files used by Pandoc, including a code formatting theme and a lua 'filter' used to allow inclusion of Markdown files within other Markdown files.
- Some supporting files used by XeLaTeX, including a typeface for code blocks.