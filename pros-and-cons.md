<!-- Advantages and disadvantages -->

Firstly, Pandoc markdown makes life easy. The course manual is fairly explicit that we have to use either Word or LaTeX, so our choices are limited. Using Word may be most sensible for the smaller deliverables, but will get very clunky very quickly when it comes time for nine of us to work on the final report.

LaTeX is good because text stays in plain text and because you include graphics by *refererence*, not by *copy*. This means changing an image or a scope capture or a screenshot is as simple as commiting a new image to the repository. You don't have to open a Word doc, find the image, delete the image, drag and drop the new image, edit the formatting of the image to match its original formatting, type the caption back in because it got deleted with the previous image, undo everything because you forgot the caption, redo everything now that you know what it is again, update the caption, and then start again because you've now noticed another issue with the image.

However, LaTeX is verbose in syntax and very error-prone. It's much more manageable when some intermediate tool generates it for you, and that's where Pandoc comes in.

Math is easy.

$$ E = mc^2 $$

Code highlighting comes for free.

```js

document.getElementById('clickme').addEventListener('click', () => {
	confirm('Are you sure?') ? null : return;
	// ...
})

```

And figures like \autoref{fig:notus} can be pulled live from the web (even if that's a really bad idea and doesn't seem to run on macOS hosts presently).

![Hopefully not how any of us will be looking during the project. \label{fig:notus}](https://thumbs.dreamstime.com/z/crying-man-modern-technology-26675651.jpg)

Using Git means that we will be able to collaborate and continue to review the report even when offline (eg while on a bus). Having a PDF for every commit stored on GitHub may also provide an additional safety net when deadlines loom.[^2] Plus, we have to use Git and GitHub anyway according to the coursebook, so this will keep more of our collaboration in the same place.

[^2]: This is how the GitHub Action in currently configured. As time goes on it may make more sense to switch to hourly builds instead, or perhaps nightly builds with the action triggered manually whenever someone wants a quick preview.

Of course, this method is totally overkill for the risk assessment. Perhaps it's too complex for the final report too. There is something to be said about familiarity, and perhaps the hassle of using a shared Word document is still preferable to the upfront time cost a method like this might incur. However, if we do want to give this a go, the risk assessment is possibly the best time of any. The scope is smaller and the stakes are lower.