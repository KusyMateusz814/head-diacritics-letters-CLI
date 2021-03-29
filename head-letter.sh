#!/bin/bash

function head-letter-vim
{
  vim "/usr/share/X11/locale/en_US.UTF-8/Compose"
}

function wspolne_echo
{ 
  echo "compose - gdy włączony, klikamy ustawiony znak specjalny (prawd. prawy alt bądź flaga windows)"
  echo "a nastepnie którąś z poniższych wartości"
  echo "alternatywnie unicode ctrl + shift + u po czym wpisuemy cyfry po U"
}

function germanletter
{
  #vim /usr/share/X11/locale/en_US.UTF-8/Compose
  wspolne_echo
  cat << 'EOF'
Unicode|Char|Compose_"
U00e4     ä   "a'
U00eb     ë   "e'
U00f6     ö   "o'
U00fc     ü   "u'
U00df     ß   ss'
EOF
}

function frenchletter
{
  #vim /usr/share/X11/locale/en_US.UTF-8/Compose
  wspolne_echo 
  cat << 'EOF'
Unicode|Char|Compose_|name
U00E9     è   \`e      accent aigu
U00E0     á   a'      accent grave
U00E9     é   e'      accent grave
U00FA     ú   u'      accent grave
U00E2     â   a^      accent circumflex
U00EA     ê   e^      accent circumflex
U00EE     î   i^      accent circumflex
U00F4     ô   o^      accent circumflex
U00FB     û   u^      accent circumflex
U00e4     ä   "a      Tréma
U00eb     ë   "e      Tréma
U00f6     ö   "o      Tréma
U00fc     ü   "u      Tréma
U00E7     ç   c,      cédille
U0153     œ   oe      ligatura
U00E6     æ   ae      ligatura
EOF
}

function romanianletter
{
  #vim /usr/share/X11/locale/en_US.UTF-8/Compose
  wspolne_echo
  cat << 'EOF'
Unicode|Char|Compose_|name
U00E2     â   a^      a circumflex
U00EE     î   i^      i circumflex
U0103     ǎ   ca      a brave
U015F     ş   s,      s cédille
U0163     ţ   t,      t cédille
EOF
}

function czechletter
{
  #vim /usr/share/X11/locale/en_US.UTF-8/Compose
  wspolne_echo
  cat << 'EOF'
Unicode|Char|Compose_"
U00e1   á    'a"
U00e9   é    'e"
U011b   ě    ce"
U00f1   ñ    ~n"
U00f3   ó    'o"
U00fa   ú    'u"
U00fd   ý    'y"
U0148   ň    cn"
U0158   ř    cr"
U0160   š    cs"
U010d   č    cc"
U017e   ž    cz"
U016f   ů    ou"
EOF
}

function polishletter
{
  #vim /usr/share/X11/locale/en_US.UTF-8/Compose
  wspolne_echo
  cat << 'EOF'
Unicode|Char|Compose
U0105   ą    ;a
U0107   ć    'c
U0119   ę    ;e
U0144   ń    'n
U015b   ś    's
U017a   ź    'z
U017c   ż    >z
U142    ł    /l 
U00f3   ó    'o
EOF
}

function unicode
{
  firefox "https://www.compart.com/en/unicode/U+0070"
} 

function russianletter
{
  wspolne_echo
  cat << 'EOF'
Unicode|Char|Pron.|Compose_"
U430     a   a        ra    
U431     б   be       rbe   
U432     в   we       rwe   
U433     г   ge       rge   
U434     д   de       rde   
U435     e   je       rje   
U436     ж   że       rzx
U437     з   ze       rze   
U451     ё   jo       rjo   
U438     и   i        ri    
U439     й   j        rj    
U43A     к   ka       rka   
U43B     л   el       rel   
U43C     м   em       rem   
U43D     н   en       ren   
U43E     о   o        ro    
U43F     п   pe       rpe   
U440     р   er       rer   
U441     с   es       res   
U442     т   te       rte   
U443     у   u        ru    
U444     ф   ef       ref   
U445     х   cha      rcha  
U446     ц   ce       rce   
U447     ч   cze      rcze  
U448     ш   sza      rsza  
U449     щ   szcza    rszcza
U44A     ъ   tward    rtw   
U44B     ы   y        ry    
U44C     ь   miekk    rmi   
U44D     э   e        re    
U44E     ю   ju       rju   
U44F     я   ja       rja   
EOF
}

function phoenicianletter
{
  #vim /usr/share/X11/locale/en_US.UTF-8/Compose
  wspolne echo
cat << 'EOF'
Unicode|Char|Pron.|Compose_"
U10900  𐤀      a     aleph
U10901  𐤁      b     beth
U10902  𐤂      g     giml
U10903  𐤃      d     dalet
U10904  𐤄      h     he
U10905  𐤅      w     waw
U10906  𐤆      z     zayin
U10907  𐤇      h.    het
U10908  𐤈      t     tet
U10909  𐤉      y     yod
U1090A  𐤊      m     kap
U1090B  𐤋      l     lamed
U1090C  𐤌      m     mem
U1090D  𐤍      n     nun
U1090E  𐤎      s     samek
U1090F  𐤏      o     ayin
U10910  𐤐      p     pe
U10911  𐤑      s     sade
U10912  𐤒      q     qop
U10913  𐤓      r     res
U10914  𐤔      sz    sin
U10915  𐤕      t.    taw
U10916  𐤖      p1    jeden
U10917  𐤗      p10   dziesieć
U10918  𐤘      p20   dwadzieścia
U10919  𐤙      p100  sto
U1091A  𐤚      p2    dwa
U1091B  𐤛      p3    trzy
U1091F  𐤟      p.    separator
EOF
}

function ukrainianletter
{
  wspolne_echo
  cat << 'EOF'
Unicode|Char|Pron.|Compose_"
U430     a   a        ua    
U431     б   be       ube   
U432     в   we       uwe   
U433     г   he       uhe   
U491     ґ   ge       uge  
U434     д   de       ude   
U435     e   e        ue   
U436     ж   że       uzx
U437     з   ze       uze   
U438     и   y        uy    
U439     й   j        uj
U456     і   i        ui         
U457     ї   ji       uji 
U43A     к   ka       uka   
U43B     л   el       uel     
U43C     м   em       uem   
U43D     н   en       uen   
U43E     о   o        uo    
U43F     п   pe       upe   
U440     р   er       uer   
U441     с   es       ues   
U442     т   te       ute   
U443     у   u        uu    
U444     ф   ef       uef   
U445     х   cha      ucha  
U446     ц   ce       uce   
U447     ч   cze      ucze  
U448     ш   sza      usza  
U449     щ   szcza    uszcza
U44C     ь   miekk    umi   
U454     є   je       uje   
U44E     ю   ju       uju   
U44F     я   ja       uja   
EOF
}

function greekletter
{
  #vim /usr/share/X11/locale/en_US.UTF-8/Compose
  wspolne_echo
  echo "duże litery piszemy za pomocą G zamiast g na początku"
  cat << 'EOF'
Unicode|Char|Pron    |Compose
U03b1   α    alfa     ga
U03b2   β    beta     gb
U03b4   δ    delta    gd
U03b5   ε    epsilon  ge
U03c6   φ    fi       gf
U03b3   γ    gamma    gg
U03b7   η    eta      gh
U03b9   ι    iota     gi
U03b8   θ    teta     gj
U03ba   κ    kappa    gk
U03bb   λ    lambda   gl
U03bc   μ    mi       gm
U03bd   ν    ni       gn
U03bf   ο    omikron  go
U03c0   π    pi       gp
U03c1   ρ    ro       gr
U03c3   σ    sigma    gs
U03c4   τ    tau      gt
U03c5   υ    upsilon  gu
U03c9   ω    omega    gw
U03be   ξ    xi       gx
U03c8   ψ    psi      gy
U03b6   ζ    zeta     gz
EOF
}

alias headletter="head-letter"
#modyfikowanie prompt
function head-letter
{
  #PS1="\[\033[31m\]$(germanletter)\n\[\e[1m\]$PS1"
  #\[\033[31m\] - odpowiada za kolor napisow
  #\[\e[1m\] - odpowiada za wyboldowanie napisów - uwaga musi by    c przed odpowiedzialnym za kolor dla danego fragmentu tekstu
  if  [[ -z "$2" ]]; then
    if  [[ "$1" == "-ger" ]]; then
        PS1="$defaultPS1"
        PS1="\[\e[1m\]\[\033[31m\]$(germanletter)\n$PS1"
    elif [[ "$1" == "-fra" || "$1" == "-fr" ]]; then
        PS1="$defaultPS1"
        PS1="\[\e[1m\][\033[31m\]$(frenchletter)\n$PS1"
    elif [[ "$1" == "-cz" ]]; then
        PS1="$defaultPS1"
        PS1="\[\e[1m\]\[\033[31m\]$(czechletter)\n$PS1"
    elif [[ "$1" == "-pl" ]]; then
        PS1="$defaultPS1"
        PS1="\[\e[1m\]\[\033[31m\]$(polishletter)\n$PS1"
    elif [[ "$1" = "-phoe" ]]; then
        PS1="$defaultPS1"
        PS1="\[\e[1m\]\[\033[31m\]$(phoenicianletter)\n$PS1"
    elif [[ "$1" == "-rus" ]]; then
        PS1="$defaultPS1"
        PS1="\[\e[1m\]\[\033[31m\]$(russianletter)\n$PS1"
    elif [[ "$1" == "-ukr" ]]; then
        PS1="$defaultPS1"
        PS1="\[\e[1m\]\[\033[31m\]$(ukrainianletter)\n$PS1"
    elif [[ "$1" == "-rom" ]]; then
        PS1="$defaultPS1"
        PS1="\[\e[1m\]\[\033[31m\]$(romanianletter)\n$PS1"
    elif [[ "$1" == "-gre" ]]; then
        PS1="$defaultPS1"
        PS1="\[\e[1m\]\[\033[31m\]$(greekletter)\n$PS1"
    else
        PS1="$defaultPS1"
        echo "nie podales jezyka -ger/-fra/-cz/-pl/-phoe/-rus/-ukr/-rom/-gre przywrócono domyslny header"
        echo "jeśli chcesz by podpowiedzieć byla wyswietlana w zewnetrznym okienku uzyj komendy\n head-letter-p -cz"
    fi
  fi
}

alias headletter-p="head-letter-p"
function head-letter-p
{
  else_flag="false"
  if  [[ "$1" == "-ger" ]]; then
      germanletter > headletterfile.txt
  elif  [[ "$1" == "-fra" || "$1" == "-fr" ]]; then
      frenchletter > headletterfile.txt
  elif [[ "$1" == "-cz" ]]; then
      czechletter > headletterfile.txt
  elif [[ "$1" == "-pl" ]]; then
      polishletter > headletterfile.txt
  elif [[ "$1" = "-phoe" ]]; then
      phoenicianletter > headletterfile.txt
  elif [[ "$1" == "-rus" ]]; then
      russianletter > headletterfile.txt
  elif [[ "$1" == "-ukr" ]]; then
      ukrainianletter > headletterfile.txt
  elif [[ "$1" == "-rom" ]]; then
      romanianletter > headletterfile.txt
  elif [[ "$1" == "-gre" ]]; then
      greekletter > headletterfile.txt
  else
    echo "nie podales jezyka -ger/-fra/-cz/-pl/-phoe/-rus/-ukr/-rom/-gre przywrócono domyslny header"
    else_flag="true"
  fi
  if [[ "$else_flag" == "false" ]];then
    pwd
    ./popup-head-letter
    rm headletterfile.txt
  fi
}


#vim /usr/share/X11/locale/en_US.UTF-8/Compose
function unicode-default 
{
  vim "/usr/share/X11/locale/en_US.UTF-8/Compose"
}

#function tweak_create_new_shortcuts
#{
#  if [[ "$1" == "-h" || "$1" == "--help" || "$1" == "h" || "$1" == "help"  ]]; then 
#    cat << 'EOF'
##example execute tweak_create_new_shortcuts sin 𐤔 U10914 s z
##OUTPUT TO FILE .XCompose
###sin 𐤔 U10914 s z 
###<Multi_key> <p> <s> <z> : "𐤔" #U10914
###<Multi_key> <s> <i> <n>  : "𐤔" #U10914
#EOF
#  else
#    ~/Projects/tweaks_create_new_shortcuts/./tweak_add_shortcut.sh "$1" "$2" "$3" "$4" "$5">> ~/.XCompose
#    cpXCompose
#    cat ~/.XCompose
#  fi
#} 

function unicode-firefox
{
  firefox "https://www.compart.com/en/unicode/U+00E4" #dobry slownik do unicode
}

function cpXCompose
{
  this_dir="$(pwd)"
  cp "/home/matball/.XCompose" "$this_dir""/.XComposeBackup"
}
