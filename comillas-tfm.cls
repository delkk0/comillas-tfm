% --------------------------------------------------------------------------- %
% PLANTILLA PARA EL TFM DE COMILLAS
%
% Autor: David Polo Tascón
% Fecha: 2018/12/18
% --------------------------------------------------------------------------- %

%% Inicializamos los parámetros de la nueva clase --------------------------- %
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{comillas-tfm}[2018/12/18 Plantilla TFM Comillas]

%% Definimos la clase base que queremos utilizar ---------------------------- %
\LoadClass{book}

%% Parámetros generales
\newcommand{\Asunto}{Trabajo Final de Máster}
\newcommand{\Universidad}{Universidad Pontificia Comillas}
\newcommand{\Centro}{Escuela Técnica Superior de Ingeniería (ICAI)}
\newcommand{\Titulacion}{Máster en Big Data. Tecnología y Analítica Avanzada}

%% Cargamos los paquetes necesarios ----------------------------------------- %
\RequirePackage{fontspec}
\defaultfontfeatures{Mapping=tex-text}
\RequirePackage{xunicode}
\RequirePackage{xltxtra}
\setmainfont{Linux Libertine O}
\RequirePackage{polyglossia}
\setdefaultlanguage{spanish}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{graphicx}
%\RequirePackage{changepage}
\RequirePackage[left=2.5cm,
			  right=2.5cm,
			  top=2cm,
			  bottom=2cm,
			  headheight=36pt,
			  includeheadfoot]{geometry}

%% Definimos encabezados y pies de página ----------------------------------- %
\RequirePackage{fancyhdr}
\pagestyle{fancy}

	% Limpiamos los estilos por defecto
	\fancyhead{}
	\fancyfoot{}
	
	% Definimos los nuevos encabezados y pies de página
	%\setlength{\headheight}{36pt}
	\fancyfoot[C]{\thepage}
	\lhead{
		\includegraphics[height=1cm]{images/Horizontal_COMILLAS_COLOR_POSITIVO.jpg}
		\hfill
		\begin{tabular}[b]{c}
    		\textbf{\MakeUppercase{\Universidad}}\\
			   \textsc{\Centro}\\
			   \Titulacion
    		\end{tabular}
    		\hfill
	}
	\renewcommand{\headrulewidth}{0.4pt}
	\renewcommand{\footrulewidth}{0.4pt}
	
	\fancypagestyle{plain}{%
	\fancyhf{} % clear all header and footer fields
	\lhead{
		\includegraphics[height=1cm]{images/Horizontal_COMILLAS_COLOR_POSITIVO.jpg}
		\hfill
		\begin{tabular}[b]{c}
    		\textbf{\MakeUppercase{\Universidad}}\\
			   \textsc{\Centro}\\
			   \Titulacion
    		\end{tabular}
    		\hfill
	}
	\fancyfoot[C]{\textbf{\thepage}} % except the center
	\renewcommand{\headrulewidth}{0.4pt}
	\renewcommand{\footrulewidth}{0.4pt}}

%% Definición del párrafo --------------------------------------------------- %
\RequirePackage{setspace}	% Paquete para cambiar el interlineado en una página
	% Cambiamos el interlineado
	\linespread{1.2}
	
	% Añadimos un espaciado entre párrafos
	\setlength{\parskip}{1em}
	
%% Definición de macros ----------------------------------------------------- %
% Figuras. Ej: \Figura[Posición]{Formato}{Archivo.ext}{Pie}{fig:Etiqueta}
\newcommand{\Figura}[5][]{	
	\begin{figure}[#1]
		\centering
		\includegraphics[#2]{#3}
		\caption{#4}
		\label{#5}
	\end{figure}}

