%! Class = ppc-ufscar
%! Author = Jander Moreira (moreira.jander@gmail.com)
%! Date = 25/04/2025

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ppc-ufscar}[2025-04-25 Classe para a edição de Projetos Pedagógicos de Curso]
\LoadClass[12pt]{report}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[brazilian]{babel}

%
% Leiaute
\RequirePackage{etoolbox}
\RequirePackage{textcomp}
\RequirePackage[all]{nowidow}
\RequirePackage{geometry}
\RequirePackage{setspace}
\geometry{left = 2.5cm, right = 2cm, top = 2cm, bottom = 2cm}
\onehalfspacing

%
% Funcionalidades
\RequirePackage{ppc-ufscar}

\NewDocumentCommand{\PPCPreambulo}{}{
    \PPCCapa
    \PPCDadosInstitucionais
    \PPCFichaDescritiva
    \clearpage
    \pagenumbering{roman}
    \setcounter{page}{1}
    \tableofcontents
    \clearpage
    \pagenumbering{arabic}
    \setcounter{page}{1}
}

%
\AtBeginDocument{
    \sloppy
    \PPCPreambulo
}