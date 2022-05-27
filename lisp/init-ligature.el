;;; init-ligature --- Summary
;;; Summary:
;;; Code:
(require 'ligature)
(ligature-set-ligatures
 'prog-mode
 `("|||>" "<|||" "<==>" "<!--" "####" "~~>" "***" "||=" "||>"
   ":::" "::=" "=:=" "===" "==>" "=!=" "=>>" "=<<" "=/=" "!=="
   "!!." ">=>" ">>=" ">>>" ">>-" ">->" "->>" "-->" "---" "-<<"
   "<~~" "<~>" "<*>" "<||" "<|>" "<$>" "<==" "<=>" "<=<" "<->"
   "<--" "<-<" "<<=" "<<-" "<<<" "<+>" "</>" "###" "#_(" "..<"
   "..." "+++" "/==" "///" "_|_" "www" "&&" "^=" "~~" "~@" "~="
   "~>" "~-" "**" "*>" "*/" "||" "|}" "|]" "|=" "|>" "|-" "{|"
   "[|" "]#" "::" ":=" ":>" ":<" "$>" "==" "=>" "!=" "!!" ">:"
   ">=" ">>" ">-" "-~" "-|" "->" "--" "-<" "<~" "<*" "<|" "<:"
   "<$" "<=" "<>" "<-" "<<" "<+" "</" "#{" "#[" "#:" "#=" "#!"
   "##" "#(" "#?" "#_" "%%" ".=" ".-" ".." ".?" "+>" "++" "?:"
   "?=" "?." "??" ";;" "/*" "/=" "/>" "//" "__" "~~" "(*" "*)"
   "\\\\" "://" ("=" ,(rx (+ "=")))))
(global-ligature-mode t)

(provide 'init-ligature)
;;; init-ligature.el ends here
