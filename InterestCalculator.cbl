       IDENTIFICATION DIVISION.
       PROGRAM-ID. CompoundInterestCalculator.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-PRINCIPAL         PIC 9(7)V99 VALUE 0.
       01  WS-INTEREST-RATE     PIC 99(3)V9999 VALUE 0.
       01  WS-YEARS             PIC 9(3)V9 VALUE 0.
       01  WS-N                 PIC 99 VALUE 11.
       01  WS-ACCRUED-AMOUNT    PIC 9(8)V99 VALUE 0.
       01  WS-NEW-AMOUNT        PIC 9(7)V99 VALUE 0.
       01  WS-CONTINUE          PIC X VALUE 'Y'.
       01  WS-REMAINING-YEARS   PIC 9(3)V9 VALUE 0.
       01  THE-TOTAL            PIC 9(8)V99 VALUE 0.
       01  WS-ACCRUED-FORMATTED PIC Z(8).99.

       PROCEDURE DIVISION.

       MAIN-PROCEDURE.
           DISPLAY "Compound Interest Calculator"
           DISPLAY "=============================="

               DISPLAY "Enter Principal Amount: ".
               ACCEPT WS-PRINCIPAL.

               DISPLAY "Enter Annual Interest Rate (%): ".
               ACCEPT WS-INTEREST-RATE.

               DISPLAY "Enter Number of Years: ".
               ACCEPT WS-YEARS.

               COMPUTE WS-ACCRUED-AMOUNT =
                   WS-PRINCIPAL * (1 + (WS-INTEREST-RATE / 100) / WS-N)
                   ** (WS-N * WS-YEARS).

               MOVE WS-ACCRUED-AMOUNT TO WS-ACCRUED-FORMATTED.
               DISPLAY "Accrued Amount = ", WS-ACCRUED-FORMATTED.

           STOP RUN.
