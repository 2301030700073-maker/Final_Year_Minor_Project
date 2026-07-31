.class public final synthetic Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const v1, 0x7f12066e

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, -0x1

    .line 8
    iget-object p0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;

    .line 9
    .line 10
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->$r8$clinit:I

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 21
    .line 22
    if-ne p1, v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 29
    .line 30
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListSource()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;->updateRecommendedReadingListSource(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :pswitch_0
    sget v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->$r8$clinit:I

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 47
    .line 48
    if-ne p1, v3, :cond_5

    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 55
    .line 56
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListSource()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;->updateRecommendedReadingListSource(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListSourceTitlesWithOffset()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object v0, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->currentRecommendedReadingListSource:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListSource()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-eq v0, v3, :cond_5

    .line 76
    .line 77
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListSource()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-instance v3, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    .line 82
    .line 83
    const/16 v4, 0x1c

    .line 84
    .line 85
    invoke-direct {v3, v4, p0, p1}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    sget-object p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    aget p1, p1, v0

    .line 95
    .line 96
    if-eq p1, v2, :cond_3

    .line 97
    .line 98
    const/4 v0, 0x2

    .line 99
    if-eq p1, v0, :cond_2

    .line 100
    .line 101
    const/4 v0, 0x3

    .line 102
    if-ne p1, v0, :cond_1

    .line 103
    .line 104
    const p1, 0x7f12080e

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    const p1, 0x7f120810

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    const p1, 0x7f12080f

    .line 117
    .line 118
    .line 119
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    const/4 v0, 0x0

    .line 127
    const/16 v4, 0xc

    .line 128
    .line 129
    invoke-static {p0, p1, v0, v4}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    new-instance p1, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;

    .line 134
    .line 135
    const/16 v0, 0x13

    .line 136
    .line 137
    invoke-direct {p1, v0, v3}, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    const v0, 0x7f12080d

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 147
    .line 148
    .line 149
    invoke-static {v1, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 150
    .line 151
    .line 152
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 153
    .line 154
    invoke-static {p0}, Lorg/wikipedia/settings/Prefs;->setRecommendedReadingListSourceTitlesWithOffset(Ljava/util/List;)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_4
    const-string p0, "currentRecommendedReadingListSource"

    .line 159
    .line 160
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const/4 p0, 0x0

    .line 164
    throw p0

    .line 165
    :cond_5
    :goto_1
    return-void

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
