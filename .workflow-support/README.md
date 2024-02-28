# .workflow-support

This directory stores all of the support files needed for Pandoc to convert Markdown files into the PDF format specified by the Capstone course coordinators. This includes several things:

- A scripts and a Dockerfile. These allow this project to be run anywhere with ease. This is needed for GitHub Actions but is also helpful if you want to build the PDF on your local machine without worrying about manually installing MiKTeX and Pandoc and who knows what else.
- The LaTeX templates. There are two. One is the master template which is used by Pandoc as it converts the Markdown to a standalone LaTeX document. This provides the LaTeX support for all of the fancy extra features Pandoc supports out of the box. The second runs the commands supplied by the course coordinators to ensure the output PDF meets their specified (and somewhat aesthetically challenged) format.
- Some supporting files used by Pandoc, including a code formatting theme and a Lua 'filter' used to allow inclusion of Markdown files within other Markdown files.
- Some supporting files used by XeLaTeX, including a typeface for code blocks. (Currently out of action, owing to the coordinators' specified font not supporting enough of the unicode range. This means that XeLaTeX just does not put quotation marks or apostrophes in the output, which is too high a price to pay for an improved monospaced font. I do intend to bring these back if I can find a workaround, but I'll only go to the effort if we decide as a team to proceed with this workflow.)
