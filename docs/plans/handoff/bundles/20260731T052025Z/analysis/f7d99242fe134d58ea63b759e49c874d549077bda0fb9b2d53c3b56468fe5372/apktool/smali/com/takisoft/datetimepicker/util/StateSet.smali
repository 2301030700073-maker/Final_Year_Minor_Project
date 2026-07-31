.class public abstract Lcom/takisoft/datetimepicker/util/StateSet;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final VIEW_STATE_IDS:[I

.field public static final VIEW_STATE_SETS:[[I

.field public static final ViewDrawableStates:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/takisoft/datetimepicker/util/StateSet;->VIEW_STATE_IDS:[I

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    new-array v1, v1, [I

    .line 13
    .line 14
    fill-array-data v1, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/takisoft/datetimepicker/util/StateSet;->ViewDrawableStates:[I

    .line 18
    .line 19
    array-length v1, v0

    .line 20
    div-int/lit8 v1, v1, 0x2

    .line 21
    .line 22
    array-length v0, v0

    .line 23
    new-array v2, v0, [I

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    move v4, v3

    .line 27
    :goto_0
    const/4 v5, 0x1

    .line 28
    if-ge v4, v1, :cond_2

    .line 29
    .line 30
    sget-object v6, Lcom/takisoft/datetimepicker/util/StateSet;->ViewDrawableStates:[I

    .line 31
    .line 32
    aget v6, v6, v4

    .line 33
    .line 34
    move v7, v3

    .line 35
    :goto_1
    sget-object v8, Lcom/takisoft/datetimepicker/util/StateSet;->VIEW_STATE_IDS:[I

    .line 36
    .line 37
    array-length v9, v8

    .line 38
    if-ge v7, v9, :cond_1

    .line 39
    .line 40
    aget v9, v8, v7

    .line 41
    .line 42
    if-ne v9, v6, :cond_0

    .line 43
    .line 44
    mul-int/lit8 v9, v4, 0x2

    .line 45
    .line 46
    aput v6, v2, v9

    .line 47
    .line 48
    add-int/2addr v9, v5

    .line 49
    add-int/lit8 v10, v7, 0x1

    .line 50
    .line 51
    aget v8, v8, v10

    .line 52
    .line 53
    aput v8, v2, v9

    .line 54
    .line 55
    :cond_0
    add-int/lit8 v7, v7, 0x2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    sget-object v1, Lcom/takisoft/datetimepicker/util/StateSet;->VIEW_STATE_IDS:[I

    .line 62
    .line 63
    array-length v1, v1

    .line 64
    div-int/lit8 v1, v1, 0x2

    .line 65
    .line 66
    shl-int v1, v5, v1

    .line 67
    .line 68
    new-array v1, v1, [[I

    .line 69
    .line 70
    sput-object v1, Lcom/takisoft/datetimepicker/util/StateSet;->VIEW_STATE_SETS:[[I

    .line 71
    .line 72
    move v1, v3

    .line 73
    :goto_2
    sget-object v4, Lcom/takisoft/datetimepicker/util/StateSet;->VIEW_STATE_SETS:[[I

    .line 74
    .line 75
    array-length v4, v4

    .line 76
    if-ge v1, v4, :cond_5

    .line 77
    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    new-array v4, v4, [I

    .line 83
    .line 84
    move v5, v3

    .line 85
    move v6, v5

    .line 86
    :goto_3
    if-ge v5, v0, :cond_4

    .line 87
    .line 88
    add-int/lit8 v7, v5, 0x1

    .line 89
    .line 90
    aget v7, v2, v7

    .line 91
    .line 92
    and-int/2addr v7, v1

    .line 93
    if-eqz v7, :cond_3

    .line 94
    .line 95
    add-int/lit8 v7, v6, 0x1

    .line 96
    .line 97
    aget v8, v2, v5

    .line 98
    .line 99
    aput v8, v4, v6

    .line 100
    .line 101
    move v6, v7

    .line 102
    :cond_3
    add-int/lit8 v5, v5, 0x2

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_4
    sget-object v5, Lcom/takisoft/datetimepicker/util/StateSet;->VIEW_STATE_SETS:[[I

    .line 106
    .line 107
    aput-object v4, v5, v1

    .line 108
    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    return-void

    .line 113
    :array_0
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
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
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_1
    .array-data 4
        0x101009d
        0x10100a1
        0x101009c
        0x101009e
        0x10100a7
        0x10102fe
        0x101031b
        0x1010367
        0x1010368
        0x1010369
    .end array-data
.end method

.method public static get(I)[I
    .locals 2

    .line 1
    sget-object v0, Lcom/takisoft/datetimepicker/util/StateSet;->VIEW_STATE_SETS:[[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge p0, v1, :cond_0

    .line 5
    .line 6
    aget-object p0, v0, p0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    const-string p0, "Invalid state set mask"

    .line 10
    .line 11
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method
