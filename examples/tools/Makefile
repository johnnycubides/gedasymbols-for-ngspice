PRJ?=
SUITE?=lepton#lepton, eda
s?=
SIM?=$s
MK?=

h: help
ss: schema
n: netlister
s: simulate
z: zip
c: clear

help:
	@echo "\n\
	### MENÚ ###\n\n\
	make ss: \tEditar esquema \n\
	make n: \tCrear netlist \n\
	make s: \tSimular con ngspice \n\
	make z: \tCrear zip desde archivos fuente \n\
	make c: \tBorrar resulatados de simulaciones \n\
	make h: \tEste menú de ayuda \n\
	"

check:
	@ls $(PRJ).sch || (echo "Edita el Makefile y agrega el\n\
nombre del proyecto sin la extencion .sch \n\n\
PRJ=miProyecto\n";\
exit 123;)

schema: check
ifeq ($(SUITE),lepton)
	lepton-schematic $(PRJ).sch &
else
	gschem $(PRJ).sch &
endif

netlister: check
ifeq ($(SUITE), lepton)
	lepton-netlist -g spice-sdb -o $(PRJ).net $(PRJ).sch
else
	gnetlist -g spice-sdb -o $(PRJ).net $(PRJ).sch
endif

$(PRJ).op: check
	touch $(PRJ).op
	@echo ".control" >> $(PRJ).op
	@echo "set hcopydevtype=postscript" >> $(PRJ).op
	@echo "set hcopypscolor=1" >> $(PRJ).op
	@echo "set color0 = rgb:0/0/0" >> $(PRJ).op
	@echo "set color1 = rgb:f/f/f" >> $(PRJ).op
	@echo "set color2 = rgb:f/0/0" >> $(PRJ).op
	@echo "set color3 = rgb:0/f/0" >> $(PRJ).op
	@echo "set color4 = rgb:0/0/f" >> $(PRJ).op
	@echo "set color5 = rgb:f/f/0" >> $(PRJ).op
	@echo "set color6 = rgb:0/f/f" >> $(PRJ).op
	@echo "set color7 = rgb:f/0/f" >> $(PRJ).op
	@echo "set color8 = rgb:6/f/6" >> $(PRJ).op
	@echo "set color9 = rgb:9/f/9" >> $(PRJ).op
	@echo "op" >> $(PRJ).op
	@echo "display" >> $(PRJ).op
	@echo ".endc" >> $(PRJ).op

simulate: $(PRJ).op
ifeq ($(SIM), )
	@echo "Se requiere especificar archivo de simulación, ejemplo: \n"
	@echo "make s s=sim/example.ngsim\n"
else
	mkdir -p out
	ngspice -i $(PRJ).net $(PRJ).op $(SIM)
endif

zip: check
	echo "PRJ=$(PRJ)" > /tmp/Makefile
	cat $(MK) >> /tmp/Makefile
	# zip $(PRJ).zip -r sim/ lib/ $(PRJ).sch README.md
	zip $(PRJ).zip -r sim/ lib/ *.sch README.md
	# zip $(PRJ) -u -j $(MK)
	zip $(PRJ) -u -j /tmp/Makefile

clear: check
	rm -rf out/ *.net *.op *.sch~
	# rm -rf out/ *.net *.op $(PRJ).sch~
