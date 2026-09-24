;;; thinkscript-mode.el --- Major mode for Thinkscript

;;; Commentary:

;; Copyright 2026 The thinkscript-mode Authors.  All rights reserved.
;; Use of this source code is governed by a BSD-style
;; license that can be found in the LICENSE file.

;; Author: david@fatehks.com
;; Version: 0.0.1
;; Keywords: languages thinkscript
;; Package-Requires: ((emacs "26.1"))
;; URL: https://github.com/fatehks/thinkscript-mode
;;
;; This file is not part of GNU Emacs.

;; Installation:
;;
;; To install it as your major mode for Thinkscript editing:

;; (use-package thinkscript-mode
;;   :vc (:url "https://github.com/fatehks/thinkscript-mode" :rev :newest))

;;; Code:

(require 'generic-x)

(defconst thinkscript-mode-comment-list `("#"))
(defconst thinkscript-mode-keyword-list
  `(;; 1. Fundamentals
    "close" "open" "high" "low" "volume" "vwap" "open_interest" "imp_volatility" "Fundamental" "bid" "ask"

    ;; 2. Look and Feel
    "AddChartBubble" "AddCloud" "AddLabel" "AddOrder" "AddVerticalLine" "AssignBackgroundColor" "AssignNormGradientColor" "AssignPriceColor" "AssignValueColor" "Color" "CreateColor" "DefineColor" "DefineGlobalColor" "EnableApproximation" "GetColor" "GlobalColor" "Hide" "HideBubble" "HideTitle" "SetDefaultColor" "SetLineWeight" "SetPaintingStrategy" "SetStyle" "TakeValueColor"

    ;; 3. Technical Analysis
    "AccDist" "AccumDistBuyPr" "AccumDistPrVol" "AccumulationDistribution" "AccumulationSwingIndex" "AdaptiveEMA" "AdvanceDecline" "ADX" "ADXR" "Arun" "ArunOsc" "Average" "AvgTrueRange" "BollingerBands" "ChaikinMoneyFlow" "ChaikinOsc" "ChandeMomentumOsc" "CommodityChannelIndex" "DMI" "EaseOfMovement" "ExpAverage" "Highest" "HighestAll" "HullMovingAverage" "Ichimoku" "LinearRegTrendline" "Lowest" "LowestAll" "MACD" "MassIndex" "Momentum" "MoneyFlowIndex" "MovingAverage" "OnBalanceVolume" "ParabolicSAR" "PriceOsc" "RateOfChange" "RSI" "SMA" "StDev" "StochasticFast" "StochasticFull" "StochasticSlow" "TEMA" "TrueRange" "UltimateOscillator" "VolumeOsc" "WMA" "WilliamsPercentR"

    ;; 4. Mathematical and Trigonometric
    "AbsValue" "Acos" "Asin" "Atan" "Ceil" "Cos" "Cosh" "Exp" "Floor" "Log" "Max" "Min" "MinAll" "MaxAll" "Power" "Round" "Sign" "Sin" "Sinh" "Sqrt" "Tan" "Tanh"

    ;; 5. Statistical
    "Correlation" "Covariance" "LinearRegChannnel" "Variance" "StDevAll" "FisherTransform" "Inertia" "Beta"

    ;; 6. Date and Time
    "CountTradingDays" "DaysFromDate" "DaysTillDate" "GetDay" "GetDayOfMonth" "GetDayOfWeek" "GetLastDay" "GetLastMonth" "GetLastWeek" "GetLastYear" "GetMonth" "GetTime" "GetYear" "GetYYYYMMDD" "RegularTradingEnd" "RegularTradingStart" "SecondsFromTime" "SecondsTillTime"

    ;; 7. Option Related
    "Delta" "Gamma" "GetATMOption" "GetDaysToExpiration" "GetNextExpirationOption" "GetNextITMOption" "GetNextOTMOption" "GetStrike" "ImpliedVolatility" "OptionPrice" "Rho" "SeriesVolatility" "Theta" "Vega"

    ;; 8. Corporate Actions
    "GetActualEarnings" "GetDividend" "HasEarnings" "GetEstimatedEarnings"

    ;; 9. Portfolio
    "GetAveragePrice" "GetQuantity" "GetOpenPL" "GetNetLiq" "EntryPrice" "GetTotalCash"

    ;; 10. Profiles
    "VolumeProfile" "TimeProfile"

    ;; Keywords
    "above" "ago" "and" "bar" "bars" "below" "between" "case" "crosses"
    "declare" "def" "default" "do" "else" "equal" "equals"
    "false" "fold" "from" "greater" "if" "input" "is" "less" "no" "not"
    "or" "plot" "profile" "rec" "reference" "script" "switch"
    "than" "then" "to" "true" "while" "with" "within" "yes")

  "Keywords in the Thinkscript language.")

(defconst thinkscript-mode-font-lock-list
  '(("=" . 'font-lock-operator)
    (";" . 'font-lock-builtin)))

(defconst thinkscript-mode-auto-mode-list
  '(".thinkscript\\'"
    "STUDY.ts\\'"))

(defconst thinkscript-mode-function-list `())

(define-generic-mode 'thinkscript-mode
  thinkscript-mode-comment-list
  thinkscript-mode-keyword-list
  thinkscript-mode-font-lock-list
  thinkscript-mode-auto-mode-list
  thinkscript-mode-function-list
  "Thinkscript major mode."
  )
