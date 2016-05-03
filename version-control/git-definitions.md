# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
    * Version control allows more than one user to edit the same codebase/project and add those changes to it without distrupting the master/golden/clean version (until those changes are final, of course). This is neccessary to avoid introducing bugs in to an existing piece of technology, and being able to identify where something problematic may have been introduced. Version control platforms are very useful because manually trying to manage the work of several individuals across various components of a project would be very time-consuming and difficult. 
* What is a branch and why would you use one?
    * A branch is a *copy* of an existing set of code/files. Using a branch allows you to make edits to that code / those files while leaving the existing version in place 1) for later comparison and 2) to ensure that the "good" copy of the code is not affected.
* What is a commit? What makes a good commit message?
    * A commit is basically a save point. It creates a distinction between what did exist and what now exists and gives you the ability to go back to the previous version if you need to. A good commit message should adequately describe the changes made from the previous version; most importantly, it should be specific in terms of what has been added or changed. "Made some updates to the scheduling logic" is a really poor commit message.
* What is a merge conflict?
    * A merge conflict occurs when two changes to the same code are attempted to be merged. More specifically, the same *lines* of code were edited on two separate branches, and therefore there's no intuitive way to merge them together.