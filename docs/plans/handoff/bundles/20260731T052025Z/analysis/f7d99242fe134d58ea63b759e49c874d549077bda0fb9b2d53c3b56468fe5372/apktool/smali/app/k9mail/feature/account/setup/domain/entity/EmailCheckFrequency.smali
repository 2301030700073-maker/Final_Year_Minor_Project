.class public final enum Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

.field public static final Companion:Lcom/mikepenz/fastadapter/VerboseLogger;

.field public static final DEFAULT:Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;


# instance fields
.field public final minutes:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "MANUAL"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 11
    .line 12
    const/16 v2, 0xf

    .line 13
    .line 14
    const-string v4, "EVERY_15_MINUTES"

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    invoke-direct {v1, v4, v5, v2}, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 21
    .line 22
    const/16 v4, 0x1e

    .line 23
    .line 24
    const-string v6, "EVERY_30_MINUTES"

    .line 25
    .line 26
    const/4 v7, 0x2

    .line 27
    invoke-direct {v2, v6, v7, v4}, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    new-instance v4, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 31
    .line 32
    const/16 v6, 0x3c

    .line 33
    .line 34
    const-string v8, "EVERY_HOUR"

    .line 35
    .line 36
    const/4 v9, 0x3

    .line 37
    invoke-direct {v4, v8, v9, v6}, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    new-instance v6, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 41
    .line 42
    const/16 v8, 0x78

    .line 43
    .line 44
    const-string v10, "EVERY_2_HOURS"

    .line 45
    .line 46
    const/4 v11, 0x4

    .line 47
    invoke-direct {v6, v10, v11, v8}, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    new-instance v8, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 51
    .line 52
    const/16 v10, 0xb4

    .line 53
    .line 54
    const-string v12, "EVERY_3_HOURS"

    .line 55
    .line 56
    const/4 v13, 0x5

    .line 57
    invoke-direct {v8, v12, v13, v10}, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    new-instance v10, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 61
    .line 62
    const/16 v12, 0x168

    .line 63
    .line 64
    const-string v14, "EVERY_6_HOURS"

    .line 65
    .line 66
    const/4 v15, 0x6

    .line 67
    invoke-direct {v10, v14, v15, v12}, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    new-instance v12, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 71
    .line 72
    const/16 v14, 0x2d0

    .line 73
    .line 74
    move/from16 v16, v3

    .line 75
    .line 76
    const-string v3, "EVERY_12_HOURS"

    .line 77
    .line 78
    move/from16 v17, v5

    .line 79
    .line 80
    const/4 v5, 0x7

    .line 81
    invoke-direct {v12, v3, v5, v14}, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;-><init>(Ljava/lang/String;II)V

    .line 82
    .line 83
    .line 84
    new-instance v3, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 85
    .line 86
    const/16 v14, 0x5a0

    .line 87
    .line 88
    move/from16 v18, v5

    .line 89
    .line 90
    const-string v5, "EVERY_24_HOURS"

    .line 91
    .line 92
    move/from16 v19, v7

    .line 93
    .line 94
    const/16 v7, 0x8

    .line 95
    .line 96
    invoke-direct {v3, v5, v7, v14}, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;-><init>(Ljava/lang/String;II)V

    .line 97
    .line 98
    .line 99
    const/16 v5, 0x9

    .line 100
    .line 101
    new-array v5, v5, [Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 102
    .line 103
    aput-object v0, v5, v16

    .line 104
    .line 105
    aput-object v1, v5, v17

    .line 106
    .line 107
    aput-object v2, v5, v19

    .line 108
    .line 109
    aput-object v4, v5, v9

    .line 110
    .line 111
    aput-object v6, v5, v11

    .line 112
    .line 113
    aput-object v8, v5, v13

    .line 114
    .line 115
    aput-object v10, v5, v15

    .line 116
    .line 117
    aput-object v12, v5, v18

    .line 118
    .line 119
    aput-object v3, v5, v7

    .line 120
    .line 121
    sput-object v5, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;->$VALUES:[Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 122
    .line 123
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 124
    .line 125
    invoke-direct {v0, v5}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 126
    .line 127
    .line 128
    sput-object v0, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 129
    .line 130
    new-instance v0, Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 133
    .line 134
    .line 135
    sput-object v0, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;->Companion:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 136
    .line 137
    sput-object v1, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;->DEFAULT:Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 138
    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;->minutes:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;
    .locals 1

    .line 1
    const-class v0, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;
    .locals 1

    .line 1
    sget-object v0, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;->$VALUES:[Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 8
    .line 9
    return-object v0
.end method
