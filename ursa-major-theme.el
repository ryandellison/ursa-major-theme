;;
;; ursa-major-theme.el
;;
;; DESCRIPTION
;; -----------
;; A light-mode Emacs theme consisting of primarily purple, blue
;; and green colors. Written to be well-documented and easily
;; modifiable.
;;
;;
;;
;; LICENSE
;; -------
;; Copyright (C) 2024 Ryan Ellison
;;
;; This program is free software: you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation, either version 3 of
;; the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
;; See the GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see
;; <https://www.gnu.org/licenses/>. 
;;


;; Define custom theme
(deftheme ursa-major
  "A light theme consisting of purple, blue and green colors."
  :kind 'color-scheme
  :background-mode 'light)


;; Define custom colors and then change theme faces
(let ((display `((class color)))

      (fg             "#000000")
      (bg             "#ffffff")
      (gray           "#929292")

      ;; Purple
      (purple1        "#8e1cad")      
      (purple2        "#5e0b75")
      (purple3        "#461f6e")

      ;; Blue
      (blue1          "#6a63c9")
      (blue2          "#13829e")
      (blue3          "#1d628c")

      ;; Green
      (green1         "#139e74")
      (green2         "#169145")
      (green3         "#3c7350")

      
      )

  (custom-theme-set-faces
   'ursa-major

   ;;
   ;; The following args are of form:
   ;; (FACE SPEC [NOW [COMMENT]])
   ;;
   ;; where SPEC:          ((DISPLAY . ATTS)...)
   ;;


   ;;;; ======Standard Faces======
   `(cursor                              ((,display (:background ,purple1))))
   `(mode-line                           ((,display (:foreground ,bg :background ,purple1))))
   
   
   ;;;; ======Org Mode======

   ;; Org Headers
   `(org-level-1                         ((,display (:foreground ,purple1))))
   `(org-level-2                         ((,display (:foreground ,blue1))))
   `(org-level-3                         ((,display (:foreground ,green1))))
   `(org-level-4                         ((,display (:foreground ,purple2))))
   `(org-level-5                         ((,display (:foreground ,blue2))))
   `(org-level-6                         ((,display (:foreground ,green2))))
   `(org-level-7                         ((,display (:foreground ,purple3))))
   `(org-level-8                         ((,display (:foreground ,blue3))))

   
   
   ;;;; ======Font Lock (syntax highlighting)======
   `(font-lock-keyword-face              ((,display (:foreground ,blue2))))
   `(font-lock-comment-face              ((,display (:foreground ,gray))))
   `(font-lock-type-face                 ((,display (:foreground ,green1)))) ;; (highlight type and class names)
   `(font-lock-function-call-face        ((,display (:foreground ,purple1))))
   `(font-lock-function-name-face        ((,display (:foreground ,blue3))))
   `(font-lock-variable-name-face        ((,display (:foreground ,blue1))))
   `(font-lock-constant-face             ((,display (:foreground ,green2))))
   `(font-lock-string-face               ((,display (:foreground ,purple2))))


   ;;;; ======Misc======
   `(c-annotation-face                   ((,display (:foreground ,green3))))
     
   ))

			

;; Declare that theme has been fully specified
(provide-theme 'ursa-major)
