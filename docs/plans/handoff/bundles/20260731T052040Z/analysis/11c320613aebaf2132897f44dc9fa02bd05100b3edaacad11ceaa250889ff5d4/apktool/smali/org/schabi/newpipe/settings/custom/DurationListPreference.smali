.class public final Lorg/schabi/newpipe/settings/custom/DurationListPreference;
.super Landroidx/preference/ListPreference;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final onAttached()V
    .locals 14

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 10
    .line 11
    array-length v3, v1

    .line 12
    const/4 v4, 0x0

    .line 13
    move v5, v4

    .line 14
    :goto_0
    if-ge v5, v3, :cond_5

    .line 15
    .line 16
    :try_start_0
    aget-object v6, v1, v5

    .line 17
    .line 18
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    check-cast v6, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    if-gtz v6, :cond_0

    .line 28
    .line 29
    aget-object v6, v0, v5

    .line 30
    .line 31
    aput-object v6, v2, v5

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    sget-object v7, Lorg/schabi/newpipe/util/Localization;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    if-ltz v6, :cond_4

    .line 37
    .line 38
    int-to-long v6, v6

    .line 39
    const-wide/32 v8, 0x15180

    .line 40
    .line 41
    .line 42
    div-long v10, v6, v8

    .line 43
    .line 44
    long-to-int v10, v10

    .line 45
    rem-long/2addr v6, v8

    .line 46
    const-wide/16 v8, 0xe10

    .line 47
    .line 48
    div-long v11, v6, v8

    .line 49
    .line 50
    long-to-int v11, v11

    .line 51
    rem-long/2addr v6, v8

    .line 52
    const-wide/16 v8, 0x3c

    .line 53
    .line 54
    div-long v12, v6, v8

    .line 55
    .line 56
    long-to-int v12, v12

    .line 57
    rem-long/2addr v6, v8

    .line 58
    long-to-int v6, v6

    .line 59
    iget-object v7, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    const/4 v8, 0x1

    .line 66
    if-lez v10, :cond_1

    .line 67
    .line 68
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    new-array v8, v8, [Ljava/lang/Object;

    .line 73
    .line 74
    aput-object v6, v8, v4

    .line 75
    .line 76
    const/high16 v6, 0x7f110000

    .line 77
    .line 78
    invoke-virtual {v7, v6, v10, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    if-lez v11, :cond_2

    .line 84
    .line 85
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    new-array v8, v8, [Ljava/lang/Object;

    .line 90
    .line 91
    aput-object v6, v8, v4

    .line 92
    .line 93
    const v6, 0x7f110007

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7, v6, v11, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    if-lez v12, :cond_3

    .line 102
    .line 103
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    new-array v8, v8, [Ljava/lang/Object;

    .line 108
    .line 109
    aput-object v6, v8, v4

    .line 110
    .line 111
    const v6, 0x7f11000b

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7, v6, v12, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    goto :goto_1

    .line 119
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    new-array v8, v8, [Ljava/lang/Object;

    .line 124
    .line 125
    aput-object v9, v8, v4

    .line 126
    .line 127
    const v9, 0x7f11000f

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7, v9, v6, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    :goto_1
    aput-object v6, v2, v5

    .line 135
    .line 136
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_4
    const-string p0, "duration can not be negative"

    .line 140
    .line 141
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :catch_0
    move-exception p0

    .line 146
    const-string v0, "Invalid number was set in the preference entry values array"

    .line 147
    .line 148
    invoke-static {v0, p0}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_5
    iput-object v2, p0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 153
    .line 154
    return-void
.end method
