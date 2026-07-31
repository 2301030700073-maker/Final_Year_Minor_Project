.class public abstract Lcom/google/android/material/color/utilities/Cam16;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final CRITICAL_PLANES:[D

.field public static final LINRGB_FROM_SCALED_DISCOUNT:[[D

.field public static final SCALED_DISCOUNT_FROM_LINRGB:[[D

.field public static final SRGB_TO_XYZ:[[D

.field public static final WHITE_POINT_D65:[D

.field public static final XYZ_TO_CAM16RGB:[[D

.field public static final Y_FROM_LINRGB:[D


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [D

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    new-array v2, v0, [D

    .line 8
    .line 9
    fill-array-data v2, :array_1

    .line 10
    .line 11
    .line 12
    new-array v3, v0, [D

    .line 13
    .line 14
    fill-array-data v3, :array_2

    .line 15
    .line 16
    .line 17
    new-array v4, v0, [[D

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    aput-object v1, v4, v5

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    aput-object v2, v4, v1

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    aput-object v3, v4, v2

    .line 27
    .line 28
    sput-object v4, Lcom/google/android/material/color/utilities/Cam16;->XYZ_TO_CAM16RGB:[[D

    .line 29
    .line 30
    new-array v3, v0, [D

    .line 31
    .line 32
    fill-array-data v3, :array_3

    .line 33
    .line 34
    .line 35
    new-array v4, v0, [D

    .line 36
    .line 37
    fill-array-data v4, :array_4

    .line 38
    .line 39
    .line 40
    new-array v6, v0, [D

    .line 41
    .line 42
    fill-array-data v6, :array_5

    .line 43
    .line 44
    .line 45
    new-array v7, v0, [[D

    .line 46
    .line 47
    aput-object v3, v7, v5

    .line 48
    .line 49
    aput-object v4, v7, v1

    .line 50
    .line 51
    aput-object v6, v7, v2

    .line 52
    .line 53
    sput-object v7, Lcom/google/android/material/color/utilities/Cam16;->SRGB_TO_XYZ:[[D

    .line 54
    .line 55
    new-array v3, v0, [D

    .line 56
    .line 57
    fill-array-data v3, :array_6

    .line 58
    .line 59
    .line 60
    sput-object v3, Lcom/google/android/material/color/utilities/Cam16;->WHITE_POINT_D65:[D

    .line 61
    .line 62
    new-array v3, v0, [D

    .line 63
    .line 64
    fill-array-data v3, :array_7

    .line 65
    .line 66
    .line 67
    new-array v4, v0, [D

    .line 68
    .line 69
    fill-array-data v4, :array_8

    .line 70
    .line 71
    .line 72
    new-array v6, v0, [D

    .line 73
    .line 74
    fill-array-data v6, :array_9

    .line 75
    .line 76
    .line 77
    new-array v7, v0, [[D

    .line 78
    .line 79
    aput-object v3, v7, v5

    .line 80
    .line 81
    aput-object v4, v7, v1

    .line 82
    .line 83
    aput-object v6, v7, v2

    .line 84
    .line 85
    sput-object v7, Lcom/google/android/material/color/utilities/Cam16;->SCALED_DISCOUNT_FROM_LINRGB:[[D

    .line 86
    .line 87
    new-array v3, v0, [D

    .line 88
    .line 89
    fill-array-data v3, :array_a

    .line 90
    .line 91
    .line 92
    new-array v4, v0, [D

    .line 93
    .line 94
    fill-array-data v4, :array_b

    .line 95
    .line 96
    .line 97
    new-array v6, v0, [D

    .line 98
    .line 99
    fill-array-data v6, :array_c

    .line 100
    .line 101
    .line 102
    new-array v7, v0, [[D

    .line 103
    .line 104
    aput-object v3, v7, v5

    .line 105
    .line 106
    aput-object v4, v7, v1

    .line 107
    .line 108
    aput-object v6, v7, v2

    .line 109
    .line 110
    sput-object v7, Lcom/google/android/material/color/utilities/Cam16;->LINRGB_FROM_SCALED_DISCOUNT:[[D

    .line 111
    .line 112
    new-array v0, v0, [D

    .line 113
    .line 114
    fill-array-data v0, :array_d

    .line 115
    .line 116
    .line 117
    sput-object v0, Lcom/google/android/material/color/utilities/Cam16;->Y_FROM_LINRGB:[D

    .line 118
    .line 119
    const/16 v0, 0xff

    .line 120
    .line 121
    new-array v0, v0, [D

    .line 122
    .line 123
    fill-array-data v0, :array_e

    .line 124
    .line 125
    .line 126
    sput-object v0, Lcom/google/android/material/color/utilities/Cam16;->CRITICAL_PLANES:[D

    .line 127
    .line 128
    return-void

    .line 129
    :array_0
    .array-data 8
        0x3fd9aeb3dd11be6eL    # 0.401288
        0x3fe4ce379b77c02bL    # 0.650173
        -0x4055a6e75ff609ddL    # -0.051461
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_1
    .array-data 8
        -0x402ffb9bed30f063L    # -0.250268
        0x3ff345479d4d8341L    # 1.204414
        0x3fa77a2cecc814d7L    # 0.045854
    .end array-data

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_2
    .array-data 8
        -0x409ef8055fbb517aL    # -0.002079
        0x3fa9103c8e25c811L    # 0.048952
        0x3fee800431bde82dL    # 0.953127
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_3
    .array-data 8
        0x3fda63c2e8477c96L    # 0.41233895
        0x3fd6e341ae4b2c79L    # 0.35762064
        0x3fc71af7273e5d5eL    # 0.18051042
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    :array_4
    .array-data 8
        0x3fcb367a0f9096bcL    # 0.2126
        0x3fe6e2eb1c432ca5L    # 0.7152
        0x3fb27bb2fec56d5dL    # 0.0722
    .end array-data

    :array_5
    .array-data 8
        0x3f93c8fde0401c25L    # 0.01932141
        0x3fbe818525c434ceL    # 0.11916382
        0x3fee693974c0c730L    # 0.95034478
    .end array-data

    :array_6
    .array-data 8
        0x4057c3020c49ba5eL    # 95.047
        0x4059000000000000L    # 100.0
        0x405b3883126e978dL    # 108.883
    .end array-data

    :array_7
    .array-data 8
        0x3f53aca939f9bf80L    # 0.001200833568784504
        0x3f63938d761f2c49L    # 0.002389694492170889
        0x3f32527a6d20ac99L    # 2.795742885861124E-4
    .end array-data

    :array_8
    .array-data 8
        0x3f434dcd39abd367L    # 5.891086651375999E-4
        0x3f686678fe3bac59L    # 0.0029785502573438758
        0x3f356f44653168daL    # 3.270666104008398E-4
    .end array-data

    :array_9
    .array-data 8
        0x3f1a99547f1efd1dL    # 1.0146692491640572E-4
        0x3f4193d4431726edL    # 5.364214359186694E-4
        0x3f6b0448268cc828L    # 0.0032979401770712076
    .end array-data

    :array_a
    .array-data 8
        0x409574e125da5040L    # 1373.2198709594231
        -0x3f6ece4cad95c798L    # -1100.4251190754821
        -0x3fe2e2a16cb12fbfL    # -7.278681089101213
    .end array-data

    :array_b
    .array-data 8
        -0x3f8f02f1ca687dc0L    # -271.815969077903
        0x40817d43adeec650L    # 559.6580465940733
        -0x3fbfc50f292cbe56L    # -32.46047482791194
    .end array-data

    :array_c
    .array-data 8
        0x3fff658a28353577L    # 1.9622899599665666
        -0x3fb369c071f80c3fL    # -57.173814538844006
        0x40734b92b7c34f82L    # 308.7233197812385
    .end array-data

    :array_d
    .array-data 8
        0x3fcb367a0f9096bcL    # 0.2126
        0x3fe6e2eb1c432ca5L    # 0.7152
        0x3fb27bb2fec56d5dL    # 0.0722
    .end array-data

    :array_e
    .array-data 8
        0x3f8f14c71b1e49e2L    # 0.015176349177441876
        0x3fa74f955456b769L    # 0.045529047532325624
        0x3fb36cfc70f2ee2dL    # 0.07588174588720938
        0x3fbb322e37ba80a6L    # 0.10623444424209313
        0x3fc17bafff41098eL    # 0.13658714259697685
        0x3fc55e48e2a4d2cbL    # 0.16693984095186062
        0x3fc940e1c6089c06L    # 0.19729253930674434
        0x3fcd237aa96c6543L    # 0.2276452376616281
        0x3fd08309c6681740L    # 0.2579979360165119
        0x3fd274563819fbdeL    # 0.28835063437139563
        0x3fd467b652dbc0b0L    # 0.3188300904430532
        0x3fd675920d7da7b7L    # 0.350925934958123
        0x3fd8a114458f16a8L    # 0.3848314933096426
        0x3fdaeab2941ce8eeL    # 0.42057480301049466
        0x3fdd52dff06864acL    # 0.458183274052838
        0x3fdfda0cd6afa026L    # 0.4976837250274023
        0x3fe14053b5ba9b10L    # 0.5391024159806381
        0x3fe2a38dcdd9d833L    # 0.5824650784040898
        0x3fe416e99d2c6dbcL    # 0.6277969426914107
        0x3fe59a9b0dabee07L    # 0.6751227633498623
        0x3fe72ed5164ae78aL    # 0.7244668422128921
        0x3fe8d3c9c675c021L    # 0.775853049866786
        0x3fea89aa50b7831bL    # 0.829304845476233
        0x3fec50a71498c460L    # 0.8848452951698498
        0x3fee28efa7cbf7abL    # 0.942497089126609
        0x3ff009596f5c1eb0L    # 1.0022825574869039
        0x3ff1070f6a38d1ecL    # 1.0642236851973577
        0x3ff20db079160f60L    # 1.1283421258858297
        0x3ff31d52fb1a7c13L    # 1.1946592148522128
        0x3ff4360cfd3e997fL    # 1.2631959812511864
        0x3ff557f43d5f1b72L    # 1.3339731595349034
        0x3ff6831e2d2090c9L    # 1.407011200216447
        0x3ff7b79ff4a81f49L    # 1.4823302800086415
        0x3ff8f58e752cb288L    # 1.5599503113873272
        0x3ffa3cfe4b63a8afL    # 1.6398909516233677
        0x3ffb8e03d1cbbd1eL    # 1.7221716113234105
        0x3ffce8b322d8ae77L    # 1.8068114625156377
        0x3ffe4d201b01e2ceL    # 1.8938294463134073
        0x3fffbb5e5ab6180fL    # 1.9832442801866852
        0x400099c0a41b0043L    # 2.075074464868551
        0x40015ace08abc052L    # 2.1693382909216234
        0x400220e0d6998f93L    # 2.2660538449872063
        0x4002ec026ede8ab3L    # 2.36523901573795
        0x4003bc3c18a5a895L    # 2.4669114995532007
        0x400491970204ce3aL    # 2.5710888059345764
        0x40056c1c40ae8440L    # 2.6777882626779785
        0x40064bd4d29bd0e9L    # 2.7870270208169257
        0x400730c99eaeafeeL    # 2.898822059350997
        0x40081b03754d97e3L    # 3.0131901897720907
        0x40090a8b10f874ddL    # 3.1301480604002863
        0x4009ff6916d77856L    # 3.2497121605402226
        0x400af9a61744174aL    # 3.3718988244681087
        0x400bf94a8e4c897dL    # 3.4967242352587946
        0x400cfe5ee43216c1L    # 3.624204428461639
        0x400e08eb6de279d2L    # 3.754355295633311
        0x400f18f86d6c9be2L    # 3.887192587735158
        0x401017470938736eL    # 4.022731918402185
        0x4010a4da3d46b461L    # 4.160988767090289
        0x40113539d8e2ff50L    # 4.301978482107941
        0x4011c869d9745cf2L    # 4.445716283538092
        0x40125e6e33f75806L    # 4.592217266055746
        0x4012f74ad52cb09aL    # 4.741496401646282
        0x40139303a1c66fdaL    # 4.893568542229298
        0x4014319c7693702aL    # 5.048448422192488
        0x4014d31928a96beaL    # 5.20615066083972
        0x4015777d858da48eL    # 5.3666897647573375
        0x40161ecd535c325bL    # 5.5300801301023865
        0x4016c90c50ee0c43L    # 5.696336044816294
        0x4017763e35fdd6a4L    # 5.865471690767354
        0x40182666b34b8667L    # 6.037501145825082
        0x4018d98972bee5cfL    # 6.212438385869475
        0x40198faa17890716L    # 6.390297286737924
        0x401a48cc3e44b09eL    # 6.571091626112461
        0x401b04f37d15cd99L    # 6.7548350853498045
        0x401bc42363c7eda2L    # 6.941541251256611
        0x401c865f7bebdd24L    # 7.131223617812143
        0x401d4bab48f46014L    # 7.323895587840543
        0x401e140a485217a5L    # 7.5195704746346665
        0x401edf7ff18e9b89L    # 7.7182615035334345
        0x401fae0fb666ceb6L    # 7.919981813454504
        0x40203fde81723bbfL    # 8.124744458384042
        0x4020aa459ebb90eeL    # 8.332562408825165
        0x4021163ee38629a1L    # 8.543448553206703
        0x402183cbfd938b07L    # 8.757415699253682
        0x4021f2ee97fb71b0L    # 8.974476575321063
        0x402263a85b36f868L    # 9.194643831691977
        0x4022d5faed2b7406L    # 9.417930041841839
        0x402349e7f13506c4L    # 9.644347703669503
        0x4023bf710830edd2L    # 9.873909240696694
        0x40243697d0878b80L    # 10.106627003236781
        0x4024af5de6363078L    # 10.342513269534024
        0x402529c4e2d8a631L    # 10.58158024687427
        0x4025a5ce5db27ccdL    # 10.8238400726681
        0x4026237bebb81e6fL    # 11.069304815507364
        0x4026a2cf1f97aa0eL    # 11.317986476196008
        0x402723c989c19785L    # 11.569896988756009
        0x4027a66cb87126f5L    # 11.825048221409341
        0x40282aba37b49ccdL    # 12.083451977536606
        0x4028b0b391754c8fL    # 12.345119996613247
        0x4029385a4d7f7392L    # 12.610063955123938
        0x4029c1aff189e588L    # 12.878295467455942
        0x402a4cb6013d8c16L    # 13.149826086772048
        0x402ad96dfe3cbaefL    # 13.42466730586372
        0x402b67d9682a59d7L    # 13.702830557985108
        0x402bf7f9bcb0e5dbL    # 13.984327217668513
        0x402c89d077894ae9L    # 14.269168601521828
        0x402d1d5f12819719L    # 14.55736596900856
        0x402db2a7058388a2L    # 14.848930523210871
        0x402e49a9c69af7d4L    # 15.143873411576273
        0x402ee268c9fc1dedL    # 15.44220572664832
        0x402f7ce58209ba02L    # 15.743938506781891
        0x40300c90afad8a5bL    # 16.04908273684337
        0x40305b8ee860f20bL    # 16.35764934889634
        0x4030ab6e21a80812L    # 16.66964922287304
        0x4030fc2f112eac90L    # 16.985093187232053
        0x40314dd26bc67044L    # 17.30399201960269
        0x4031a058e5694aa2L    # 17.62635644741625
        0x4031f3c3313c4220L    # 17.95219714852476
        0x40324812019206eaL    # 18.281524751807332
        0x40329d4607ed8070L    # 18.614349837764564
        0x4032f35ff5044e3bL    # 18.95068293910138
        0x40334a6078c13c38L    # 19.290534541298456
        0x4033a2484246aaf7L    # 19.633915083172692
        0x4033fb17fff0ec0bL    # 19.98083495742689
        0x403454d05f589306L    # 20.331304511189067
        0x4034af720d54bb29L    # 20.685334046541502
        0x40350afdb5fd424fL    # 21.042933821039977
        0x4035677404acf91aL    # 21.404114048223256
        0x4035c4d5a403c8daL    # 21.76888489811322
        0x403623233de8cf6cL    # 22.137256497705877
        0x4036825d7b8c711bL    # 22.50923893145328
        0x4036e285056a611fL    # 22.884842241736916
        0x4037439a834ba09cL    # 23.264076429332462
        0x4037a59e9c487496L    # 23.6469514538663
        0x40380891f6ca5311L    # 24.033477234264016
        0x40386c75388dc754L    # 24.42366364919083
        0x4038d14906a44df5L    # 24.817520537484558
        0x4039370e0576286fL    # 25.21505769858089
        0x40399dc4d8c428bdL    # 25.61628489293138
        0x403a056e23a9751fL    # 26.021211842414342
        0x403a6e0a889d441aL    # 26.429848230738664
        0x403ad79aa9749101L    # 26.842203703840827
        0x403b421f2763c940L    # 27.258287870275353
        0x403bad98a3007244L    # 27.678110301598522
        0x403c1a07bc42c8a7L    # 28.10168053274597
        0x403c876d12875855L    # 28.529008062403893
        0x403cf5c944908e0fL    # 28.96010235337422
        0x403d651cf0884284L    # 29.39497283293396
        0x403dd568b4013ebdL    # 29.83362889318845
        0x403e46ad2bf8bab1L    # 30.276079891419332
        0x403eb8eaf4d7d567L    # 30.722335150426627
        0x403f2c22aa75073fL    # 31.172403958865512
        0x403fa054e8158e76L    # 31.62629557157785
        0x40400ac124376ae6L    # 32.08401920991837
        0x404045d5b2d3eadeL    # 32.54558406207592
        0x404081686cad3812L    # 33.010999283389665
        0x4040bd799e4a633aL    # 33.4802739966603
        0x4040fa0993ed4580L    # 33.953417292456834
        0x4041371899932659L    # 34.430438229418264
        0x404174a6faf55f12L    # 34.911345834551085
        0x4041b2b50389fbc7L    # 35.39614910352207
        0x4041f142fe8459f4L    # 35.88485700094671
        0x4042305136d5c4beL    # 36.37747846067349
        0x40426fdff72e0ed9L    # 36.87402238606382
        0x4042afef89fc2a2bL    # 37.37449765026789
        0x4042f080396ebd4eL    # 37.87891309649659
        0x404331924f74b6c1L    # 38.38727753828926
        0x4043732615bdde1fL    # 38.89959975977785
        0x4043b53bd5bb6319L    # 39.41588851594697
        0x4043f7d3d8a06a8dL    # 39.93615253289054
        0x40443aee67629979L    # 40.460400508064545
        0x40447e8bcaba9e04L    # 40.98864111053629
        0x4044c2ac4b24b69dL    # 41.520882981230194
        0x4045075030e1373cL    # 42.05713473317016
        0x40454c77c3f50cabL    # 42.597404951718396
        0x404592234c2a3e29L    # 43.141702194811224
        0x4045d85311106d15L    # 43.6900349931913
        0x40461f0759fd5306L    # 44.24241185063697
        0x404666406e0d3e0eL    # 44.798841244188324
        0x4046adfe94238b52L    # 45.35933162437017
        0x4046f64212eb2003L    # 45.92389141541209
        0x40473f0b30d6e0b4L    # 46.49252901546552
        0x4047885a3422271aL    # 47.065252796817916
        0x4047d22f62d13639L    # 47.64207110610409
        0x40481c8b02b1acffL    # 48.22299226451468
        0x4048676d595af778L    # 48.808024568002054
        0x4048b2d6ac2ebe65L    # 49.3971762874833
        0x4048fec740595582L    # 49.9904556690408
        0x40494b3f5ad2283bL    # 50.587870934119984
        0x4049983f405c2519L    # 51.189430279724725
        0x4049e5c7358627c0L    # 51.79514187861014
        0x404a33d77eab618dL    # 52.40501387947288
        0x404a82705ff3c0f7L    # 53.0190544071392
        0x404ad1921d545781L    # 53.637271562750364
        0x404b213cfa8fbe81L    # 54.259673423945976
        0x404b71713b367a9aL    # 54.88626804504493
        0x404bc22f22a75de3L    # 55.517063457223934
        0x404c1376f40fe90dL    # 56.15206766869424
        0x404c6548f26cab1cL    # 56.79128866487574
        0x404cb7a56089a00fL    # 57.43473440856916
        0x404d0a8c81028e68L    # 58.08241284012621
        0x404d5dfe96436370L    # 58.734331877617365
        0x404db1fbe2888e90L    # 59.39049941699807
        0x404e0684a7df5b5dL    # 60.05092333227251
        0x404e5b9928264aa1L    # 60.715611475655585
        0x404eb139a50d6a71L    # 61.38457167773311
        0x404f07666016ad10L    # 62.057811747619894
        0x404f5e1f9a963eceL    # 62.7353394731159
        0x404fb56595b2db0bL    # 63.417162620860914
        0x4050069c49330fffL    # 64.10328893648692
        0x405032cc68be70e4L    # 64.79372614476921
        0x40505f4349cbbe28L    # 65.48848194977529
        0x40508c010c951223L    # 66.18756403501224
        0x4050b905d13e9baaL    # 66.89098006357258
        0x4050e651b7d6c597L    # 67.59873767827808
        0x405113e4e0565df1L    # 68.31084450182222
        0x405141bf6aa0bc9eL    # 69.02730813691093
        0x40516fe17683e997L    # 69.74813616640164
        0x40519e4b23b8c2ceL    # 70.47333615344107
        0x4051ccfc91e3217eL    # 71.20291564160104
        0x4051fbf5e091ff31L    # 71.93688215501312
        0x40522b372f3f9a53L    # 72.67524319850172
        0x40525ac09d519a4fL    # 73.41800625771542
        0x40528a924a193361L    # 74.16517879925733
        0x4052baac54d349eaL    # 74.9167682708136
        0x4052eb0edca8956eL    # 75.67278210128072
        0x40531bba00adc335L    # 76.43322770089146
        0x40534caddfe39879L    # 77.1981124613393
        0x40537dea9937144bL    # 77.96744375590167
        0x4053af704b81910dL    # 78.74122893956174
        0x4053e13f1588e598L    # 79.51947534912904
        0x4054135715ff8602L    # 80.30219030335869
        0x405445b86b84a40cL    # 81.08938110306934
        0x4054786334a44f3aL    # 81.88105503125999
        0x4054ab578fd79492L    # 82.67721935322541
        0x4054de959b849e0fL    # 83.4778813166706
        0x4055121d75fed1acL    # 84.28304815182372
        0x405545ef3d86f02fL    # 85.09272707154808
        0x40557a0b104b33a0L    # 85.90692527145302
        0x4055ae710c676d67L    # 86.72564993000343
        0x4055e3214fe52419L    # 87.54890820862819
        0x4056181bf8bbb106L    # 88.3767072518277
        0x40564d6124d05d6fL    # 89.2090541872801
        0x405682f0f1f67f71L    # 90.04595612594655
        0x4056b8cb7def969eL    # 90.88742016217518
        0x4056eef0e66b685dL    # 91.73345337380438
        0x4057256149081bfcL    # 92.58406282226491
        0x40575c1cc3525664L    # 93.43925555268066
        0x4057932372c555aeL    # 94.29903859396902
        0x4057ca7574cb0c4fL    # 95.16341895893969
        0x40580212e6bc3c09L    # 96.03240364439274
        0x405839fbe5e090aaL    # 96.9059996312159
        0x405872308f6eba68L    # 97.78421388448044
        0x4058aab1008c881eL    # 98.6670533535366
        0x4058e37d564f0129L    # 99.55452497210776
    .end array-data
.end method

.method public static areInCyclicOrder(DDD)Z
    .locals 4

    .line 1
    sub-double/2addr p2, p0

    .line 2
    const-wide v0, 0x403921fb54442d18L    # 25.132741228718345

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    add-double/2addr p2, v0

    .line 8
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    rem-double/2addr p2, v2

    .line 14
    sub-double/2addr p4, p0

    .line 15
    add-double/2addr p4, v0

    .line 16
    rem-double/2addr p4, v2

    .line 17
    cmpg-double p0, p2, p4

    .line 18
    .line 19
    if-gez p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public static chromaticAdaptation(D)D
    .locals 5

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x3fdae147ae147ae1L    # 0.42

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmpg-double v4, p0, v2

    .line 17
    .line 18
    if-gez v4, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    cmpl-double p0, p0, v2

    .line 23
    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x1

    .line 29
    :goto_0
    int-to-double p0, p0

    .line 30
    const-wide/high16 v2, 0x4079000000000000L    # 400.0

    .line 31
    .line 32
    mul-double/2addr p0, v2

    .line 33
    mul-double/2addr p0, v0

    .line 34
    const-wide v2, 0x403b2147ae147ae1L    # 27.13

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    add-double/2addr v0, v2

    .line 40
    div-double/2addr p0, v0

    .line 41
    return-wide p0
.end method

.method public static delinearized(D)I
    .locals 2

    .line 1
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 2
    .line 3
    div-double/2addr p0, v0

    .line 4
    const-wide v0, 0x3f69a5c37387b719L    # 0.0031308

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    cmpg-double v0, p0, v0

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    const-wide v0, 0x4029d70a3d70a3d7L    # 12.92

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    mul-double/2addr p0, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-wide v0, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 26
    .line 27
    .line 28
    move-result-wide p0

    .line 29
    const-wide v0, 0x3ff0e147ae147ae1L    # 1.055

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    mul-double/2addr p0, v0

    .line 35
    const-wide v0, 0x3fac28f5c28f5c29L    # 0.055

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    sub-double/2addr p0, v0

    .line 41
    :goto_0
    const-wide v0, 0x406fe00000000000L    # 255.0

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    mul-double/2addr p0, v0

    .line 47
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 48
    .line 49
    .line 50
    move-result-wide p0

    .line 51
    long-to-int p0, p0

    .line 52
    if-gez p0, :cond_1

    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return p0

    .line 56
    :cond_1
    const/16 p1, 0xff

    .line 57
    .line 58
    if-le p0, p1, :cond_2

    .line 59
    .line 60
    return p1

    .line 61
    :cond_2
    return p0
.end method

.method public static hueOf([D)D
    .locals 12

    .line 1
    sget-object v0, Lcom/google/android/material/color/utilities/Cam16;->SCALED_DISCOUNT_FROM_LINRGB:[[D

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/google/android/material/color/utilities/Cam16;->matrixMultiply([D[[D)[D

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    aget-wide v0, p0, v0

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/Cam16;->chromaticAdaptation(D)D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const/4 v2, 0x1

    .line 15
    aget-wide v2, p0, v2

    .line 16
    .line 17
    invoke-static {v2, v3}, Lcom/google/android/material/color/utilities/Cam16;->chromaticAdaptation(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    const/4 v4, 0x2

    .line 22
    aget-wide v4, p0, v4

    .line 23
    .line 24
    invoke-static {v4, v5}, Lcom/google/android/material/color/utilities/Cam16;->chromaticAdaptation(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    const-wide/high16 v6, 0x4026000000000000L    # 11.0

    .line 29
    .line 30
    mul-double v8, v0, v6

    .line 31
    .line 32
    const-wide/high16 v10, -0x3fd8000000000000L    # -12.0

    .line 33
    .line 34
    mul-double/2addr v10, v2

    .line 35
    add-double/2addr v10, v8

    .line 36
    add-double/2addr v10, v4

    .line 37
    div-double/2addr v10, v6

    .line 38
    add-double/2addr v0, v2

    .line 39
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 40
    .line 41
    mul-double/2addr v4, v2

    .line 42
    sub-double/2addr v0, v4

    .line 43
    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    .line 44
    .line 45
    div-double/2addr v0, v2

    .line 46
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    return-wide v0
.end method

.method public static inverseChromaticAdaptation(D)D
    .locals 6

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x403b2147ae147ae1L    # 27.13

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    mul-double/2addr v2, v0

    .line 11
    const-wide/high16 v4, 0x4079000000000000L    # 400.0

    .line 12
    .line 13
    sub-double/2addr v4, v0

    .line 14
    div-double/2addr v2, v4

    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    cmpg-double v4, p0, v0

    .line 22
    .line 23
    if-gez v4, :cond_0

    .line 24
    .line 25
    const/4 p0, -0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    cmpl-double p0, p0, v0

    .line 28
    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x1

    .line 34
    :goto_0
    int-to-double p0, p0

    .line 35
    const-wide v0, 0x40030c30c30c30c3L    # 2.380952380952381

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    mul-double/2addr v0, p0

    .line 45
    return-wide v0
.end method

.method public static isBounded(D)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v0, v0, p0

    .line 4
    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 8
    .line 9
    cmpg-double p0, p0, v0

    .line 10
    .line 11
    if-gtz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public static linearized(I)D
    .locals 6

    .line 1
    int-to-double v0, p0

    .line 2
    const-wide v2, 0x406fe00000000000L    # 255.0

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    div-double/2addr v0, v2

    .line 8
    const-wide v2, 0x3fa4b5daa07d970dL    # 0.040449936

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    cmpg-double p0, v0, v2

    .line 14
    .line 15
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 16
    .line 17
    if-gtz p0, :cond_0

    .line 18
    .line 19
    const-wide v4, 0x4029d70a3d70a3d7L    # 12.92

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    div-double/2addr v0, v4

    .line 25
    :goto_0
    mul-double/2addr v0, v2

    .line 26
    return-wide v0

    .line 27
    :cond_0
    const-wide v4, 0x3fac28f5c28f5c29L    # 0.055

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    add-double/2addr v0, v4

    .line 33
    const-wide v4, 0x3ff0e147ae147ae1L    # 1.055

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    div-double/2addr v0, v4

    .line 39
    const-wide v4, 0x4003333333333333L    # 2.4

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    goto :goto_0
.end method

.method public static matrixMultiply([D[[D)[D
    .locals 17

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-wide v1, p0, v0

    .line 3
    .line 4
    aget-object v3, p1, v0

    .line 5
    .line 6
    aget-wide v4, v3, v0

    .line 7
    .line 8
    mul-double/2addr v4, v1

    .line 9
    const/4 v6, 0x1

    .line 10
    aget-wide v7, p0, v6

    .line 11
    .line 12
    aget-wide v9, v3, v6

    .line 13
    .line 14
    mul-double/2addr v9, v7

    .line 15
    add-double/2addr v9, v4

    .line 16
    const/4 v4, 0x2

    .line 17
    aget-wide v11, p0, v4

    .line 18
    .line 19
    aget-wide v13, v3, v4

    .line 20
    .line 21
    mul-double/2addr v13, v11

    .line 22
    add-double/2addr v13, v9

    .line 23
    aget-object v3, p1, v6

    .line 24
    .line 25
    aget-wide v9, v3, v0

    .line 26
    .line 27
    mul-double/2addr v9, v1

    .line 28
    aget-wide v15, v3, v6

    .line 29
    .line 30
    mul-double/2addr v15, v7

    .line 31
    add-double/2addr v15, v9

    .line 32
    aget-wide v9, v3, v4

    .line 33
    .line 34
    mul-double/2addr v9, v11

    .line 35
    add-double/2addr v9, v15

    .line 36
    aget-object v3, p1, v4

    .line 37
    .line 38
    aget-wide v15, v3, v0

    .line 39
    .line 40
    mul-double/2addr v1, v15

    .line 41
    aget-wide v15, v3, v6

    .line 42
    .line 43
    mul-double/2addr v7, v15

    .line 44
    add-double/2addr v7, v1

    .line 45
    aget-wide v1, v3, v4

    .line 46
    .line 47
    mul-double/2addr v11, v1

    .line 48
    add-double/2addr v11, v7

    .line 49
    const/4 v1, 0x3

    .line 50
    new-array v1, v1, [D

    .line 51
    .line 52
    aput-wide v13, v1, v0

    .line 53
    .line 54
    aput-wide v9, v1, v6

    .line 55
    .line 56
    aput-wide v11, v1, v4

    .line 57
    .line 58
    return-object v1
.end method

.method public static solveToInt(DDD)I
    .locals 43

    .line 1
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmpg-double v2, p2, v0

    .line 7
    .line 8
    if-ltz v2, :cond_0

    .line 9
    .line 10
    cmpg-double v0, p4, v0

    .line 11
    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    const-wide v0, 0x4058fffe5c91d14eL    # 99.9999

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmpl-double v0, p4, v0

    .line 20
    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    :cond_0
    const/high16 v20, -0x1000000

    .line 24
    .line 25
    goto/16 :goto_18

    .line 26
    .line 27
    :cond_1
    const-wide v0, 0x4076800000000000L    # 360.0

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    rem-double v4, p0, v0

    .line 33
    .line 34
    const-wide/16 v6, 0x0

    .line 35
    .line 36
    cmpg-double v2, v4, v6

    .line 37
    .line 38
    if-gez v2, :cond_2

    .line 39
    .line 40
    add-double/2addr v4, v0

    .line 41
    :cond_2
    const-wide v0, 0x4066800000000000L    # 180.0

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    div-double/2addr v4, v0

    .line 47
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    mul-double/2addr v4, v0

    .line 53
    invoke-static/range {p4 .. p5}, Lcom/google/android/material/color/utilities/Cam16;->yFromLstar(D)D

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 58
    .line 59
    .line 60
    move-result-wide v8

    .line 61
    const-wide/high16 v10, 0x4026000000000000L    # 11.0

    .line 62
    .line 63
    mul-double/2addr v8, v10

    .line 64
    sget-object v2, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    .line 65
    .line 66
    const-wide v12, 0x3fd28f5c28f5c28fL    # 0.29

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    iget-wide v14, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->n:D

    .line 72
    .line 73
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 74
    .line 75
    .line 76
    move-result-wide v12

    .line 77
    const-wide v14, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    sub-double/2addr v14, v12

    .line 83
    const-wide v12, 0x3fe75c28f5c28f5cL    # 0.73

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 89
    .line 90
    .line 91
    move-result-wide v12

    .line 92
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 93
    .line 94
    div-double v12, v14, v12

    .line 95
    .line 96
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    .line 97
    .line 98
    add-double v18, v4, v16

    .line 99
    .line 100
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    .line 101
    .line 102
    .line 103
    move-result-wide v18

    .line 104
    const-wide v20, 0x400e666666666666L    # 3.8

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    add-double v18, v18, v20

    .line 110
    .line 111
    const-wide/high16 v20, 0x3fd0000000000000L    # 0.25

    .line 112
    .line 113
    mul-double v18, v18, v20

    .line 114
    .line 115
    const-wide v20, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    mul-double v18, v18, v20

    .line 121
    .line 122
    move-wide/from16 p0, v4

    .line 123
    .line 124
    const/high16 v20, -0x1000000

    .line 125
    .line 126
    iget-wide v3, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->nc:D

    .line 127
    .line 128
    mul-double v18, v18, v3

    .line 129
    .line 130
    iget-wide v3, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->ncb:D

    .line 131
    .line 132
    mul-double v18, v18, v3

    .line 133
    .line 134
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->sin(D)D

    .line 135
    .line 136
    .line 137
    move-result-wide v3

    .line 138
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->cos(D)D

    .line 139
    .line 140
    .line 141
    move-result-wide v21

    .line 142
    move-wide/from16 v24, v6

    .line 143
    .line 144
    const/4 v5, 0x0

    .line 145
    const/16 v23, 0x0

    .line 146
    .line 147
    :goto_0
    const/4 v6, 0x5

    .line 148
    move-wide/from16 p4, v10

    .line 149
    .line 150
    sget-object v26, Lcom/google/android/material/color/utilities/Cam16;->Y_FROM_LINRGB:[D

    .line 151
    .line 152
    const-wide/high16 v27, 0x4059000000000000L    # 100.0

    .line 153
    .line 154
    move-wide/from16 v29, v14

    .line 155
    .line 156
    if-ge v5, v6, :cond_b

    .line 157
    .line 158
    const/4 v6, 0x1

    .line 159
    const/16 v31, 0x2

    .line 160
    .line 161
    div-double v14, v8, v27

    .line 162
    .line 163
    cmpl-double v32, p2, v24

    .line 164
    .line 165
    if-eqz v32, :cond_4

    .line 166
    .line 167
    cmpl-double v32, v8, v24

    .line 168
    .line 169
    if-nez v32, :cond_3

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_3
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    .line 173
    .line 174
    .line 175
    move-result-wide v32

    .line 176
    div-double v32, p2, v32

    .line 177
    .line 178
    :goto_1
    const/16 v34, 0x8

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_4
    :goto_2
    move-wide/from16 v32, v24

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :goto_3
    mul-double v10, v32, v12

    .line 185
    .line 186
    move/from16 v33, v6

    .line 187
    .line 188
    const-wide v6, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 194
    .line 195
    .line 196
    move-result-wide v6

    .line 197
    iget-wide v10, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->aw:D

    .line 198
    .line 199
    move-wide/from16 v35, v0

    .line 200
    .line 201
    iget-wide v0, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->c:D

    .line 202
    .line 203
    div-double v0, v29, v0

    .line 204
    .line 205
    move-wide/from16 v37, v0

    .line 206
    .line 207
    iget-wide v0, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->z:D

    .line 208
    .line 209
    div-double v0, v37, v0

    .line 210
    .line 211
    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 212
    .line 213
    .line 214
    move-result-wide v0

    .line 215
    mul-double/2addr v0, v10

    .line 216
    iget-wide v10, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->nbb:D

    .line 217
    .line 218
    div-double/2addr v0, v10

    .line 219
    const-wide v10, 0x3fd3851eb851eb85L    # 0.305

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    add-double/2addr v10, v0

    .line 225
    const-wide/high16 v14, 0x4037000000000000L    # 23.0

    .line 226
    .line 227
    mul-double/2addr v10, v14

    .line 228
    mul-double/2addr v10, v6

    .line 229
    mul-double v14, v14, v18

    .line 230
    .line 231
    mul-double v37, v6, p4

    .line 232
    .line 233
    mul-double v37, v37, v21

    .line 234
    .line 235
    add-double v37, v37, v14

    .line 236
    .line 237
    const-wide/high16 v14, 0x405b000000000000L    # 108.0

    .line 238
    .line 239
    mul-double/2addr v6, v14

    .line 240
    mul-double/2addr v6, v3

    .line 241
    add-double v6, v6, v37

    .line 242
    .line 243
    div-double/2addr v10, v6

    .line 244
    mul-double v6, v10, v21

    .line 245
    .line 246
    mul-double/2addr v10, v3

    .line 247
    const-wide v14, 0x407cc00000000000L    # 460.0

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    mul-double/2addr v0, v14

    .line 253
    const-wide v14, 0x407c300000000000L    # 451.0

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    mul-double/2addr v14, v6

    .line 259
    add-double/2addr v14, v0

    .line 260
    const-wide/high16 v37, 0x4072000000000000L    # 288.0

    .line 261
    .line 262
    mul-double v37, v37, v10

    .line 263
    .line 264
    add-double v37, v37, v14

    .line 265
    .line 266
    const-wide v14, 0x4095ec0000000000L    # 1403.0

    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    div-double v37, v37, v14

    .line 272
    .line 273
    const-wide v39, 0x408bd80000000000L    # 891.0

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    mul-double v39, v39, v6

    .line 279
    .line 280
    sub-double v39, v0, v39

    .line 281
    .line 282
    const-wide v41, 0x4070500000000000L    # 261.0

    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    mul-double v41, v41, v10

    .line 288
    .line 289
    sub-double v39, v39, v41

    .line 290
    .line 291
    div-double v39, v39, v14

    .line 292
    .line 293
    const-wide v41, 0x406b800000000000L    # 220.0

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    mul-double v6, v6, v41

    .line 299
    .line 300
    sub-double/2addr v0, v6

    .line 301
    const-wide v6, 0x40b89c0000000000L    # 6300.0

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    mul-double/2addr v10, v6

    .line 307
    sub-double/2addr v0, v10

    .line 308
    div-double/2addr v0, v14

    .line 309
    invoke-static/range {v37 .. v38}, Lcom/google/android/material/color/utilities/Cam16;->inverseChromaticAdaptation(D)D

    .line 310
    .line 311
    .line 312
    move-result-wide v6

    .line 313
    invoke-static/range {v39 .. v40}, Lcom/google/android/material/color/utilities/Cam16;->inverseChromaticAdaptation(D)D

    .line 314
    .line 315
    .line 316
    move-result-wide v10

    .line 317
    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/Cam16;->inverseChromaticAdaptation(D)D

    .line 318
    .line 319
    .line 320
    move-result-wide v0

    .line 321
    const/4 v14, 0x3

    .line 322
    new-array v15, v14, [D

    .line 323
    .line 324
    aput-wide v6, v15, v23

    .line 325
    .line 326
    aput-wide v10, v15, v33

    .line 327
    .line 328
    aput-wide v0, v15, v31

    .line 329
    .line 330
    sget-object v0, Lcom/google/android/material/color/utilities/Cam16;->LINRGB_FROM_SCALED_DISCOUNT:[[D

    .line 331
    .line 332
    invoke-static {v15, v0}, Lcom/google/android/material/color/utilities/Cam16;->matrixMultiply([D[[D)[D

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    aget-wide v6, v0, v23

    .line 337
    .line 338
    cmpg-double v1, v6, v24

    .line 339
    .line 340
    if-ltz v1, :cond_6

    .line 341
    .line 342
    aget-wide v10, v0, v33

    .line 343
    .line 344
    cmpg-double v1, v10, v24

    .line 345
    .line 346
    if-ltz v1, :cond_6

    .line 347
    .line 348
    aget-wide v14, v0, v31

    .line 349
    .line 350
    cmpg-double v1, v14, v24

    .line 351
    .line 352
    if-gez v1, :cond_5

    .line 353
    .line 354
    goto :goto_4

    .line 355
    :cond_5
    aget-wide v37, v26, v23

    .line 356
    .line 357
    aget-wide v39, v26, v33

    .line 358
    .line 359
    aget-wide v41, v26, v31

    .line 360
    .line 361
    mul-double v37, v37, v6

    .line 362
    .line 363
    mul-double v39, v39, v10

    .line 364
    .line 365
    add-double v39, v39, v37

    .line 366
    .line 367
    mul-double v41, v41, v14

    .line 368
    .line 369
    add-double v41, v41, v39

    .line 370
    .line 371
    cmpg-double v1, v41, v24

    .line 372
    .line 373
    if-gtz v1, :cond_7

    .line 374
    .line 375
    :cond_6
    :goto_4
    move/from16 v0, v23

    .line 376
    .line 377
    goto :goto_6

    .line 378
    :cond_7
    const/4 v1, 0x4

    .line 379
    if-eq v5, v1, :cond_9

    .line 380
    .line 381
    sub-double v6, v41, v35

    .line 382
    .line 383
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    .line 384
    .line 385
    .line 386
    move-result-wide v10

    .line 387
    const-wide v14, 0x3f60624dd2f1a9fcL    # 0.002

    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    cmpg-double v1, v10, v14

    .line 393
    .line 394
    if-gez v1, :cond_8

    .line 395
    .line 396
    goto :goto_5

    .line 397
    :cond_8
    mul-double/2addr v6, v8

    .line 398
    mul-double v41, v41, v16

    .line 399
    .line 400
    div-double v6, v6, v41

    .line 401
    .line 402
    sub-double/2addr v8, v6

    .line 403
    add-int/lit8 v5, v5, 0x1

    .line 404
    .line 405
    move-wide/from16 v10, p4

    .line 406
    .line 407
    move-wide/from16 v14, v29

    .line 408
    .line 409
    move-wide/from16 v0, v35

    .line 410
    .line 411
    goto/16 :goto_0

    .line 412
    .line 413
    :cond_9
    :goto_5
    aget-wide v1, v0, v23

    .line 414
    .line 415
    const-wide v3, 0x405900a3d70a3d71L    # 100.01

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    cmpl-double v5, v1, v3

    .line 421
    .line 422
    if-gtz v5, :cond_6

    .line 423
    .line 424
    aget-wide v5, v0, v33

    .line 425
    .line 426
    cmpl-double v5, v5, v3

    .line 427
    .line 428
    if-gtz v5, :cond_6

    .line 429
    .line 430
    aget-wide v5, v0, v31

    .line 431
    .line 432
    cmpl-double v3, v5, v3

    .line 433
    .line 434
    if-lez v3, :cond_a

    .line 435
    .line 436
    goto :goto_4

    .line 437
    :cond_a
    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/Cam16;->delinearized(D)I

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    aget-wide v2, v0, v33

    .line 442
    .line 443
    invoke-static {v2, v3}, Lcom/google/android/material/color/utilities/Cam16;->delinearized(D)I

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    aget-wide v3, v0, v31

    .line 448
    .line 449
    invoke-static {v3, v4}, Lcom/google/android/material/color/utilities/Cam16;->delinearized(D)I

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    and-int/lit16 v1, v1, 0xff

    .line 454
    .line 455
    shl-int/lit8 v1, v1, 0x10

    .line 456
    .line 457
    or-int v1, v1, v20

    .line 458
    .line 459
    and-int/lit16 v2, v2, 0xff

    .line 460
    .line 461
    shl-int/lit8 v2, v2, 0x8

    .line 462
    .line 463
    or-int/2addr v1, v2

    .line 464
    and-int/lit16 v0, v0, 0xff

    .line 465
    .line 466
    or-int/2addr v0, v1

    .line 467
    goto :goto_6

    .line 468
    :cond_b
    move-wide/from16 v35, v0

    .line 469
    .line 470
    const/16 v31, 0x2

    .line 471
    .line 472
    const/16 v33, 0x1

    .line 473
    .line 474
    const/16 v34, 0x8

    .line 475
    .line 476
    goto :goto_4

    .line 477
    :goto_6
    if-eqz v0, :cond_c

    .line 478
    .line 479
    return v0

    .line 480
    :cond_c
    const/4 v14, 0x3

    .line 481
    new-array v0, v14, [D

    .line 482
    .line 483
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 484
    .line 485
    aput-wide v1, v0, v23

    .line 486
    .line 487
    aput-wide v1, v0, v33

    .line 488
    .line 489
    aput-wide v1, v0, v31

    .line 490
    .line 491
    move-object v1, v0

    .line 492
    move/from16 v2, v23

    .line 493
    .line 494
    move v4, v2

    .line 495
    move-wide/from16 v7, v24

    .line 496
    .line 497
    move-wide v11, v7

    .line 498
    move/from16 v3, v33

    .line 499
    .line 500
    :goto_7
    const/16 v5, 0xc

    .line 501
    .line 502
    if-ge v4, v5, :cond_19

    .line 503
    .line 504
    aget-wide v9, v26, v23

    .line 505
    .line 506
    aget-wide v13, v26, v33

    .line 507
    .line 508
    aget-wide v18, v26, v31

    .line 509
    .line 510
    rem-int/lit8 v5, v4, 0x4

    .line 511
    .line 512
    move/from16 v6, v33

    .line 513
    .line 514
    if-gt v5, v6, :cond_d

    .line 515
    .line 516
    move-wide/from16 v21, v24

    .line 517
    .line 518
    goto :goto_8

    .line 519
    :cond_d
    move-wide/from16 v21, v27

    .line 520
    .line 521
    :goto_8
    rem-int/lit8 v5, v4, 0x2

    .line 522
    .line 523
    if-nez v5, :cond_e

    .line 524
    .line 525
    move-wide/from16 v29, v24

    .line 526
    .line 527
    :goto_9
    const/4 v5, 0x4

    .line 528
    goto :goto_a

    .line 529
    :cond_e
    move-wide/from16 v29, v27

    .line 530
    .line 531
    goto :goto_9

    .line 532
    :goto_a
    if-ge v4, v5, :cond_10

    .line 533
    .line 534
    mul-double v13, v13, v21

    .line 535
    .line 536
    sub-double v13, v35, v13

    .line 537
    .line 538
    mul-double v18, v18, v29

    .line 539
    .line 540
    sub-double v13, v13, v18

    .line 541
    .line 542
    div-double/2addr v13, v9

    .line 543
    invoke-static {v13, v14}, Lcom/google/android/material/color/utilities/Cam16;->isBounded(D)Z

    .line 544
    .line 545
    .line 546
    move-result v9

    .line 547
    if-eqz v9, :cond_f

    .line 548
    .line 549
    const/4 v15, 0x3

    .line 550
    new-array v9, v15, [D

    .line 551
    .line 552
    aput-wide v13, v9, v23

    .line 553
    .line 554
    const/4 v6, 0x1

    .line 555
    aput-wide v21, v9, v6

    .line 556
    .line 557
    aput-wide v29, v9, v31

    .line 558
    .line 559
    :goto_b
    move-object v5, v9

    .line 560
    goto :goto_c

    .line 561
    :cond_f
    const/4 v15, 0x3

    .line 562
    new-array v9, v15, [D

    .line 563
    .line 564
    fill-array-data v9, :array_0

    .line 565
    .line 566
    .line 567
    goto :goto_b

    .line 568
    :cond_10
    move/from16 v5, v34

    .line 569
    .line 570
    const/4 v15, 0x3

    .line 571
    if-ge v4, v5, :cond_12

    .line 572
    .line 573
    mul-double v9, v9, v29

    .line 574
    .line 575
    sub-double v9, v35, v9

    .line 576
    .line 577
    mul-double v18, v18, v21

    .line 578
    .line 579
    sub-double v9, v9, v18

    .line 580
    .line 581
    div-double/2addr v9, v13

    .line 582
    invoke-static {v9, v10}, Lcom/google/android/material/color/utilities/Cam16;->isBounded(D)Z

    .line 583
    .line 584
    .line 585
    move-result v5

    .line 586
    if-eqz v5, :cond_11

    .line 587
    .line 588
    new-array v5, v15, [D

    .line 589
    .line 590
    aput-wide v29, v5, v23

    .line 591
    .line 592
    const/4 v6, 0x1

    .line 593
    aput-wide v9, v5, v6

    .line 594
    .line 595
    aput-wide v21, v5, v31

    .line 596
    .line 597
    goto :goto_c

    .line 598
    :cond_11
    new-array v9, v15, [D

    .line 599
    .line 600
    fill-array-data v9, :array_1

    .line 601
    .line 602
    .line 603
    goto :goto_b

    .line 604
    :cond_12
    mul-double v9, v9, v21

    .line 605
    .line 606
    sub-double v9, v35, v9

    .line 607
    .line 608
    mul-double v13, v13, v29

    .line 609
    .line 610
    sub-double/2addr v9, v13

    .line 611
    div-double v9, v9, v18

    .line 612
    .line 613
    invoke-static {v9, v10}, Lcom/google/android/material/color/utilities/Cam16;->isBounded(D)Z

    .line 614
    .line 615
    .line 616
    move-result v5

    .line 617
    if-eqz v5, :cond_13

    .line 618
    .line 619
    new-array v5, v15, [D

    .line 620
    .line 621
    aput-wide v21, v5, v23

    .line 622
    .line 623
    const/4 v6, 0x1

    .line 624
    aput-wide v29, v5, v6

    .line 625
    .line 626
    aput-wide v9, v5, v31

    .line 627
    .line 628
    goto :goto_c

    .line 629
    :cond_13
    new-array v9, v15, [D

    .line 630
    .line 631
    fill-array-data v9, :array_2

    .line 632
    .line 633
    .line 634
    goto :goto_b

    .line 635
    :goto_c
    aget-wide v9, v5, v23

    .line 636
    .line 637
    cmpg-double v9, v9, v24

    .line 638
    .line 639
    if-gez v9, :cond_14

    .line 640
    .line 641
    goto :goto_d

    .line 642
    :cond_14
    invoke-static {v5}, Lcom/google/android/material/color/utilities/Cam16;->hueOf([D)D

    .line 643
    .line 644
    .line 645
    move-result-wide v9

    .line 646
    if-nez v2, :cond_15

    .line 647
    .line 648
    move-wide/from16 v13, p0

    .line 649
    .line 650
    move-object v0, v5

    .line 651
    move-object v1, v0

    .line 652
    move-wide v7, v9

    .line 653
    move-wide v11, v7

    .line 654
    const/4 v2, 0x1

    .line 655
    goto :goto_10

    .line 656
    :cond_15
    if-nez v3, :cond_16

    .line 657
    .line 658
    invoke-static/range {v7 .. v12}, Lcom/google/android/material/color/utilities/Cam16;->areInCyclicOrder(DDD)Z

    .line 659
    .line 660
    .line 661
    move-result v13

    .line 662
    if-eqz v13, :cond_17

    .line 663
    .line 664
    :cond_16
    move-wide/from16 p2, p0

    .line 665
    .line 666
    move-wide/from16 p0, v7

    .line 667
    .line 668
    move-wide/from16 p4, v9

    .line 669
    .line 670
    goto :goto_e

    .line 671
    :cond_17
    :goto_d
    move-wide/from16 v13, p0

    .line 672
    .line 673
    goto :goto_10

    .line 674
    :goto_e
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/color/utilities/Cam16;->areInCyclicOrder(DDD)Z

    .line 675
    .line 676
    .line 677
    move-result v3

    .line 678
    move-wide/from16 v7, p0

    .line 679
    .line 680
    move-wide/from16 v13, p2

    .line 681
    .line 682
    move-wide/from16 v9, p4

    .line 683
    .line 684
    if-eqz v3, :cond_18

    .line 685
    .line 686
    move-object v1, v5

    .line 687
    move-wide v11, v9

    .line 688
    :goto_f
    move/from16 v3, v23

    .line 689
    .line 690
    goto :goto_10

    .line 691
    :cond_18
    move-object v0, v5

    .line 692
    move-wide v7, v9

    .line 693
    goto :goto_f

    .line 694
    :goto_10
    add-int/lit8 v4, v4, 0x1

    .line 695
    .line 696
    move-wide/from16 p0, v13

    .line 697
    .line 698
    const/16 v33, 0x1

    .line 699
    .line 700
    const/16 v34, 0x8

    .line 701
    .line 702
    goto/16 :goto_7

    .line 703
    .line 704
    :cond_19
    move-wide/from16 v13, p0

    .line 705
    .line 706
    move/from16 v2, v31

    .line 707
    .line 708
    new-array v3, v2, [[D

    .line 709
    .line 710
    aput-object v0, v3, v23

    .line 711
    .line 712
    const/4 v6, 0x1

    .line 713
    aput-object v1, v3, v6

    .line 714
    .line 715
    aget-object v0, v3, v23

    .line 716
    .line 717
    invoke-static {v0}, Lcom/google/android/material/color/utilities/Cam16;->hueOf([D)D

    .line 718
    .line 719
    .line 720
    move-result-wide v1

    .line 721
    aget-object v3, v3, v6

    .line 722
    .line 723
    move/from16 v4, v23

    .line 724
    .line 725
    :goto_11
    const/4 v15, 0x3

    .line 726
    if-ge v4, v15, :cond_1f

    .line 727
    .line 728
    aget-wide v7, v0, v4

    .line 729
    .line 730
    aget-wide v9, v3, v4

    .line 731
    .line 732
    cmpl-double v5, v7, v9

    .line 733
    .line 734
    if-eqz v5, :cond_1e

    .line 735
    .line 736
    cmpg-double v5, v7, v9

    .line 737
    .line 738
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 739
    .line 740
    if-gez v5, :cond_1a

    .line 741
    .line 742
    invoke-static {v7, v8}, Lcom/google/android/material/color/utilities/Cam16;->trueDelinearized(D)D

    .line 743
    .line 744
    .line 745
    move-result-wide v7

    .line 746
    sub-double/2addr v7, v9

    .line 747
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    .line 748
    .line 749
    .line 750
    move-result-wide v7

    .line 751
    double-to-int v5, v7

    .line 752
    aget-wide v7, v3, v4

    .line 753
    .line 754
    invoke-static {v7, v8}, Lcom/google/android/material/color/utilities/Cam16;->trueDelinearized(D)D

    .line 755
    .line 756
    .line 757
    move-result-wide v7

    .line 758
    sub-double/2addr v7, v9

    .line 759
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 760
    .line 761
    .line 762
    move-result-wide v7

    .line 763
    :goto_12
    double-to-int v7, v7

    .line 764
    goto :goto_13

    .line 765
    :cond_1a
    invoke-static {v7, v8}, Lcom/google/android/material/color/utilities/Cam16;->trueDelinearized(D)D

    .line 766
    .line 767
    .line 768
    move-result-wide v7

    .line 769
    sub-double/2addr v7, v9

    .line 770
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 771
    .line 772
    .line 773
    move-result-wide v7

    .line 774
    double-to-int v5, v7

    .line 775
    aget-wide v7, v3, v4

    .line 776
    .line 777
    invoke-static {v7, v8}, Lcom/google/android/material/color/utilities/Cam16;->trueDelinearized(D)D

    .line 778
    .line 779
    .line 780
    move-result-wide v7

    .line 781
    sub-double/2addr v7, v9

    .line 782
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    .line 783
    .line 784
    .line 785
    move-result-wide v7

    .line 786
    goto :goto_12

    .line 787
    :goto_13
    move/from16 v8, v23

    .line 788
    .line 789
    :goto_14
    const/16 v9, 0x8

    .line 790
    .line 791
    if-ge v8, v9, :cond_1b

    .line 792
    .line 793
    sub-int v9, v7, v5

    .line 794
    .line 795
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 796
    .line 797
    .line 798
    move-result v9

    .line 799
    const/4 v6, 0x1

    .line 800
    if-gt v9, v6, :cond_1c

    .line 801
    .line 802
    :cond_1b
    move-wide v11, v1

    .line 803
    goto :goto_16

    .line 804
    :cond_1c
    add-int v9, v5, v7

    .line 805
    .line 806
    int-to-double v9, v9

    .line 807
    div-double v9, v9, v16

    .line 808
    .line 809
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    .line 810
    .line 811
    .line 812
    move-result-wide v9

    .line 813
    double-to-int v9, v9

    .line 814
    sget-object v10, Lcom/google/android/material/color/utilities/Cam16;->CRITICAL_PLANES:[D

    .line 815
    .line 816
    aget-wide v11, v10, v9

    .line 817
    .line 818
    aget-wide v18, v0, v4

    .line 819
    .line 820
    aget-wide v21, v3, v4

    .line 821
    .line 822
    sub-double v11, v11, v18

    .line 823
    .line 824
    sub-double v21, v21, v18

    .line 825
    .line 826
    div-double v11, v11, v21

    .line 827
    .line 828
    aget-wide v18, v0, v23

    .line 829
    .line 830
    aget-wide v21, v3, v23

    .line 831
    .line 832
    sub-double v21, v21, v18

    .line 833
    .line 834
    mul-double v21, v21, v11

    .line 835
    .line 836
    add-double v21, v21, v18

    .line 837
    .line 838
    const/4 v6, 0x1

    .line 839
    aget-wide v18, v0, v6

    .line 840
    .line 841
    aget-wide v24, v3, v6

    .line 842
    .line 843
    sub-double v24, v24, v18

    .line 844
    .line 845
    mul-double v24, v24, v11

    .line 846
    .line 847
    add-double v24, v24, v18

    .line 848
    .line 849
    const/16 v31, 0x2

    .line 850
    .line 851
    aget-wide v18, v0, v31

    .line 852
    .line 853
    aget-wide v26, v3, v31

    .line 854
    .line 855
    sub-double v26, v26, v18

    .line 856
    .line 857
    mul-double v26, v26, v11

    .line 858
    .line 859
    add-double v26, v26, v18

    .line 860
    .line 861
    const/4 v15, 0x3

    .line 862
    new-array v10, v15, [D

    .line 863
    .line 864
    aput-wide v21, v10, v23

    .line 865
    .line 866
    aput-wide v24, v10, v6

    .line 867
    .line 868
    aput-wide v26, v10, v31

    .line 869
    .line 870
    invoke-static {v10}, Lcom/google/android/material/color/utilities/Cam16;->hueOf([D)D

    .line 871
    .line 872
    .line 873
    move-result-wide v11

    .line 874
    move-wide/from16 p0, v1

    .line 875
    .line 876
    move-wide/from16 p4, v11

    .line 877
    .line 878
    move-wide/from16 p2, v13

    .line 879
    .line 880
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/color/utilities/Cam16;->areInCyclicOrder(DDD)Z

    .line 881
    .line 882
    .line 883
    move-result v1

    .line 884
    move-wide/from16 v11, p0

    .line 885
    .line 886
    move-wide/from16 v18, p4

    .line 887
    .line 888
    if-eqz v1, :cond_1d

    .line 889
    .line 890
    move v7, v9

    .line 891
    move-object v3, v10

    .line 892
    move-wide v1, v11

    .line 893
    goto :goto_15

    .line 894
    :cond_1d
    move v5, v9

    .line 895
    move-object v0, v10

    .line 896
    move-wide/from16 v1, v18

    .line 897
    .line 898
    :goto_15
    add-int/lit8 v8, v8, 0x1

    .line 899
    .line 900
    goto :goto_14

    .line 901
    :goto_16
    move-wide v1, v11

    .line 902
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    .line 903
    .line 904
    goto/16 :goto_11

    .line 905
    .line 906
    :cond_1f
    aget-wide v1, v0, v23

    .line 907
    .line 908
    aget-wide v4, v3, v23

    .line 909
    .line 910
    add-double/2addr v1, v4

    .line 911
    div-double v1, v1, v16

    .line 912
    .line 913
    const/4 v6, 0x1

    .line 914
    aget-wide v4, v0, v6

    .line 915
    .line 916
    aget-wide v7, v3, v6

    .line 917
    .line 918
    add-double/2addr v4, v7

    .line 919
    div-double v4, v4, v16

    .line 920
    .line 921
    const/16 v31, 0x2

    .line 922
    .line 923
    aget-wide v7, v0, v31

    .line 924
    .line 925
    aget-wide v9, v3, v31

    .line 926
    .line 927
    add-double/2addr v7, v9

    .line 928
    div-double v7, v7, v16

    .line 929
    .line 930
    const/4 v15, 0x3

    .line 931
    new-array v0, v15, [D

    .line 932
    .line 933
    aput-wide v1, v0, v23

    .line 934
    .line 935
    aput-wide v4, v0, v6

    .line 936
    .line 937
    aput-wide v7, v0, v31

    .line 938
    .line 939
    aget-wide v1, v0, v23

    .line 940
    .line 941
    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/Cam16;->delinearized(D)I

    .line 942
    .line 943
    .line 944
    move-result v1

    .line 945
    aget-wide v2, v0, v6

    .line 946
    .line 947
    invoke-static {v2, v3}, Lcom/google/android/material/color/utilities/Cam16;->delinearized(D)I

    .line 948
    .line 949
    .line 950
    move-result v2

    .line 951
    aget-wide v3, v0, v31

    .line 952
    .line 953
    invoke-static {v3, v4}, Lcom/google/android/material/color/utilities/Cam16;->delinearized(D)I

    .line 954
    .line 955
    .line 956
    move-result v0

    .line 957
    and-int/lit16 v1, v1, 0xff

    .line 958
    .line 959
    shl-int/lit8 v1, v1, 0x10

    .line 960
    .line 961
    or-int v1, v1, v20

    .line 962
    .line 963
    and-int/lit16 v2, v2, 0xff

    .line 964
    .line 965
    const/16 v34, 0x8

    .line 966
    .line 967
    shl-int/lit8 v2, v2, 0x8

    .line 968
    .line 969
    or-int/2addr v1, v2

    .line 970
    and-int/lit16 v0, v0, 0xff

    .line 971
    .line 972
    :goto_17
    or-int/2addr v0, v1

    .line 973
    return v0

    .line 974
    :goto_18
    invoke-static/range {p4 .. p5}, Lcom/google/android/material/color/utilities/Cam16;->yFromLstar(D)D

    .line 975
    .line 976
    .line 977
    move-result-wide v0

    .line 978
    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/Cam16;->delinearized(D)I

    .line 979
    .line 980
    .line 981
    move-result v0

    .line 982
    and-int/lit16 v0, v0, 0xff

    .line 983
    .line 984
    shl-int/lit8 v1, v0, 0x10

    .line 985
    .line 986
    or-int v1, v1, v20

    .line 987
    .line 988
    shl-int/lit8 v2, v0, 0x8

    .line 989
    .line 990
    or-int/2addr v1, v2

    .line 991
    goto :goto_17

    .line 992
    nop

    .line 993
    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    :array_1
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    :array_2
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method public static trueDelinearized(D)D
    .locals 2

    .line 1
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 2
    .line 3
    div-double/2addr p0, v0

    .line 4
    const-wide v0, 0x3f69a5c37387b719L    # 0.0031308

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    cmpg-double v0, p0, v0

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    const-wide v0, 0x4029d70a3d70a3d7L    # 12.92

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    mul-double/2addr p0, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-wide v0, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 26
    .line 27
    .line 28
    move-result-wide p0

    .line 29
    const-wide v0, 0x3ff0e147ae147ae1L    # 1.055

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    mul-double/2addr p0, v0

    .line 35
    const-wide v0, 0x3fac28f5c28f5c29L    # 0.055

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    sub-double/2addr p0, v0

    .line 41
    :goto_0
    const-wide v0, 0x406fe00000000000L    # 255.0

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    mul-double/2addr p0, v0

    .line 47
    return-wide p0
.end method

.method public static yFromLstar(D)D
    .locals 8

    .line 1
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    .line 2
    .line 3
    add-double/2addr p0, v0

    .line 4
    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    .line 5
    .line 6
    div-double/2addr p0, v2

    .line 7
    mul-double v4, p0, p0

    .line 8
    .line 9
    mul-double/2addr v4, p0

    .line 10
    const-wide v6, 0x3f822354d28f7cd6L    # 0.008856451679035631

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmpl-double v6, v4, v6

    .line 16
    .line 17
    if-lez v6, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    mul-double/2addr p0, v2

    .line 21
    sub-double/2addr p0, v0

    .line 22
    const-wide v0, 0x408c3a5ed097b426L    # 903.2962962962963

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    div-double v4, p0, v0

    .line 28
    .line 29
    :goto_0
    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    .line 30
    .line 31
    mul-double/2addr v4, p0

    .line 32
    return-wide v4
.end method
