# Latex in a Container

[![Docker Pulls](https://img.shields.io/docker/pulls/strm/latex.svg?style=plastic)](https://hub.docker.com/r/strm/latex/)

![latex](latex.png)

LaTeX is a shortening of Lamport TeX) is a document preparation system.When writing, the writer uses plain text as opposed to the formatted text found in WYSIWYG word processors like Microsoft Word, LibreOffice Writer and Apple Pages. The writer uses markup tagging conventions to define the general structure of a document (such as article, book, and letter), to stylise text throughout a document (such as bold and italics), and to add citations and cross-references. A TeX distribution such as TeX Live or MikTeX is used to produce an output file (such as PDF or DVI) suitable for printing or digital distribution.

This image contains the LaTeX environment for Linux systems, basically everything that you need to compile your documents.

Just open a shell inside this image mapping your documents and run `xelatex` and you will get your desired result. Also, this image makes easier to create CI integrations, for example, if you want to integrate it with a repository and build your papers in every commit, this is a `.gitlab-ci.yml` example for that

```
image: strm/latex
stages:
  - build
build-paper:
  stage: build
  script:
    - xelatex paper.tex
  artifacts:
    paths:
        - "paper.pdf"
```

Simple and easy !
