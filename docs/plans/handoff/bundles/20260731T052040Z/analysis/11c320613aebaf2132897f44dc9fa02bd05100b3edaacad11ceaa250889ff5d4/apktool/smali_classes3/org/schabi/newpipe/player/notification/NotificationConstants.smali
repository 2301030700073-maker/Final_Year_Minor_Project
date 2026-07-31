.class public abstract Lorg/schabi/newpipe/player/notification/NotificationConstants;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final ACTION_ICONS:[I

.field public static final ALL_ACTIONS:[I

.field public static final SLOT_COMPACT_DEFAULTS:Ljava/util/List;

.field public static final SLOT_COMPACT_PREF_KEYS:[I

.field public static final SLOT_DEFAULTS:[I

.field public static final SLOT_PREF_KEYS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/schabi/newpipe/player/notification/NotificationConstants;->ALL_ACTIONS:[I

    .line 9
    .line 10
    sget v2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_icon_previous:I

    .line 11
    .line 12
    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_icon_next:I

    .line 13
    .line 14
    sget v4, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_icon_rewind:I

    .line 15
    .line 16
    sget v5, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_icon_fastforward:I

    .line 17
    .line 18
    sget v10, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_icon_repeat_all:I

    .line 19
    .line 20
    sget v11, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_icon_shuffle_on:I

    .line 21
    .line 22
    const v12, 0x7f0800fd

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    const v8, 0x7f080132

    .line 27
    .line 28
    .line 29
    const v9, 0x7f080119

    .line 30
    .line 31
    .line 32
    move v6, v2

    .line 33
    move v7, v3

    .line 34
    filled-new-array/range {v1 .. v12}, [I

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lorg/schabi/newpipe/player/notification/NotificationConstants;->ACTION_ICONS:[I

    .line 39
    .line 40
    const/4 v0, 0x5

    .line 41
    const/16 v1, 0x8

    .line 42
    .line 43
    const/4 v2, 0x6

    .line 44
    const/16 v3, 0x9

    .line 45
    .line 46
    const/16 v4, 0xb

    .line 47
    .line 48
    filled-new-array {v0, v1, v2, v3, v4}, [I

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sput-object v0, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_DEFAULTS:[I

    .line 53
    .line 54
    const v0, 0x7f13038f

    .line 55
    .line 56
    .line 57
    const v1, 0x7f130390

    .line 58
    .line 59
    .line 60
    const v2, 0x7f13038c

    .line 61
    .line 62
    .line 63
    const v3, 0x7f13038d

    .line 64
    .line 65
    .line 66
    const v4, 0x7f13038e

    .line 67
    .line 68
    .line 69
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_PREF_KEYS:[I

    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const/4 v2, 0x1

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const/4 v4, 0x2

    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    const/4 v6, 0x3

    .line 91
    new-array v7, v6, [Ljava/lang/Object;

    .line 92
    .line 93
    aput-object v1, v7, v0

    .line 94
    .line 95
    aput-object v3, v7, v2

    .line 96
    .line 97
    aput-object v5, v7, v4

    .line 98
    .line 99
    new-instance v1, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .line 103
    .line 104
    :goto_0
    if-ge v0, v6, :cond_0

    .line 105
    .line 106
    aget-object v3, v7, v0

    .line 107
    .line 108
    invoke-static {v3, v1, v3, v0, v2}, Lcom/android/tools/r8/RecordTag;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;II)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    goto :goto_0

    .line 113
    :cond_0
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sput-object v0, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_COMPACT_DEFAULTS:Ljava/util/List;

    .line 118
    .line 119
    const v0, 0x7f130392

    .line 120
    .line 121
    .line 122
    const v1, 0x7f130393

    .line 123
    .line 124
    .line 125
    const v2, 0x7f130391

    .line 126
    .line 127
    .line 128
    filled-new-array {v2, v0, v1}, [I

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    sput-object v0, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_COMPACT_PREF_KEYS:[I

    .line 133
    .line 134
    return-void

    .line 135
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data
.end method

.method public static getActionName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const p1, 0x7f13037e

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :pswitch_0
    const p1, 0x7f1300ad

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :pswitch_1
    const p1, 0x7f130380

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :pswitch_2
    const p1, 0x7f13037f

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :pswitch_3
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_play_description:I

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_pause_description:I

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const v1, 0x7f13037d

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    filled-new-array {p1, v0, p0}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :pswitch_4
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_play_description:I

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_pause_description:I

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    filled-new-array {p1, p0}, [Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :pswitch_5
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_fastforward_description:I

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_next_description:I

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    filled-new-array {p1, p0}, [Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0

    .line 106
    :pswitch_6
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_rewind_description:I

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_previous_description:I

    .line 113
    .line 114
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    filled-new-array {p1, p0}, [Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->concatenateStrings([Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :pswitch_7
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_fastforward_description:I

    .line 128
    .line 129
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    return-object p0

    .line 134
    :pswitch_8
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_rewind_description:I

    .line 135
    .line 136
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0

    .line 141
    :pswitch_9
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_next_description:I

    .line 142
    .line 143
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0

    .line 148
    :pswitch_a
    sget p1, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_previous_description:I

    .line 149
    .line 150
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    return-object p0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCompactSlotsFromPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/util/Collection;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    const/4 v2, 0x3

    .line 8
    if-ge v1, v2, :cond_2

    .line 9
    .line 10
    sget-object v2, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_COMPACT_PREF_KEYS:[I

    .line 11
    .line 12
    aget v2, v2, v1

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const v3, 0x7fffffff

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ne v2, v3, :cond_0

    .line 26
    .line 27
    sget-object p0, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_COMPACT_DEFAULTS:Ljava/util/List;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    if-ltz v2, :cond_1

    .line 31
    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-object v0
.end method
