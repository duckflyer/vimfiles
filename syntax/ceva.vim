" Vim syntax file
" Language: XM4 assembly
" Maintainer: Omer Pereg
" Latest Revision: 06/01/2016

if exists("b:current_syntax")
    finish
endif

" Assembler directives
" Yeah. need to feel this, also labels

" Opcodes for CEVA-X
syn keyword x2Opcode  brrcmp brrcmplp movebit frmrestore frmalloc

" Opcodes
syn keyword xm4Opcode abs add and andnot bitdup
syn keyword xm4Opcode bkrep bkrest bkst br brar
syn keyword xm4Opcode break breako brr call callar callr
syn keyword xm4Opcode cmp cntbits dec dint divstep
syn keyword xm4Opcode eint extract ffb
syn keyword xm4Opcode flcopy fp2int fp2usint fpadd fpcmp fpcombine fpextract
syn keyword xm4Opcode fpmpy fpsub in inc insert
syn keyword xm4Opcode int2fp lbf ld mac max
syn keyword xm4Opcode min modlci modr monitor mov
syn keyword xm4Opcode movp movselect mpy msu nand
syn keyword xm4Opcode neg nop nor not or
syn keyword xm4Opcode out pop prm psu push
syn keyword xm4Opcode ret retb reti retn rmodw
syn keyword xm4Opcode rstp setp shiftl shiftladd shiftlsub
syn keyword xm4Opcode shiftr st sub trap
syn keyword xm4Opcode trape tst usint2fp
syn keyword xm4Opcode vabscmp vabscmpmov vabssub vabssubacc vacc3kto4k vacc4kto3k vaccadd
syn keyword xm4Opcode vacccast vaccmov vaccshiftr vaccsub vadd
syn keyword xm4Opcode vaddgen vaddmac vaddmpy vaddsat vand
syn keyword xm4Opcode vbcpld vbcpst vcast vclip vcmp
syn keyword xm4Opcode vcmpacc vcmpmov vcntbits vdeinterleave vdeinterleave3
syn keyword xm4Opcode verifend verifeqs vffb vfp2int vfp2usint
syn keyword xm4Opcode vfpadd vfpcmp vfpcombine vfpextract vfpinv
syn keyword xm4Opcode vfpmpy vfpsqrt vfpsqrti vfpsub vgenmpys
syn keyword xm4Opcode vgenmpyv vhist vint2fp vinterleave vinterleave3
syn keyword xm4Opcode vintramax vintramin vintrasum vinv vl2d
syn keyword xm4Opcode vld vldchk vldov vlut vmac
syn keyword xm4Opcode vmac3 vmad vmax vmed vmin
syn keyword xm4Opcode vmodr vmodr2d vmov vmovselect vmpy
syn keyword xm4Opcode vmpyadd vmpymat4x4 vmpynorm vmswmac3 vmswmad
syn keyword xm4Opcode vnand vneg vnor vnot vor
syn keyword xm4Opcode vperm vpld vpld2d vpop vpst
syn keyword xm4Opcode vpst2d vpush vs2d vshiftl vshiftr
syn keyword xm4Opcode vsplit vspmac vsqrt vsqrti vsspmac
syn keyword xm4Opcode vsswmac5 vst vsub vsubmac vsubmpy
syn keyword xm4Opcode vsubsat vsubsquare vswmac3 vswmac5 vswmad
syn keyword xm4Opcode vswmpy5 vswsad vswsub vswsubcmp vusint2fp
syn keyword xm4Opcode vxor xnor xor

" Switches
syn keyword xm4Switch prnot mm3k mm4k upper hi
syn keyword xm4Switch lo psh transpose rnd clr
syn keyword xm4Switch set sign lsb msb splitsrc
syn keyword xm4Switch split zeros qw ch1 sh1
syn keyword xm4Switch in1 ch2 sh2 in2 ch4
syn keyword xm4Switch sh4 in4 u se square
syn keyword xm4Switch cf lt le gt ge
syn keyword xm4Switch eq neq r8to15 r16to23 s0to7
syn keyword xm4Switch bknest bit ibit vprand vpror
syn keyword xm4Switch vprxor rel sat satu odd
syn keyword xm4Switch mant expn cpm first second
syn keyword xm4Switch third fourth init nonalign absexp
syn keyword xm4Switch perm fpsign ie imask ipend
syn keyword xm4Switch ipendt imaskt pi pv scarry
syn keyword xm4Switch sovfl slimit spusf vpusf prs
syn keyword xm4Switch iopage flpflags flprnd vflpflags vflprnd
syn keyword xm4Switch flpmask vflpmask vflp2intc flp2intc ds1
syn keyword xm4Switch ds2 ds4 sl1 sl2 sl3
syn keyword xm4Switch sl4 t nt on off
syn keyword xm4Switch h v t0 t1 t2
syn keyword xm4Switch t3 zero oror orand orxor
syn keyword xm4Switch andor andand xorand xorxor sel
syn keyword xm4Switch freerun lightsleep standby deepsleep shutdown
syn keyword xm4Switch dynamic debugon debugoff psl auxreg0
syn keyword xm4Switch auxreg1 auxreg2 auxreg3 auxreg4 auxreg5
syn keyword xm4Switch vprh offset accumulate decrement subtract
syn keyword xm4Switch highpart step maxz frst lst
syn keyword xm4Switch dstpart final tkn

syn region xm4Braces   start="{" end="}" transparent contains=xm4Switch,xm4Opcode,asmComment,xm4Unit
syn region xm4Address  start="(" end=")" transparent nextgroup=xm4Type,xm4Number

syn match asmComment ";.*$"
syn match xm4Type "\.u\?[csi]\d\{0,2\}"
syn match xm4Register "\(r\|modu\|v\|vpr\)\d\d\?" nextgroup=xm4Type
syn match xm4Predicate "[?&]\?pr\([0-9]\|1[0-5]\)"
syn match xm4Number "#[-+]\?\d\+"
syn match xm4HexNumber "#0[xX][0-9A-Fa-f]\+"

" Units
syn match xm4Unit "\(SC[0-3]\|LS[01]\|PCU\)\."

hi def link asmComment Comment
hi def link xm4Opcode Statement
hi def link x2Opcode Statement
hi def link xm4Switch Constant
hi def link xm4Number Number
hi def link xm4HexNumber Number

