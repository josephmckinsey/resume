% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\RequirePackage{tabularx}
\RequirePackage{parskip}
\RequirePackage{setspace}
\RequirePackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\RequirePackage[hidelinks]{hyperref}

% Publications
\RequirePackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\RequirePackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}
\definecolor{darktext}{HTML}{333333}
\definecolor{graytext}{HTML}{666666}
\colorlet{text}{darktext}
\definecolor{lighttext}{HTML}{999999}

% Set main fonts
\RequirePackage{fontspec}
\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}

% Date command
\RequirePackage[absolute]{textpos}
\RequirePackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(165,5)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
Last Updated on \today
\end{textblock}}

\newcommand{\written}{\begin{textblock}{60}(165,5)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont 
\today
\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
\centering{
\fontsize{40pt}{60pt}
\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #1 
\fontspec[Path = fonts/lato/]{Lato-Reg}\selectfont #2
} \\[5pt]
\centering{
\color{headings}
\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3}
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
\vspace{-15pt}
}

% Section seperators 
\RequirePackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{6pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

\newcommand*{\footerfont}{\normalfont}
\newcommand*{\bodyfont}{\normalfont}
\newcommand*{\bodyfontlight}{\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}}

\newcommand*{\firstname}[1]{\def\@firstname{#1}}
\newcommand*{\lastname}[1]{\def\@lastname{#1}}

%-------------------------------------------------------------------------------
%                Configuration for styles
%-------------------------------------------------------------------------------
% Configure styles for each CV elements
% For fundamental structures
\newcommand*{\headerfirstnamestyle}[1]{{\fontsize{32pt}{1em}\headerfontlight\color{graytext} #1}}
\newcommand*{\headerlastnamestyle}[1]{{\fontsize{32pt}{1em}\headerfont\bfseries\color{text} #1}}
\newcommand*{\headerpositionstyle}[1]{{\fontsize{7.6pt}{1em}\bodyfont\scshape\color{awesome} #1}}
\newcommand*{\headeraddressstyle}[1]{{\fontsize{8pt}{1em}\headerfont\itshape\color{lighttext} #1}}
\newcommand*{\headersocialstyle}[1]{{\fontsize{6.8pt}{1em}\headerfont\color{text} #1}}
\newcommand*{\headerquotestyle}[1]{{\fontsize{9pt}{1em}\bodyfont\itshape\color{darktext} #1}}
\newcommand*{\footerstyle}[1]{{\fontsize{8pt}{1em}\footerfont\scshape\color{lighttext} #1}}
\newcommand*{\sectionstyle}[1]{{\fontsize{16pt}{1em}\bodyfont\bfseries\color{text}\@sectioncolor #1}}
\newcommand*{\subsectionstyle}[1]{{\fontsize{12pt}{1em}\bodyfont\scshape\textcolor{text}{#1}}}
\newcommand*{\paragraphstyle}{\fontsize{9pt}{1em}\bodyfontlight\upshape\color{text}}

% For elements of entry
\newcommand*{\entrytitlestyle}[1]{{\fontsize{10pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\entrypositionstyle}[1]{{\fontsize{8pt}{1em}\bodyfont\scshape\color{graytext} #1}}
\newcommand*{\entrydatestyle}[1]{{\fontsize{8pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
\newcommand*{\entrylocationstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\slshape\color{awesome} #1}}
\newcommand*{\descriptionstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\upshape\color{text} #1}}

% For elements of subentry
\newcommand*{\subentrytitlestyle}[1]{{\fontsize{8pt}{1em}\bodyfont\mdseries\color{graytext} #1}}
\newcommand*{\subentrypositionstyle}[1]{{\fontsize{7pt}{1em}\bodyfont\scshape\color{graytext} #1}}
\newcommand*{\subentrydatestyle}[1]{{\fontsize{7pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
\newcommand*{\subentrylocationstyle}[1]{{\fontsize{7pt}{1em}\bodyfontlight\slshape\color{awesome} #1}}
\newcommand*{\subdescriptionstyle}[1]{{\fontsize{8pt}{1em}\bodyfontlight\upshape\color{text} #1}}

% For elements of honor
\newcommand*{\honortitlestyle}[1]{{\fontsize{9pt}{1em}\bodyfont\color{graytext} #1}}
\newcommand*{\honorpositionstyle}[1]{{\fontsize{9pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\honordatestyle}[1]{{\fontsize{9pt}{1em}\bodyfont\color{graytext} #1}}
\newcommand*{\honorlocationstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\slshape\color{awesome} #1}}

% For elements of skill
\newcommand*{\skilltypestyle}[1]{{\fontsize{10pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\skillsetstyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\color{text} #1}}

% For elements of the cover letter
\newcommand*{\lettersectionstyle}[1]{{\fontsize{14pt}{1em}\bodyfont\bfseries\color{text} #1}}
\newcommand*{\recipientaddressstyle}[1]{{\fontsize{9pt}{1em}\bodyfont\scshape\color{graytext} #1}}
\newcommand*{\recipienttitlestyle}[1]{{\fontsize{11pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\lettertitlestyle}[1]{{\fontsize{10pt}{1em}\bodyfontlight\bfseries\color{darktext} \underline{#1}}}
\newcommand*{\letterdatestyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
\newcommand*{\lettertextstyle}{\fontsize{10pt}{1.4em}\bodyfontlight\upshape\color{graytext}}
\newcommand*{\letternamestyle}[1]{{\fontsize{10pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
\newcommand*{\letterenclosurestyle}[1]{{\fontsize{10pt}{1em}\bodyfontlight\slshape\color{lighttext} #1}}



% Defines recipient's information (cover letter only)
% Usage: \recipient{<recipient name>}{<recipient address>}
% Usage: \recipientname{<recipient name>}
% Usage: \recipientaddress{<recipient address>}
\newcommand*{\recipient}[2]{\def\@recipientname{#1}\def\@recipientaddress{#2}}
\newcommand*{\recipientname}[1]{\def\@recipientname{#1}}
\newcommand*{\recipientaddress}[1]{\def\@recipientaddress{#1}}

% Defines the title for letter (cover letter only, optional)
% Usage: \lettertitle{<title>}
\newcommand*{\lettertitle}[1]{\def\@lettertitle{#1}}

% Defines the date for letter (cover letter only)
% Usage: \letterdate{<date>}
\newcommand*{\letterdate}[1]{\def\@letterdate{#1}}

% Defines a message of opening for letter (cover letter only)
% Usage: \letteropening{<message>}
\newcommand*{\letteropening}[1]{\def\@letteropening{#1}}

% Defines a message of closing for letter (cover letter only)
% Usage: \letterclosing{<message>}
\newcommand*{\letterclosing}[1]{\def\@letterclosing{#1}}

% Defines an enclosure for letter (cover letter only, optional)
% Usage: \letterenclosure[<enclosure name>]{<enclosure>}
\newcommand*{\letterenclname}[1][Enclosure]{\def\@letterenclname{#1}}
\newcommand*{\letterenclosure}[2][]{%
  % if an optional argument is provided, use it to redefine \enclname
  \ifthenelse{\equal{#1}{}}{}{\def\@letterenclname{#1}}
  \def\@letterenclosure{#2}
}


%-------------------------------------------------------------------------------
%                Commands for utilities
%-------------------------------------------------------------------------------
% Use to align an element of tabular table
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% Use to draw horizontal line with specific thickness
\def\vhrulefill#1{\leavevmode\leaders\hrule\@height#1\hfill \kern\z@}

% Use to execute conditional statements by checking empty string
\newcommand*{\ifempty}[3]{\ifthenelse{\isempty{#1}}{#2}{#3}}


%-------------------------------------------------------------------------------
%                Commands for elements of CV structure
%-------------------------------------------------------------------------------
% Define a header for CV
% Usage: \makecvheader
\newcommand*{\makecvheader}[1][C]{%
  \newcommand*{\drawphoto}{%
    \ifthenelse{\isundefined{\@photo}}{}{%
      \newlength{\photodim}
      \ifthenelse{\equal{\@photoshape}{circle}}%
        {\setlength{\photodim}{1.3cm}}%
        {\setlength{\photodim}{1.8cm}}%
      \ifthenelse{\equal{\@photoedge}{edge}}%
        {\def\@photoborder{darkgray}}%
        {\def\@photoborder{none}}%
      \begin{tikzpicture}%
        \node[\@photoshape, draw=\@photoborder, line width=0.3mm, inner sep=\photodim, fill overzoom image=\@photo] () {};
      \end{tikzpicture}
    }%
  }
  \newlength{\headertextwidth}
  \newlength{\headerphotowidth}
  \ifthenelse{\isundefined{\@photo}}{
    \setlength{\headertextwidth}{\textwidth}
    \setlength{\headerphotowidth}{0cm}
  }{%
    \setlength{\headertextwidth}{0.76\textwidth}
    \setlength{\headerphotowidth}{0.24\textwidth}
  }%
  \begin{minipage}[c]{\headerphotowidth}%
    \ifthenelse{\equal{\@photoalign}{left}}{\raggedright\drawphoto}{}
  \end{minipage}
  \begin{minipage}[c]{\headertextwidth}
    \ifthenelse{\equal{#1}{L}}{\raggedright}{\ifthenelse{\equal{#1}{R}}{\raggedleft}{\centering}}
    \headerfirstnamestyle{\@firstname}\headerlastnamestyle{{}\acvHeaderNameDelim\@lastname}%
    \\[\acvHeaderAfterNameSkip]%
    \ifthenelse{\isundefined{\@position}}{}{\headerpositionstyle{\@position\\[\acvHeaderAfterPositionSkip]}}%
    \ifthenelse{\isundefined{\@address}}{}{\headeraddressstyle{\@address\\[\acvHeaderAfterAddressSkip]}}%
    \headersocialstyle{%
      \newbool{isstart}%
      \setbool{isstart}{true}%
      \ifthenelse{\isundefined{\@mobile}}%
        {}%
        {%
          \faMobile\acvHeaderIconSep\@mobile%
          \setbool{isstart}{false}%
        }%
      \ifthenelse{\isundefined{\@email}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{mailto:\@email}{\faEnvelope\acvHeaderIconSep\@email}%
        }%
      \ifthenelse{\isundefined{\@homepage}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{http://\@homepage}{\faHome\acvHeaderIconSep\@homepage}%
        }%
      \ifthenelse{\isundefined{\@github}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://github.com/\@github}{\faGithubSquare\acvHeaderIconSep\@github}%
        }%
      \ifthenelse{\isundefined{\@gitlab}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://gitlab.com/\@gitlab}{\faGitlab\acvHeaderIconSep\@gitlab}%
        }%
      \ifthenelse{\isundefined{\@stackoverflowid}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://stackoverflow.com/users/\@stackoverflowid}{\faStackOverflow\acvHeaderIconSep\@stackoverflowname}%
        }%
      \ifthenelse{\isundefined{\@linkedin}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://www.linkedin.com/in/\@linkedin}{\faLinkedinSquare\acvHeaderIconSep\@linkedin}%
        }%
      \ifthenelse{\isundefined{\@twitter}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://twitter.com/\@twitter}{\faTwitter\acvHeaderIconSep\@twitter}%
        }%
      \ifthenelse{\isundefined{\@skype}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \faSkype\acvHeaderIconSep\@skype%
        }%
      \ifthenelse{\isundefined{\@reddit}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://www.reddit.com/user/\@reddit}{\faReddit\acvHeaderIconSep\@reddit}%
        }%
      \ifthenelse{\isundefined{\@xing}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://www.xing.com/profile/\@xing}{\faXingSquare\acvHeaderIconSep\@xing}
        }%
      \ifthenelse{\isundefined{\@extrainfo}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \@extrainfo%
        }%
    } \\[\acvHeaderAfterSocialSkip]%
    \ifthenelse{\isundefined{\@quote}}%
      {}%
      {\headerquotestyle{\@quote\\}\vspace{\acvHeaderAfterQuoteSkip}}%
  \end{minipage}%
  \begin{minipage}[c]{\headerphotowidth}%
    \ifthenelse{\equal{\@photoalign}{right}}{\raggedleft\drawphoto}{}
  \end{minipage}
}

% Define a footer for CV
% Usage: \makecvfooter{<left>}{<center>}{<right>}
\newcommand*{\makecvfooter}[3]{%
  \fancyfoot{}
  \fancyfoot[L]{\footerstyle{#1}}
  \fancyfoot[C]{\footerstyle{#2}}
  \fancyfoot[R]{\footerstyle{#3}}
}

% Define a section for CV
% Usage: \cvsection{<section-title>}
\newcommand{\cvsection}[1]{%
  \vspace{\acvSectionTopSkip}
  \sectionstyle{#1}
  \phantomsection
  \color{gray}\vhrulefill{0.9pt}
}

% Define a subsection for CV
% Usage: \cvsubsection{<subsection-title>}
\newcommand{\cvsubsection}[1]{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-3mm}
  \subsectionstyle{#1}
  \phantomsection
}

% Define a paragraph for CV
\newenvironment{cvparagraph}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-3mm}
  \paragraphstyle
}{%
  \par
  \vspace{2mm}
}

% Define an environment for cventry
\newenvironment{cventries}{%
  \vspace{\acvSectionContentTopSkip}
  \begin{center}
}{%
  \end{center}
}
% Define an entry of cv information
% Usage: \cventry{<position>}{<title>}{<location>}{<date>}{<description>}
\newcommand*{\cventry}[5]{%
  \vspace{-2.0mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 4.5cm} R{4.5cm}}
    \ifempty{#2#3}
      {\entrypositionstyle{#1} & \entrydatestyle{#4} \\}
      {\entrytitlestyle{#2} & \entrylocationstyle{#3} \\
      \entrypositionstyle{#1} & \entrydatestyle{#4} \\}
    \multicolumn{2}{L{\textwidth}}{\descriptionstyle{#5}}
  \end{tabular*}%
}

% Define an environment for cvsubentry
\newenvironment{cvsubentries}{%
  \begin{center}
}{%
  \end{center}
}
% Define a subentry of cv information
% Usage: \cvsubentry{<position>}{<title>}{<date>}{<description>}
\newcommand*{\cvsubentry}[4]{%
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 4.5cm} R{4.5cm}}
    \setlength\leftskip{0.2cm}
    \subentrytitlestyle{#2} & \ifthenelse{\equal{#1}{}}
      {\subentrydatestyle{#3}}{}
    \ifthenelse{\equal{#1}{}}
      {}
      {\subentrypositionstyle{#1} & \subentrydatestyle{#3} \\}
    \ifthenelse{\equal{#4}{}}
      {}
      {\multicolumn{2}{L{17.0cm}}{\subdescriptionstyle{#4}} \\}
  \end{tabular*}
}

% Define an environment for cvhonor
\newenvironment{cvhonors}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-2mm}
  \begin{center}
    \setlength\tabcolsep{0pt}
    \setlength{\extrarowheight}{0pt}
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} C{1.5cm} L{\textwidth - 4.0cm} R{2.5cm}}
}{%
    \end{tabular*}
  \end{center}
}
% Define a line of cv information(honor, award or something else)
% Usage: \cvhonor{<position>}{<title>}{<location>}{<date>}
\newcommand*{\cvhonor}[4]{%
  \honordatestyle{#4} & \honorpositionstyle{#1}, \honortitlestyle{#2} & \honorlocationstyle{#3} \\
}

% Define an environment for cvskill
\newenvironment{cvskills}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-2.0mm}
  \begin{center}
    \setlength\tabcolsep{1ex}
    \setlength{\extrarowheight}{0pt}
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} r L{\textwidth * \real{0.9}}}
}{%
    \end{tabular*}
  \end{center}
}
% Define a line of cv information(skill)
% Usage: \cvskill{<type>}{<skillset>}
\newcommand*{\cvskill}[2]{%
	\skilltypestyle{#1} & \skillsetstyle{#2} \\
}

% Define an environment for cvitems(for cventry)
\newenvironment{cvitems}{%
  \vspace{-4.0mm}
  \begin{justify}
  \begin{itemize}[leftmargin=2ex, nosep, noitemsep]
    \setlength{\parskip}{0pt}
    \renewcommand{\labelitemi}{\bullet}
}{%
  \end{itemize}
  \end{justify}
  \vspace{-4.0mm}
}


%-------------------------------------------------------------------------------
%                Commands for elements of Cover Letter
%-------------------------------------------------------------------------------
% Define an environment for cvletter
\newenvironment{cvletter}{%
  \lettertextstyle
}{%
}

% Define a section for the cover letter
% Usage: \lettersection{<section-title>}
\newcommand{\lettersection}[1]{%
  \par\addvspace{2.5ex}
  \phantomsection{}
  \lettersectionstyle{#1}
  \color{gray}\vhrulefill{0.9pt}
  \par\nobreak\addvspace{0.4ex}
}

% Define a title of the cover letter
% Usage: \makelettertitle
\newcommand*{\makelettertitle}{%
  \vspace{8.4mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth} R{4.5cm}}
    \recipienttitlestyle{\@recipientname} & \letterdatestyle{\@letterdate}
  \end{tabular*}
  \begin{singlespace}
    \recipientaddressstyle{\@recipientaddress} \\
  \end{singlespace}
  \ifthenelse{\isundefined{\@lettertitle}}
    {}
    {\lettertitlestyle{\@lettertitle} \\ \vspace{0.40cm}}
  \lettertextstyle{\@letteropening}
}

% Define a closing of the cover letter
% Usage: \makeletterclosing
\newcommand*{\makeletterclosing}{%
  \vspace{3.4mm}
  \lettertextstyle{\@letterclosing} \\
  \letternamestyle{\@firstname\ \@lastname}
  \ifthenelse{\isundefined{\@letterenclosure}}
    {\\}
    {%
      \\
      \letterenclosurestyle{\@letterenclname: \@letterenclosure} \\
    }
}