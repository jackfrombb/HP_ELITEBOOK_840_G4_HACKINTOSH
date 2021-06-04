// SSDT Battery
DefinitionBlock ("", "SSDT", 2, "ACDT", "BATT", 0)
{
    External (_SB.PCI0.LPCB.EC, DeviceObj)
    External (_SB.PCI0.LPCB.EC.BTDR, MethodObj)
    External (_SB.PCI0.LPCB.EC.BSTA, MethodObj)
    External (_SB.PCI0.LPCB.EC.GBSS, MethodObj)
    External (_SB.PCI0.LPCB.EC.GACS, MethodObj)
    External (_SB.PCI0.LPCB.EC.GBMF, MethodObj)
    External (_SB.PCI0.LPCB.EC.GCTL, MethodObj)
    External (_SB.PCI0.LPCB.EC.GDNM, MethodObj)
    External (_SB.PCI0.LPCB.EC.GDCH, MethodObj)
    External (_SB.PCI0.LPCB.EC.BTMX, MutexObj)
    External (_SB.PCI0.LPCB.EC.ECMX, MutexObj)
    External (_SB.PCI0.LPCB.EC.NGBF, IntObj)
    External (_SB.PCI0.LPCB.EC.NGBT, IntObj)
    External (_SB.PCI0.LPCB.EC.NLB1, IntObj)
    External (_SB.PCI0.LPCB.EC.NLB2, IntObj)
    External (_SB.PCI0.LPCB.EC.NLO2, IntObj)
    External (_SB.PCI0.LPCB.EC.ECRG, IntObj)
    External (_SB.PCI0.LPCB.EC.NDCB, IntObj)
    External (_SB.PCI0.LPCB.EC.BSEL, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.BST, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.LB1, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.LB2, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.BATP, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.BRCC, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.BRCV, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.BATN, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.INAC, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.INCH, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.IDIS, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.PSSB, FieldUnitObj)
    External (_SB.NDBS, PkgObj)
    External (_SB.NBST, PkgObj)
    
    Scope (_SB.PCI0.LPCB.EC)
    {
        OperationRegion (ECRX, EmbeddedControl, Zero, 0xFF)
        Field (ECRX, ByteAcc, NoLock, Preserve)
        {
            /* PMCD */,   32, 
            /* S0FL */,   8, 
            /* SXF0 */,   8, 
            /* SXF1 */,   8, 
            /* CPWR */,   16, 
            /* CVLT */,   16, 
            /* CCUR */,   16, 
            /* DIDX */,   8, 
            /* CIDX */,   8, 
            /* PMCC */,   8, 
            /* PMEP */,   8, 
            Offset (0x22), 
            /* CRZN */,   8, 
            /* THTA */,   8, 
            /* HYST */,   8, 
            /* CRIT */,   8, 
            /* TEMP */,   8, 
            /* TENA */,   8, 
            Offset (0x29), 
            /* TOAD */,   8, 
            /* PHTP */,   8, 
            /* THEM */,   8, 
            /* TMPO */,   8, 
            /* AFAN */,   8, 
            /* FRDC */,   8, 
            /* FTGC */,   8, 
            /* PLTP */,   8, 
            Offset (0x32), 
            /* DTMP */,   8, 
            Offset (0x35), 
            /* FR2C */,   8, 
            /* FT2C */,   8, 
            /* BCVD */,   8, 
            Offset (0x40), 
            /* ABDI */,   8, 
            /* ABAD */,   8, 
            /* ABIX */,   8, 
            /* ABDA */,   8, 
            /* ABST */,   8, 
            /* PORI */,   8, 
            Offset (0x4C), 
            /* PSSB */,   8, 
            Offset (0x5E), 
            /* PPST */,   8, 
            /* PPVP */,   8, 
            /* UCHC */,   8, 
            /* UCHS */,   8, 
            /* UCDB */,   8, 
            /* UCCS */,   8, 
            /* UCPN */,   8, 
            Offset (0x70), 
            /* WKTR */,   16, 
            /* S5TR */,   16, 
            /* AS4F */,   8, 
            Offset (0x78), 
                      ,   7, 
            /* BCML */,   1, 
            /* BRIM */,   1, 
                      ,   1, 
            /* LPMS */,   1, 
                      ,   1, 
            /* EXTP */,   1, 
            /* BKDT */,   1, 
            /* BOTP */,   1, 
            Offset (0x80), 
            Offset (0x81), 
                      ,   4, 
            /* SLPT */,   4, 
            /* FNSW */,   1, 
            /* SFNC */,   1, 
            /* ACPI */,   1, 
                      ,   1, 
                      ,   1, 
                      ,   1, 
                      ,   1, 
            /* DETF */,   1, 
            /* LIDS */,   1, 
            /* TBLT */,   1, 
                      ,   1, 
                      ,   1, 
                      ,   1, 
            /* COMM */,   1, 
            /* PME */ ,   1, 
            /* SBVD */,   1, 
            /* ADP */ ,   1, 
            /* ADID */,   2, 
            /* LCTV */,   1, 
            /* BATP */,   4, 
            /* BPU */ ,   1, 
            Offset (0x86), 
            /* BSEL */,   4, 
            Offset (0x87), 
            /* LB1 */ ,   8, 
            /* LB2 */ ,   8, 
            DC00, 8, DC01, 8, /* BDC, 16, */
            Offset (0x8D), 
            FC00, 8, FC01, 8, /* BFC, 16, */
            TE00, 8, TE01, 8, /* BRTE, 16, */
            /* BTC */ ,   1, 
            Offset (0x92), 
            ME00, 8, ME01, 8, /* BME, 16, */
            /* BDN */ ,   8, 
            DV00, 8, DV01, 8, /* BDV, 16, */
            CV10, 8, CV11, 8, /* BCV1, 16, */ 
            /* BST */ ,   4, 
            Offset (0x9B), 
            AT00, 8, AT01, 8, /* BATE, 16, */
            BR00, 8, BR01, 8, /* BPR, 16, */
            CR00, 8, CR01, 8, /* BCR, 16, */
            RC00, 8, RC01, 8, /* BRC, 16, */
            CC00, 8, CC01, 8, /* BCC, 16, */ 
            PV00, 8, PV01, 8, /* BPV, 16, */ 
            CV20, 8, CV21, 8, /* BCV2, 16, */ 
            CV30, 8, CV31, 8, /* BCV3, 16, */ 
            CV40, 8, CV41, 8, /* BCV4, 16, */ 
            /* BCW */ ,   16, 
            TF00, 8, TF01, 8, /* BATF, 16, */
            /* BCL */ ,   16, 
            AX00, 8, AX01, 8, /* MAXC, 16, */
            /* BCG1 */,   8, 
            /* BT1I */,   1, 
            /* BT2I */,   1, 
                      ,   2, 
            /* BATN */,   4, 
            TS00, 8, TS01, 8, /* BSTS, 16, */
            /* BCG2 */,   8, 
            Offset (0xBD), 
            /* BMO */ ,   8, 
            Offset (0xBF), 
            /* BRCV */,   8, 
            Offset (0xC1), 
            /* BIF */ ,   8, 
            /* BRCC */,   8, 
            Offset (0xC4), 
            /* CPSN */,   8, 
            /* SCPS */,   8, 
            Offset (0xC9), 
            SN00, 8, SN01, 8, /* BSN, 16, */
            DT00, 8, DT01, 8, /* BDAT, 16, */ 
            /* BMF */ ,   8, 
            Offset (0xCF), 
            /* CTLB */,   8, 
            Offset (0xD1), 
            /* BTY */ ,   8, 
            Offset (0xD5), 
            /* MFAC */,   8, 
            /* CFAN */,   8, 
            /* PFAN */,   8, 
            /* OCPS */,   8, 
            /* OCPR */,   8, 
            /* OCPE */,   8, 
            /* TMP1 */,   8, 
            /* TMP2 */,   8, 
            /* NABT */,   4, 
            /* BCM */ ,   4, 
            /* CCBQ */,   16, 
            BT00, 8, BT01, 8, /* CBT, 16, */
            Offset (0xE3), 
            /* OST */ ,   4, 
            Offset (0xE4), 
            Offset (0xE5), 
            /* TPTE */,   1, 
            /* TBBN */,   1, 
                      ,   3, 
            /* TP */  ,   1, 
            Offset (0xE6), 
            /* SHK */ ,   8, 
            /* AUDS */,   1, 
            /* SPKR */,   1, 
            Offset (0xE8), 
            /* HSEN */,   4, 
            /* HSST */,   4, 
            Offset (0xEA), 
                      ,   2, 
            /* WWP */ ,   1, 
            /* WLP */ ,   1, 
                      ,   1, 
            /* WWS3 */,   1, 
            /* WLS3 */,   1, 
            Offset (0xEC), 
                      ,   4, 
            /* PTEN */,   1, 
            /* ERWB */,   1, 
                      ,   1, 
            Offset (0xED), 
            Offset (0xEF), 
            /* INCH */,   2, 
            /* IDIS */,   2, 
            /* INAC */,   1, 
            Offset (0xF6), 
            /* AAPI */,   8, 
            /* ACSE */,   8, 
            /* ACIX */,   8, 
            CP00, 8, CP01, 8, /* ACPR, 16, */
            Offset (0xFD), 
            Offset (0xFF)
        }
    
        Method (BTIF, 1, Serialized)
        {
            ShiftLeft (One, Arg0, Local7)
            BTDR (One)
            If (LEqual (BSTA (Local7), 0x0F))
            {
                Return (0xFF)
            }

            Acquire (BTMX, 0xFFFF)
            Store (NGBF, Local0)
            Release (BTMX)
            If (LEqual (And (Local0, Local7), Zero))
            {
                Return (Zero)
            }

            Store (NDBS, Index (NBST, Arg0))
            Acquire (BTMX, 0xFFFF)
            Or (NGBT, Local7, NGBT)
            Release (BTMX)
            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                Store (Arg0, BSEL)
                Store (B1B2 (FC00, FC01), Local0)
                Store (Local0, Index (DerefOf (Index (NBTI, Arg0)), One))
                Store (Local0, Index (DerefOf (Index (NBTI, Arg0)), 0x02))
                Store (B1B2 (DV00, DV01), Index (DerefOf (Index (NBTI, Arg0)), 0x04))
                Multiply (B1B2 (FC00, FC01), NLB1, Local0)
                Divide (Local0, 0x64, , Local4)
                Store (Local4, Index (DerefOf (Index (NBTI, Arg0)), 0x05))
                Multiply (B1B2 (FC00, FC01), NLO2, Local0)
                Divide (Local0, 0x64, , Local4)
                Store (Local4, Index (DerefOf (Index (NBTI, Arg0)), 0x06))
                Store (B1B2 (SN00, SN01), Local0)
                Store (B1B2 (DT00, DT01), Local1)
            }

            Release (ECMX)
            Store (GBSS (Local0, Local1), Local2)
            Store (Local2, Index (DerefOf (Index (NBTI, Arg0)), 0x0A))
            Acquire (BTMX, 0xFFFF)
            And (NGBF, Not (Local7), NGBF)
            Release (BTMX)
            Return (Zero)
        }

        Method (BTST, 2, Serialized)
        {
            ShiftLeft (One, Arg0, Local7)
            BTDR (One)
            If (LEqual (BSTA (Local7), 0x0F))
            {
                Store (Package (0x04)
                    {
                        Zero, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    }, Index (NBST, Arg0))
                Return (0xFF)
            }

            Acquire (BTMX, 0xFFFF)
            If (Arg1)
            {
                Store (0xFF, NGBT)
            }

            Store (NGBT, Local0)
            Release (BTMX)
            If (LEqual (And (Local0, Local7), Zero))
            {
                Return (Zero)
            }

            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                Store (Arg0, BSEL)
                Store (BST, Local0)
                Store (B1B2 (BR00, BR01), Local3)
                Store (B1B2 (RC00, RC01), Index (DerefOf (Index (NBST, Arg0)), 0x02))
                Store (B1B2 (PV00, PV01), Index (DerefOf (Index (NBST, Arg0)), 0x03))
            }

            Release (ECMX)
            If (LEqual (GACS (), One))
            {
                And (0xFFFFFFFFFFFFFFFE, Local0, Local0)
            }
            Else
            {
                And (0xFFFFFFFFFFFFFFFD, Local0, Local0)
            }

            If (And (Local0, One))
            {
                Acquire (BTMX, 0xFFFF)
                Store (Local7, NDCB)
                Release (BTMX)
            }

            Store (Local0, Index (DerefOf (Index (NBST, Arg0)), Zero))
            If (And (Local0, One))
            {
                If (LOr (LLess (Local3, 0x0190), LGreater (Local3, 0x1964)))
                {
                    Store (DerefOf (Index (DerefOf (Index (NBST, Arg0)), One)), Local5)
                    If (LOr (LLess (Local5, 0x0190), LGreater (Local5, 0x1964)))
                    {
                        Store (0x0D7A, Local3)
                    }
                    Else
                    {
                        Store (Local5, Local3)
                    }
                }

                Store (0xFFFFFFFF, Local3)
            }
            ElseIf (LEqual (And (Local0, 0x02), Zero))
            {
                Store (Zero, Local3)
            }

            Store (Local3, Index (DerefOf (Index (NBST, Arg0)), One))
            Acquire (BTMX, 0xFFFF)
            And (NGBT, Not (Local7), NGBT)
            Release (BTMX)
            Return (Zero)
        }

        Method (ITLB, 0, NotSerialized)
        {
            Multiply (B1B2 (FC00, FC01), NLB1, Local0)
            Divide (Local0, 0x64, , Local4)
            Divide (Add (Local4, 0x09), 0x0A, Local0, Local1)
            Multiply (B1B2 (FC00, FC01), NLB2, Local0)
            Divide (Local0, 0x64, , Local4)
            Divide (Add (Local4, 0x09), 0x0A, Local0, Local2)
            If (ECRG)
            {
                Store (Local1, LB1)
                Store (Local2, LB2)
            }
        }

        Method (GBTI, 1, NotSerialized)
        {
            Store ("Enter getbattinfo", Debug)
            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                If (And (BATP, ShiftLeft (One, Arg0)))
                {
                    Store (Arg0, BSEL)
                    Store (Package (0x02)
                        {
                            Zero, 
                            Buffer (0x6B){}
                        }, Local0)
                    Store (B1B2 (DC00, DC01), Index (DerefOf (Index (Local0, One)), Zero))
                    Store (ShiftRight (B1B2 (DC00, DC01), 0x08), Index (DerefOf (Index (Local0, One)), One))
                    Store (B1B2 (FC00, FC01), Index (DerefOf (Index (Local0, One)), 0x02))
                    Store (ShiftRight (B1B2 (FC00, FC01), 0x08), Index (DerefOf (Index (Local0, One)), 0x03))
                    Store (B1B2 (RC00, RC01), Index (DerefOf (Index (Local0, One)), 0x04))
                    Store (ShiftRight (B1B2 (RC00, RC01), 0x08), Index (DerefOf (Index (Local0, One)), 0x05))
                    Store (B1B2 (ME00, ME01), Index (DerefOf (Index (Local0, One)), 0x06))
                    Store (ShiftRight (B1B2 (ME00, ME01), 0x08), Index (DerefOf (Index (Local0, One)), 0x07))
                    Store (B1B2 (CC00, CC01), Index (DerefOf (Index (Local0, One)), 0x08))
                    Store (ShiftRight (B1B2 (CC00, CC01), 0x08), Index (DerefOf (Index (Local0, One)), 0x09))
                    Store (B1B2 (BT00, BT01), Local1)
                    Subtract (Local1, 0x0AAC, Local1)
                    Divide (Local1, 0x0A, Local2, Local3)
                    Store (Local3, Index (DerefOf (Index (Local0, One)), 0x0A))
                    Store (ShiftRight (Local3, 0x08), Index (DerefOf (Index (Local0, One)), 0x0B))
                    Store (B1B2 (PV00, PV01), Index (DerefOf (Index (Local0, One)), 0x0C))
                    Store (ShiftRight (B1B2 (PV00, PV01), 0x08), Index (DerefOf (Index (Local0, One)), 0x0D))
                    Store (B1B2 (BR00, BR01), Local1)
                    If (Local1)
                    {
                        If (And (B1B2 (TS00, TS01), 0x40))
                        {
                            Add (Not (Local1), One, Local1)
                            And (Local1, 0xFFFF, Local1)
                        }
                    }

                    Store (Local1, Index (DerefOf (Index (Local0, One)), 0x0E))
                    Store (ShiftRight (Local1, 0x08), Index (DerefOf (Index (Local0, One)), 0x0F))
                    Store (B1B2 (DV00, DV01), Index (DerefOf (Index (Local0, One)), 0x10))
                    Store (ShiftRight (B1B2 (DV00, DV01), 0x08), Index (DerefOf (Index (Local0, One)), 0x11))
                    Store (B1B2 (TS00, TS01), Index (DerefOf (Index (Local0, One)), 0x12))
                    Store (ShiftRight (B1B2 (TS00, TS01), 0x08), Index (DerefOf (Index (Local0, One)), 0x13))
                    Store (B1B2 (CV10, CV11), Index (DerefOf (Index (Local0, One)), 0x14))
                    Store (ShiftRight (B1B2 (CV10, CV11), 0x08), Index (DerefOf (Index (Local0, One)), 0x15))
                    Store (B1B2 (CV20, CV21), Index (DerefOf (Index (Local0, One)), 0x16))
                    Store (ShiftRight (B1B2 (CV20, CV21), 0x08), Index (DerefOf (Index (Local0, One)), 0x17))
                    Store (B1B2 (CV30, CV31), Index (DerefOf (Index (Local0, One)), 0x18))
                    Store (ShiftRight (B1B2 (CV30, CV31), 0x08), Index (DerefOf (Index (Local0, One)), 0x19))
                    Store (B1B2 (CV40, CV41), Index (DerefOf (Index (Local0, One)), 0x1A))
                    Store (ShiftRight (B1B2 (CV40, CV41), 0x08), Index (DerefOf (Index (Local0, One)), 0x1B))
                    CreateField (DerefOf (Index (Local0, One)), 0xE0, 0x80, BTSN)
                    Store (GBSS (B1B2 (SN00, SN01), B1B2 (DT00, DT01)), BTSN)
                    Store (GBMF (), Local1)
                    Store (SizeOf (Local1), Local2)
                    CreateField (DerefOf (Index (Local0, One)), 0x0160, Multiply (Local2, 0x08), BMAN)
                    Store (Local1, BMAN)
                    Add (Local2, 0x2C, Local2)
                    CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x80, CLBL)
                    Store (GCTL (Zero), CLBL)
                    Add (Local2, 0x11, Local2)
                    CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x38, DNAM)
                    Store (GDNM (Zero), DNAM)
                    Add (Local2, 0x07, Local2)
                    CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x20, DCHE)
                    Store (GDCH (Zero), DCHE)
                    Add (Local2, 0x04, Local2)
                    CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x10, BMAC)
                    Store (Zero, BMAC)
                    Add (Local2, 0x02, Local2)
                    CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x10, BMAD)
                    Store (B1B2 (DT00, DT01), BMAD)
                    Add (Local2, 0x02, Local2)
                    CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x10, BCCU)
                    Store (BRCC, BCCU)
                    Add (Local2, 0x02, Local2)
                    CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x10, BCVO)
                    Store (BRCV, BCVO)
                    Add (Local2, 0x02, Local2)
                    CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x10, BAVC)
                    Store (B1B2 (CR00, CR01), Local1)
                    If (Local1)
                    {
                        If (And (B1B2 (TS00, TS01), 0x40))
                        {
                            Add (Not (Local1), One, Local1)
                            And (Local1, 0xFFFF, Local1)
                        }
                    }

                    Store (Local1, BAVC)
                    Add (Local2, 0x02, Local2)
                    CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x10, RTTE)
                    Store (B1B2 (TE00, TE01), RTTE)
                    Add (Local2, 0x02, Local2)
                    CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x10, ATTE)
                    Store (B1B2 (AT00, AT01), ATTE)
                    Add (Local2, 0x02, Local2)
                    CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x10, ATTF)
                    Store (B1B2 (TF00, TF01), ATTF)
                    Add (Local2, 0x02, Local2)
                    CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x08, NOBS)
                    Store (BATN, NOBS)
                }
                Else
                {
                    Store (Package (0x01)
                        {
                            0x34
                        }, Local0)
                }
            }
            Else
            {
                Store (Package (0x01)
                    {
                        0x0D
                    }, Local0)
            }

            Release (ECMX)
            Return (Local0)
        }

        Method (GBTC, 0, NotSerialized)
        {
            Store ("Enter GetBatteryControl", Debug)
            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                Store (Package (0x02)
                    {
                        Zero, 
                        Buffer (0x04){}
                    }, Local0)
                If (And (BATP, One))
                {
                    Store (Zero, BSEL)
                    Store (Zero, Index (DerefOf (Index (Local0, One)), Zero))
                    If (LAnd (LAnd (LEqual (INAC, Zero), LEqual (INCH, Zero)), LEqual (IDIS, Zero)))
                    {
                        Store (Zero, Index (DerefOf (Index (Local0, One)), Zero))
                    }
                    ElseIf (LAnd (LAnd (LAnd (LEqual (INAC, Zero), LEqual (INCH, 0x02)), LEqual (IDIS, One)), LEqual (B1B2 (AX00, AX01), Zero)))
                    {
                        Store (One, Index (DerefOf (Index (Local0, One)), Zero))
                    }
                    ElseIf (LAnd (LEqual (INAC, One), LEqual (IDIS, 0x02)))
                    {
                        Store (0x02, Index (DerefOf (Index (Local0, One)), Zero))
                    }
                    ElseIf (LAnd (LAnd (LAnd (LEqual (INAC, Zero), LEqual (INCH, 0x02)), LEqual (IDIS, One)), LEqual (B1B2 (AX00, AX01), 0xFA)))
                    {
                        Store (0x03, Index (DerefOf (Index (Local0, One)), Zero))
                    }
                    ElseIf (LAnd (LEqual (INAC, Zero), LEqual (INCH, 0x03)))
                    {
                        Store (0x04, Index (DerefOf (Index (Local0, One)), Zero))
                    }
                }
                Else
                {
                    Store (0xFF, Index (DerefOf (Index (Local0, One)), Zero))
                }

                If (And (BATP, 0x02))
                {
                    Store (One, BSEL)
                    Store (Zero, Index (DerefOf (Index (Local0, One)), One))
                    If (LAnd (LAnd (LEqual (INAC, Zero), LEqual (INCH, Zero)), LEqual (IDIS, Zero)))
                    {
                        Store (Zero, Index (DerefOf (Index (Local0, One)), One))
                    }
                    ElseIf (LAnd (LAnd (LAnd (LEqual (INAC, Zero), LEqual (INCH, One)), LEqual (IDIS, 0x02)), LEqual (B1B2 (AX00, AX01), Zero)))
                    {
                        Store (One, Index (DerefOf (Index (Local0, One)), One))
                    }
                    ElseIf (LAnd (LEqual (INAC, One), LEqual (IDIS, One)))
                    {
                        Store (0x02, Index (DerefOf (Index (Local0, One)), One))
                    }
                    ElseIf (LAnd (LAnd (LAnd (LEqual (INAC, Zero), LEqual (INCH, One)), LEqual (IDIS, 0x02)), LEqual (B1B2 (AX00, AX01), 0xFA)))
                    {
                        Store (0x03, Index (DerefOf (Index (Local0, One)), One))
                    }
                    ElseIf (LAnd (LEqual (INAC, Zero), LEqual (INCH, 0x03)))
                    {
                        Store (0x04, Index (DerefOf (Index (Local0, One)), One))
                    }
                }
                Else
                {
                    Store (0xFF, Index (DerefOf (Index (Local0, One)), One))
                }
            }
            Else
            {
                Store (Package (0x02)
                    {
                        0x35, 
                        Zero
                    }, Local0)
            }

            Release (ECMX)
            Return (Local0)
        }

        Method (SBTC, 3, NotSerialized)
        {
            Store ("Enter SetBatteryControl", Debug)
            Store (Arg0, Debug)
            Store (Arg1, Debug)
            Store (Arg2, Debug)
            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                Store (Arg2, Local0)
                Store (Local0, Debug)
                Store (Package (0x01)
                    {
                        0x06
                    }, Local4)
                Store (Zero, Local1)
                Store (Zero, Local2)
                Store (DerefOf (Index (Local0, Zero)), Local1)
                If (LEqual (Local1, Zero))
                {
                    Store ("battery 0", Debug)
                    If (And (BATP, One))
                    {
                        Store (DerefOf (Index (Local0, One)), Local2)
                        If (LEqual (Local2, Zero))
                        {
                            Store (Zero, INCH)
                            Store (Zero, IDIS)
                            Store (Zero, INAC)
                            Store (Zero, AX00)
                            Store (Zero, AX01)
                            Store (One, PSSB)
                            Store (Package (0x01)
                                {
                                    Zero
                                }, Local4)
                        }

                        If (LEqual (Local2, One))
                        {
                            Store (Zero, INAC)
                            Store (0x02, INCH)
                            Store (One, IDIS)
                            Store (Zero, AX00)
                            Store (Zero, AX01)
                            Store (Zero, PSSB)
                            Store (Package (0x01)
                                {
                                    Zero
                                }, Local4)
                        }

                        If (LEqual (Local2, 0x02))
                        {
                            Store (One, INAC)
                            Store (One, INCH)
                            Store (0x02, IDIS)
                            Store (Zero, PSSB)
                            Store (Package (0x01)
                                {
                                    Zero
                                }, Local4)
                        }

                        If (LEqual (Local2, 0x03))
                        {
                            Store (0x02, INCH)
                            Store (One, IDIS)
                            Store (Zero, INAC)
                            Store (0xFA, AX00)
                            Store (Zero, AX01)
                            Store (Zero, PSSB)
                            Store (Package (0x01)
                                {
                                    Zero
                                }, Local4)
                        }

                        If (LEqual (Local2, 0x04))
                        {
                            Store (0xFA, AX00)
                            Store (Zero, AX01)
                            Store (Package (0x01)
                                {
                                    Zero
                                }, Local4)
                        }

                        If (LEqual (Local2, 0x05))
                        {
                            Store (Zero, INAC)
                            Store (0x03, INCH)
                            Store (Package (0x01)
                                {
                                    Zero
                                }, Local4)
                        }
                    }
                    Else
                    {
                        Store (Package (0x01)
                            {
                                0x34
                            }, Local4)
                    }
                }

                If (LEqual (Local1, One))
                {
                    If (And (BATP, 0x02))
                    {
                        Store ("battery 1", Debug)
                        Store (DerefOf (Index (Local0, One)), Local2)
                        If (LEqual (Local2, Zero))
                        {
                            Store (Zero, INCH)
                            Store (Zero, IDIS)
                            Store (Zero, INAC)
                            Store (Zero, AX00)
                            Store (Zero, AX01)
                            Store (One, PSSB)
                            Store (Package (0x01)
                                {
                                    Zero
                                }, Local4)
                        }

                        If (LEqual (Local2, One))
                        {
                            Store (Zero, INAC)
                            Store (One, INCH)
                            Store (0x02, IDIS)
                            Store (Zero, AX00)
                            Store (Zero, AX01)
                            Store (Zero, PSSB)
                            Store (Package (0x01)
                                {
                                    Zero
                                }, Local4)
                        }

                        If (LEqual (Local2, 0x02))
                        {
                            Store (One, INAC)
                            Store (0x02, INCH)
                            Store (One, IDIS)
                            Store (Zero, PSSB)
                            Store (Package (0x01)
                                {
                                    Zero
                                }, Local4)
                        }

                        If (LEqual (Local2, 0x03))
                        {
                            Store (One, INCH)
                            Store (0x02, IDIS)
                            Store (Zero, INAC)
                            Store (0xFA, AX00)
                            Store (Zero, AX01)
                            Store (Zero, PSSB)
                            Store (Package (0x01)
                                {
                                    Zero
                                }, Local4)
                        }

                        If (LEqual (Local2, 0x04))
                        {
                            Store (Zero, INCH)
                            Store (Zero, IDIS)
                            Store (Zero, INAC)
                            Store (Package (0x01)
                                {
                                    Zero
                                }, Local4)
                        }

                        If (LEqual (Local2, 0x05))
                        {
                            Store (Zero, INAC)
                            Store (0x03, INCH)
                            Store (Package (0x01)
                                {
                                    Zero
                                }, Local4)
                        }
                    }
                    Else
                    {
                        Store (Package (0x01)
                            {
                                0x34
                            }, Local4)
                    }
                }
            }

            Release (ECMX)
            Return (Local4)
        }

        Method (GACW, 0, NotSerialized)
        {
            Store (Zero, Local0)
            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                Store (B1B2 (CP00, CP01), Local0)
            }

            Release (ECMX)
            Return (Local0)
        }
        
        Method (GBAW, 0, NotSerialized)
        {
            Store (Zero, Local0)
            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                Store (B1B2 (DV00, DV01), Local1)
                Store (B1B2 (DC00, DC01), Local2)
                Multiply (Local1, Local2, Local0)
                Divide (Local0, 0x000F4240, Local3, Local0)
                If (LGreaterEqual (Local3, 0x0007A120))
                {
                    Increment (Local0)
                }
            }

            Release (ECMX)
            Return (Local0)
        }
    }

    Scope (_SB)
    {
        Name (NBTI, Package (0x02)
        {
            Package (0x0F)
            {
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0xFFFFFFFF, 
                Zero, 
                Zero, 
                0x64, 
                0x64, 
                "Primary", 
                "100000", 
                "LIon", 
                "Hewlett-Packard",
                Zero, 
                Zero,
            }, 

            Package (0x0F)
            {
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0xFFFFFFFF, 
                Zero, 
                Zero, 
                0x64, 
                0x64, 
                "Travel", 
                "100000", 
                "LIon", 
                "Hewlett-Packard",
                Zero, 
                Zero,
            }
        })
    }

    Method (B1B2, 2, NotSerialized)
    {
        ShiftLeft (Arg1, 8, Local0)
        Or (Arg0, Local0, Local0)
        Return (Local0)
    }
}
