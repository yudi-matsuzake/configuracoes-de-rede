PROJECT=configuracoes-de-rede
FILES:=$(shell ls *.md -1 | grep -v "README.md" | grep -v "${PROJECT}.md")

all: ${PROJECT}.pdf clean see

# TODO: um template mais bonito no pandoc
#-metadata---------------------------
#TITLE='-V title="Configurações de Redes"'
#AUTHOR='-V author="Alunos da UTFPR, com todo o <3'
#_DATE=$(shell date +"%d de %B, %Y.")
#DATE='-V date "${_DATE}"'
#LANGUAGE='-V lang "pt-br"'
#LINKCOLOR='-V linkcolor="magenta"'
#TOCCOLOR='-V toccolor="magenta"'
#URLCOLOR='-V urlcolor="magenta"'

files:
	@echo "${FILES}"

${PROJECT}.tex:	${FILES}
		@cat ${FILES} > "${PROJECT}.md"
		@pandoc --toc --standalone -o ${PROJECT}.tex ${PROJECT}.md

#------------------------------------------------
${PROJECT}.pdf:	${PROJECT}.tex
		pdflatex ${PROJECT}
		pdflatex ${PROJECT}
		pdflatex ${PROJECT}

clean:	.gitignore
	@while read regex;\
	do \
		regex=$$(find . -name "$$regex") ;\
                echo Removendo... [ $${regex} ] ;\
		rm -f $${regex} ;\
	done < .gitignore

see:	${PROJECT}.pdf
	xdg-open ${PROJECT}.pdf
