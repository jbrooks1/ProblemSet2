\documentclass[12pt]{article}
\usepackage{fullpage}

\begin{document}
\SweaveOpts{concordance=TRUE}

\pagestyle{empty}

\begin{center}
{\Large \textbf{POLS 500c: Problem Set \# 3}}
                \end{center}
                
                The dataset \texttt{Obama.dta} is a subset of the 2008 American National Election Survey.  We will use it to examine attitudes toward Barack Obama, using the feeling thermometer \texttt{obama}.
                
                <<label=Setup>>=
                  # Setup
                  require(foreign)
                library(foreign)
                obama <- read.dta("Obama.dta")
                obama<-read.dta("C:\\Users\\Jasmine\\Desktop\\Obama.dta")
                var.labels <- attr(obama,"var.labels")
                data.key <- data.frame(var.name=names(obama),var.labels)
                data.key
                @
                
                \begin{enumerate}
                \item Suppose we hypothesize that a respondent's income affects her or his attitudes toward Obama, that those with higher incomes will express cooler feelings toward him.  Controlling for age, education, gender, race, and partisanship, is this hypothesis supported?  How do you know?
                
                m1 <- lm(obama ~ income + age + educ + female + black +dem +rep, data=obama)
                
                <<label=Answer1>>=
                
                @
                
                
                \item Suppose we think Democrats' feelings toward Obama will be less influenced by their incomes than others' feelings are.  Is there support for this conditional hypothesis?  How do you know?\\
                
                <<label=Answer2>>=
                
                @
                
                
                
                \item Does income have a statistically significant effect on the feelings toward Obama of those who aren't Democrats?  On the feelings of Democrats?  Report the estimated effect and $p$-value for each.\\
                
                <<label=Answer3>>=
                  
                  @
                
                
                
                \item Suppose we were really more interested in how being a Democrat affects feelings towards Obama.  What effect does income have on this effect?  Graph your answer and insert the graph in your \LaTeX~file.\\
                
                <<label=Answer4>>=
                  
                  @
                
                \end{enumerate}
                \end{document}