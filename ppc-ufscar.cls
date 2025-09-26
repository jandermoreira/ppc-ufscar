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

\ExplSyntaxOn
\NewDocumentCommand{\PPCPreambulo}{}{
    \bool_if:NTF \g_ppc_apresenta_capa_bool { \PPCCapa } { }
    \bool_if:NTF \g_ppc_apresenta_dados_institucionais_bool { \PPCDadosInstitucionais } { }
    \bool_if:NTF \g_ppc_apresenta_ficha_descritiva_bool { \PPCFichaDescritiva } { }
    \clearpage
    \pagenumbering{roman}
    \setcounter{page}{1}
    \tableofcontents
    \clearpage
    \pagenumbering{arabic}
    \setcounter{page}{1}
}
\ExplSyntaxOff

%
\AtBeginDocument{
    \sloppy
    \PPCPreambulo
}