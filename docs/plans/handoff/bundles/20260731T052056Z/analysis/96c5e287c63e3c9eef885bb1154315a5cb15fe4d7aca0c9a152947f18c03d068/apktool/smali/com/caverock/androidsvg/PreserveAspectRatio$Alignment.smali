.class public final enum Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $VALUES:[Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum none:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum xMaxYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum xMaxYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum xMaxYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum xMidYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum xMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum xMidYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum xMinYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum xMinYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field public static final enum xMinYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 2
    .line 3
    const-string v1, "none"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->none:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 10
    .line 11
    new-instance v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 12
    .line 13
    const-string/jumbo v3, "xMinYMin"

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMinYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 21
    .line 22
    new-instance v3, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 23
    .line 24
    const-string/jumbo v5, "xMidYMin"

    .line 25
    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    sput-object v3, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMidYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 32
    .line 33
    new-instance v5, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 34
    .line 35
    const-string/jumbo v7, "xMaxYMin"

    .line 36
    .line 37
    .line 38
    const/4 v8, 0x3

    .line 39
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    sput-object v5, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMaxYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 43
    .line 44
    new-instance v7, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 45
    .line 46
    const-string/jumbo v9, "xMinYMid"

    .line 47
    .line 48
    .line 49
    const/4 v10, 0x4

    .line 50
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    sput-object v7, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMinYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 54
    .line 55
    new-instance v9, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 56
    .line 57
    const-string/jumbo v11, "xMidYMid"

    .line 58
    .line 59
    .line 60
    const/4 v12, 0x5

    .line 61
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    sput-object v9, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 65
    .line 66
    new-instance v11, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 67
    .line 68
    const-string/jumbo v13, "xMaxYMid"

    .line 69
    .line 70
    .line 71
    const/4 v14, 0x6

    .line 72
    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    sput-object v11, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMaxYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 76
    .line 77
    new-instance v13, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 78
    .line 79
    const-string/jumbo v15, "xMinYMax"

    .line 80
    .line 81
    .line 82
    move/from16 v16, v2

    .line 83
    .line 84
    const/4 v2, 0x7

    .line 85
    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    sput-object v13, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMinYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 89
    .line 90
    new-instance v15, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 91
    .line 92
    move/from16 v17, v2

    .line 93
    .line 94
    const-string/jumbo v2, "xMidYMax"

    .line 95
    .line 96
    .line 97
    move/from16 v18, v4

    .line 98
    .line 99
    const/16 v4, 0x8

    .line 100
    .line 101
    invoke-direct {v15, v2, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    sput-object v15, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMidYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 105
    .line 106
    new-instance v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 107
    .line 108
    move/from16 v19, v4

    .line 109
    .line 110
    const-string/jumbo v4, "xMaxYMax"

    .line 111
    .line 112
    .line 113
    move/from16 v20, v6

    .line 114
    .line 115
    const/16 v6, 0x9

    .line 116
    .line 117
    invoke-direct {v2, v4, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    sput-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->xMaxYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 121
    .line 122
    const/16 v4, 0xa

    .line 123
    .line 124
    new-array v4, v4, [Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 125
    .line 126
    aput-object v0, v4, v16

    .line 127
    .line 128
    aput-object v1, v4, v18

    .line 129
    .line 130
    aput-object v3, v4, v20

    .line 131
    .line 132
    aput-object v5, v4, v8

    .line 133
    .line 134
    aput-object v7, v4, v10

    .line 135
    .line 136
    aput-object v9, v4, v12

    .line 137
    .line 138
    aput-object v11, v4, v14

    .line 139
    .line 140
    aput-object v13, v4, v17

    .line 141
    .line 142
    aput-object v15, v4, v19

    .line 143
    .line 144
    aput-object v2, v4, v6

    .line 145
    .line 146
    sput-object v4, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->$VALUES:[Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 147
    .line 148
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;
    .locals 1

    .line 1
    const-class v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;
    .locals 1

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->$VALUES:[Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 8
    .line 9
    return-object v0
.end method
