.class public final enum Lnet/thunderbird/feature/notification/VibratePattern;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lnet/thunderbird/feature/notification/VibratePattern;

.field public static final Companion:Lcom/jcraft/jzlib/Adler32;

.field public static final enum Default:Lnet/thunderbird/feature/notification/VibratePattern;

.field public static final enum Pattern1:Lnet/thunderbird/feature/notification/VibratePattern;

.field public static final enum Pattern2:Lnet/thunderbird/feature/notification/VibratePattern;

.field public static final enum Pattern3:Lnet/thunderbird/feature/notification/VibratePattern;

.field public static final enum Pattern4:Lnet/thunderbird/feature/notification/VibratePattern;

.field public static final enum Pattern5:Lnet/thunderbird/feature/notification/VibratePattern;


# instance fields
.field public final vibrationPattern:[J


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lnet/thunderbird/feature/notification/VibratePattern;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    const-string v3, "Default"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v0, v3, v4, v2}, Lnet/thunderbird/feature/notification/VibratePattern;-><init>(Ljava/lang/String;I[J)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lnet/thunderbird/feature/notification/VibratePattern;->Default:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 16
    .line 17
    new-instance v2, Lnet/thunderbird/feature/notification/VibratePattern;

    .line 18
    .line 19
    new-array v3, v1, [J

    .line 20
    .line 21
    fill-array-data v3, :array_1

    .line 22
    .line 23
    .line 24
    const-string v5, "Pattern1"

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    invoke-direct {v2, v5, v6, v3}, Lnet/thunderbird/feature/notification/VibratePattern;-><init>(Ljava/lang/String;I[J)V

    .line 28
    .line 29
    .line 30
    sput-object v2, Lnet/thunderbird/feature/notification/VibratePattern;->Pattern1:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 31
    .line 32
    new-instance v3, Lnet/thunderbird/feature/notification/VibratePattern;

    .line 33
    .line 34
    new-array v5, v1, [J

    .line 35
    .line 36
    fill-array-data v5, :array_2

    .line 37
    .line 38
    .line 39
    const-string v7, "Pattern2"

    .line 40
    .line 41
    invoke-direct {v3, v7, v1, v5}, Lnet/thunderbird/feature/notification/VibratePattern;-><init>(Ljava/lang/String;I[J)V

    .line 42
    .line 43
    .line 44
    sput-object v3, Lnet/thunderbird/feature/notification/VibratePattern;->Pattern2:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 45
    .line 46
    new-instance v5, Lnet/thunderbird/feature/notification/VibratePattern;

    .line 47
    .line 48
    new-array v7, v1, [J

    .line 49
    .line 50
    fill-array-data v7, :array_3

    .line 51
    .line 52
    .line 53
    const-string v8, "Pattern3"

    .line 54
    .line 55
    const/4 v9, 0x3

    .line 56
    invoke-direct {v5, v8, v9, v7}, Lnet/thunderbird/feature/notification/VibratePattern;-><init>(Ljava/lang/String;I[J)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Lnet/thunderbird/feature/notification/VibratePattern;->Pattern3:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 60
    .line 61
    new-instance v7, Lnet/thunderbird/feature/notification/VibratePattern;

    .line 62
    .line 63
    new-array v8, v1, [J

    .line 64
    .line 65
    fill-array-data v8, :array_4

    .line 66
    .line 67
    .line 68
    const-string v10, "Pattern4"

    .line 69
    .line 70
    const/4 v11, 0x4

    .line 71
    invoke-direct {v7, v10, v11, v8}, Lnet/thunderbird/feature/notification/VibratePattern;-><init>(Ljava/lang/String;I[J)V

    .line 72
    .line 73
    .line 74
    sput-object v7, Lnet/thunderbird/feature/notification/VibratePattern;->Pattern4:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 75
    .line 76
    new-instance v8, Lnet/thunderbird/feature/notification/VibratePattern;

    .line 77
    .line 78
    new-array v10, v1, [J

    .line 79
    .line 80
    fill-array-data v10, :array_5

    .line 81
    .line 82
    .line 83
    const-string v12, "Pattern5"

    .line 84
    .line 85
    const/4 v13, 0x5

    .line 86
    invoke-direct {v8, v12, v13, v10}, Lnet/thunderbird/feature/notification/VibratePattern;-><init>(Ljava/lang/String;I[J)V

    .line 87
    .line 88
    .line 89
    sput-object v8, Lnet/thunderbird/feature/notification/VibratePattern;->Pattern5:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 90
    .line 91
    const/4 v10, 0x6

    .line 92
    new-array v10, v10, [Lnet/thunderbird/feature/notification/VibratePattern;

    .line 93
    .line 94
    aput-object v0, v10, v4

    .line 95
    .line 96
    aput-object v2, v10, v6

    .line 97
    .line 98
    aput-object v3, v10, v1

    .line 99
    .line 100
    aput-object v5, v10, v9

    .line 101
    .line 102
    aput-object v7, v10, v11

    .line 103
    .line 104
    aput-object v8, v10, v13

    .line 105
    .line 106
    sput-object v10, Lnet/thunderbird/feature/notification/VibratePattern;->$VALUES:[Lnet/thunderbird/feature/notification/VibratePattern;

    .line 107
    .line 108
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 109
    .line 110
    invoke-direct {v0, v10}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 111
    .line 112
    .line 113
    sput-object v0, Lnet/thunderbird/feature/notification/VibratePattern;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 114
    .line 115
    new-instance v0, Lcom/jcraft/jzlib/Adler32;

    .line 116
    .line 117
    const/16 v1, 0x15

    .line 118
    .line 119
    invoke-direct {v0, v1}, Lcom/jcraft/jzlib/Adler32;-><init>(I)V

    .line 120
    .line 121
    .line 122
    sput-object v0, Lnet/thunderbird/feature/notification/VibratePattern;->Companion:Lcom/jcraft/jzlib/Adler32;

    .line 123
    .line 124
    return-void

    .line 125
    :array_0
    .array-data 8
        0x12c
        0xc8
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_1
    .array-data 8
        0x64
        0xc8
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_2
    .array-data 8
        0x64
        0x1f4
    .end array-data

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
    :array_3
    .array-data 8
        0xc8
        0xc8
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
    :array_4
    .array-data 8
        0xc8
        0x1f4
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :array_5
    .array-data 8
        0x1f4
        0x1f4
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I[J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lnet/thunderbird/feature/notification/VibratePattern;->vibrationPattern:[J

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/thunderbird/feature/notification/VibratePattern;
    .locals 1

    .line 1
    const-class v0, Lnet/thunderbird/feature/notification/VibratePattern;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/feature/notification/VibratePattern;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/thunderbird/feature/notification/VibratePattern;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/feature/notification/VibratePattern;->$VALUES:[Lnet/thunderbird/feature/notification/VibratePattern;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/thunderbird/feature/notification/VibratePattern;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final serialize()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    if-eq p0, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x5

    .line 20
    if-ne p0, v0, :cond_0

    .line 21
    .line 22
    return v0

    .line 23
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_1
    return v0

    .line 29
    :cond_2
    const/4 p0, 0x0

    .line 30
    return p0
.end method
