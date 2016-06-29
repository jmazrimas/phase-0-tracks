#jQuery Research Plan
* Seek out an overview, probably video. Aim for that to be less than 20 minutes
    - Ideally, do a little bit of initial coding alongside this... this might also be when I start working on a test html/css page so that I have something to work with while discovering the features of jQuery
* Look for cheat sheets/summaries of commonly-used features and save/bookmark them
* Try to use some of those features on a test page
* Look in to some more complex features/uses -- hopefully at this point I'll have a few keywords of what to look for and can potentially search out video overviews
    - Experiment with these features


##Notes
* Use these to encase jQuery script to ensure that html/css is completely loaded before running(?)
    - $(document).ready(function() {        });
    - $(function() {    })
* Syntax for jQuery:
    - For jQuery "effects" like fadeIn/fadeOut/etc:
        + $("[elementID]").[methodname]([arguments]);
        + $(".[cssClass]").[methodname]([arguments]);
            * Note the "." before class names in the above example
    - For css changes:
        + $("[elementID]").css({color: 'red', fontWeight: 'bold'});
    - Listeners:
        ```
        $("[elementID]").on('[action. i.e., click', function() {
                $("[elementID]").[methodname]([arguments]);
            }
            );
        ```
* DOM Traversal
    - 
