#!/bin/bash

function head-letter-vim
{
  vim /usr/share/X11/locale/en_US.UTF-8/Compose
}

function germanletter
{
  #vim /usr/share/X11/locale/en_US.UTF-8/Compose
  echo "compose - za pomoca tweak ustawiony prawy alt a nastepnie     zawartosc"
  echo "unicode ctrl + shift + u po czym wpisuemy cyfry po U"
  cat << 'EOF'
Unicode|Char|Compose_"
U00e4     ä   "a'
U00eb     ë   "e'
U00f6     ö   "o'
U00fc     ü   "u'
U00df     ß   ss'
EOF
}

function czechletter
{
  #vim /usr/share/X11/locale/en_US.UTF-8/Compose
   echo "compose - za pomoca tweak ustawiony prawy alt a nastepni    e zawartosc"
   echo "unicode ctrl + shift + u po czym wpisuemy cyfry po U"
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
  echo "compose - za pomoca tweak ustawiony prawy alt a nastepnie     zawartosc"
  echo "unicode ctrl + shift + u po czym wpisuemy cyfry po U"
  echo "Unicode|Char|Compose_"
  echo "U0105   ą    ;a"
  echo "U0107   ć    'c"
  echo "U0119   ę    ;e"
  echo "U0144   ń    'n"
  echo "U015b   ś    's"
  echo "U017a   ź    'z"
  echo "U017c   ż    >z"
  echo "U142    ł    /l" 
  echo "U00f3   ó    'o"
}

function unicode
{
  firefox "https://www.compart.com/en/unicode/U+0070"
} 

function russianletter
{
  echo "compose - za pomoca tweak ustawiony prawy alt a nastepnie     zawartosc" 
  echo "unicode ctrl + shift + u po czym wpisuemy cyfry po U"
  cat << 'EOF'
Unicode|Char|Pron.|Compose_"
U430     a   a        ra    
U431     б   be       rbe   
U432     в   we       rwe   
U433     г   ge       rge   
U434     д   de       rde   
U435     e   je       rje   
U436     ж   że       rz.e  
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
  echo "compose - za pomoca tweak ustawiony prawy alt a nastepnie     zawartosc"
  echo "unicode ctrl + shift + u po czym wpisuemy cyfry po U"
cat << 'EOF'
Unicode|Char|Pron.|Compose_"
U10900  𐤀      a     aleph"
U10901  𐤁      b     beth"
U10902  𐤂      g     giml"
U10903  𐤃      d     dalet"
U10904  𐤄      h     he"
U10905  𐤅      w     waw"
U10906  𐤆      z     zayin"
U10907  𐤇      h.    het"
U10908  𐤈      t     tet"
U10909  𐤉      y     yod"
U1090A  𐤊      m     kap"
U1090B  𐤋      l     lamed"
U1090C  𐤌      m     mem"
U1090D  𐤍      n     nun"
U1090E  𐤎      s     samek"
U1090F  𐤏      o     ayin"
U10910  𐤐      p     pe"
U10911  𐤑      s     sade"
U10912  𐤒      q     qop"
U10913  𐤓      r     res"
U10914  𐤔      sz    sin"
U10915  𐤕      t.    taw"
U10916  𐤖      p1    jeden"
U10917  𐤗      p10   dziesieć"
U10918  𐤘      p20   dwadzieścia"
U10919  𐤙      p100  sto"
U1091A  𐤚      p2    dwa"
U1091B  𐤛      p3    trzy"
U1091F  𐤟      p.    separator"
EOF
}

#modyfikowanie prompt
function head-letter
{
   #PS1="\[\033[31m\]$(germanletter)\n\[\e[1m\]$PS1"
   #\[\033[31m\] - odpowiada za kolor napisow
   #\[\e[1m\] - odpowiada za wyboldowanie napisów - uwaga musi by    c przed odpowiedzialnym za kolor dla danego fragmentu tekstu
   if [ "$1" = "-ger" ]
     then
       PS1=$defaultPS1
       PS1="\[\e[1m\]\[\033[31m\]$(germanletter)\n$PS1"
   elif [ "$1" = "-cz" ]
     then
       PS1=$defaultPS1
       PS1="\[\e[1m\]\[\033[31m\]$(czechletter)\n$PS1"
   elif [ "$1" = "-pl" ]
     then
       PS1=$defaultPS1
       PS1="\[\e[1m\]\[\033[31m\]$(polishletter)\n$PS1"
   elif [ "$1" = "-phoe" ]
     then
       PS1=$defaultPS1
       PS1="\[\e[1m\]\[\033[31m\]$(phoenicianletter)\n$PS1"
   elif [ "$1" = "-rus" ]
     then
       PS1=$defaultPS1
       PS1="\[\e[1m\]\[\033[31m\]$(russianletter)\n$PS1"
   else
     PS1=$defaultPS1
     echo "nie podales jezyka -ger/-cz/-pl/-phoe/-ru przywrócono     domyslny header"
   fi
}


