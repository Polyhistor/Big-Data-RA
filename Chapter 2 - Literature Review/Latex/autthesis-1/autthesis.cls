%% autthesis Class for LaTeX2e.

%%
%% Time-stamp: <20200602 22:00 alan.litchfield@aut.ac.nz>
%%

%%
%% Copyright 2020. Alan T Litchfield
%% 
%%
%% This program can redistributed and/or modified under the terms
%% of the LaTeX Project Public License Distributed from CTAN
%% archives in directory macros/latex/base/lppl.txt; either
%% version 1 of the License, or (at your option) any later version.

%% See the accompanying file autthesisDocumentation.pdf
%% for instructions on how to use the template.
%% Any comments or problems about its use should be made
%% by email to me.




\NeedsTeXFormat{LaTeX2e} \ProvidesClass{autthesis}[2020/06/03 Thesis Class]

\RequirePackage{setspace}
\newif\ifsinglesp@
\newif\ifdoublesp@
\newif\ifonehalfsp@
\doublesp@false

\newif\ifAddDraft@
\AddDraft@false


\RequirePackage{fancyhdr}

\def\titlep{%
        \thispagestyle{empty}%
        \null\vskip1in%
        \begin{center}
                \Huge\uppercase\expandafter{\@title}
        \end{center}
        \vfill
        \begin{center}
                \sc A \ReportForm{} submitted to Auckland University of Technology\\ in partial fulfilment of the requirements for the degree of \\ \degreetitle

        \end{center}
         \vfill
        \begin{center}
        Supervisor \\
                \@primarysupervisor \\
                \@secondarysupervisor \quad \\
                \@thirdsupervisor
        \end{center}

        \vfill
        \begin{center}
                \@submitdate
        \end{center}
        \vfill
        \begin{center}
                \normalfont By\\
                \@author\\
                \expandafter{\@dept}
        \end{center}\vskip.5in\newpage
        	\clearpage{}}



\DeclareOption{singlespace}{\singlesp@true}
\DeclareOption{doublespace}{\doublesp@true}
\DeclareOption{onehalfspacing}{\onehalfsp@true}
\DeclareOption{thesis}{\def\ReportForm{thesis}}
\DeclareOption{dissertation}{\def\ReportForm{dissertation}}
\DeclareOption{exegesis}{\def\ReportForm{exegesis}}
\DeclareOption{techreport}{\def\ReportForm{technical report}}
\DeclareOption{draftversion}{\AddDraft@true}

%% start list of postgraduate programmes
\DeclareOption{AK2040}{\def\degreetitle{Bachelor of Advanced Science (Honours)}\def\sigtype{student}}
\DeclareOption{AK3656}{\def\degreetitle{Bachelor of Applied Science (Honours)}\def\sigtype{student}}
\DeclareOption{AK3670}{\def\degreetitle{Bachelor of Art and Design (Honours)}\def\sigtype{student}}
\DeclareOption{AK3696}{\def\degreetitle{Bachelor of Arts (Honours)}\def\sigtype{student}}
\DeclareOption{AK3712}{\def\degreetitle{Bachelor of Business (Honours)}\def\sigtype{student}}
\DeclareOption{GB3524}{\def\degreetitle{Bachelor of Business with Honours in Information Technology}\def\sigtype{student}}
\DeclareOption{AK1261}{\def\degreetitle{Bachelor of Communication Studies (Honours)}\def\sigtype{student}}
\DeclareOption{AK3687}{\def\degreetitle{Bachelor of Computer and Information Sciences (Honours)}\def\sigtype{student}}
\DeclareOption{AK1306}{\def\degreetitle{Bachelor of Creative Technologies (Honours)}\def\sigtype{student}}
\DeclareOption{AK3751}{\def\degreetitle{Bachelor of Engineering (Honours)}\def\sigtype{student}}
\DeclareOption{GB3520}{\def\degreetitle{Bachelor of Engineering with Honours in Mechanical Engineering}\def\sigtype{student}}
\DeclareOption{AK3662}{\def\degreetitle{Bachelor of Health Science (Honours)}\def\sigtype{student}}
\DeclareOption{AK1009}{\def\degreetitle{Bachelor of Laws (Honours)}\def\sigtype{student}}
\DeclareOption{AK1040}{\def\degreetitle{Bachelor of Science (Honours)}\def\sigtype{student}}
\DeclareOption{DJ1040}{\def\degreetitle{Bachelor of Science (Honours)}\def\sigtype{student}}
\DeclareOption{HA1040}{\def\degreetitle{Bachelor of Science (Honours)}\def\sigtype{student}}
\DeclareOption{AK3913}{\def\degreetitle{Bachelor of Sport and Recreation (Honours)}\def\sigtype{student}}
\DeclareOption{AK1293}{\def\degreetitle{Doctor of Accounting}\def\sigtype{candidate}}
\DeclareOption{AK1245}{\def\degreetitle{Doctor of Design}\def\sigtype{candidate}}
\DeclareOption{AK3685}{\def\degreetitle{Doctor of Education}\def\sigtype{candidate}}
\DeclareOption{AK3664}{\def\degreetitle{Doctor of Health Science}\def\sigtype{candidate}}
\DeclareOption{AK3999}{\def\degreetitle{Doctor of Literature}\def\sigtype{candidate}}
\DeclareOption{AK3518}{\def\degreetitle{Doctor of Philosophy}\def\sigtype{candidate}}
\DeclareOption{AK3998}{\def\degreetitle{Doctor of Science}\def\sigtype{candidate}}
\DeclareOption{COM901}{\def\degreetitle{Ma(Art&Des) Thesis/Dissertation Extension}\def\sigtype{student}}
\DeclareOption{COM900}{\def\degreetitle{Ma(Commst) Thesis/Dissertation Extension}\def\sigtype{student}}
\DeclareOption{AK1321}{\def\degreetitle{Master of Analytics}\def\sigtype{student}}
\DeclareOption{AK1055}{\def\degreetitle{Master of Applied Finance}\def\sigtype{student}}
\DeclareOption{AK1338}{\def\degreetitle{Master of Architecture (Professional)}\def\sigtype{student}}
\DeclareOption{AK3483}{\def\degreetitle{Master of Art and Design}\def\sigtype{student}}
\DeclareOption{AK3689}{\def\degreetitle{Master of Arts}\def\sigtype{student}}
\DeclareOption{MX3689}{\def\degreetitle{Master of Arts}\def\sigtype{student}}
\DeclareOption{AK1060}{\def\degreetitle{Master of Business}\def\sigtype{student}}
\DeclareOption{AK3717}{\def\degreetitle{Master of Business Administration}\def\sigtype{student}}
\DeclareOption{AK1090}{\def\degreetitle{Master of Business Management}\def\sigtype{student}}
\DeclareOption{AK1323}{\def\degreetitle{Master of Communication Studies}\def\sigtype{student}}
\DeclareOption{AK3482}{\def\degreetitle{Master of Communication Studies}\def\sigtype{student}}
\DeclareOption{AK1247}{\def\degreetitle{Master of Communication Studies}\def\sigtype{student}}
\DeclareOption{AK1329}{\def\degreetitle{Master of Computer and Information Sciences}\def\sigtype{student}}
\DeclareOption{AK3688}{\def\degreetitle{Master of Computer and Information Sciences}\def\sigtype{student}}
\DeclareOption{AK1290}{\def\degreetitle{Master of Construction Management}\def\sigtype{student}}
\DeclareOption{AK1249}{\def\degreetitle{Master of Contemporary Arts}\def\sigtype{student}}
\DeclareOption{AK1320}{\def\degreetitle{Master of Creative Technologies}\def\sigtype{student}}
\DeclareOption{AK1303}{\def\degreetitle{Master of Creative Writing}\def\sigtype{student}}
\DeclareOption{AK1067}{\def\degreetitle{Master of Criminology and Criminal Justice}\def\sigtype{student}}
\DeclareOption{AK1335}{\def\degreetitle{Master of Cultural and Creative Practice}\def\sigtype{student}}
\DeclareOption{AK1328}{\def\degreetitle{Master of Design}\def\sigtype{student}}
\DeclareOption{AK1250}{\def\degreetitle{Master of Digital Design}\def\sigtype{student}}
\DeclareOption{AK1251}{\def\degreetitle{Master of Digital Media}\def\sigtype{student}}
\DeclareOption{AK1053}{\def\degreetitle{Master of Education}\def\sigtype{student}}
\DeclareOption{AK3649}{\def\degreetitle{Master of Education}\def\sigtype{student}}
\DeclareOption{AK1054}{\def\degreetitle{Master of Education Practice}\def\sigtype{student}}
\DeclareOption{AK1051}{\def\degreetitle{Master of Educational Leadership}\def\sigtype{student}}
\DeclareOption{AK1280}{\def\degreetitle{Master of Educational Leadership}\def\sigtype{student}}
\DeclareOption{AK1016}{\def\degreetitle{Master of Emergency Management}\def\sigtype{student}}
\DeclareOption{AK3930}{\def\degreetitle{Master of Emergency Management}\def\sigtype{student}}
\DeclareOption{AK1308}{\def\degreetitle{Master of Engineering}\def\sigtype{student}}
\DeclareOption{AK1325}{\def\degreetitle{Master of Engineering}\def\sigtype{student}}
\DeclareOption{AK1317}{\def\degreetitle{Master of Engineering Project Management}\def\sigtype{student}}
\DeclareOption{AK1048}{\def\degreetitle{Master of English and New Media Studies}\def\sigtype{student}}
\DeclareOption{AK2015}{\def\degreetitle{Master of Gastronomy}\def\sigtype{student}}
\DeclareOption{AK1065}{\def\degreetitle{Master of Global Business}\def\sigtype{student}}
\DeclareOption{AK1319}{\def\degreetitle{Master of Health Informatics}\def\sigtype{student}}
\DeclareOption{AK3733}{\def\degreetitle{Master of Health Practice}\def\sigtype{student}}
\DeclareOption{AK3485}{\def\degreetitle{Master of Health Science}\def\sigtype{student}}
\DeclareOption{IM3485}{\def\degreetitle{Master of Health Science in  Physiotherapy}\def\sigtype{student}}
\DeclareOption{IN3485}{\def\degreetitle{Master of Health Science in Acupuncture}\def\sigtype{student}}
\DeclareOption{IN3485}{\def\degreetitle{Master of Health Science in Acupuncture}\def\sigtype{student}}
\DeclareOption{IJ3485}{\def\degreetitle{Master of Health Science in Advanced Nursing Practice}\def\sigtype{student}}
\DeclareOption{IK3485}{\def\degreetitle{Master of Health Science in Midwifery}\def\sigtype{student}}
\DeclareOption{IL3485}{\def\degreetitle{Master of Health Science in Neurological Physiotherapy}\def\sigtype{student}}
\DeclareOption{IO3485}{\def\degreetitle{Master of Health Science in Occupational Practice}\def\sigtype{student}}
\DeclareOption{IO3485}{\def\degreetitle{Master of Health Science in Occupational Practice}\def\sigtype{student}}
\DeclareOption{II3485}{\def\degreetitle{Master of Health Science in Psychotherapy}\def\sigtype{student}}
\DeclareOption{AK1023}{\def\degreetitle{Master of Human Rights}\def\sigtype{student}}
\DeclareOption{AK1324}{\def\degreetitle{Master of Information Security and Digital Forensics}\def\sigtype{student}}
\DeclareOption{AK1339}{\def\degreetitle{Master of Information Technology Project Management}\def\sigtype{student}}
\DeclareOption{AK1058}{\def\degreetitle{Master of International Hospitality Management}\def\sigtype{student}}
\DeclareOption{AK3705}{\def\degreetitle{Master of International Hospitality Management}\def\sigtype{student}}
\DeclareOption{AK1282}{\def\degreetitle{Master of International Tourism Management}\def\sigtype{student}}
\DeclareOption{AK1057}{\def\degreetitle{Master of International Tourism Management}\def\sigtype{student}}
\DeclareOption{AK1049}{\def\degreetitle{Master of Language and Culture}\def\sigtype{student}}
\DeclareOption{AK1044}{\def\degreetitle{Master of Laws}\def\sigtype{student}}
\DeclareOption{AK1080}{\def\degreetitle{Master of Maori and Indigenous Business}\def\sigtype{student}}
\DeclareOption{AK1045}{\def\degreetitle{Master of Marketing}\def\sigtype{student}}
\DeclareOption{AK1028}{\def\degreetitle{Master of Medical Laboratory Science}\def\sigtype{student}}
\DeclareOption{AK3830}{\def\degreetitle{Master of Nursing Science}\def\sigtype{student}}
\DeclareOption{AK3720}{\def\degreetitle{Master of Philosophy}\def\sigtype{student}}
\DeclareOption{AK3611}{\def\degreetitle{Master of Professional Accounting}\def\sigtype{student}}
\DeclareOption{AK1287}{\def\degreetitle{Master of Professional Language Studies}\def\sigtype{student}}
\DeclareOption{AK3920}{\def\degreetitle{Master of Psychotherapy}\def\sigtype{student}}
\DeclareOption{AK3805}{\def\degreetitle{Master of Public Health}\def\sigtype{student}}
\DeclareOption{HA2037}{\def\degreetitle{Master of Science}\def\sigtype{student}}
\DeclareOption{AK2037}{\def\degreetitle{Master of Science}\def\sigtype{student}}
\DeclareOption{DJ2037}{\def\degreetitle{Master of Science}\def\sigtype{student}}
\DeclareOption{AK1037}{\def\degreetitle{Master of Science (Research)}\def\sigtype{student}}
\DeclareOption{DJ1037}{\def\degreetitle{Master of Science (Research)}\def\sigtype{student}}
\DeclareOption{HA1037}{\def\degreetitle{Master of Science (Research)}\def\sigtype{student}}
\DeclareOption{AK1318}{\def\degreetitle{Master of Service-Oriented Computing}\def\sigtype{student}}
\DeclareOption{AK1332}{\def\degreetitle{Master of Social Innovation}\def\sigtype{student}}
\DeclareOption{AK3910}{\def\degreetitle{Master of Sport and Exercise}\def\sigtype{student}}
\DeclareOption{AK1047}{\def\degreetitle{Master of Teaching and Learning}\def\sigtype{student}}
\DeclareOption{AK1327}{\def\degreetitle{Master of Visual Arts}\def\sigtype{student}}
\DeclareOption{COM450}{\def\degreetitle{MCIS Self-Funded Thesis Extension}\def\sigtype{student}}
\DeclareOption{COM902}{\def\degreetitle{MHSc Thesis Dissertation Extension}\def\sigtype{student}}
\DeclareOption{COM905}{\def\degreetitle{MIHM Self-Funded Thesis Dissertation Extension}\def\sigtype{student}}
\DeclareOption{AK3557}{\def\degreetitle{Postgraduate Certificate in Advanced Nursing Practice}\def\sigtype{student}}
\DeclareOption{AK1004}{\def\degreetitle{Postgraduate Certificate in Arts}\def\sigtype{student}}
\DeclareOption{MX1004}{\def\degreetitle{Postgraduate Certificate in Arts}\def\sigtype{student}}
\DeclareOption{AK3742}{\def\degreetitle{Postgraduate Certificate in Business}\def\sigtype{student}}
\DeclareOption{AK1020}{\def\degreetitle{Postgraduate Certificate in Business Administration}\def\sigtype{student}}
\DeclareOption{AK1070}{\def\degreetitle{Postgraduate Certificate in Business Studies}\def\sigtype{student}}
\DeclareOption{AK1322}{\def\degreetitle{Postgraduate Certificate in Communication Studies}\def\sigtype{student}}
\DeclareOption{AK3746}{\def\degreetitle{Postgraduate Certificate in Computer and Information Sciences}\def\sigtype{student}}
\DeclareOption{AK1440}{\def\degreetitle{Postgraduate Certificate in Creative Technologies}\def\sigtype{student}}
\DeclareOption{AK1336}{\def\degreetitle{Postgraduate Certificate in Cultural and Creative Practice}\def\sigtype{student}}
\DeclareOption{AK1331}{\def\degreetitle{Postgraduate Certificate in Design}\def\sigtype{student}}
\DeclareOption{AK3744}{\def\degreetitle{Postgraduate Certificate in Education}\def\sigtype{student}}
\DeclareOption{AK1059}{\def\degreetitle{Postgraduate Certificate in Education Practice}\def\sigtype{student}}
\DeclareOption{AK1052}{\def\degreetitle{Postgraduate Certificate in Educational Leadership}\def\sigtype{student}}
\DeclareOption{AK1025}{\def\degreetitle{Postgraduate Certificate in Emergency Management}\def\sigtype{student}}
\DeclareOption{AK1296}{\def\degreetitle{Postgraduate Certificate in Engineering}\def\sigtype{student}}
\DeclareOption{AK1076}{\def\degreetitle{Postgraduate Certificate in English and New Media Studies}\def\sigtype{student}}
\DeclareOption{AK2017}{\def\degreetitle{Postgraduate Certificate in Gastronomy}\def\sigtype{student}}
\DeclareOption{AK3484}{\def\degreetitle{Postgraduate Certificate in Health Science}\def\sigtype{student}}
\DeclareOption{IC3485}{\def\degreetitle{Postgraduate Certificate in Health Science (Cardiorespiratory Rehabilitation)}\def\sigtype{student}}
\DeclareOption{IH3485}{\def\degreetitle{Postgraduate Certificate in Health Science (Rehabilitation)}\def\sigtype{student}}
\DeclareOption{GB3488}{\def\degreetitle{Postgraduate Certificate in Health Science in Midwifery}\def\sigtype{student}}
\DeclareOption{IE3485}{\def\degreetitle{Postgraduate Certificate in Health Science in Neurological Rehabilitation}\def\sigtype{student}}
\DeclareOption{AK1062}{\def\degreetitle{Postgraduate Certificate in Higher Education}\def\sigtype{student}}
\DeclareOption{AK1068}{\def\degreetitle{Postgraduate Certificate in Human Rights}\def\sigtype{student}}
\DeclareOption{AK3748}{\def\degreetitle{Postgraduate Certificate in International Hospitality Management}\def\sigtype{student}}
\DeclareOption{AK1072}{\def\degreetitle{Postgraduate Certificate in International Tourism Management}\def\sigtype{student}}
\DeclareOption{AK1064}{\def\degreetitle{Postgraduate Certificate in Language and Culture}\def\sigtype{student}}
\DeclareOption{AK1050}{\def\degreetitle{Postgraduate Certificate in Law}\def\sigtype{student}}
\DeclareOption{AK1082}{\def\degreetitle{Postgraduate Certificate in Maori and Indigenous Business}\def\sigtype{student}}
\DeclareOption{AK1026}{\def\degreetitle{Postgraduate Certificate in Medical Laboratory Science}\def\sigtype{student}}
\DeclareOption{AK3811}{\def\degreetitle{Postgraduate Certificate in Professional Accounting}\def\sigtype{student}}
\DeclareOption{AK3807}{\def\degreetitle{Postgraduate Certificate in Public Health}\def\sigtype{student}}
\DeclareOption{DJ1039}{\def\degreetitle{Postgraduate Certificate in Science}\def\sigtype{student}}
\DeclareOption{HA1039}{\def\degreetitle{Postgraduate Certificate in Science}\def\sigtype{student}}
\DeclareOption{AK1039}{\def\degreetitle{Postgraduate Certificate in Science}\def\sigtype{student}}
\DeclareOption{AK1334}{\def\degreetitle{Postgraduate Certificate in Social Innovation}\def\sigtype{student}}
\DeclareOption{AK3912}{\def\degreetitle{Postgraduate Certificate in Sport and Exercise}\def\sigtype{student}}
\DeclareOption{AK1330}{\def\degreetitle{Postgraduate Certificate in Visual Arts}\def\sigtype{student}}
\DeclareOption{AK1056}{\def\degreetitle{Postgraduate Diploma in Applied Finance}\def\sigtype{student}}
\DeclareOption{AK3740}{\def\degreetitle{Postgraduate Diploma in Arts}\def\sigtype{student}}
\DeclareOption{MX3740}{\def\degreetitle{Postgraduate Diploma in Arts}\def\sigtype{student}}
\DeclareOption{GA3740}{\def\degreetitle{Postgraduate Diploma in Arts in Communication Studies}\def\sigtype{student}}
\DeclareOption{AK1326}{\def\degreetitle{Postgraduate Diploma in Brand Communication}\def\sigtype{student}}
\DeclareOption{AK3741}{\def\degreetitle{Postgraduate Diploma in Business}\def\sigtype{student}}
\DeclareOption{GB3559}{\def\degreetitle{Postgraduate Diploma in Business}\def\sigtype{student}}
\DeclareOption{AK1019}{\def\degreetitle{Postgraduate Diploma in Business Administration}\def\sigtype{student}}
\DeclareOption{AK1091}{\def\degreetitle{Postgraduate Diploma in Business Management}\def\sigtype{student}}
\DeclareOption{AK3825}{\def\degreetitle{Postgraduate Diploma in Clinical Child and Adolescent Psychotherapy}\def\sigtype{student}}
\DeclareOption{AK1299}{\def\degreetitle{Postgraduate Diploma in Communication Studies}\def\sigtype{student}}
\DeclareOption{AK3745}{\def\degreetitle{Postgraduate Diploma in Computer and Information Sciences}\def\sigtype{student}}
\DeclareOption{AK1232}{\def\degreetitle{Postgraduate Diploma in Counselling Psychology}\def\sigtype{student}}
\DeclareOption{AK1074}{\def\degreetitle{Postgraduate Diploma in Criminology and Criminal Justice}\def\sigtype{student}}
\DeclareOption{AK3743}{\def\degreetitle{Postgraduate Diploma in Education}\def\sigtype{student}}
\DeclareOption{AK1061}{\def\degreetitle{Postgraduate Diploma in Education Practice}\def\sigtype{student}}
\DeclareOption{AK1015}{\def\degreetitle{Postgraduate Diploma in Emergency Management}\def\sigtype{student}}
\DeclareOption{AK3566}{\def\degreetitle{Postgraduate Diploma in Engineering}\def\sigtype{student}}
\DeclareOption{AK1075}{\def\degreetitle{Postgraduate Diploma in English and New Media Studies}\def\sigtype{student}}
\DeclareOption{AK2016}{\def\degreetitle{Postgraduate Diploma in Gastronomy}\def\sigtype{student}}
\DeclareOption{AK1066}{\def\degreetitle{Postgraduate Diploma in Global Business}\def\sigtype{student}}
\DeclareOption{AK3487}{\def\degreetitle{Postgraduate Diploma in Health Science}\def\sigtype{student}}
\DeclareOption{IA3485}{\def\degreetitle{Postgraduate Diploma in Health Science (Cardiorespiratory Rehabilitation)}\def\sigtype{student}}
\DeclareOption{ID3485}{\def\degreetitle{Postgraduate Diploma in Health Science (Critical Care Nursing)}\def\sigtype{student}}
\DeclareOption{IG3485}{\def\degreetitle{Postgraduate Diploma in Health Science (Rehabilitation)}\def\sigtype{student}}
\DeclareOption{IB3485}{\def\degreetitle{Postgraduate Diploma in Health Science (Sport and Exercise)}\def\sigtype{student}}
\DeclareOption{IF3485}{\def\degreetitle{Postgraduate Diploma in Health Science in Advanced Nursing Practice}\def\sigtype{student}}
\DeclareOption{AK1036}{\def\degreetitle{Postgraduate Diploma in Higher Education}\def\sigtype{student}}
\DeclareOption{AK1069}{\def\degreetitle{Postgraduate Diploma in Human Rights}\def\sigtype{student}}
\DeclareOption{AK3747}{\def\degreetitle{Postgraduate Diploma in International Hospitality Management}\def\sigtype{student}}
\DeclareOption{AK1283}{\def\degreetitle{Postgraduate Diploma in International Tourism Management}\def\sigtype{student}}
\DeclareOption{AK1063}{\def\degreetitle{Postgraduate Diploma in Language and Culture}\def\sigtype{student}}
\DeclareOption{AK1081}{\def\degreetitle{Postgraduate Diploma in Maori and Indigenous Business}\def\sigtype{student}}
\DeclareOption{AK1046}{\def\degreetitle{Postgraduate Diploma in Marketing}\def\sigtype{student}}
\DeclareOption{AK1027}{\def\degreetitle{Postgraduate Diploma in Medical Laboratory Science}\def\sigtype{student}}
\DeclareOption{AK3711}{\def\degreetitle{Postgraduate Diploma in Professional Accounting}\def\sigtype{student}}
\DeclareOption{AK3806}{\def\degreetitle{Postgraduate Diploma in Public Health}\def\sigtype{student}}
\DeclareOption{AK3558}{\def\degreetitle{Postgraduate Diploma in Registered Nurse Prescribing}\def\sigtype{student}}
\DeclareOption{AK3940}{\def\degreetitle{Postgraduate Diploma in Rehabilitation Psychology}\def\sigtype{student}}
\DeclareOption{DJ1038}{\def\degreetitle{Postgraduate Diploma in Science}\def\sigtype{student}}
\DeclareOption{HA1038}{\def\degreetitle{Postgraduate Diploma in Science}\def\sigtype{student}}
\DeclareOption{AK1038}{\def\degreetitle{Postgraduate Diploma in Science}\def\sigtype{student}}
\DeclareOption{AK1333}{\def\degreetitle{Postgraduate Diploma in Social Innovation}\def\sigtype{student}}
\DeclareOption{AK3911}{\def\degreetitle{Postgraduate Diploma in Sport and Exercise}\def\sigtype{student}}
\DeclareOption{AK1073}{\def\degreetitle{Postgraduate Diploma in Teaching and Learning}\def\sigtype{student}}
%% end list of postgraduate programmes

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ExecuteOptions{AK3518,thesis}

\ProcessOptions

\LoadClass[a4paper]{report}

\RequirePackage[utf8]{inputenc} % allows non-ascii characters to output correctly, watch out for bibtex though (it ignores this statement)
\RequirePackage[T1]{fontenc} 
\RequirePackage{times} % This is the required font for AUT
\RequirePackage[newzealand]{babel}    % newzealand enforces NZ English spelling

% The following packages are added as required. These are suggested as useful in any thesis

\RequirePackage{lgreek}                         % Provides text greek characters  

%% Fancy Header Style Options
    \pagestyle{fancy}                                             % Sets fancy header and footer
    \fancyfoot{}                                                      % Delete current footer settings
    \renewcommand{\chaptermark}[1]{                   % Lower Case Chapter marker style
      \markboth{\chaptername\ \thechapter.\ #1}{}} %
    \renewcommand{\sectionmark}[1]{                     % Lower case Section marker style
      \markright{\thesection.\ #1}}                            %
%    \fancyhead[LE,RO]{\mdseries\thepage}             % Page number (boldface) in left on even
                                                                              % pages and right on odd pages
    \fancyhead[L,RO]{\mdseries\thepage}
%    \fancyhead[RE]{\mdseries\rightmark}                % Chapter in the right on even pages
%    \fancyhead[R]{\mdseries\rightmark}
    \fancyhead[LO]{\mdseries\leftmark}                     % Section in the left on odd pages
    \renewcommand{\headrulewidth}{0.25pt}             % Width of head rule
     \renewcommand{\headheight}{30pt}                   % depth of header

\RequirePackage{microtype}	% provides a LATEX interface to the micro-typographic 
					% extensions of pdf TEX
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{graphics}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{MnSymbol}
\RequirePackage{tabularx}
\RequirePackage{expdlist}
\RequirePackage{varioref} % provides a more intelligent way of cross referencing
\RequirePackage{verbatim}   % for code listings and so on
\RequirePackage{longtable}  % for tables that extend beyond a single page
\RequirePackage{subfig}        % putting more than one figure in a float
\RequirePackage{multicol}     % Provides multiple columns.            
\RequirePackage{ragged2e}  % Provides RaggedRight                     
\RequirePackage{booktabs}  % Provides equal tab spacings, etc
\RequirePackage{paralist}   % this is to list enumerated list items within the paragraph instead listing them down the page
\RequirePackage{dashrule}
\RequirePackage{enumitem} % allows the creation of alternative numbering styles in enumerated and itemized lists
\RequirePackage[multiple]{footmisc} % varies standard footnotes, to restart numbering on each page and comma separate
							% multiple footnotes when they are together.
\RequirePackage{tocvsec2}  % Allows sectional changes to TOC depth
\RequirePackage[pdfhighlight={/I}, hidelinks]{hyperref} % this turns all your cross references into hyperlinks

%% Create Draft watermark text

\newcommand{\AddDraft}{%
\RequirePackage{draftwatermark}
\SetWatermarkText{Draft}
\SetWatermarkColor[gray]{.75}
\SetWatermarkHorCenter{105mm}
\SetWatermarkVerCenter{147.5mm}}


\ifAddDraft@%
   \AddDraft
\fi

%% We need >15mm  margins except on the binding edge, where it is >40mm
\oddsidemargin 14.6truemm \evensidemargin 0truemm
\marginparwidth 40pt \marginparsep 10pt
\topmargin 0truemm \headsep 10truemm
\textheight 224truemm \textwidth 145truemm

%% This provides the structure for chapter proofs. 
\newcommand{\ChapterProof}[1]{
    \renewcommand{\beforeabstract}{\relax}
    \renewcommand{\afterabstract}{\relax}
    \renewcommand{\afterpreface}{\relax}
    \def\AUTChapter##1{\title{Draft chapter \\ ##1}
                      \date{\today}
                      \maketitle
                      \chapter{##1}}
    \includeonly{#1}
    }

\providecommand{\AUTChapter}[1]{\chapter{#1}}

%% This creates a margin note command
\let\margin\marginpar
\newcommand\marginNote[1]{\margin{\raggedright%
	\scriptsize%
	\setlength{\itemsep}{0pt}%
	\setlength{\parskip}{0pt} \setstretch{1.0} #1}}
\renewcommand{\marginpar}[1]{\marginNote{#1}}


%% Disallow page breaks at hyphens (this will give some underfull vbox's,
%% so an alternative is to use \brokenpenalty=100 and manually search
%% for and fix such page breaks)
\brokenpenalty=10000

%% Set up line spacing
\AtBeginDocument{%
\ifdoublesp@%
  \doublespacing%
\else\ifsinglesp@%
  \singlespacing%
\else%
  \onehalfspacing%
\fi%
\fi
}



%% \author, \title are defined in report; here are the rest of the
%% front matter defining macros
\def\dept#1{\gdef\@dept{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\primarysupervisor#1{\gdef\@primarysupervisor{#1}\gdef\supervis@r{Primary Supervisor}}
\def\secondarysupervisor#1{\gdef\@secondarysupervisor{#1}\gdef\secondarysupervisor{Secondary Supervisor}}
\def\thirdsupervisor#1{\gdef\@thirdsupervisor{#1}\gdef\thirdsupervisor{Third Supervisor}}
\def\submitdate#1{\gdef\@submitdate{#1}}
\def\@title{}\def\@author{}\def\@dept{School of Engineering, Computer and Mathematical Sciences}\def\@faculty{Faculty of Design and Creative Technologies}
\def\@title{}\def\@author{}\def\@dept{}\def\@faculty{}
\def\@primarysupervisor{}\def\@secondarysupervisor{}\def\@thirdsupervisor{}
\def\@submitdate{\ifcase\the\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\the\year}

\def\@submitdate{\number\the\year}

\newif\iffigurespage \newif\iftablespage \newif\ifsigpage \newif\ifabstractpage \newif\ifacknowpage \newif\ifdedipage \newif\ifdeclpage \newif\ifpubspage \newif\ifippage \newif\ifconfpage

\figurespagetrue \tablespagetrue \sigpagetrue \abstractpagetrue \acknowpagetrue \dedipagetrue \declpagetrue \pubspagetrue \ippagetrue \confpagetrue


%% Front matter page definitions
\newcommand{\abstracttext}[1]{\def\@abstracttext{#1}}
\def\abstractpage{%
\prefacesection{Abstract}
                \@abstracttext{}
        \vfill}

\def\declpage{%
\prefacesection{Attestation of Authorship}
        \begin{center}
        \begin{minipage}{4in}
                \parindent=0pt
                I hereby declare that this submission is my own work and that, to the best of my knowledge and belief, it contains no material previously published or written by another person nor material which to a substantial extent has been accepted for the qualification of any other degree or diploma of a university or other institution of higher learning.
                \par\vspace{2.5cm}
                \hspace{1in}\inclsig{}\newline{}
                \hbox to 4in{ \hfil\shortstack{\vrule width 3in height 0.4pt\\
                        Signature of \sigtype{}}}
        \end{minipage}%
        \end{center}%
        \vfill}
        
\newcommand{\deditext}[1]{\def\@deditext{#1}}
\def\dedipage{%
\prefacesection{Dedication}
	\begin{center}
	\begin{minipage}{\linewidth{}}
		\parindent=0pt
		\@deditext{}
	\end{minipage}%
	\end{center}%
	\vfill}

\def\inclsig{%
	\includegraphics[width=3in]{signature}}

\newenvironment{outdent}%
{\singlespacing\begin{list}{}%
{\listparindent=-1pc\itemindent=\listparindent\leftmargin=1pc}%
\item[]}%
{\end{list}\doublespacing}

\newcommand{\pubstext}[1]{\def\@pubstext{#1}}
\def\pubspage{%
\prefacesection{Publications}
                \@pubstext{} }

\newcommand{\acknowtext}[1]{\def\@acknowtext{#1}}
\def\acknowpage{%
\prefacesection{Acknowledgements}
        \begin{center}
        \begin{minipage}{\linewidth{}}
                \parindent=0pt
                \@acknowtext{}
        \end{minipage}%
        \end{center}%
        \vfill}
               

\newcommand{\iptext}[1]{\def\@iptext{#1}}
\def\ippage{%
\prefacesection{Intellectual Property Rights}
        \begin{center}
        \begin{minipage}{\linewidth{}}
                \parindent=0pt
                \@iptext{}
        \end{minipage}%
        \end{center}%
        \vfill}
        
\newcommand{\conftext}[1]{\def\@conftext{#1}}
\def\confpage{%
\prefacesection{Confidential Material}
        \begin{center}
        \begin{minipage}{\linewidth{}}
                \parindent=0pt
                \@ethicstext{}
        \end{minipage}%
        \end{center}%
        \vfill}

\def\beforeabstract{
        \pagenumbering{arabic}
        \pagestyle{plain}
     \titlep   
             \ifabstractpage\abstractpage\fi
        }

\def\afterabstract{
	\singlespacing
	\tableofcontents
        \newpage
        \iftablespage
                \addvspace{10pt}
                \listoftables
                \newpage
        \fi
        \iffigurespage
                \addvspace{10pt}
                \listoffigures
                \newpage
        \fi
        \ifdeclpage\declpage\fi
        \ifpubspage\pubspage\fi
        \ifacknowpage\acknowpage\fi
        \ifdedipage\dedipage\fi
        \ifippage\ippage\fi
        \doublespacing
        }

\def\prefacesection#1{%
        \chapter*{#1}
        \addcontentsline{toc}{chapter}{#1}}

\def\afterpreface{\newpage
        \pagestyle{fancy}}

\pagestyle{fancy}

%%% Make the bibliography generate an entry in the table
%%% of contents.
\def\thebibliography#1{\chapter*{\bibname\@mkboth
  {\uppercase{\bibname}}{\uppercase{\bibname}}}%
  \addcontentsline{toc}{chapter}{\bibname}%
  \list
  {\@biblabel{\arabic{enumiv}}}{\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \def\theenumiv{\arabic{enumiv}}}%
    \def\newblock{\hskip .11em plus.33em minus.07em}%
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=\@m}

\def\endthebibliography{%
  \def\@noitemerr{\@warning{Empty `thebibliography' environment}}%
  \endlist}

% autthesis uses one and a half line spacing by default, to get line spacings in 
% lists put an * at the end of the macro name, as below:
\newenvironment{itemize*}%
{\begin{itemize}%
\setlength{\itemsep}{0pt}%
\setlength{\parskip}{0pt}}%
{\end{itemize}}

\newenvironment{enumerate*}%
{\begin{enumerate}%
\setlength{\itemsep}{0pt}%
\setlength{\parskip}{0pt}}%
{\end{enumerate}}

\newenvironment{description*}%
{\begin{description}%
\setlength{\itemsep}{0pt}%
\setlength{\parskip}{0pt}}%
{\end{description}}

\newenvironment{quotation*}%
{\begin{quotation}%
\setlength{\itemsep}{0pt}%
\setlength{\parskip}{0pt}}%
{\end{quotation}}

\newenvironment{quotation**}%
{\begin{quotation}%
\setlength{\itemsep}{-1pt}%
\setlength{\parskip}{-1pt}}%
{\end{quotation}}



% Macro for enforcing a blank page. Used at the beginning of the Appendices 
% to create a bank page before the new part that starts there
\newcommand{\clearemptydoublepage}{\strut\newpage{\pagestyle{empty}\cleardoublepage}}


% This macro sets up hyperref to correctly point to the appendices instead of the references page. The options for the argument are {none | section}
\newcommand{\AUTthesisAppendix}[1]{%
\addcontentsline{toc}{chapter}{Appendices}
\settocdepth{#1}
\clearemptydoublepage{}
\renewcommand\chaptername{Appendix}
\appendix{}
\newcounter{appendix}
\refstepcounter{appendix}}

