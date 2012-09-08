(add-to-list 'load-path "~/.emacs.d/")
					;(load-file ~/.emacs.d/site-lisp)

;;layout
(setq default-frame-alist
      '((height . 24) (width . 80) (menu-bar-lines . 0) (tool-bar-lines . 0)))
(setq make-backup-files nil)
(setq x-select-enable-clipboard t) 
(fset 'yes-or-no-p 'y-or-n-p)
(setq inhibit-startup-message t)
(show-paren-mode t)
(display-time-mode t)
(setq column-number-mode t)
(setq size-indication-mode t)
;;(menu-bar-mode nil)
(tool-bar-mode nil)
(scroll-bar-mode nil)

;;key binding
(global-set-key (kbd "C-'") 'execute-extended-command)
(global-set-key (kbd "C-;") ctl-x-map)
(global-set-key (kbd "C-a") 'kill-region)
(global-set-key (kbd "C-w") 'move-beginning-of-line)
(global-set-key (kbd "C-f") 'forward-word)
(global-set-key (kbd "C-b") 'backward-word)
(global-set-key (kbd "M-f") 'forward-char)
(global-set-key (kbd "M-b") 'backward-char)

;;kernel coding style
(setq tab-width 8)
(setq indent-tabs-mode t)
(setq c-basic-offset 8)

;;fonts
(set-default-font "Monospace-13")
;;(set-default-font "Liberation Mono-16")
;;(set-default-font "Inconsolata-16")
;;(set-default-font "Courier New-16")

;;my kbd macros
(fset 'codeforces-headers"\
/* lok41 */
#include <stdio.h>
#include <string.h>
#include <algorithm>
using namespace std;
#define rep(i,n) for(int(i)=0;(i)<(int)(n);(i)++)
#define istr(i,s) for(int(i)=0;s[(i)];(i)++)
#define rrep(i,n) for(int(i)=(n)-1;(i)>=0;(i)--)
typedef long long ll;
")

(fset 'simple-headers "\
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
using namespace std;
"
)

(fset 'usaco-headers "\
/*
ID: 0.lok411
PROB: 
LANG: C++
*/
"
)

(fset 'acmicpc-headers "\
#include <cassert>
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <cctype>
#include <climits>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>
#include <map>
#include <set>
#include <queue>
#include <deque>
#include <stack>
#include <list>
#include <bitset>
#include <functional>
#include <utility>
#include <numeric>
#include <algorithm>

using namespace std;

typedef long long ll;
typedef unsigned char u8;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef pair < int, int > pii;
typedef pair < int, char > pic;
typedef pair < char, char > pcc;
typedef pair < int, string > pis;
typedef pair < string, int > psi;

#define abs(x) ((x) > 0 ? (x) : (-(x)))
#define REP(i,n) for (int (i) = 0; (i) < (int)(n); (i)++)
#define RREP(i,s,t) for (int (i) = (int)(s); (i) < (int)(t); (i)++)
#define MP(x,y) make_pair((x), (y))
#define POW2(x) ((x)*(x))
#define GCD(a,b) \
int gcd(int (a), int (b)) \
{ return ((a) % (b) ? gcd((b), (a) % (b)) : (b)); }
#define LGCD(a,b) \
ll lgcd(ll (a), ll (b)) \
{ return ((a) % (b) ? gcd((b), (a) % (b)) : (b)); }
#define LCM(a,b) \
int lcm(int a, int b) \
{ return (a) / gcd((a), (b)) * b; }
#define LLCM(a,b) \
ll llcm(ll a, ll b) \
{ return (a) / lgcd((a), (b)) * b; }

GCD(a,b)
LGCD(a,b)
LCM(a,b)
LLCM(a,b)


//const int MAX=(int)

int main()
{
	return 0;
}
")

(fset 'simple-all "\
#ifndef __ALL__H
#define __ALL__H
#include <unistd.h>
#include <ncurses.h>
#include <stdio.h>
#include <fcntl.h>
#include <dirent.h>
#include <signal.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <ctype.h>
#include <limits.h>
#include <setjmp.h>
#include <signal.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <errno.h>
#include <math.h>
#include <pthread.h>
#include <semaphore.h>
#include <sys/socket.h>
#include <netdb.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#endif"
      )

(fset 'latex-cjk-header "\
\\documentclass[a4paper,12pt]{article}
\\usepackage{CJK,indentfirst}
\\begin{document}
\\begin{CJK}{UTF8}{gbsn}

\\end{CJK}
\\end{document}
")


;;cedet
;;(load-file "~/.emacs.d/cedet/common/cedet.el")

;;(global-ede-mode t);Enable the Project management system

;;(semantic-load-enable-minimum-features)
;;(semantic-load-enable-code-helpers)
;;(semantic-load-enable-guady-code-helpers)
;;(semantic-load-enable-excessive-code-helpers)
;;(semantic-load-enable-semantic-debugging-helpers)
;;(require 'semantic-ia)
;;(require 'semantic-gcc)
;;(require 'semantic-c)
;;(require 'semantic-clang)
;;(defun my-cedet-hook ()
;;(local-set-key [(control return)] 'semantic-ia-complete-symbol)
;;(local-set-key "\C-c?" 'semantic-ia-complete-symbol-menu)
;;(local-set-key "\C-c>" 'semantic-complete-analyze-inline)
;;(local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle))
;;(add-hook 'c-mode-common-hook 'my-cedet-hook)
;;(semantic-add-system-include "/usr/include" 'c-mode)
;;(semantic-add-system-include "/usr/include" 'c++-mode)
;;(semantic-add-system-include "/usr/include/boost" 'c++-mode)


;;auto-complete
(add-to-list 'load-path "~/.emacs.d/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/ac-dict")
(ac-config-default)

;;(require 'auto-complete-clang)

;;(setq clang-completion-suppress-error 't)

;;(defun my-c-mode-common-hook()
;;  (setq ac-auto-start t)
;;  (setq ac-expand-on-auto-complete t)
;;  (setq ac-quick-help-delay 0.5)
  ;;(define-key c-mode-base-map [(control return)] 'ac-complete-clang)
;;)

;;(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

;;yasnippet
;;(require 'yasnippet-bundle)

;;haskell mode
(load "~/.emacs.d/haskell-mode/haskell-site-file")
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

;;color-theme
(add-to-list 'load-path "~/.emacs.d/color-theme")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-snowish)))


;;org-mode
;;(setq org-hide-leading-stars t)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done 'time)

;;ibus-el
(add-to-list 'load-path "~/.emacs.d/ibus-el")
(require 'ibus)
(add-hook 'after-init-hook 'ibus-mode-on)


;;html-helper-mode
;;(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
;;(setq auto-mode-alist (cons '("\\.html$" . html-helper-mode) auto-mode-alist))
;;(setq auto-mode-alist (cons '("\\.asp$" . html-helper-mode) auto-mode-alist))
;;(setq auto-mode-alist (cons '("\\.phtml$" . html-helper-mode) auto-mode-alist))