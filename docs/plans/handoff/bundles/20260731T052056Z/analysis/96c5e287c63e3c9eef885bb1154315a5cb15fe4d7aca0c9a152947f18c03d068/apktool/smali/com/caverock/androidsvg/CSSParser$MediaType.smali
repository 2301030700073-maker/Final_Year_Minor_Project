.class public final enum Lcom/caverock/androidsvg/CSSParser$MediaType;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $VALUES:[Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum all:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum aural:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum braille:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum embossed:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum handheld:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum print:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum projection:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum speech:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum tty:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum tv:Lcom/caverock/androidsvg/CSSParser$MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 2
    .line 3
    const-string v1, "all"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->all:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 10
    .line 11
    new-instance v1, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 12
    .line 13
    const-string v3, "aural"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/caverock/androidsvg/CSSParser$MediaType;->aural:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 20
    .line 21
    new-instance v3, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 22
    .line 23
    const-string v5, "braille"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/caverock/androidsvg/CSSParser$MediaType;->braille:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 30
    .line 31
    new-instance v5, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 32
    .line 33
    const-string v7, "embossed"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/caverock/androidsvg/CSSParser$MediaType;->embossed:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 40
    .line 41
    new-instance v7, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 42
    .line 43
    const-string v9, "handheld"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/caverock/androidsvg/CSSParser$MediaType;->handheld:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 50
    .line 51
    new-instance v9, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 52
    .line 53
    const-string v11, "print"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lcom/caverock/androidsvg/CSSParser$MediaType;->print:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 60
    .line 61
    new-instance v11, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 62
    .line 63
    const-string v13, "projection"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lcom/caverock/androidsvg/CSSParser$MediaType;->projection:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 70
    .line 71
    new-instance v13, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 72
    .line 73
    const-string v15, "screen"

    .line 74
    .line 75
    move/from16 v16, v2

    .line 76
    .line 77
    const/4 v2, 0x7

    .line 78
    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    sput-object v13, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 82
    .line 83
    new-instance v15, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 84
    .line 85
    move/from16 v17, v2

    .line 86
    .line 87
    const-string v2, "speech"

    .line 88
    .line 89
    move/from16 v18, v4

    .line 90
    .line 91
    const/16 v4, 0x8

    .line 92
    .line 93
    invoke-direct {v15, v2, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    sput-object v15, Lcom/caverock/androidsvg/CSSParser$MediaType;->speech:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 97
    .line 98
    new-instance v2, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 99
    .line 100
    move/from16 v19, v4

    .line 101
    .line 102
    const-string/jumbo v4, "tty"

    .line 103
    .line 104
    .line 105
    move/from16 v20, v6

    .line 106
    .line 107
    const/16 v6, 0x9

    .line 108
    .line 109
    invoke-direct {v2, v4, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v2, Lcom/caverock/androidsvg/CSSParser$MediaType;->tty:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 113
    .line 114
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 115
    .line 116
    move/from16 v21, v6

    .line 117
    .line 118
    const-string/jumbo v6, "tv"

    .line 119
    .line 120
    .line 121
    move/from16 v22, v8

    .line 122
    .line 123
    const/16 v8, 0xa

    .line 124
    .line 125
    invoke-direct {v4, v6, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 126
    .line 127
    .line 128
    sput-object v4, Lcom/caverock/androidsvg/CSSParser$MediaType;->tv:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 129
    .line 130
    const/16 v6, 0xb

    .line 131
    .line 132
    new-array v6, v6, [Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 133
    .line 134
    aput-object v0, v6, v16

    .line 135
    .line 136
    aput-object v1, v6, v18

    .line 137
    .line 138
    aput-object v3, v6, v20

    .line 139
    .line 140
    aput-object v5, v6, v22

    .line 141
    .line 142
    aput-object v7, v6, v10

    .line 143
    .line 144
    aput-object v9, v6, v12

    .line 145
    .line 146
    aput-object v11, v6, v14

    .line 147
    .line 148
    aput-object v13, v6, v17

    .line 149
    .line 150
    aput-object v15, v6, v19

    .line 151
    .line 152
    aput-object v2, v6, v21

    .line 153
    .line 154
    aput-object v4, v6, v8

    .line 155
    .line 156
    sput-object v6, Lcom/caverock/androidsvg/CSSParser$MediaType;->$VALUES:[Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 157
    .line 158
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$MediaType;
    .locals 1

    .line 1
    const-class v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/caverock/androidsvg/CSSParser$MediaType;
    .locals 1

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->$VALUES:[Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/caverock/androidsvg/CSSParser$MediaType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 8
    .line 9
    return-object v0
.end method
