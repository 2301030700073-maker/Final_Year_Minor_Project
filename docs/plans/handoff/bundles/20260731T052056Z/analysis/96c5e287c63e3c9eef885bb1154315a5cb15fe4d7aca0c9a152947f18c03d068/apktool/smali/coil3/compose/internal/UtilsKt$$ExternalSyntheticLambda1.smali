.class public final synthetic Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/UpdatableAnimationState;Lkotlinx/coroutines/Job;Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    iput p2, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 14
    iput p4, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;)V
    .locals 0

    .line 15
    const/4 p4, 0x2

    iput p4, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method

.method private final invoke$org$wikipedia$compose$components$FadeInAsyncImageKt$$ExternalSyntheticLambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iget-object v1, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;

    .line 8
    .line 9
    iget-object p0, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    check-cast p1, Lcoil3/compose/AsyncImagePainter$State$Success;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableLongState;->getLongValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    sub-long/2addr v2, v0

    .line 32
    const-wide/16 v0, 0xfa

    .line 33
    .line 34
    cmp-long p1, v2, v0

    .line 35
    .line 36
    if-lez p1, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method private final invoke$org$wikipedia$feed$CommunityContentTabKt$$ExternalSyntheticLambda20(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iget-object v1, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lorg/wikipedia/feed/onthisday/OnThisDayCard;

    .line 8
    .line 9
    iget-object p0, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lorg/wikipedia/dataclient/WikiSite;

    .line 12
    .line 13
    check-cast p1, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v2, Lorg/wikipedia/feed/HomeAction$PageClick;

    .line 19
    .line 20
    const/16 v3, 0x2e

    .line 21
    .line 22
    invoke-virtual {p1, p0, v3}, Lorg/wikipedia/dataclient/page/PageSummary;->getHistoryEntry(Lorg/wikipedia/dataclient/WikiSite;I)Lorg/wikipedia/history/HistoryEntry;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {v2, v1, p0}, Lorg/wikipedia/feed/HomeAction$PageClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

.method private final invoke$org$wikipedia$feed$HomeFragment$$ExternalSyntheticLambda6(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lorg/wikipedia/feed/HomeFragment;

    .line 6
    .line 7
    iget-object v2, v1, Lorg/wikipedia/feed/HomeFragment;->pageOverflowMenuViewModel$delegate:Lokhttp3/Request$Builder;

    .line 8
    .line 9
    iget-object v3, v0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Landroidx/compose/runtime/State;

    .line 12
    .line 13
    iget-object v0, v0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 16
    .line 17
    move-object/from16 v4, p1

    .line 18
    .line 19
    check-cast v4, Lorg/wikipedia/feed/HomeAction;

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    move-object v7, v3

    .line 29
    check-cast v7, Lorg/wikipedia/dataclient/WikiSite;

    .line 30
    .line 31
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lorg/wikipedia/feed/HomeTab;

    .line 36
    .line 37
    instance-of v3, v4, Lorg/wikipedia/feed/HomeAction$SelectTab;

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    check-cast v4, Lorg/wikipedia/feed/HomeAction$SelectTab;

    .line 42
    .line 43
    iget-object v0, v4, Lorg/wikipedia/feed/HomeAction$SelectTab;->card:Lorg/wikipedia/feed/model/Card;

    .line 44
    .line 45
    instance-of v2, v0, Lorg/wikipedia/feed/model/EmptyCommunityCard;

    .line 46
    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    instance-of v2, v0, Lorg/wikipedia/feed/model/EmptyForYouCard;

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    :cond_0
    iget-object v5, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    const/4 v11, 0x0

    .line 64
    const/16 v12, 0xf4

    .line 65
    .line 66
    const-string v6, "click"

    .line 67
    .line 68
    const/4 v8, 0x0

    .line 69
    const-string v9, "community_feed"

    .line 70
    .line 71
    const/4 v10, 0x0

    .line 72
    invoke-static/range {v5 .. v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object v0, v4, Lorg/wikipedia/feed/HomeAction$SelectTab;->tab:Lorg/wikipedia/feed/HomeTab;

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Lorg/wikipedia/feed/HomeFragment;->selectTab(Lorg/wikipedia/feed/HomeTab;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_c

    .line 81
    .line 82
    :cond_2
    instance-of v3, v4, Lorg/wikipedia/feed/HomeAction$RefreshTab;

    .line 83
    .line 84
    if-eqz v3, :cond_4

    .line 85
    .line 86
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 87
    .line 88
    const-string v0, ""

    .line 89
    .line 90
    const v2, 0x7f12060b

    .line 91
    .line 92
    .line 93
    invoke-static {v2, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    check-cast v4, Lorg/wikipedia/feed/HomeAction$RefreshTab;

    .line 97
    .line 98
    iget-object v0, v4, Lorg/wikipedia/feed/HomeAction$RefreshTab;->tab:Lorg/wikipedia/feed/HomeTab;

    .line 99
    .line 100
    sget-object v2, Lorg/wikipedia/feed/HomeTab;->COMMUNITY:Lorg/wikipedia/feed/HomeTab;

    .line 101
    .line 102
    if-ne v0, v2, :cond_3

    .line 103
    .line 104
    invoke-virtual {v1}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lorg/wikipedia/feed/HomeViewModel;->refreshCommunityContent()V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_c

    .line 112
    .line 113
    :cond_3
    invoke-virtual {v1}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lorg/wikipedia/feed/HomeViewModel;->refreshForYouContent()V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_c

    .line 121
    .line 122
    :cond_4
    sget-object v3, Lorg/wikipedia/feed/HomeAction$LoadMoreCommunityContent;->INSTANCE:Lorg/wikipedia/feed/HomeAction$LoadMoreCommunityContent;

    .line 123
    .line 124
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_5

    .line 129
    .line 130
    invoke-virtual {v1}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lorg/wikipedia/feed/HomeViewModel;->loadCommunityContent()V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_c

    .line 138
    .line 139
    :cond_5
    sget-object v3, Lorg/wikipedia/feed/HomeAction$LoadMoreForYouContent;->INSTANCE:Lorg/wikipedia/feed/HomeAction$LoadMoreForYouContent;

    .line 140
    .line 141
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_6

    .line 146
    .line 147
    invoke-virtual {v1}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lorg/wikipedia/feed/HomeViewModel;->loadForYouContent()V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_c

    .line 155
    .line 156
    :cond_6
    instance-of v3, v4, Lorg/wikipedia/feed/HomeAction$HideCommunityCard;

    .line 157
    .line 158
    const/16 v5, 0xc

    .line 159
    .line 160
    const/4 v6, 0x3

    .line 161
    const v8, 0x7f1203da

    .line 162
    .line 163
    .line 164
    const/4 v9, 0x0

    .line 165
    const v10, 0x7f1201fe

    .line 166
    .line 167
    .line 168
    const/4 v11, 0x0

    .line 169
    if-eqz v3, :cond_7

    .line 170
    .line 171
    check-cast v4, Lorg/wikipedia/feed/HomeAction$HideCommunityCard;

    .line 172
    .line 173
    iget-object v0, v4, Lorg/wikipedia/feed/HomeAction$HideCommunityCard;->card:Lorg/wikipedia/feed/model/Card;

    .line 174
    .line 175
    iget-object v12, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v14

    .line 185
    const/16 v18, 0x0

    .line 186
    .line 187
    const/16 v19, 0xf0

    .line 188
    .line 189
    const-string v13, "click"

    .line 190
    .line 191
    const-string v15, "feed_overflow"

    .line 192
    .line 193
    const-string v16, "card_hide"

    .line 194
    .line 195
    const/16 v17, 0x0

    .line 196
    .line 197
    invoke-static/range {v12 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    new-instance v3, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;

    .line 209
    .line 210
    invoke-direct {v3, v0, v11, v9}, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;-><init>(Lorg/wikipedia/feed/model/Card;Lkotlin/coroutines/Continuation;I)V

    .line 211
    .line 212
    .line 213
    invoke-static {v2, v11, v11, v3, v6}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v1, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-static {v2, v3, v9, v5}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v1, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    new-instance v4, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 236
    .line 237
    invoke-direct {v4, v9, v1, v0}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_c

    .line 247
    .line 248
    :cond_7
    instance-of v3, v4, Lorg/wikipedia/feed/HomeAction$HideForYouCard;

    .line 249
    .line 250
    if-eqz v3, :cond_8

    .line 251
    .line 252
    check-cast v4, Lorg/wikipedia/feed/HomeAction$HideForYouCard;

    .line 253
    .line 254
    iget-object v0, v4, Lorg/wikipedia/feed/HomeAction$HideForYouCard;->card:Lorg/wikipedia/feed/model/ForYouCard;

    .line 255
    .line 256
    iget-object v12, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v14

    .line 266
    const/16 v18, 0x0

    .line 267
    .line 268
    const/16 v19, 0xf0

    .line 269
    .line 270
    const-string v13, "click"

    .line 271
    .line 272
    const-string v15, "feed_overflow"

    .line 273
    .line 274
    const-string v16, "card_hide"

    .line 275
    .line 276
    const/16 v17, 0x0

    .line 277
    .line 278
    invoke-static/range {v12 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    new-instance v3, Lorg/wikipedia/feed/HomeViewModel$hideForYouCard$1;

    .line 290
    .line 291
    invoke-direct {v3, v0, v11, v9}, Lorg/wikipedia/feed/HomeViewModel$hideForYouCard$1;-><init>(Lorg/wikipedia/feed/model/ForYouCard;Lkotlin/coroutines/Continuation;I)V

    .line 292
    .line 293
    .line 294
    invoke-static {v2, v11, v11, v3, v6}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-virtual {v1, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    invoke-static {v2, v3, v9, v5}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v1, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    new-instance v4, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 317
    .line 318
    const/16 v5, 0xb

    .line 319
    .line 320
    invoke-direct {v4, v5, v1, v0}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 327
    .line 328
    .line 329
    goto/16 :goto_c

    .line 330
    .line 331
    :cond_8
    instance-of v3, v4, Lorg/wikipedia/feed/HomeAction$HideModule;

    .line 332
    .line 333
    const/16 v8, 0xa

    .line 334
    .line 335
    if-eqz v3, :cond_9

    .line 336
    .line 337
    check-cast v4, Lorg/wikipedia/feed/HomeAction$HideModule;

    .line 338
    .line 339
    iget-object v14, v4, Lorg/wikipedia/feed/HomeAction$HideModule;->moduleKey:Ljava/lang/String;

    .line 340
    .line 341
    iget-object v12, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 342
    .line 343
    const/16 v18, 0x0

    .line 344
    .line 345
    const/16 v19, 0xf0

    .line 346
    .line 347
    const-string v13, "click"

    .line 348
    .line 349
    const-string v15, "feed_overflow"

    .line 350
    .line 351
    const-string v16, "module_hide"

    .line 352
    .line 353
    const/16 v17, 0x0

    .line 354
    .line 355
    invoke-static/range {v12 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    new-instance v2, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 367
    .line 368
    invoke-direct {v2, v14, v9, v11}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 369
    .line 370
    .line 371
    invoke-static {v0, v11, v11, v2, v6}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    const v2, 0x7f1201fd

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    .line 387
    .line 388
    invoke-static {v0, v2, v9, v5}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-virtual {v1, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 397
    .line 398
    invoke-direct {v3, v8, v1, v14}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 405
    .line 406
    .line 407
    goto/16 :goto_c

    .line 408
    .line 409
    :cond_9
    instance-of v3, v4, Lorg/wikipedia/feed/HomeAction$PageClick;

    .line 410
    .line 411
    if-eqz v3, :cond_b

    .line 412
    .line 413
    iget-object v12, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 414
    .line 415
    check-cast v4, Lorg/wikipedia/feed/HomeAction$PageClick;

    .line 416
    .line 417
    iget-object v0, v4, Lorg/wikipedia/feed/HomeAction$PageClick;->historyEntry:Lorg/wikipedia/history/HistoryEntry;

    .line 418
    .line 419
    iget-object v2, v4, Lorg/wikipedia/feed/HomeAction$PageClick;->card:Lorg/wikipedia/feed/model/Card;

    .line 420
    .line 421
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v14

    .line 429
    sget-object v2, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 430
    .line 431
    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    invoke-static {v2}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->getPageData$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikimedia/testkitchen/context/PageData;

    .line 436
    .line 437
    .line 438
    move-result-object v17

    .line 439
    const/16 v18, 0x0

    .line 440
    .line 441
    const/16 v19, 0xd4

    .line 442
    .line 443
    const-string v13, "click"

    .line 444
    .line 445
    const/4 v15, 0x0

    .line 446
    const-string v16, "article_open"

    .line 447
    .line 448
    invoke-static/range {v12 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 449
    .line 450
    .line 451
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 452
    .line 453
    instance-of v2, v1, Lorg/wikipedia/main/MainFragment;

    .line 454
    .line 455
    if-eqz v2, :cond_a

    .line 456
    .line 457
    move-object v11, v1

    .line 458
    check-cast v11, Lorg/wikipedia/main/MainFragment;

    .line 459
    .line 460
    :cond_a
    if-eqz v11, :cond_39

    .line 461
    .line 462
    invoke-virtual {v11, v0, v9}, Lorg/wikipedia/main/MainFragment;->onFeedSelectPage(Lorg/wikipedia/history/HistoryEntry;Z)V

    .line 463
    .line 464
    .line 465
    goto/16 :goto_c

    .line 466
    .line 467
    :cond_b
    instance-of v3, v4, Lorg/wikipedia/feed/HomeAction$PageBookmarkClick;

    .line 468
    .line 469
    const/4 v5, 0x1

    .line 470
    if-eqz v3, :cond_d

    .line 471
    .line 472
    iget-object v12, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 473
    .line 474
    check-cast v4, Lorg/wikipedia/feed/HomeAction$PageBookmarkClick;

    .line 475
    .line 476
    iget-object v0, v4, Lorg/wikipedia/feed/HomeAction$PageBookmarkClick;->historyEntry:Lorg/wikipedia/history/HistoryEntry;

    .line 477
    .line 478
    iget-object v2, v4, Lorg/wikipedia/feed/HomeAction$PageBookmarkClick;->card:Lorg/wikipedia/feed/model/Card;

    .line 479
    .line 480
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v14

    .line 488
    sget-object v2, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 489
    .line 490
    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    invoke-static {v2}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->getPageData$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikimedia/testkitchen/context/PageData;

    .line 495
    .line 496
    .line 497
    move-result-object v17

    .line 498
    const/16 v18, 0x0

    .line 499
    .line 500
    const/16 v19, 0xd4

    .line 501
    .line 502
    const-string v13, "click"

    .line 503
    .line 504
    const/4 v15, 0x0

    .line 505
    const-string v16, "article_save"

    .line 506
    .line 507
    invoke-static/range {v12 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 508
    .line 509
    .line 510
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 511
    .line 512
    instance-of v2, v1, Lorg/wikipedia/main/MainFragment;

    .line 513
    .line 514
    if-eqz v2, :cond_c

    .line 515
    .line 516
    check-cast v1, Lorg/wikipedia/main/MainFragment;

    .line 517
    .line 518
    goto :goto_0

    .line 519
    :cond_c
    move-object v1, v11

    .line 520
    :goto_0
    if-eqz v1, :cond_39

    .line 521
    .line 522
    sget-object v2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 523
    .line 524
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->FEED:Lorg/wikipedia/Constants$InvokeSource;

    .line 533
    .line 534
    invoke-static {v1, v0, v5, v2, v11}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;)V

    .line 535
    .line 536
    .line 537
    goto/16 :goto_c

    .line 538
    .line 539
    :cond_d
    instance-of v3, v4, Lorg/wikipedia/feed/HomeAction$PageShareClick;

    .line 540
    .line 541
    if-eqz v3, :cond_e

    .line 542
    .line 543
    iget-object v12, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 544
    .line 545
    check-cast v4, Lorg/wikipedia/feed/HomeAction$PageShareClick;

    .line 546
    .line 547
    iget-object v0, v4, Lorg/wikipedia/feed/HomeAction$PageShareClick;->historyEntry:Lorg/wikipedia/history/HistoryEntry;

    .line 548
    .line 549
    iget-object v2, v4, Lorg/wikipedia/feed/HomeAction$PageShareClick;->card:Lorg/wikipedia/feed/model/Card;

    .line 550
    .line 551
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v14

    .line 559
    sget-object v2, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 560
    .line 561
    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    invoke-static {v2}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->getPageData$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikimedia/testkitchen/context/PageData;

    .line 566
    .line 567
    .line 568
    move-result-object v17

    .line 569
    const/16 v18, 0x0

    .line 570
    .line 571
    const/16 v19, 0xd4

    .line 572
    .line 573
    const-string v13, "click"

    .line 574
    .line 575
    const/4 v15, 0x0

    .line 576
    const-string v16, "article_share"

    .line 577
    .line 578
    invoke-static/range {v12 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    invoke-static {v1, v0}, Lorg/wikipedia/util/ShareUtil;->shareText$default(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)V

    .line 590
    .line 591
    .line 592
    goto/16 :goto_c

    .line 593
    .line 594
    :cond_e
    instance-of v3, v4, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;

    .line 595
    .line 596
    const/4 v10, 0x2

    .line 597
    if-eqz v3, :cond_f

    .line 598
    .line 599
    check-cast v4, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;

    .line 600
    .line 601
    iget-object v0, v4, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->card:Lorg/wikipedia/feed/model/Card;

    .line 602
    .line 603
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    check-cast v2, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel;

    .line 608
    .line 609
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 610
    .line 611
    .line 612
    move-result-object v3

    .line 613
    iget-object v8, v4, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 614
    .line 615
    iget v11, v4, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->source:I

    .line 616
    .line 617
    iget-object v4, v4, Lorg/wikipedia/feed/HomeAction$PageOverflowClick;->menuKey:Ljava/lang/String;

    .line 618
    .line 619
    move v12, v11

    .line 620
    new-instance v11, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda11;

    .line 621
    .line 622
    invoke-direct {v11, v1, v0, v9}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda11;-><init>(Lorg/wikipedia/feed/HomeFragment;Lorg/wikipedia/feed/model/Card;I)V

    .line 623
    .line 624
    .line 625
    move v13, v12

    .line 626
    new-instance v12, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda11;

    .line 627
    .line 628
    invoke-direct {v12, v1, v0, v5}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda11;-><init>(Lorg/wikipedia/feed/HomeFragment;Lorg/wikipedia/feed/model/Card;I)V

    .line 629
    .line 630
    .line 631
    move v14, v13

    .line 632
    new-instance v13, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda13;

    .line 633
    .line 634
    invoke-direct {v13, v1, v0, v9}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda13;-><init>(Lorg/wikipedia/feed/HomeFragment;Lorg/wikipedia/feed/model/Card;I)V

    .line 635
    .line 636
    .line 637
    move v9, v14

    .line 638
    new-instance v14, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda13;

    .line 639
    .line 640
    invoke-direct {v14, v1, v0, v5}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda13;-><init>(Lorg/wikipedia/feed/HomeFragment;Lorg/wikipedia/feed/model/Card;I)V

    .line 641
    .line 642
    .line 643
    new-instance v15, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda13;

    .line 644
    .line 645
    invoke-direct {v15, v1, v0, v10}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda13;-><init>(Lorg/wikipedia/feed/HomeFragment;Lorg/wikipedia/feed/model/Card;I)V

    .line 646
    .line 647
    .line 648
    new-instance v5, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda11;

    .line 649
    .line 650
    invoke-direct {v5, v1, v0, v10}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda11;-><init>(Lorg/wikipedia/feed/HomeFragment;Lorg/wikipedia/feed/model/Card;I)V

    .line 651
    .line 652
    .line 653
    new-instance v10, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda11;

    .line 654
    .line 655
    invoke-direct {v10, v1, v0, v6}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda11;-><init>(Lorg/wikipedia/feed/HomeFragment;Lorg/wikipedia/feed/model/Card;I)V

    .line 656
    .line 657
    .line 658
    move-object v6, v3

    .line 659
    move-object/from16 v16, v5

    .line 660
    .line 661
    move-object/from16 v17, v10

    .line 662
    .line 663
    move-object v5, v2

    .line 664
    move-object v10, v4

    .line 665
    invoke-virtual/range {v5 .. v17}, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel;->onPageOverflowClick(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/page/PageSummary;ILjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 666
    .line 667
    .line 668
    goto/16 :goto_c

    .line 669
    .line 670
    :cond_f
    sget-object v3, Lorg/wikipedia/feed/HomeAction$PageOverflowDismiss;->INSTANCE:Lorg/wikipedia/feed/HomeAction$PageOverflowDismiss;

    .line 671
    .line 672
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 673
    .line 674
    .line 675
    move-result v3

    .line 676
    if-eqz v3, :cond_10

    .line 677
    .line 678
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    check-cast v0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel;

    .line 683
    .line 684
    iget-object v0, v0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel;->pageOverflowMenuState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 685
    .line 686
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 687
    .line 688
    .line 689
    goto/16 :goto_c

    .line 690
    .line 691
    :cond_10
    instance-of v2, v4, Lorg/wikipedia/feed/HomeAction$NewsClick;

    .line 692
    .line 693
    const-string v3, "item"

    .line 694
    .line 695
    const-string/jumbo v6, "wikiSite"

    .line 696
    .line 697
    .line 698
    if-eqz v2, :cond_12

    .line 699
    .line 700
    check-cast v4, Lorg/wikipedia/feed/HomeAction$NewsClick;

    .line 701
    .line 702
    iget-object v0, v4, Lorg/wikipedia/feed/HomeAction$NewsClick;->newsItem:Lorg/wikipedia/feed/news/NewsItem;

    .line 703
    .line 704
    iget-object v2, v4, Lorg/wikipedia/feed/HomeAction$NewsClick;->card:Lorg/wikipedia/feed/news/NewsCard;

    .line 705
    .line 706
    iget-object v12, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 707
    .line 708
    iget-object v2, v2, Lorg/wikipedia/feed/news/NewsCard;->news:Ljava/util/List;

    .line 709
    .line 710
    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 711
    .line 712
    .line 713
    move-result v2

    .line 714
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 715
    .line 716
    .line 717
    move-result-object v2

    .line 718
    const-string v4, "index"

    .line 719
    .line 720
    invoke-static {v4, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 721
    .line 722
    .line 723
    move-result-object v18

    .line 724
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 725
    .line 726
    .line 727
    const/16 v19, 0x74

    .line 728
    .line 729
    const-string v13, "click"

    .line 730
    .line 731
    const-string v14, "NewsCard"

    .line 732
    .line 733
    const/4 v15, 0x0

    .line 734
    const-string v16, "NewsCard"

    .line 735
    .line 736
    const/16 v17, 0x0

    .line 737
    .line 738
    invoke-static/range {v12 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 739
    .line 740
    .line 741
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 742
    .line 743
    instance-of v2, v1, Lorg/wikipedia/main/MainFragment;

    .line 744
    .line 745
    if-eqz v2, :cond_11

    .line 746
    .line 747
    check-cast v1, Lorg/wikipedia/main/MainFragment;

    .line 748
    .line 749
    goto :goto_1

    .line 750
    :cond_11
    move-object v1, v11

    .line 751
    :goto_1
    if-eqz v1, :cond_39

    .line 752
    .line 753
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 754
    .line 755
    .line 756
    sget v2, Lorg/wikipedia/feed/news/NewsActivity;->$r8$clinit:I

    .line 757
    .line 758
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 759
    .line 760
    .line 761
    move-result-object v2

    .line 762
    new-instance v4, Landroid/content/Intent;

    .line 763
    .line 764
    const-class v5, Lorg/wikipedia/feed/news/NewsActivity;

    .line 765
    .line 766
    invoke-direct {v4, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v1, v0, v11}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 781
    .line 782
    .line 783
    goto/16 :goto_c

    .line 784
    .line 785
    :cond_12
    instance-of v2, v4, Lorg/wikipedia/feed/HomeAction$ImageClick;

    .line 786
    .line 787
    if-eqz v2, :cond_14

    .line 788
    .line 789
    check-cast v4, Lorg/wikipedia/feed/HomeAction$ImageClick;

    .line 790
    .line 791
    iget-object v0, v4, Lorg/wikipedia/feed/HomeAction$ImageClick;->card:Lorg/wikipedia/feed/image/FeaturedImageCard;

    .line 792
    .line 793
    iget-object v12, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 794
    .line 795
    iget-object v0, v0, Lorg/wikipedia/feed/image/FeaturedImageCard;->featuredImage:Lorg/wikipedia/feed/image/FeaturedImage;

    .line 796
    .line 797
    sget-object v2, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 798
    .line 799
    invoke-virtual {v0}, Lorg/wikipedia/feed/image/FeaturedImage;->toPageTitle()Lorg/wikipedia/page/PageTitle;

    .line 800
    .line 801
    .line 802
    move-result-object v2

    .line 803
    invoke-static {v2}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->getPageData$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikimedia/testkitchen/context/PageData;

    .line 804
    .line 805
    .line 806
    move-result-object v17

    .line 807
    const/16 v18, 0x0

    .line 808
    .line 809
    const/16 v19, 0xd4

    .line 810
    .line 811
    const-string v13, "click"

    .line 812
    .line 813
    const-string v14, "FeaturedImageCard"

    .line 814
    .line 815
    const/4 v15, 0x0

    .line 816
    const-string v16, "article_open"

    .line 817
    .line 818
    invoke-static/range {v12 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 819
    .line 820
    .line 821
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 822
    .line 823
    instance-of v2, v1, Lorg/wikipedia/main/MainFragment;

    .line 824
    .line 825
    if-eqz v2, :cond_13

    .line 826
    .line 827
    check-cast v1, Lorg/wikipedia/main/MainFragment;

    .line 828
    .line 829
    goto :goto_2

    .line 830
    :cond_13
    move-object v1, v11

    .line 831
    :goto_2
    if-eqz v1, :cond_39

    .line 832
    .line 833
    sget v2, Lorg/wikipedia/commons/FilePageActivity;->$r8$clinit:I

    .line 834
    .line 835
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 836
    .line 837
    .line 838
    move-result-object v2

    .line 839
    invoke-virtual {v0}, Lorg/wikipedia/feed/image/FeaturedImage;->toPageTitle()Lorg/wikipedia/page/PageTitle;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    invoke-static {v2, v0, v5}, Lokio/Path$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    invoke-virtual {v1, v0, v11}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 848
    .line 849
    .line 850
    goto/16 :goto_c

    .line 851
    .line 852
    :cond_14
    instance-of v2, v4, Lorg/wikipedia/feed/HomeAction$ImageShareClick;

    .line 853
    .line 854
    if-eqz v2, :cond_17

    .line 855
    .line 856
    check-cast v4, Lorg/wikipedia/feed/HomeAction$ImageShareClick;

    .line 857
    .line 858
    iget-object v0, v4, Lorg/wikipedia/feed/HomeAction$ImageShareClick;->card:Lorg/wikipedia/feed/image/FeaturedImageCard;

    .line 859
    .line 860
    iget-object v2, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 861
    .line 862
    iget-object v10, v0, Lorg/wikipedia/feed/image/FeaturedImageCard;->featuredImage:Lorg/wikipedia/feed/image/FeaturedImage;

    .line 863
    .line 864
    sget-object v3, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 865
    .line 866
    invoke-virtual {v10}, Lorg/wikipedia/feed/image/FeaturedImage;->toPageTitle()Lorg/wikipedia/page/PageTitle;

    .line 867
    .line 868
    .line 869
    move-result-object v3

    .line 870
    invoke-static {v3}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->getPageData$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikimedia/testkitchen/context/PageData;

    .line 871
    .line 872
    .line 873
    move-result-object v7

    .line 874
    const/4 v8, 0x0

    .line 875
    const/16 v9, 0xd4

    .line 876
    .line 877
    const-string v3, "click"

    .line 878
    .line 879
    const-string v4, "FeaturedImageCard"

    .line 880
    .line 881
    const/4 v5, 0x0

    .line 882
    const-string v6, "share"

    .line 883
    .line 884
    invoke-static/range {v2 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 885
    .line 886
    .line 887
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 888
    .line 889
    instance-of v2, v1, Lorg/wikipedia/main/MainFragment;

    .line 890
    .line 891
    if-eqz v2, :cond_15

    .line 892
    .line 893
    check-cast v1, Lorg/wikipedia/main/MainFragment;

    .line 894
    .line 895
    move-object v3, v1

    .line 896
    goto :goto_3

    .line 897
    :cond_15
    move-object v3, v11

    .line 898
    :goto_3
    if-eqz v3, :cond_39

    .line 899
    .line 900
    iget v5, v0, Lorg/wikipedia/feed/image/FeaturedImageCard;->age:I

    .line 901
    .line 902
    iget-object v0, v10, Lorg/wikipedia/gallery/GalleryItem;->thumbnail:Lorg/wikipedia/gallery/ImageInfo;

    .line 903
    .line 904
    iget-object v4, v0, Lorg/wikipedia/gallery/ImageInfo;->source:Ljava/lang/String;

    .line 905
    .line 906
    iget-object v0, v10, Lorg/wikipedia/gallery/GalleryItem;->original:Lorg/wikipedia/gallery/ImageInfo;

    .line 907
    .line 908
    iget-object v6, v0, Lorg/wikipedia/gallery/ImageInfo;->source:Ljava/lang/String;

    .line 909
    .line 910
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    new-instance v2, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda7;

    .line 915
    .line 916
    const/4 v7, 0x0

    .line 917
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/io/Serializable;I)V

    .line 918
    .line 919
    .line 920
    sget-object v1, Lokio/Okio__OkioKt;->_implementation:Lokio/ByteString$Companion;

    .line 921
    .line 922
    if-eqz v1, :cond_16

    .line 923
    .line 924
    new-instance v1, Lcoil3/request/ImageRequest$Builder;

    .line 925
    .line 926
    invoke-direct {v1, v0}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 927
    .line 928
    .line 929
    iput-object v4, v1, Lcoil3/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    .line 930
    .line 931
    new-instance v3, Landroidx/compose/ui/draw/DrawResult;

    .line 932
    .line 933
    invoke-direct {v3, v2}, Landroidx/compose/ui/draw/DrawResult;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 934
    .line 935
    .line 936
    iput-object v3, v1, Lcoil3/request/ImageRequest$Builder;->target:Lcoil3/target/Target;

    .line 937
    .line 938
    invoke-virtual {v1}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 939
    .line 940
    .line 941
    move-result-object v1

    .line 942
    invoke-static {v0}, Lcoil3/SingletonImageLoader;->get(Landroid/content/Context;)Lcoil3/RealImageLoader;

    .line 943
    .line 944
    .line 945
    move-result-object v0

    .line 946
    invoke-virtual {v0, v1}, Lcoil3/RealImageLoader;->enqueue(Lcoil3/request/ImageRequest;)V

    .line 947
    .line 948
    .line 949
    goto/16 :goto_c

    .line 950
    .line 951
    :cond_16
    const-string v0, "ImageService has not been set, call ImageService.setImplementation() before using ImageService"

    .line 952
    .line 953
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 954
    .line 955
    .line 956
    return-object v11

    .line 957
    :cond_17
    instance-of v2, v4, Lorg/wikipedia/feed/HomeAction$ImageDownloadClick;

    .line 958
    .line 959
    if-eqz v2, :cond_1b

    .line 960
    .line 961
    check-cast v4, Lorg/wikipedia/feed/HomeAction$ImageDownloadClick;

    .line 962
    .line 963
    iget-object v0, v4, Lorg/wikipedia/feed/HomeAction$ImageDownloadClick;->card:Lorg/wikipedia/feed/image/FeaturedImageCard;

    .line 964
    .line 965
    iget-object v2, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 966
    .line 967
    iget-object v0, v0, Lorg/wikipedia/feed/image/FeaturedImageCard;->featuredImage:Lorg/wikipedia/feed/image/FeaturedImage;

    .line 968
    .line 969
    sget-object v3, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 970
    .line 971
    invoke-virtual {v0}, Lorg/wikipedia/feed/image/FeaturedImage;->toPageTitle()Lorg/wikipedia/page/PageTitle;

    .line 972
    .line 973
    .line 974
    move-result-object v3

    .line 975
    invoke-static {v3}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->getPageData$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikimedia/testkitchen/context/PageData;

    .line 976
    .line 977
    .line 978
    move-result-object v7

    .line 979
    const/4 v8, 0x0

    .line 980
    const/16 v9, 0xd4

    .line 981
    .line 982
    const-string v3, "click"

    .line 983
    .line 984
    const-string v4, "FeaturedImageCard"

    .line 985
    .line 986
    const/4 v5, 0x0

    .line 987
    const-string v6, "download"

    .line 988
    .line 989
    invoke-static/range {v2 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 990
    .line 991
    .line 992
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 993
    .line 994
    instance-of v2, v1, Lorg/wikipedia/main/MainFragment;

    .line 995
    .line 996
    if-eqz v2, :cond_18

    .line 997
    .line 998
    check-cast v1, Lorg/wikipedia/main/MainFragment;

    .line 999
    .line 1000
    goto :goto_4

    .line 1001
    :cond_18
    move-object v1, v11

    .line 1002
    :goto_4
    if-eqz v1, :cond_39

    .line 1003
    .line 1004
    iput-object v0, v1, Lorg/wikipedia/main/MainFragment;->pendingDownloadImage:Lorg/wikipedia/feed/image/FeaturedImage;

    .line 1005
    .line 1006
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1007
    .line 1008
    const/16 v3, 0x21

    .line 1009
    .line 1010
    if-ge v2, v3, :cond_1a

    .line 1011
    .line 1012
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v2

    .line 1016
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1017
    .line 1018
    invoke-static {v2, v3}, Lorg/wikipedia/util/FileUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 1019
    .line 1020
    .line 1021
    move-result v2

    .line 1022
    if-nez v2, :cond_19

    .line 1023
    .line 1024
    goto :goto_5

    .line 1025
    :cond_19
    iget-object v0, v1, Lorg/wikipedia/main/MainFragment;->requestPermissionLauncher:Landroidx/fragment/app/Fragment$10;

    .line 1026
    .line 1027
    invoke-virtual {v0, v3, v11}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 1028
    .line 1029
    .line 1030
    goto/16 :goto_c

    .line 1031
    .line 1032
    :cond_1a
    :goto_5
    invoke-virtual {v1, v0}, Lorg/wikipedia/main/MainFragment;->download(Lorg/wikipedia/feed/image/FeaturedImage;)V

    .line 1033
    .line 1034
    .line 1035
    goto/16 :goto_c

    .line 1036
    .line 1037
    :cond_1b
    instance-of v2, v4, Lorg/wikipedia/feed/HomeAction$LanguageSelected;

    .line 1038
    .line 1039
    const-string v12, "selected_tab"

    .line 1040
    .line 1041
    if-eqz v2, :cond_1c

    .line 1042
    .line 1043
    iget-object v13, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1044
    .line 1045
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v0

    .line 1049
    new-instance v2, Lkotlin/Pair;

    .line 1050
    .line 1051
    invoke-direct {v2, v12, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1052
    .line 1053
    .line 1054
    check-cast v4, Lorg/wikipedia/feed/HomeAction$LanguageSelected;

    .line 1055
    .line 1056
    iget-object v0, v4, Lorg/wikipedia/feed/HomeAction$LanguageSelected;->languageCode:Ljava/lang/String;

    .line 1057
    .line 1058
    new-instance v3, Lkotlin/Pair;

    .line 1059
    .line 1060
    const-string v4, "language_code"

    .line 1061
    .line 1062
    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1063
    .line 1064
    .line 1065
    new-array v4, v10, [Lkotlin/Pair;

    .line 1066
    .line 1067
    aput-object v2, v4, v9

    .line 1068
    .line 1069
    aput-object v3, v4, v5

    .line 1070
    .line 1071
    invoke-static {v4}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v19

    .line 1075
    const/16 v20, 0x74

    .line 1076
    .line 1077
    const-string v14, "click"

    .line 1078
    .line 1079
    const-string v15, "language_menu"

    .line 1080
    .line 1081
    const/16 v16, 0x0

    .line 1082
    .line 1083
    const-string v17, "language_change"

    .line 1084
    .line 1085
    const/16 v18, 0x0

    .line 1086
    .line 1087
    invoke-static/range {v13 .. v20}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v1}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v1

    .line 1094
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 1095
    .line 1096
    const v2, 0x7f12060c

    .line 1097
    .line 1098
    .line 1099
    invoke-static {v2, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 1100
    .line 1101
    .line 1102
    iget-object v1, v1, Lorg/wikipedia/feed/HomeViewModel;->_wikiSite:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1103
    .line 1104
    sget-object v2, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 1105
    .line 1106
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1107
    .line 1108
    .line 1109
    invoke-static {v0}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v0

    .line 1113
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v1, v11, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1117
    .line 1118
    .line 1119
    goto/16 :goto_c

    .line 1120
    .line 1121
    :cond_1c
    sget-object v2, Lorg/wikipedia/feed/HomeAction$ManageLanguagesClick;->INSTANCE:Lorg/wikipedia/feed/HomeAction$ManageLanguagesClick;

    .line 1122
    .line 1123
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1124
    .line 1125
    .line 1126
    move-result v2

    .line 1127
    if-eqz v2, :cond_1d

    .line 1128
    .line 1129
    iget-object v13, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1130
    .line 1131
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v0

    .line 1135
    invoke-static {v12, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v19

    .line 1139
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1140
    .line 1141
    .line 1142
    const/16 v20, 0x74

    .line 1143
    .line 1144
    const-string v14, "click"

    .line 1145
    .line 1146
    const-string v15, "language_menu"

    .line 1147
    .line 1148
    const/16 v16, 0x0

    .line 1149
    .line 1150
    const-string v17, "manage_languages"

    .line 1151
    .line 1152
    const/16 v18, 0x0

    .line 1153
    .line 1154
    invoke-static/range {v13 .. v20}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v0

    .line 1161
    sget v2, Lorg/wikipedia/settings/languages/WikipediaLanguagesActivity;->$r8$clinit:I

    .line 1162
    .line 1163
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v1

    .line 1167
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->FEED:Lorg/wikipedia/Constants$InvokeSource;

    .line 1168
    .line 1169
    invoke-static {v1, v2}, Lokhttp3/Cache$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v1

    .line 1173
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1174
    .line 1175
    .line 1176
    goto/16 :goto_c

    .line 1177
    .line 1178
    :cond_1d
    instance-of v2, v4, Lorg/wikipedia/feed/HomeAction$CustomizeClick;

    .line 1179
    .line 1180
    if-eqz v2, :cond_21

    .line 1181
    .line 1182
    check-cast v4, Lorg/wikipedia/feed/HomeAction$CustomizeClick;

    .line 1183
    .line 1184
    iget-object v0, v4, Lorg/wikipedia/feed/HomeAction$CustomizeClick;->card:Lorg/wikipedia/feed/model/Card;

    .line 1185
    .line 1186
    if-eqz v0, :cond_1f

    .line 1187
    .line 1188
    iget-object v2, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1189
    .line 1190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v3

    .line 1194
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v4

    .line 1198
    instance-of v3, v0, Lorg/wikipedia/feed/model/EmptyForYouCard;

    .line 1199
    .line 1200
    if-nez v3, :cond_1e

    .line 1201
    .line 1202
    const-string v3, "feed_overflow"

    .line 1203
    .line 1204
    move-object v5, v3

    .line 1205
    goto :goto_6

    .line 1206
    :cond_1e
    move-object v5, v11

    .line 1207
    :goto_6
    const/4 v8, 0x0

    .line 1208
    const/16 v9, 0xf0

    .line 1209
    .line 1210
    const-string v3, "click"

    .line 1211
    .line 1212
    const-string v6, "feed_customize"

    .line 1213
    .line 1214
    const/4 v7, 0x0

    .line 1215
    invoke-static/range {v2 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 1216
    .line 1217
    .line 1218
    :cond_1f
    instance-of v0, v0, Lorg/wikipedia/feed/model/DiscoverCard;

    .line 1219
    .line 1220
    if-eqz v0, :cond_20

    .line 1221
    .line 1222
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v0

    .line 1226
    sget v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->$r8$clinit:I

    .line 1227
    .line 1228
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v1

    .line 1232
    new-instance v2, Landroid/content/Intent;

    .line 1233
    .line 1234
    const-class v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;

    .line 1235
    .line 1236
    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1237
    .line 1238
    .line 1239
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1240
    .line 1241
    .line 1242
    goto/16 :goto_c

    .line 1243
    .line 1244
    :cond_20
    iget-object v0, v1, Lorg/wikipedia/feed/HomeFragment;->customizeInterestsLauncher:Landroidx/fragment/app/Fragment$10;

    .line 1245
    .line 1246
    sget v2, Lorg/wikipedia/feed/personalization/PersonalizationActivity;->$r8$clinit:I

    .line 1247
    .line 1248
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v1

    .line 1252
    invoke-static {v1}, Lorg/wikipedia/feed/personalization/PersonalizationScreenKt;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v1

    .line 1256
    invoke-virtual {v0, v1, v11}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 1257
    .line 1258
    .line 1259
    goto/16 :goto_c

    .line 1260
    .line 1261
    :cond_21
    sget-object v2, Lorg/wikipedia/feed/HomeAction$TabClick;->INSTANCE:Lorg/wikipedia/feed/HomeAction$TabClick;

    .line 1262
    .line 1263
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1264
    .line 1265
    .line 1266
    move-result v2

    .line 1267
    if-eqz v2, :cond_22

    .line 1268
    .line 1269
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v0

    .line 1273
    sget v2, Lorg/wikipedia/page/tabs/TabActivity;->$r8$clinit:I

    .line 1274
    .line 1275
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v1

    .line 1279
    new-instance v2, Landroid/content/Intent;

    .line 1280
    .line 1281
    const-class v3, Lorg/wikipedia/page/tabs/TabActivity;

    .line 1282
    .line 1283
    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1284
    .line 1285
    .line 1286
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1287
    .line 1288
    .line 1289
    goto/16 :goto_c

    .line 1290
    .line 1291
    :cond_22
    sget-object v2, Lorg/wikipedia/feed/HomeAction$UpdateTabCount;->INSTANCE:Lorg/wikipedia/feed/HomeAction$UpdateTabCount;

    .line 1292
    .line 1293
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1294
    .line 1295
    .line 1296
    move-result v2

    .line 1297
    if-eqz v2, :cond_23

    .line 1298
    .line 1299
    invoke-virtual {v1}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v0

    .line 1303
    invoke-virtual {v0, v9}, Lorg/wikipedia/feed/HomeViewModel;->updateTabCount(Z)V

    .line 1304
    .line 1305
    .line 1306
    goto/16 :goto_c

    .line 1307
    .line 1308
    :cond_23
    instance-of v2, v4, Lorg/wikipedia/feed/HomeAction$CardImpression;

    .line 1309
    .line 1310
    if-eqz v2, :cond_24

    .line 1311
    .line 1312
    check-cast v4, Lorg/wikipedia/feed/HomeAction$CardImpression;

    .line 1313
    .line 1314
    iget-object v0, v4, Lorg/wikipedia/feed/HomeAction$CardImpression;->card:Lorg/wikipedia/feed/model/Card;

    .line 1315
    .line 1316
    iget v2, v4, Lorg/wikipedia/feed/HomeAction$CardImpression;->index:I

    .line 1317
    .line 1318
    iget-object v3, v1, Lorg/wikipedia/feed/HomeFragment;->cardImpressions:Ljava/util/LinkedHashSet;

    .line 1319
    .line 1320
    invoke-virtual {v0}, Lorg/wikipedia/feed/model/Card;->getHideKey()Ljava/lang/String;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v4

    .line 1324
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1325
    .line 1326
    .line 1327
    move-result v3

    .line 1328
    if-eqz v3, :cond_39

    .line 1329
    .line 1330
    iget-object v4, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1331
    .line 1332
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v0

    .line 1336
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v6

    .line 1340
    const-string v0, "card_index"

    .line 1341
    .line 1342
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v1

    .line 1346
    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v10

    .line 1350
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1351
    .line 1352
    .line 1353
    const/16 v11, 0x7c

    .line 1354
    .line 1355
    const-string v5, "impression"

    .line 1356
    .line 1357
    const/4 v7, 0x0

    .line 1358
    const/4 v8, 0x0

    .line 1359
    const/4 v9, 0x0

    .line 1360
    invoke-static/range {v4 .. v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 1361
    .line 1362
    .line 1363
    goto/16 :goto_c

    .line 1364
    .line 1365
    :cond_24
    instance-of v2, v4, Lorg/wikipedia/feed/HomeAction$CardFooterClick;

    .line 1366
    .line 1367
    if-eqz v2, :cond_28

    .line 1368
    .line 1369
    check-cast v4, Lorg/wikipedia/feed/HomeAction$CardFooterClick;

    .line 1370
    .line 1371
    iget-object v0, v4, Lorg/wikipedia/feed/HomeAction$CardFooterClick;->card:Lorg/wikipedia/feed/model/Card;

    .line 1372
    .line 1373
    instance-of v2, v0, Lorg/wikipedia/feed/topread/TopReadCard;

    .line 1374
    .line 1375
    if-eqz v2, :cond_25

    .line 1376
    .line 1377
    iget-object v12, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1378
    .line 1379
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v2

    .line 1383
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v14

    .line 1387
    const/16 v18, 0x0

    .line 1388
    .line 1389
    const/16 v19, 0xf4

    .line 1390
    .line 1391
    const-string v13, "click"

    .line 1392
    .line 1393
    const/4 v15, 0x0

    .line 1394
    const-string v16, "more_top_read"

    .line 1395
    .line 1396
    const/16 v17, 0x0

    .line 1397
    .line 1398
    invoke-static/range {v12 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 1399
    .line 1400
    .line 1401
    sget v2, Lorg/wikipedia/feed/topread/TopReadArticlesActivity;->$r8$clinit:I

    .line 1402
    .line 1403
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v2

    .line 1407
    new-instance v4, Lorg/wikipedia/feed/topread/TopReadCard;

    .line 1408
    .line 1409
    check-cast v0, Lorg/wikipedia/feed/topread/TopReadCard;

    .line 1410
    .line 1411
    iget-object v5, v0, Lorg/wikipedia/feed/topread/TopReadCard;->articles:Lorg/wikipedia/feed/topread/TopRead;

    .line 1412
    .line 1413
    iget v0, v0, Lorg/wikipedia/feed/topread/TopReadCard;->age:I

    .line 1414
    .line 1415
    invoke-direct {v4, v5, v0, v7}, Lorg/wikipedia/feed/topread/TopReadCard;-><init>(Lorg/wikipedia/feed/topread/TopRead;ILorg/wikipedia/dataclient/WikiSite;)V

    .line 1416
    .line 1417
    .line 1418
    new-instance v0, Landroid/content/Intent;

    .line 1419
    .line 1420
    const-class v5, Lorg/wikipedia/feed/topread/TopReadArticlesActivity;

    .line 1421
    .line 1422
    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1423
    .line 1424
    .line 1425
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v0

    .line 1429
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1430
    .line 1431
    .line 1432
    invoke-virtual {v1, v0, v11}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1433
    .line 1434
    .line 1435
    goto/16 :goto_c

    .line 1436
    .line 1437
    :cond_25
    instance-of v2, v0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;

    .line 1438
    .line 1439
    if-eqz v2, :cond_26

    .line 1440
    .line 1441
    iget-object v12, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1442
    .line 1443
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v2

    .line 1447
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v14

    .line 1451
    const/16 v18, 0x0

    .line 1452
    .line 1453
    const/16 v19, 0xf4

    .line 1454
    .line 1455
    const-string v13, "click"

    .line 1456
    .line 1457
    const/4 v15, 0x0

    .line 1458
    const-string v16, "more_on_this_day"

    .line 1459
    .line 1460
    const/16 v17, 0x0

    .line 1461
    .line 1462
    invoke-static/range {v12 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 1463
    .line 1464
    .line 1465
    sget v2, Lorg/wikipedia/feed/onthisday/OnThisDayActivity;->$r8$clinit:I

    .line 1466
    .line 1467
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v2

    .line 1471
    check-cast v0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;

    .line 1472
    .line 1473
    iget v0, v0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->age:I

    .line 1474
    .line 1475
    sget-object v3, Lorg/wikipedia/Constants$InvokeSource;->ON_THIS_DAY_CARD_FOOTER:Lorg/wikipedia/Constants$InvokeSource;

    .line 1476
    .line 1477
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1481
    .line 1482
    .line 1483
    new-instance v4, Landroid/content/Intent;

    .line 1484
    .line 1485
    const-class v5, Lorg/wikipedia/feed/onthisday/OnThisDayActivity;

    .line 1486
    .line 1487
    invoke-direct {v4, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1488
    .line 1489
    .line 1490
    const-string v2, "age"

    .line 1491
    .line 1492
    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v0

    .line 1496
    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v0

    .line 1500
    const-string/jumbo v2, "year"

    .line 1501
    .line 1502
    .line 1503
    const/4 v4, -0x1

    .line 1504
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v0

    .line 1508
    const-string v2, "invokeSource"

    .line 1509
    .line 1510
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v0

    .line 1514
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1515
    .line 1516
    .line 1517
    invoke-virtual {v1, v0, v11}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1518
    .line 1519
    .line 1520
    goto/16 :goto_c

    .line 1521
    .line 1522
    :cond_26
    instance-of v2, v0, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;

    .line 1523
    .line 1524
    if-eqz v2, :cond_39

    .line 1525
    .line 1526
    iget-object v12, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1527
    .line 1528
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1529
    .line 1530
    .line 1531
    move-result-object v2

    .line 1532
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v14

    .line 1536
    const/16 v18, 0x0

    .line 1537
    .line 1538
    const/16 v19, 0xf4

    .line 1539
    .line 1540
    const-string v13, "click"

    .line 1541
    .line 1542
    const/4 v15, 0x0

    .line 1543
    const-string v16, "more_did_you_know"

    .line 1544
    .line 1545
    const/16 v17, 0x0

    .line 1546
    .line 1547
    invoke-static/range {v12 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 1548
    .line 1549
    .line 1550
    sget v2, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;->$r8$clinit:I

    .line 1551
    .line 1552
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v2

    .line 1556
    check-cast v0, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;

    .line 1557
    .line 1558
    iget-object v3, v0, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;->site:Lorg/wikipedia/dataclient/WikiSite;

    .line 1559
    .line 1560
    iget-object v0, v0, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;->items:Ljava/util/List;

    .line 1561
    .line 1562
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1563
    .line 1564
    .line 1565
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1566
    .line 1567
    .line 1568
    new-instance v4, Landroid/content/Intent;

    .line 1569
    .line 1570
    const-class v5, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;

    .line 1571
    .line 1572
    invoke-direct {v4, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1573
    .line 1574
    .line 1575
    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v2

    .line 1579
    new-instance v3, Ljava/util/ArrayList;

    .line 1580
    .line 1581
    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1582
    .line 1583
    .line 1584
    move-result v4

    .line 1585
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1586
    .line 1587
    .line 1588
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1589
    .line 1590
    .line 1591
    move-result-object v0

    .line 1592
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1593
    .line 1594
    .line 1595
    move-result v4

    .line 1596
    if-eqz v4, :cond_27

    .line 1597
    .line 1598
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1599
    .line 1600
    .line 1601
    move-result-object v4

    .line 1602
    check-cast v4, Lorg/wikipedia/feed/didyouknow/DidYouKnowItem;

    .line 1603
    .line 1604
    iget-object v4, v4, Lorg/wikipedia/feed/didyouknow/DidYouKnowItem;->html:Ljava/lang/String;

    .line 1605
    .line 1606
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1607
    .line 1608
    .line 1609
    goto :goto_7

    .line 1610
    :cond_27
    new-instance v0, Ljava/util/ArrayList;

    .line 1611
    .line 1612
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1613
    .line 1614
    .line 1615
    const-string v3, "did_you_know_items"

    .line 1616
    .line 1617
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1618
    .line 1619
    .line 1620
    move-result-object v0

    .line 1621
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1622
    .line 1623
    .line 1624
    invoke-virtual {v1, v0, v11}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1625
    .line 1626
    .line 1627
    goto/16 :goto_c

    .line 1628
    .line 1629
    :cond_28
    sget-object v2, Lorg/wikipedia/feed/HomeAction$NotificationClick;->INSTANCE:Lorg/wikipedia/feed/HomeAction$NotificationClick;

    .line 1630
    .line 1631
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1632
    .line 1633
    .line 1634
    move-result v2

    .line 1635
    if-eqz v2, :cond_29

    .line 1636
    .line 1637
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v0

    .line 1641
    sget v2, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 1642
    .line 1643
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v1

    .line 1647
    invoke-static {v1}, Lokhttp3/Headers$Companion;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 1648
    .line 1649
    .line 1650
    move-result-object v1

    .line 1651
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1652
    .line 1653
    .line 1654
    goto/16 :goto_c

    .line 1655
    .line 1656
    :cond_29
    sget-object v2, Lorg/wikipedia/feed/HomeAction$ManageModulesClick;->INSTANCE:Lorg/wikipedia/feed/HomeAction$ManageModulesClick;

    .line 1657
    .line 1658
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1659
    .line 1660
    .line 1661
    move-result v2

    .line 1662
    if-eqz v2, :cond_2c

    .line 1663
    .line 1664
    iget-object v12, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1665
    .line 1666
    const/16 v18, 0x0

    .line 1667
    .line 1668
    const/16 v19, 0xf4

    .line 1669
    .line 1670
    const-string v13, "click"

    .line 1671
    .line 1672
    const-string v14, "feed_empty"

    .line 1673
    .line 1674
    const/4 v15, 0x0

    .line 1675
    const-string v16, "customize_feed"

    .line 1676
    .line 1677
    const/16 v17, 0x0

    .line 1678
    .line 1679
    invoke-static/range {v12 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 1680
    .line 1681
    .line 1682
    sget v2, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity;->$r8$clinit:I

    .line 1683
    .line 1684
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v2

    .line 1688
    sget-object v3, Lorg/wikipedia/feed/HomeFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 1689
    .line 1690
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 1691
    .line 1692
    .line 1693
    move-result v0

    .line 1694
    aget v0, v3, v0

    .line 1695
    .line 1696
    if-eq v0, v5, :cond_2b

    .line 1697
    .line 1698
    if-ne v0, v10, :cond_2a

    .line 1699
    .line 1700
    sget-object v0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsStartDestination;->FOR_YOU_MODULES:Lorg/wikipedia/settings/homefeed/HomeFeedSettingsStartDestination;

    .line 1701
    .line 1702
    goto :goto_8

    .line 1703
    :cond_2a
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1704
    .line 1705
    .line 1706
    return-object v11

    .line 1707
    :cond_2b
    sget-object v0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsStartDestination;->COMMUNITY_MODULES:Lorg/wikipedia/settings/homefeed/HomeFeedSettingsStartDestination;

    .line 1708
    .line 1709
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1710
    .line 1711
    .line 1712
    new-instance v3, Landroid/content/Intent;

    .line 1713
    .line 1714
    const-class v4, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity;

    .line 1715
    .line 1716
    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1717
    .line 1718
    .line 1719
    const-string v2, "start_destination"

    .line 1720
    .line 1721
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v0

    .line 1725
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v0

    .line 1729
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1730
    .line 1731
    .line 1732
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1733
    .line 1734
    .line 1735
    move-result-object v1

    .line 1736
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1737
    .line 1738
    .line 1739
    goto/16 :goto_c

    .line 1740
    .line 1741
    :cond_2c
    sget-object v0, Lorg/wikipedia/feed/HomeAction$ShuffleClick;->INSTANCE:Lorg/wikipedia/feed/HomeAction$ShuffleClick;

    .line 1742
    .line 1743
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1744
    .line 1745
    .line 1746
    move-result v0

    .line 1747
    if-eqz v0, :cond_2d

    .line 1748
    .line 1749
    iget-object v12, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1750
    .line 1751
    const/16 v18, 0x0

    .line 1752
    .line 1753
    const/16 v19, 0xf6

    .line 1754
    .line 1755
    const-string v13, "click"

    .line 1756
    .line 1757
    const/4 v14, 0x0

    .line 1758
    const/4 v15, 0x0

    .line 1759
    const-string v16, "random_card_shuffle_button"

    .line 1760
    .line 1761
    const/16 v17, 0x0

    .line 1762
    .line 1763
    invoke-static/range {v12 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 1764
    .line 1765
    .line 1766
    sget v0, Lorg/wikipedia/random/RandomActivity;->$r8$clinit:I

    .line 1767
    .line 1768
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1769
    .line 1770
    .line 1771
    move-result-object v0

    .line 1772
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->FEED:Lorg/wikipedia/Constants$InvokeSource;

    .line 1773
    .line 1774
    invoke-static {v0, v7, v2}, Lorg/wikipedia/random/RandomScreenKt;->newIntent(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v0

    .line 1778
    invoke-virtual {v1, v0, v11}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1779
    .line 1780
    .line 1781
    goto/16 :goto_c

    .line 1782
    .line 1783
    :cond_2d
    sget-object v0, Lorg/wikipedia/feed/HomeAction$PlacesTeaserClick;->INSTANCE:Lorg/wikipedia/feed/HomeAction$PlacesTeaserClick;

    .line 1784
    .line 1785
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1786
    .line 1787
    .line 1788
    move-result v0

    .line 1789
    if-eqz v0, :cond_2e

    .line 1790
    .line 1791
    iget-object v12, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1792
    .line 1793
    const/16 v18, 0x0

    .line 1794
    .line 1795
    const/16 v19, 0xf4

    .line 1796
    .line 1797
    const-string v13, "click"

    .line 1798
    .line 1799
    const-string v14, "PlacesOfInterestLocationPromptCard"

    .line 1800
    .line 1801
    const/4 v15, 0x0

    .line 1802
    const-string v16, "go_to_places"

    .line 1803
    .line 1804
    const/16 v17, 0x0

    .line 1805
    .line 1806
    invoke-static/range {v12 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 1807
    .line 1808
    .line 1809
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v0

    .line 1813
    sget v2, Lorg/wikipedia/places/PlacesActivity;->$r8$clinit:I

    .line 1814
    .line 1815
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1816
    .line 1817
    .line 1818
    move-result-object v1

    .line 1819
    invoke-static {v1, v11, v11}, Lokio/ByteString$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Landroid/location/Location;)Landroid/content/Intent;

    .line 1820
    .line 1821
    .line 1822
    move-result-object v1

    .line 1823
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1824
    .line 1825
    .line 1826
    goto/16 :goto_c

    .line 1827
    .line 1828
    :cond_2e
    sget-object v0, Lorg/wikipedia/feed/HomeAction$DiscoverTeaserClick;->INSTANCE:Lorg/wikipedia/feed/HomeAction$DiscoverTeaserClick;

    .line 1829
    .line 1830
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1831
    .line 1832
    .line 1833
    move-result v0

    .line 1834
    if-eqz v0, :cond_2f

    .line 1835
    .line 1836
    iget-object v12, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1837
    .line 1838
    const/16 v18, 0x0

    .line 1839
    .line 1840
    const/16 v19, 0xf6

    .line 1841
    .line 1842
    const-string v13, "click"

    .line 1843
    .line 1844
    const/4 v14, 0x0

    .line 1845
    const/4 v15, 0x0

    .line 1846
    const-string v16, "enable_discover_reading_list_button"

    .line 1847
    .line 1848
    const/16 v17, 0x0

    .line 1849
    .line 1850
    invoke-static/range {v12 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 1851
    .line 1852
    .line 1853
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1854
    .line 1855
    .line 1856
    move-result-object v0

    .line 1857
    sget v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListOnboardingActivity;->$r8$clinit:I

    .line 1858
    .line 1859
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1860
    .line 1861
    .line 1862
    move-result-object v1

    .line 1863
    invoke-static {v1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;->newIntent$default(Landroid/content/Context;)Landroid/content/Intent;

    .line 1864
    .line 1865
    .line 1866
    move-result-object v1

    .line 1867
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1868
    .line 1869
    .line 1870
    goto/16 :goto_c

    .line 1871
    .line 1872
    :cond_2f
    sget-object v0, Lorg/wikipedia/feed/HomeAction$SeeAllRecommendationsClick;->INSTANCE:Lorg/wikipedia/feed/HomeAction$SeeAllRecommendationsClick;

    .line 1873
    .line 1874
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1875
    .line 1876
    .line 1877
    move-result v0

    .line 1878
    if-eqz v0, :cond_30

    .line 1879
    .line 1880
    iget-object v12, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1881
    .line 1882
    const/16 v18, 0x0

    .line 1883
    .line 1884
    const/16 v19, 0xf6

    .line 1885
    .line 1886
    const-string v13, "click"

    .line 1887
    .line 1888
    const/4 v14, 0x0

    .line 1889
    const/4 v15, 0x0

    .line 1890
    const-string v16, "explore_all_recommendations_button"

    .line 1891
    .line 1892
    const/16 v17, 0x0

    .line 1893
    .line 1894
    invoke-static/range {v12 .. v19}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 1895
    .line 1896
    .line 1897
    sget v0, Lorg/wikipedia/readinglist/ReadingListActivity;->$r8$clinit:I

    .line 1898
    .line 1899
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1900
    .line 1901
    .line 1902
    move-result-object v0

    .line 1903
    sget-object v2, Lorg/wikipedia/readinglist/ReadingListMode;->RECOMMENDED:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 1904
    .line 1905
    invoke-static {v0, v2, v11}, Lorg/jsoup/nodes/NodeUtils;->newIntent(Landroid/content/Context;Lorg/wikipedia/readinglist/ReadingListMode;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 1906
    .line 1907
    .line 1908
    move-result-object v0

    .line 1909
    invoke-virtual {v1, v0, v11}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1910
    .line 1911
    .line 1912
    goto/16 :goto_c

    .line 1913
    .line 1914
    :cond_30
    instance-of v0, v4, Lorg/wikipedia/feed/HomeAction$GameActionClick;

    .line 1915
    .line 1916
    if-eqz v0, :cond_38

    .line 1917
    .line 1918
    check-cast v4, Lorg/wikipedia/feed/HomeAction$GameActionClick;

    .line 1919
    .line 1920
    iget-object v0, v4, Lorg/wikipedia/feed/HomeAction$GameActionClick;->wikiGame:Lorg/wikipedia/feed/wikigames/WikiGame$OnThisDayGame;

    .line 1921
    .line 1922
    instance-of v2, v0, Lorg/wikipedia/feed/wikigames/WikiGame$OnThisDayGame;

    .line 1923
    .line 1924
    if-eqz v2, :cond_37

    .line 1925
    .line 1926
    iget-object v0, v0, Lorg/wikipedia/feed/wikigames/WikiGame$OnThisDayGame;->state:Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState;

    .line 1927
    .line 1928
    instance-of v2, v0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Completed;

    .line 1929
    .line 1930
    if-eqz v2, :cond_31

    .line 1931
    .line 1932
    move v9, v5

    .line 1933
    goto :goto_9

    .line 1934
    :cond_31
    instance-of v3, v0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$InProgress;

    .line 1935
    .line 1936
    if-nez v3, :cond_33

    .line 1937
    .line 1938
    instance-of v3, v0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Preview;

    .line 1939
    .line 1940
    if-eqz v3, :cond_32

    .line 1941
    .line 1942
    goto :goto_9

    .line 1943
    :cond_32
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1944
    .line 1945
    .line 1946
    return-object v11

    .line 1947
    :cond_33
    :goto_9
    instance-of v3, v0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$Preview;

    .line 1948
    .line 1949
    if-eqz v3, :cond_34

    .line 1950
    .line 1951
    const-string v0, "play_click"

    .line 1952
    .line 1953
    :goto_a
    move-object v14, v0

    .line 1954
    goto :goto_b

    .line 1955
    :cond_34
    instance-of v0, v0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState$InProgress;

    .line 1956
    .line 1957
    if-eqz v0, :cond_35

    .line 1958
    .line 1959
    const-string v0, "continue_click"

    .line 1960
    .line 1961
    goto :goto_a

    .line 1962
    :cond_35
    if-eqz v2, :cond_36

    .line 1963
    .line 1964
    const-string v0, "review_click"

    .line 1965
    .line 1966
    goto :goto_a

    .line 1967
    :goto_b
    iget-object v10, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1968
    .line 1969
    sget-object v0, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 1970
    .line 1971
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1972
    .line 1973
    .line 1974
    move-result-object v0

    .line 1975
    const-string v2, "game"

    .line 1976
    .line 1977
    invoke-static {v2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 1978
    .line 1979
    .line 1980
    move-result-object v16

    .line 1981
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1982
    .line 1983
    .line 1984
    const/16 v17, 0x74

    .line 1985
    .line 1986
    const-string v11, "click"

    .line 1987
    .line 1988
    const-string v12, "WikiGameCard"

    .line 1989
    .line 1990
    const/4 v13, 0x0

    .line 1991
    const/4 v15, 0x0

    .line 1992
    invoke-static/range {v10 .. v17}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 1993
    .line 1994
    .line 1995
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v0

    .line 1999
    sget v2, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->$r8$clinit:I

    .line 2000
    .line 2001
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2002
    .line 2003
    .line 2004
    move-result-object v5

    .line 2005
    sget-object v6, Lorg/wikipedia/Constants$InvokeSource;->FEED:Lorg/wikipedia/Constants$InvokeSource;

    .line 2006
    .line 2007
    const/4 v8, 0x0

    .line 2008
    const/16 v10, 0x8

    .line 2009
    .line 2010
    invoke-static/range {v5 .. v10}, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;->newIntent$default(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/dataclient/WikiSite;Lj$/time/LocalDate;II)Landroid/content/Intent;

    .line 2011
    .line 2012
    .line 2013
    move-result-object v1

    .line 2014
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2015
    .line 2016
    .line 2017
    goto :goto_c

    .line 2018
    :cond_36
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 2019
    .line 2020
    .line 2021
    return-object v11

    .line 2022
    :cond_37
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 2023
    .line 2024
    .line 2025
    return-object v11

    .line 2026
    :cond_38
    sget-object v0, Lorg/wikipedia/feed/HomeAction$GoToGamesHubClick;->INSTANCE:Lorg/wikipedia/feed/HomeAction$GoToGamesHubClick;

    .line 2027
    .line 2028
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2029
    .line 2030
    .line 2031
    move-result v0

    .line 2032
    if-eqz v0, :cond_3a

    .line 2033
    .line 2034
    iget-object v2, v1, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2035
    .line 2036
    const/4 v8, 0x0

    .line 2037
    const/16 v9, 0xf4

    .line 2038
    .line 2039
    const-string v3, "click"

    .line 2040
    .line 2041
    const-string v4, "GamesModulePromptCard"

    .line 2042
    .line 2043
    const/4 v5, 0x0

    .line 2044
    const-string v6, "go_to_games_hub"

    .line 2045
    .line 2046
    const/4 v7, 0x0

    .line 2047
    invoke-static/range {v2 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 2048
    .line 2049
    .line 2050
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 2051
    .line 2052
    .line 2053
    move-result-object v0

    .line 2054
    sget v2, Lorg/wikipedia/games/GamesHubActivity;->$r8$clinit:I

    .line 2055
    .line 2056
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2057
    .line 2058
    .line 2059
    move-result-object v1

    .line 2060
    new-instance v2, Landroid/content/Intent;

    .line 2061
    .line 2062
    const-class v3, Lorg/wikipedia/games/GamesHubActivity;

    .line 2063
    .line 2064
    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2065
    .line 2066
    .line 2067
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2068
    .line 2069
    .line 2070
    :cond_39
    :goto_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2071
    .line 2072
    return-object v0

    .line 2073
    :cond_3a
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 2074
    .line 2075
    .line 2076
    return-object v11
.end method

.method private final invoke$org$wikipedia$games$GamesHubFragment$$ExternalSyntheticLambda6(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/ui/platform/ComposeView;

    .line 4
    .line 5
    iget-object v1, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    iget-object p0, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lorg/wikipedia/games/GamesHubFragment;

    .line 12
    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p1}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/view/View;Ljava/lang/String;)Lcom/google/android/material/snackbar/Snackbar;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 23
    .line 24
    const/16 v2, 0xd

    .line 25
    .line 26
    invoke-direct {v0, v2, v1, p0}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const p0, 0x7f12025d

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p0, v0}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method private final invoke$org$wikipedia$games$GamesHubScreenKt$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    iget-object p0, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Ljava/lang/String;

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v2, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    invoke-direct {v2, v0, v1, p0, v3}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    const v1, -0x676487b5

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x5

    .line 34
    invoke-static {p1, v0, p0}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->items$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;ILandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method private final invoke$org$wikipedia$language$addlanguages$AddLanguagesListScreenKt$$ExternalSyntheticLambda4(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/content/Context;

    .line 8
    .line 9
    iget-object p0, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    new-instance v3, Lorg/wikipedia/language/LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3;

    .line 23
    .line 24
    const/4 v4, 0x3

    .line 25
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/language/LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3;-><init>(Ljava/util/List;I)V

    .line 26
    .line 27
    .line 28
    new-instance v4, Lorg/wikipedia/watchlist/WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;

    .line 29
    .line 30
    const/4 v5, 0x2

    .line 31
    invoke-direct {v4, v0, v1, p0, v5}, Lorg/wikipedia/watchlist/WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;-><init>(Ljava/util/List;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V

    .line 32
    .line 33
    .line 34
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    const v1, 0x799532c4

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v4, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v2, v0, v3, p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->items(ILandroidx/compose/runtime/Latch$await$2$2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 45
    .line 46
    .line 47
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p0
.end method

.method private final invoke$org$wikipedia$places$PlacesFragment$$ExternalSyntheticLambda17(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/places/PlacesFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lorg/wikipedia/dataclient/page/NearbyPage;

    .line 8
    .line 9
    iget-object p0, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Ljava/lang/String;

    .line 12
    .line 13
    check-cast p1, Landroid/graphics/Bitmap;

    .line 14
    .line 15
    sget-object v2, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    iget-object v2, v0, Lorg/wikipedia/places/PlacesFragment;->annotationCache:Lkotlin/collections/ArrayDeque;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x0

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    move-object v6, v4

    .line 48
    check-cast v6, Lorg/wikipedia/dataclient/page/NearbyPage;

    .line 49
    .line 50
    iget v6, v6, Lorg/wikipedia/dataclient/page/NearbyPage;->pageId:I

    .line 51
    .line 52
    iget v7, v1, Lorg/wikipedia/dataclient/page/NearbyPage;->pageId:I

    .line 53
    .line 54
    if-ne v6, v7, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move-object v4, v5

    .line 58
    :goto_0
    check-cast v4, Lorg/wikipedia/dataclient/page/NearbyPage;

    .line 59
    .line 60
    if-eqz v4, :cond_8

    .line 61
    .line 62
    sget-object v1, Lorg/wikipedia/places/PlacesFragment;->CLUSTER_FONT_STACK:[Ljava/lang/String;

    .line 63
    .line 64
    iget-object v1, v0, Lorg/wikipedia/places/PlacesFragment;->markerRect:Landroid/graphics/Rect;

    .line 65
    .line 66
    iget-object v2, v0, Lorg/wikipedia/places/PlacesFragment;->markerPaintSrc:Landroid/graphics/Paint;

    .line 67
    .line 68
    if-eqz v2, :cond_7

    .line 69
    .line 70
    iget-object v6, v0, Lorg/wikipedia/places/PlacesFragment;->markerPaintSrcIn:Landroid/graphics/Paint;

    .line 71
    .line 72
    if-eqz v6, :cond_6

    .line 73
    .line 74
    iget-object v7, v0, Lorg/wikipedia/places/PlacesFragment;->markerBorderPaint:Landroid/graphics/Paint;

    .line 75
    .line 76
    if-eqz v7, :cond_5

    .line 77
    .line 78
    invoke-static {p1, v1, v2, v6, v7}, Lorg/jsoup/Jsoup;->getMarkerBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/Bitmap;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object v1, v0, Lorg/wikipedia/places/PlacesFragment;->mapboxMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 83
    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    if-eqz v1, :cond_4

    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 100
    .line 101
    invoke-direct {v6, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v6}, Lokhttp3/HttpUrl$Companion;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_3

    .line 109
    .line 110
    invoke-virtual {v1, p0, p1}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    const-string p0, "Provided drawable couldn\'t be converted to a Bitmap."

    .line 115
    .line 116
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-object v5

    .line 120
    :cond_4
    :goto_1
    iget-object p1, v4, Lorg/wikipedia/dataclient/page/NearbyPage;->annotation:Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 121
    .line 122
    if-eqz p1, :cond_8

    .line 123
    .line 124
    iget-object v1, p1, Lorg/maplibre/android/plugins/annotation/Symbol;->jsonObject:Lcom/google/gson/JsonObject;

    .line 125
    .line 126
    const-string v2, "icon-image"

    .line 127
    .line 128
    invoke-virtual {v1, v2, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object p0, v0, Lorg/wikipedia/places/PlacesFragment;->symbolManager:Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 132
    .line 133
    if-eqz p0, :cond_8

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->update(Lorg/maplibre/android/plugins/annotation/Symbol;)V

    .line 136
    .line 137
    .line 138
    return-object v3

    .line 139
    :cond_5
    const-string p0, "markerBorderPaint"

    .line 140
    .line 141
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v5

    .line 145
    :cond_6
    const-string p0, "markerPaintSrcIn"

    .line 146
    .line 147
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v5

    .line 151
    :cond_7
    const-string p0, "markerPaintSrc"

    .line 152
    .line 153
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v5

    .line 157
    :cond_8
    :goto_2
    return-object v3
.end method

.method private final invoke$org$wikipedia$random$RandomScreenKt$$ExternalSyntheticLambda15(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    .line 8
    .line 9
    iget-object p0, p0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-class p1, Landroid/hardware/SensorManager;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    move-object v4, p1

    .line 25
    check-cast v4, Landroid/hardware/SensorManager;

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-virtual {v4, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    move-object v6, p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    goto :goto_0

    .line 38
    :goto_1
    new-instance p1, Lkotlin/jvm/internal/Ref$LongRef;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lkotlin/jvm/internal/Ref$LongRef;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v5, Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$1$1$listener$1;

    .line 49
    .line 50
    invoke-direct {v5, p1, v3, v0, p0}, Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$1$1$listener$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroid/content/Context;Landroidx/compose/runtime/MutableState;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda17;

    .line 54
    .line 55
    const/4 v7, 0x0

    .line 56
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0, v2}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 64
    .line 65
    .line 66
    new-instance p0, Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$lambda$1$0$$inlined$onDispose$1;

    .line 67
    .line 68
    invoke-direct {p0, v1, v2, v4, v5}, Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$lambda$1$0$$inlined$onDispose$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda17;Landroid/hardware/SensorManager;Lorg/wikipedia/random/RandomScreenKt$ShakeToAdvance$1$1$listener$1;)V

    .line 69
    .line 70
    .line 71
    return-object p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const/16 v3, 0x1c

    .line 6
    .line 7
    const/16 v5, 0xf

    .line 8
    .line 9
    const/4 v6, 0x6

    .line 10
    const-wide v7, 0xffffffffL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const/4 v9, 0x2

    .line 16
    const/4 v10, 0x3

    .line 17
    const/4 v11, 0x0

    .line 18
    const/4 v12, 0x0

    .line 19
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    .line 21
    iget-object v14, v0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v15, v0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v2, v0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 26
    .line 27
    const/16 v17, 0x20

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    check-cast v15, Ljava/util/List;

    .line 36
    .line 37
    check-cast v14, Landroidx/compose/animation/core/InfiniteTransition;

    .line 38
    .line 39
    move-object/from16 v0, p1

    .line 40
    .line 41
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const v3, -0x61dca322

    .line 51
    .line 52
    .line 53
    if-eq v1, v3, :cond_4

    .line 54
    .line 55
    const v3, -0xbfb80d6

    .line 56
    .line 57
    .line 58
    if-eq v1, v3, :cond_2

    .line 59
    .line 60
    const v3, 0x38b7655d    # 8.7450004E-5f

    .line 61
    .line 62
    .line 63
    if-eq v1, v3, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const-string v1, "control"

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    new-instance v1, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0;

    .line 76
    .line 77
    invoke-direct {v1, v15, v14, v4}, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Landroidx/compose/animation/core/InfiniteTransition;I)V

    .line 78
    .line 79
    .line 80
    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 81
    .line 82
    const v3, 0x5356da9f

    .line 83
    .line 84
    .line 85
    invoke-direct {v2, v1, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v5, v2}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->items$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;ILandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    const-string v1, "lexicalsemantic"

    .line 93
    .line 94
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_3

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    new-instance v1, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0;

    .line 102
    .line 103
    invoke-direct {v1, v15, v14, v9}, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Landroidx/compose/animation/core/InfiniteTransition;I)V

    .line 104
    .line 105
    .line 106
    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 107
    .line 108
    const v3, 0x46a2e888

    .line 109
    .line 110
    .line 111
    invoke-direct {v2, v1, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v10, v2}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->items$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;ILandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 115
    .line 116
    .line 117
    new-instance v1, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda5;

    .line 118
    .line 119
    invoke-direct {v1, v15, v14, v12}, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;Landroidx/compose/animation/core/InfiniteTransition;I)V

    .line 120
    .line 121
    .line 122
    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 123
    .line 124
    const v3, 0x184e233f

    .line 125
    .line 126
    .line 127
    invoke-direct {v2, v1, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 128
    .line 129
    .line 130
    invoke-static {v0, v11, v2, v10}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_4
    const-string v1, "semanticlexical"

    .line 135
    .line 136
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_5

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_5
    new-instance v1, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda5;

    .line 144
    .line 145
    invoke-direct {v1, v15, v14, v4}, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;Landroidx/compose/animation/core/InfiniteTransition;I)V

    .line 146
    .line 147
    .line 148
    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 149
    .line 150
    const v3, 0x2a5bd51e

    .line 151
    .line 152
    .line 153
    invoke-direct {v2, v1, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 154
    .line 155
    .line 156
    invoke-static {v0, v11, v2, v10}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 157
    .line 158
    .line 159
    new-instance v1, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0;

    .line 160
    .line 161
    invoke-direct {v1, v15, v14, v10}, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Landroidx/compose/animation/core/InfiniteTransition;I)V

    .line 162
    .line 163
    .line 164
    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 165
    .line 166
    const v3, 0x58b09a67

    .line 167
    .line 168
    .line 169
    invoke-direct {v2, v1, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 170
    .line 171
    .line 172
    invoke-static {v0, v10, v2}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->items$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;ILandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 173
    .line 174
    .line 175
    :goto_0
    return-object v13

    .line 176
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->invoke$org$wikipedia$random$RandomScreenKt$$ExternalSyntheticLambda15(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    return-object v0

    .line 181
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->invoke$org$wikipedia$places$PlacesFragment$$ExternalSyntheticLambda17(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    return-object v0

    .line 186
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->invoke$org$wikipedia$language$addlanguages$AddLanguagesListScreenKt$$ExternalSyntheticLambda4(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    return-object v0

    .line 191
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->invoke$org$wikipedia$games$GamesHubScreenKt$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    return-object v0

    .line 196
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->invoke$org$wikipedia$games$GamesHubFragment$$ExternalSyntheticLambda6(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    return-object v0

    .line 201
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->invoke$org$wikipedia$feed$HomeFragment$$ExternalSyntheticLambda6(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    return-object v0

    .line 206
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->invoke$org$wikipedia$feed$CommunityContentTabKt$$ExternalSyntheticLambda20(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    return-object v0

    .line 211
    :pswitch_7
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 212
    .line 213
    check-cast v15, Lorg/wikipedia/feed/topread/TopReadCard;

    .line 214
    .line 215
    check-cast v14, Lorg/wikipedia/dataclient/WikiSite;

    .line 216
    .line 217
    move-object/from16 v0, p1

    .line 218
    .line 219
    check-cast v0, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    new-instance v1, Lorg/wikipedia/feed/HomeAction$PageClick;

    .line 225
    .line 226
    const/16 v3, 0xe

    .line 227
    .line 228
    invoke-virtual {v0, v14, v3}, Lorg/wikipedia/dataclient/page/PageSummary;->getHistoryEntry(Lorg/wikipedia/dataclient/WikiSite;I)Lorg/wikipedia/history/HistoryEntry;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-direct {v1, v15, v0}, Lorg/wikipedia/feed/HomeAction$PageClick;-><init>(Lorg/wikipedia/feed/model/Card;Lorg/wikipedia/history/HistoryEntry;)V

    .line 233
    .line 234
    .line 235
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    return-object v13

    .line 239
    :pswitch_8
    invoke-direct/range {p0 .. p1}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;->invoke$org$wikipedia$compose$components$FadeInAsyncImageKt$$ExternalSyntheticLambda2(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    return-object v0

    .line 244
    :pswitch_9
    check-cast v2, Lorg/wikipedia/commons/FilePageFragment;

    .line 245
    .line 246
    check-cast v15, Ljava/lang/String;

    .line 247
    .line 248
    check-cast v14, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 249
    .line 250
    move-object/from16 v21, p1

    .line 251
    .line 252
    check-cast v21, Landroid/graphics/Bitmap;

    .line 253
    .line 254
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-nez v0, :cond_6

    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_6
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    new-instance v2, Ljava/io/File;

    .line 273
    .line 274
    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v22

    .line 281
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    iget-object v2, v14, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->displayTitle:Ljava/lang/String;

    .line 285
    .line 286
    iget-object v3, v14, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 287
    .line 288
    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v19

    .line 292
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    new-instance v3, Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

    .line 296
    .line 297
    invoke-direct {v3, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;-><init>(Landroid/content/Context;)V

    .line 298
    .line 299
    .line 300
    new-instance v16, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 301
    .line 302
    const/16 v23, 0x0

    .line 303
    .line 304
    const/16 v20, 0x0

    .line 305
    .line 306
    move-object/from16 v17, v1

    .line 307
    .line 308
    move-object/from16 v18, v2

    .line 309
    .line 310
    invoke-direct/range {v16 .. v23}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroid/graphics/Bitmap;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 311
    .line 312
    .line 313
    move-object/from16 v1, v16

    .line 314
    .line 315
    invoke-static {v0, v3, v11, v1, v9}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 316
    .line 317
    .line 318
    :goto_1
    return-object v13

    .line 319
    :pswitch_a
    check-cast v2, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 320
    .line 321
    check-cast v15, Landroidx/compose/runtime/Latch;

    .line 322
    .line 323
    move-object/from16 v0, p1

    .line 324
    .line 325
    check-cast v0, Lokio/BufferedSink;

    .line 326
    .line 327
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    iget-object v0, v2, Lokhttp3/tls/internal/der/BasicDerAdapter;->codec:Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;

    .line 331
    .line 332
    invoke-interface {v0, v15, v14}, Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;->encode(Landroidx/compose/runtime/Latch;Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    return-object v13

    .line 336
    :pswitch_b
    check-cast v2, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 337
    .line 338
    check-cast v15, Landroidx/navigation/NavBackStackEntry;

    .line 339
    .line 340
    check-cast v14, Landroidx/navigation/compose/DialogNavigator;

    .line 341
    .line 342
    move-object/from16 v0, p1

    .line 343
    .line 344
    check-cast v0, Landroidx/compose/runtime/DisposableEffectScope;

    .line 345
    .line 346
    invoke-virtual {v2, v15}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;

    .line 350
    .line 351
    invoke-direct {v0, v14, v15, v2}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;-><init>(Landroidx/navigation/compose/DialogNavigator;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/snapshots/SnapshotStateList;)V

    .line 352
    .line 353
    .line 354
    return-object v0

    .line 355
    :pswitch_c
    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    .line 356
    .line 357
    check-cast v15, Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    .line 358
    .line 359
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 360
    .line 361
    move-object/from16 v0, p1

    .line 362
    .line 363
    check-cast v0, Landroidx/compose/runtime/DisposableEffectScope;

    .line 364
    .line 365
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 366
    .line 367
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 368
    .line 369
    .line 370
    new-instance v1, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda0;

    .line 371
    .line 372
    invoke-direct {v1, v15, v0, v14, v4}, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 373
    .line 374
    .line 375
    invoke-interface {v2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    invoke-virtual {v3, v1}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 380
    .line 381
    .line 382
    new-instance v3, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;

    .line 383
    .line 384
    invoke-direct {v3, v2, v1, v0, v10}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 385
    .line 386
    .line 387
    return-object v3

    .line 388
    :pswitch_d
    check-cast v2, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 389
    .line 390
    check-cast v14, Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;

    .line 391
    .line 392
    move-object/from16 v0, p1

    .line 393
    .line 394
    check-cast v0, Landroidx/compose/runtime/DisposableEffectScope;

    .line 395
    .line 396
    iget-object v0, v2, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->registries:Landroidx/collection/MutableScatterMap;

    .line 397
    .line 398
    invoke-virtual {v0, v15}, Landroidx/collection/MutableScatterMap;->contains(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    if-nez v1, :cond_7

    .line 403
    .line 404
    iget-object v1, v2, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->savedStates:Ljava/util/Map;

    .line 405
    .line 406
    invoke-interface {v1, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0, v15, v14}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    new-instance v11, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;

    .line 413
    .line 414
    invoke-direct {v11, v2, v15, v14, v9}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 415
    .line 416
    .line 417
    goto :goto_2

    .line 418
    :cond_7
    const-string v0, "Key "

    .line 419
    .line 420
    const-string v1, " was used multiple times "

    .line 421
    .line 422
    invoke-static {v15, v1, v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    :goto_2
    return-object v11

    .line 426
    :pswitch_e
    check-cast v2, Ljava/lang/String;

    .line 427
    .line 428
    check-cast v15, Lkotlinx/coroutines/CoroutineScope;

    .line 429
    .line 430
    check-cast v14, Landroidx/compose/material3/TooltipStateImpl;

    .line 431
    .line 432
    move-object/from16 v0, p1

    .line 433
    .line 434
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 435
    .line 436
    new-instance v1, Landroidx/compose/material3/internal/BasicTooltipKt$$ExternalSyntheticLambda7;

    .line 437
    .line 438
    invoke-direct {v1, v15, v14, v12}, Landroidx/compose/material3/internal/BasicTooltipKt$$ExternalSyntheticLambda7;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/TooltipStateImpl;I)V

    .line 439
    .line 440
    .line 441
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 442
    .line 443
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->OnLongClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 444
    .line 445
    new-instance v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 446
    .line 447
    invoke-direct {v4, v2, v1}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 448
    .line 449
    .line 450
    invoke-interface {v0, v3, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    return-object v13

    .line 454
    :pswitch_f
    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    .line 455
    .line 456
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 457
    .line 458
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 459
    .line 460
    move-object/from16 v0, p1

    .line 461
    .line 462
    check-cast v0, Landroidx/compose/runtime/DisposableEffectScope;

    .line 463
    .line 464
    new-instance v0, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda1;

    .line 465
    .line 466
    invoke-direct {v0, v4, v15}, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    invoke-interface {v2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    invoke-virtual {v1, v0}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 474
    .line 475
    .line 476
    new-instance v1, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;

    .line 477
    .line 478
    invoke-direct {v1, v14, v2, v0, v4}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 479
    .line 480
    .line 481
    return-object v1

    .line 482
    :pswitch_10
    check-cast v2, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1$1;

    .line 483
    .line 484
    check-cast v15, Landroidx/compose/foundation/layout/PaddingValues;

    .line 485
    .line 486
    check-cast v14, Landroidx/compose/ui/Alignment$Horizontal;

    .line 487
    .line 488
    move-object/from16 v0, p1

    .line 489
    .line 490
    check-cast v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 491
    .line 492
    invoke-virtual {v2}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1$1;->get()Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    check-cast v1, Landroidx/compose/ui/geometry/Size;

    .line 497
    .line 498
    iget-wide v1, v1, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 499
    .line 500
    shr-long v3, v1, v17

    .line 501
    .line 502
    long-to-int v3, v3

    .line 503
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 504
    .line 505
    .line 506
    move-result v3

    .line 507
    const/4 v4, 0x0

    .line 508
    cmpl-float v5, v3, v4

    .line 509
    .line 510
    if-lez v5, :cond_a

    .line 511
    .line 512
    const/high16 v5, 0x40800000    # 4.0f

    .line 513
    .line 514
    invoke-virtual {v0, v5}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->toPx-0680j_4(F)F

    .line 515
    .line 516
    .line 517
    move-result v5

    .line 518
    iget-object v6, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 519
    .line 520
    iget-object v9, v6, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 521
    .line 522
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 523
    .line 524
    .line 525
    move-result-object v10

    .line 526
    invoke-interface {v15, v10}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 527
    .line 528
    .line 529
    move-result v10

    .line 530
    invoke-virtual {v0, v10}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->toPx-0680j_4(F)F

    .line 531
    .line 532
    .line 533
    move-result v10

    .line 534
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 535
    .line 536
    .line 537
    move-result-object v11

    .line 538
    invoke-interface {v15, v11}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 539
    .line 540
    .line 541
    move-result v11

    .line 542
    invoke-virtual {v0, v11}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->toPx-0680j_4(F)F

    .line 543
    .line 544
    .line 545
    move-result v11

    .line 546
    invoke-static {v3}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 547
    .line 548
    .line 549
    move-result v12

    .line 550
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 551
    .line 552
    .line 553
    move-result-wide v15

    .line 554
    move/from16 p0, v4

    .line 555
    .line 556
    move/from16 p1, v5

    .line 557
    .line 558
    shr-long v4, v15, v17

    .line 559
    .line 560
    long-to-int v4, v4

    .line 561
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 562
    .line 563
    .line 564
    move-result v4

    .line 565
    sub-float/2addr v4, v10

    .line 566
    sub-float/2addr v4, v11

    .line 567
    invoke-static {v4}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 568
    .line 569
    .line 570
    move-result v4

    .line 571
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 572
    .line 573
    .line 574
    move-result-object v5

    .line 575
    invoke-interface {v14, v12, v4, v5}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 576
    .line 577
    .line 578
    move-result v4

    .line 579
    int-to-float v4, v4

    .line 580
    add-float/2addr v4, v10

    .line 581
    const/high16 v5, 0x40000000    # 2.0f

    .line 582
    .line 583
    div-float/2addr v3, v5

    .line 584
    add-float/2addr v4, v3

    .line 585
    sub-float v10, v4, v3

    .line 586
    .line 587
    sub-float v10, v10, p1

    .line 588
    .line 589
    cmpg-float v11, v10, p0

    .line 590
    .line 591
    if-gez v11, :cond_8

    .line 592
    .line 593
    move/from16 v19, p0

    .line 594
    .line 595
    goto :goto_3

    .line 596
    :cond_8
    move/from16 v19, v10

    .line 597
    .line 598
    :goto_3
    add-float/2addr v4, v3

    .line 599
    add-float v4, v4, p1

    .line 600
    .line 601
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 602
    .line 603
    .line 604
    move-result-wide v9

    .line 605
    shr-long v9, v9, v17

    .line 606
    .line 607
    long-to-int v3, v9

    .line 608
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 609
    .line 610
    .line 611
    move-result v3

    .line 612
    cmpl-float v9, v4, v3

    .line 613
    .line 614
    if-lez v9, :cond_9

    .line 615
    .line 616
    move/from16 v21, v3

    .line 617
    .line 618
    goto :goto_4

    .line 619
    :cond_9
    move/from16 v21, v4

    .line 620
    .line 621
    :goto_4
    and-long/2addr v1, v7

    .line 622
    long-to-int v1, v1

    .line 623
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 624
    .line 625
    .line 626
    move-result v1

    .line 627
    neg-float v2, v1

    .line 628
    div-float v20, v2, v5

    .line 629
    .line 630
    div-float v22, v1, v5

    .line 631
    .line 632
    iget-object v1, v6, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 633
    .line 634
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 635
    .line 636
    .line 637
    move-result-wide v2

    .line 638
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 639
    .line 640
    .line 641
    move-result-object v4

    .line 642
    invoke-interface {v4}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 643
    .line 644
    .line 645
    :try_start_0
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 646
    .line 647
    move-object/from16 v18, v4

    .line 648
    .line 649
    check-cast v18, Landroidx/appcompat/widget/PopupMenu$1;

    .line 650
    .line 651
    const/16 v23, 0x0

    .line 652
    .line 653
    invoke-virtual/range {v18 .. v23}, Landroidx/appcompat/widget/PopupMenu$1;->clipRect-N_I0leg(FFFFI)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    .line 658
    .line 659
    invoke-static {v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(Lcom/caverock/androidsvg/SVG;J)V

    .line 660
    .line 661
    .line 662
    goto :goto_5

    .line 663
    :catchall_0
    move-exception v0

    .line 664
    invoke-static {v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(Lcom/caverock/androidsvg/SVG;J)V

    .line 665
    .line 666
    .line 667
    throw v0

    .line 668
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 669
    .line 670
    .line 671
    :goto_5
    return-object v13

    .line 672
    :pswitch_11
    check-cast v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 673
    .line 674
    check-cast v15, Lkotlinx/coroutines/CoroutineScope;

    .line 675
    .line 676
    check-cast v14, Landroid/content/Context;

    .line 677
    .line 678
    move-object/from16 v0, p1

    .line 679
    .line 680
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    .line 681
    .line 682
    invoke-virtual {v0}, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->separator()V

    .line 683
    .line 684
    .line 685
    iget-object v1, v0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->components:Landroidx/collection/MutableObjectList;

    .line 686
    .line 687
    sget-object v3, Landroidx/compose/foundation/text/TextContextMenuItems;->Cut:Landroidx/compose/foundation/text/TextContextMenuItems;

    .line 688
    .line 689
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 690
    .line 691
    .line 692
    move-result-object v5

    .line 693
    iget-wide v5, v5, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 694
    .line 695
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 696
    .line 697
    .line 698
    move-result v5

    .line 699
    if-nez v5, :cond_b

    .line 700
    .line 701
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getEditable()Z

    .line 702
    .line 703
    .line 704
    move-result v5

    .line 705
    if-eqz v5, :cond_b

    .line 706
    .line 707
    iget-object v5, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    .line 708
    .line 709
    if-eqz v5, :cond_b

    .line 710
    .line 711
    move v5, v4

    .line 712
    goto :goto_6

    .line 713
    :cond_b
    move v5, v12

    .line 714
    :goto_6
    new-instance v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;

    .line 715
    .line 716
    invoke-direct {v6, v2, v11, v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;I)V

    .line 717
    .line 718
    .line 719
    new-instance v7, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 720
    .line 721
    const/16 v8, 0x12

    .line 722
    .line 723
    invoke-direct {v7, v8, v15, v6}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 727
    .line 728
    .line 729
    move-result-object v6

    .line 730
    new-instance v12, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$$ExternalSyntheticLambda8;

    .line 731
    .line 732
    invoke-direct {v12, v7, v11, v4}, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 733
    .line 734
    .line 735
    if-eqz v5, :cond_c

    .line 736
    .line 737
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextContextMenuItems;->getKey()Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v5

    .line 741
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextContextMenuItems;->getStringId-9Hzcbyc()I

    .line 742
    .line 743
    .line 744
    move-result v7

    .line 745
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v6

    .line 749
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextContextMenuItems;->getDrawableId-3I4p1mQ()I

    .line 750
    .line 751
    .line 752
    move-result v3

    .line 753
    new-instance v7, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 754
    .line 755
    invoke-direct {v7, v5, v6, v3, v12}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v1, v7}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 759
    .line 760
    .line 761
    :cond_c
    sget-object v3, Landroidx/compose/foundation/text/TextContextMenuItems;->Copy:Landroidx/compose/foundation/text/TextContextMenuItems;

    .line 762
    .line 763
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 764
    .line 765
    .line 766
    move-result-object v5

    .line 767
    iget-wide v5, v5, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 768
    .line 769
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 770
    .line 771
    .line 772
    move-result v5

    .line 773
    if-nez v5, :cond_d

    .line 774
    .line 775
    iget-object v5, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    .line 776
    .line 777
    if-eqz v5, :cond_d

    .line 778
    .line 779
    move v5, v4

    .line 780
    goto :goto_7

    .line 781
    :cond_d
    const/4 v5, 0x0

    .line 782
    :goto_7
    new-instance v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;

    .line 783
    .line 784
    invoke-direct {v6, v2, v11, v9}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;I)V

    .line 785
    .line 786
    .line 787
    new-instance v7, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 788
    .line 789
    invoke-direct {v7, v8, v15, v6}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 790
    .line 791
    .line 792
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 793
    .line 794
    .line 795
    move-result-object v6

    .line 796
    new-instance v12, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$$ExternalSyntheticLambda8;

    .line 797
    .line 798
    invoke-direct {v12, v7, v11, v4}, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 799
    .line 800
    .line 801
    if-eqz v5, :cond_e

    .line 802
    .line 803
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextContextMenuItems;->getKey()Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    move-result-object v5

    .line 807
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextContextMenuItems;->getStringId-9Hzcbyc()I

    .line 808
    .line 809
    .line 810
    move-result v7

    .line 811
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v6

    .line 815
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextContextMenuItems;->getDrawableId-3I4p1mQ()I

    .line 816
    .line 817
    .line 818
    move-result v3

    .line 819
    new-instance v7, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 820
    .line 821
    invoke-direct {v7, v5, v6, v3, v12}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 822
    .line 823
    .line 824
    invoke-virtual {v1, v7}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 825
    .line 826
    .line 827
    :cond_e
    sget-object v3, Landroidx/compose/foundation/text/TextContextMenuItems;->Paste:Landroidx/compose/foundation/text/TextContextMenuItems;

    .line 828
    .line 829
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getEditable()Z

    .line 830
    .line 831
    .line 832
    move-result v5

    .line 833
    if-eqz v5, :cond_f

    .line 834
    .line 835
    iget-object v5, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hasAvailableTextToPaste$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 836
    .line 837
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    move-result-object v5

    .line 841
    check-cast v5, Ljava/lang/Boolean;

    .line 842
    .line 843
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 844
    .line 845
    .line 846
    move-result v5

    .line 847
    if-eqz v5, :cond_f

    .line 848
    .line 849
    iget-object v5, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    .line 850
    .line 851
    if-eqz v5, :cond_f

    .line 852
    .line 853
    move v5, v4

    .line 854
    goto :goto_8

    .line 855
    :cond_f
    const/4 v5, 0x0

    .line 856
    :goto_8
    new-instance v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;

    .line 857
    .line 858
    invoke-direct {v6, v2, v11, v10}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;I)V

    .line 859
    .line 860
    .line 861
    new-instance v7, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 862
    .line 863
    invoke-direct {v7, v8, v15, v6}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 864
    .line 865
    .line 866
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 867
    .line 868
    .line 869
    move-result-object v6

    .line 870
    new-instance v8, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$$ExternalSyntheticLambda8;

    .line 871
    .line 872
    invoke-direct {v8, v7, v11, v4}, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 873
    .line 874
    .line 875
    if-eqz v5, :cond_10

    .line 876
    .line 877
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextContextMenuItems;->getKey()Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v5

    .line 881
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextContextMenuItems;->getStringId-9Hzcbyc()I

    .line 882
    .line 883
    .line 884
    move-result v7

    .line 885
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v6

    .line 889
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextContextMenuItems;->getDrawableId-3I4p1mQ()I

    .line 890
    .line 891
    .line 892
    move-result v3

    .line 893
    new-instance v7, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 894
    .line 895
    invoke-direct {v7, v5, v6, v3, v8}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v1, v7}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 899
    .line 900
    .line 901
    :cond_10
    sget-object v3, Landroidx/compose/foundation/text/TextContextMenuItems;->SelectAll:Landroidx/compose/foundation/text/TextContextMenuItems;

    .line 902
    .line 903
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 904
    .line 905
    .line 906
    move-result-object v5

    .line 907
    iget-wide v5, v5, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 908
    .line 909
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    .line 910
    .line 911
    .line 912
    move-result v5

    .line 913
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 914
    .line 915
    .line 916
    move-result-object v6

    .line 917
    iget-object v6, v6, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 918
    .line 919
    iget-object v6, v6, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 920
    .line 921
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 922
    .line 923
    .line 924
    move-result v6

    .line 925
    if-eq v5, v6, :cond_11

    .line 926
    .line 927
    move v5, v4

    .line 928
    goto :goto_9

    .line 929
    :cond_11
    const/4 v5, 0x0

    .line 930
    :goto_9
    new-instance v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda5;

    .line 931
    .line 932
    const/4 v7, 0x0

    .line 933
    invoke-direct {v6, v2, v7}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    .line 934
    .line 935
    .line 936
    new-instance v7, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda5;

    .line 937
    .line 938
    invoke-direct {v7, v2, v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    .line 939
    .line 940
    .line 941
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 942
    .line 943
    .line 944
    move-result-object v8

    .line 945
    new-instance v10, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$$ExternalSyntheticLambda8;

    .line 946
    .line 947
    invoke-direct {v10, v7, v6, v4}, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 948
    .line 949
    .line 950
    if-eqz v5, :cond_12

    .line 951
    .line 952
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextContextMenuItems;->getKey()Ljava/lang/Object;

    .line 953
    .line 954
    .line 955
    move-result-object v5

    .line 956
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextContextMenuItems;->getStringId-9Hzcbyc()I

    .line 957
    .line 958
    .line 959
    move-result v6

    .line 960
    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v6

    .line 964
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextContextMenuItems;->getDrawableId-3I4p1mQ()I

    .line 965
    .line 966
    .line 967
    move-result v3

    .line 968
    new-instance v7, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 969
    .line 970
    invoke-direct {v7, v5, v6, v3, v10}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 971
    .line 972
    .line 973
    invoke-virtual {v1, v7}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 974
    .line 975
    .line 976
    :cond_12
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 977
    .line 978
    const/16 v5, 0x1a

    .line 979
    .line 980
    if-lt v3, v5, :cond_14

    .line 981
    .line 982
    sget-object v3, Landroidx/compose/foundation/text/TextContextMenuItems;->Autofill:Landroidx/compose/foundation/text/TextContextMenuItems;

    .line 983
    .line 984
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getEditable()Z

    .line 985
    .line 986
    .line 987
    move-result v5

    .line 988
    if-eqz v5, :cond_13

    .line 989
    .line 990
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 991
    .line 992
    .line 993
    move-result-object v5

    .line 994
    iget-wide v5, v5, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 995
    .line 996
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 997
    .line 998
    .line 999
    move-result v5

    .line 1000
    if-eqz v5, :cond_13

    .line 1001
    .line 1002
    move v12, v4

    .line 1003
    goto :goto_a

    .line 1004
    :cond_13
    const/4 v12, 0x0

    .line 1005
    :goto_a
    new-instance v5, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda5;

    .line 1006
    .line 1007
    invoke-direct {v5, v2, v9}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v2

    .line 1014
    new-instance v6, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$$ExternalSyntheticLambda8;

    .line 1015
    .line 1016
    invoke-direct {v6, v5, v11, v4}, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 1017
    .line 1018
    .line 1019
    if-eqz v12, :cond_14

    .line 1020
    .line 1021
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextContextMenuItems;->getKey()Ljava/lang/Object;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v4

    .line 1025
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextContextMenuItems;->getStringId-9Hzcbyc()I

    .line 1026
    .line 1027
    .line 1028
    move-result v5

    .line 1029
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v2

    .line 1033
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextContextMenuItems;->getDrawableId-3I4p1mQ()I

    .line 1034
    .line 1035
    .line 1036
    move-result v3

    .line 1037
    new-instance v5, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 1038
    .line 1039
    invoke-direct {v5, v4, v2, v3, v6}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v1, v5}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 1043
    .line 1044
    .line 1045
    :cond_14
    invoke-virtual {v0}, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->separator()V

    .line 1046
    .line 1047
    .line 1048
    return-object v13

    .line 1049
    :pswitch_12
    check-cast v2, Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    .line 1050
    .line 1051
    check-cast v15, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;

    .line 1052
    .line 1053
    check-cast v14, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 1054
    .line 1055
    move-object/from16 v0, p1

    .line 1056
    .line 1057
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1058
    .line 1059
    iget-wide v5, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 1060
    .line 1061
    invoke-interface {v2, v5, v6, v15}, Landroidx/compose/foundation/text/selection/MouseSelectionObserver;->onDrag-3MmeM6k(JLandroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;)Z

    .line 1062
    .line 1063
    .line 1064
    move-result v1

    .line 1065
    if-eqz v1, :cond_15

    .line 1066
    .line 1067
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 1068
    .line 1069
    .line 1070
    iput-boolean v4, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1071
    .line 1072
    :cond_15
    return-object v13

    .line 1073
    :pswitch_13
    check-cast v2, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 1074
    .line 1075
    check-cast v15, Landroid/content/Context;

    .line 1076
    .line 1077
    check-cast v14, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 1078
    .line 1079
    move-object/from16 v0, p1

    .line 1080
    .line 1081
    check-cast v0, Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    .line 1082
    .line 1083
    iget-object v1, v2, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;->components:Ljava/util/List;

    .line 1084
    .line 1085
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 1086
    .line 1087
    .line 1088
    move-result v2

    .line 1089
    const/4 v12, 0x0

    .line 1090
    :goto_b
    if-ge v12, v2, :cond_1a

    .line 1091
    .line 1092
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v7

    .line 1096
    check-cast v7, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;

    .line 1097
    .line 1098
    instance-of v8, v7, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 1099
    .line 1100
    if-eqz v8, :cond_17

    .line 1101
    .line 1102
    new-instance v8, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 1103
    .line 1104
    check-cast v7, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 1105
    .line 1106
    const/16 v9, 0xa

    .line 1107
    .line 1108
    invoke-direct {v8, v9, v7}, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 1109
    .line 1110
    .line 1111
    iget v9, v7, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;->leadingIcon:I

    .line 1112
    .line 1113
    if-nez v9, :cond_16

    .line 1114
    .line 1115
    move-object v10, v11

    .line 1116
    goto :goto_c

    .line 1117
    :cond_16
    new-instance v9, Landroidx/compose/material3/TooltipKt$animateTooltip$2;

    .line 1118
    .line 1119
    invoke-direct {v9, v4, v7}, Landroidx/compose/material3/TooltipKt$animateTooltip$2;-><init>(ILjava/lang/Object;)V

    .line 1120
    .line 1121
    .line 1122
    new-instance v10, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1123
    .line 1124
    const v11, -0x731428a5

    .line 1125
    .line 1126
    .line 1127
    invoke-direct {v10, v9, v4, v11}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 1128
    .line 1129
    .line 1130
    :goto_c
    new-instance v9, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 1131
    .line 1132
    invoke-direct {v9, v5, v7, v14}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1133
    .line 1134
    .line 1135
    invoke-static {v0, v8, v10, v9, v6}, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->item$default(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;I)V

    .line 1136
    .line 1137
    .line 1138
    goto :goto_d

    .line 1139
    :cond_17
    instance-of v8, v7, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;

    .line 1140
    .line 1141
    if-eqz v8, :cond_18

    .line 1142
    .line 1143
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1144
    .line 1145
    if-lt v8, v3, :cond_19

    .line 1146
    .line 1147
    check-cast v7, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;

    .line 1148
    .line 1149
    invoke-static {v0, v15, v7}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->textClassificationItem(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Landroid/content/Context;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;)V

    .line 1150
    .line 1151
    .line 1152
    goto :goto_d

    .line 1153
    :cond_18
    instance-of v7, v7, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;

    .line 1154
    .line 1155
    if-eqz v7, :cond_19

    .line 1156
    .line 1157
    iget-object v7, v0, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->composables:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 1158
    .line 1159
    sget-object v8, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProviderKt;->lambda$-1455401925:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1160
    .line 1161
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 1162
    .line 1163
    .line 1164
    :cond_19
    :goto_d
    add-int/lit8 v12, v12, 0x1

    .line 1165
    .line 1166
    const/4 v11, 0x0

    .line 1167
    goto :goto_b

    .line 1168
    :cond_1a
    return-object v13

    .line 1169
    :pswitch_14
    check-cast v2, Landroidx/compose/foundation/text/KeyCommand;

    .line 1170
    .line 1171
    check-cast v15, Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 1172
    .line 1173
    check-cast v14, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 1174
    .line 1175
    move-object/from16 v0, p1

    .line 1176
    .line 1177
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 1178
    .line 1179
    sget-object v1, Landroidx/compose/foundation/text/TextFieldKeyInput$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 1180
    .line 1181
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 1182
    .line 1183
    .line 1184
    move-result v2

    .line 1185
    aget v1, v1, v2

    .line 1186
    .line 1187
    const/4 v2, 0x4

    .line 1188
    const/4 v5, -0x1

    .line 1189
    packed-switch v1, :pswitch_data_1

    .line 1190
    .line 1191
    .line 1192
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1193
    .line 1194
    .line 1195
    const/4 v11, 0x0

    .line 1196
    goto/16 :goto_15

    .line 1197
    .line 1198
    :pswitch_15
    iget-object v0, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->undoManager:Landroidx/compose/foundation/text/UndoManager;

    .line 1199
    .line 1200
    iget-object v1, v0, Landroidx/compose/foundation/text/UndoManager;->redoStack:Landroidx/cardview/widget/CardView$1;

    .line 1201
    .line 1202
    if-eqz v1, :cond_1b

    .line 1203
    .line 1204
    iget-object v2, v1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 1205
    .line 1206
    check-cast v2, Landroidx/cardview/widget/CardView$1;

    .line 1207
    .line 1208
    iput-object v2, v0, Landroidx/compose/foundation/text/UndoManager;->redoStack:Landroidx/cardview/widget/CardView$1;

    .line 1209
    .line 1210
    iget-object v2, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1211
    .line 1212
    check-cast v2, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1213
    .line 1214
    iget-object v3, v0, Landroidx/compose/foundation/text/UndoManager;->undoStack:Landroidx/cardview/widget/CardView$1;

    .line 1215
    .line 1216
    new-instance v4, Landroidx/cardview/widget/CardView$1;

    .line 1217
    .line 1218
    invoke-direct {v4, v6, v3, v2}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1219
    .line 1220
    .line 1221
    iput-object v4, v0, Landroidx/compose/foundation/text/UndoManager;->undoStack:Landroidx/cardview/widget/CardView$1;

    .line 1222
    .line 1223
    iget v3, v0, Landroidx/compose/foundation/text/UndoManager;->storedCharacters:I

    .line 1224
    .line 1225
    iget-object v2, v2, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1226
    .line 1227
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1228
    .line 1229
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1230
    .line 1231
    .line 1232
    move-result v2

    .line 1233
    add-int/2addr v2, v3

    .line 1234
    iput v2, v0, Landroidx/compose/foundation/text/UndoManager;->storedCharacters:I

    .line 1235
    .line 1236
    iget-object v0, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1237
    .line 1238
    move-object v11, v0

    .line 1239
    check-cast v11, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1240
    .line 1241
    goto :goto_e

    .line 1242
    :cond_1b
    const/4 v11, 0x0

    .line 1243
    :goto_e
    if-eqz v11, :cond_1c

    .line 1244
    .line 1245
    iget-object v0, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->onValueChange:Lkotlin/jvm/functions/Function1;

    .line 1246
    .line 1247
    invoke-interface {v0, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    .line 1249
    .line 1250
    :cond_1c
    :goto_f
    :pswitch_16
    move-object v11, v13

    .line 1251
    goto/16 :goto_15

    .line 1252
    .line 1253
    :pswitch_17
    iget-object v1, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->undoManager:Landroidx/compose/foundation/text/UndoManager;

    .line 1254
    .line 1255
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->currentValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1256
    .line 1257
    iget-object v4, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1258
    .line 1259
    iget-wide v7, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 1260
    .line 1261
    invoke-static {v3, v4, v7, v8, v2}, Landroidx/compose/ui/text/input/TextFieldValue;->copy-3r_uNRQ$default(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JI)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v0

    .line 1265
    invoke-virtual {v1, v0}, Landroidx/compose/foundation/text/UndoManager;->makeSnapshot(Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 1266
    .line 1267
    .line 1268
    iget-object v0, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->undoManager:Landroidx/compose/foundation/text/UndoManager;

    .line 1269
    .line 1270
    iget-object v1, v0, Landroidx/compose/foundation/text/UndoManager;->undoStack:Landroidx/cardview/widget/CardView$1;

    .line 1271
    .line 1272
    if-eqz v1, :cond_1d

    .line 1273
    .line 1274
    iget-object v2, v1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 1275
    .line 1276
    check-cast v2, Landroidx/cardview/widget/CardView$1;

    .line 1277
    .line 1278
    if-eqz v2, :cond_1d

    .line 1279
    .line 1280
    iput-object v2, v0, Landroidx/compose/foundation/text/UndoManager;->undoStack:Landroidx/cardview/widget/CardView$1;

    .line 1281
    .line 1282
    iget v3, v0, Landroidx/compose/foundation/text/UndoManager;->storedCharacters:I

    .line 1283
    .line 1284
    iget-object v4, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1285
    .line 1286
    check-cast v4, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1287
    .line 1288
    iget-object v4, v4, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1289
    .line 1290
    iget-object v4, v4, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1291
    .line 1292
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1293
    .line 1294
    .line 1295
    move-result v4

    .line 1296
    sub-int/2addr v3, v4

    .line 1297
    iput v3, v0, Landroidx/compose/foundation/text/UndoManager;->storedCharacters:I

    .line 1298
    .line 1299
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1300
    .line 1301
    check-cast v1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1302
    .line 1303
    iget-object v3, v0, Landroidx/compose/foundation/text/UndoManager;->redoStack:Landroidx/cardview/widget/CardView$1;

    .line 1304
    .line 1305
    new-instance v4, Landroidx/cardview/widget/CardView$1;

    .line 1306
    .line 1307
    invoke-direct {v4, v6, v3, v1}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1308
    .line 1309
    .line 1310
    iput-object v4, v0, Landroidx/compose/foundation/text/UndoManager;->redoStack:Landroidx/cardview/widget/CardView$1;

    .line 1311
    .line 1312
    iget-object v0, v2, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1313
    .line 1314
    move-object v11, v0

    .line 1315
    check-cast v11, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1316
    .line 1317
    goto :goto_10

    .line 1318
    :cond_1d
    const/4 v11, 0x0

    .line 1319
    :goto_10
    if-eqz v11, :cond_1c

    .line 1320
    .line 1321
    iget-object v0, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->onValueChange:Lkotlin/jvm/functions/Function1;

    .line 1322
    .line 1323
    invoke-interface {v0, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    .line 1325
    .line 1326
    goto :goto_f

    .line 1327
    :pswitch_18
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1328
    .line 1329
    const/4 v2, 0x0

    .line 1330
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1331
    .line 1332
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1333
    .line 1334
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1335
    .line 1336
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1337
    .line 1338
    .line 1339
    move-result v1

    .line 1340
    if-lez v1, :cond_1c

    .line 1341
    .line 1342
    iget-wide v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 1343
    .line 1344
    sget v3, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 1345
    .line 1346
    and-long/2addr v1, v7

    .line 1347
    long-to-int v1, v1

    .line 1348
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1349
    .line 1350
    .line 1351
    goto :goto_f

    .line 1352
    :pswitch_19
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1353
    .line 1354
    const/4 v2, 0x0

    .line 1355
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1356
    .line 1357
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1358
    .line 1359
    iget-object v2, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1360
    .line 1361
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1362
    .line 1363
    .line 1364
    move-result v2

    .line 1365
    if-lez v2, :cond_1e

    .line 1366
    .line 1367
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1368
    .line 1369
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1370
    .line 1371
    .line 1372
    move-result v1

    .line 1373
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1374
    .line 1375
    .line 1376
    :cond_1e
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1377
    .line 1378
    .line 1379
    goto/16 :goto_f

    .line 1380
    .line 1381
    :pswitch_1a
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1382
    .line 1383
    const/4 v2, 0x0

    .line 1384
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1385
    .line 1386
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1387
    .line 1388
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1389
    .line 1390
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1391
    .line 1392
    .line 1393
    move-result v1

    .line 1394
    if-lez v1, :cond_1f

    .line 1395
    .line 1396
    const/4 v7, 0x0

    .line 1397
    invoke-virtual {v0, v7, v7}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1398
    .line 1399
    .line 1400
    :cond_1f
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1401
    .line 1402
    .line 1403
    goto/16 :goto_f

    .line 1404
    .line 1405
    :pswitch_1b
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1406
    .line 1407
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1408
    .line 1409
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1410
    .line 1411
    .line 1412
    move-result v1

    .line 1413
    if-lez v1, :cond_20

    .line 1414
    .line 1415
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResultProxy:Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 1416
    .line 1417
    if-eqz v1, :cond_20

    .line 1418
    .line 1419
    invoke-virtual {v0, v1, v4}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->jumpByPagesOffset(Landroidx/compose/foundation/text/TextLayoutResultProxy;I)I

    .line 1420
    .line 1421
    .line 1422
    move-result v1

    .line 1423
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1424
    .line 1425
    .line 1426
    :cond_20
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1427
    .line 1428
    .line 1429
    goto/16 :goto_f

    .line 1430
    .line 1431
    :pswitch_1c
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1432
    .line 1433
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1434
    .line 1435
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1436
    .line 1437
    .line 1438
    move-result v1

    .line 1439
    if-lez v1, :cond_21

    .line 1440
    .line 1441
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResultProxy:Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 1442
    .line 1443
    if-eqz v1, :cond_21

    .line 1444
    .line 1445
    invoke-virtual {v0, v1, v5}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->jumpByPagesOffset(Landroidx/compose/foundation/text/TextLayoutResultProxy;I)I

    .line 1446
    .line 1447
    .line 1448
    move-result v1

    .line 1449
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1450
    .line 1451
    .line 1452
    :cond_21
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1453
    .line 1454
    .line 1455
    goto/16 :goto_f

    .line 1456
    .line 1457
    :pswitch_1d
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1458
    .line 1459
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1460
    .line 1461
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1462
    .line 1463
    .line 1464
    move-result v1

    .line 1465
    if-lez v1, :cond_22

    .line 1466
    .line 1467
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 1468
    .line 1469
    if-eqz v1, :cond_22

    .line 1470
    .line 1471
    invoke-virtual {v0, v1, v4}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    .line 1472
    .line 1473
    .line 1474
    move-result v1

    .line 1475
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1476
    .line 1477
    .line 1478
    :cond_22
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1479
    .line 1480
    .line 1481
    goto/16 :goto_f

    .line 1482
    .line 1483
    :pswitch_1e
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1484
    .line 1485
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1486
    .line 1487
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1488
    .line 1489
    .line 1490
    move-result v1

    .line 1491
    if-lez v1, :cond_23

    .line 1492
    .line 1493
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 1494
    .line 1495
    if-eqz v1, :cond_23

    .line 1496
    .line 1497
    invoke-virtual {v0, v1, v5}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    .line 1498
    .line 1499
    .line 1500
    move-result v1

    .line 1501
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1502
    .line 1503
    .line 1504
    :cond_23
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1505
    .line 1506
    .line 1507
    goto/16 :goto_f

    .line 1508
    .line 1509
    :pswitch_1f
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1510
    .line 1511
    const/4 v2, 0x0

    .line 1512
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1513
    .line 1514
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1515
    .line 1516
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1517
    .line 1518
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1519
    .line 1520
    .line 1521
    move-result v1

    .line 1522
    if-lez v1, :cond_25

    .line 1523
    .line 1524
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    .line 1525
    .line 1526
    .line 1527
    move-result v1

    .line 1528
    if-eqz v1, :cond_24

    .line 1529
    .line 1530
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineEnd()V

    .line 1531
    .line 1532
    .line 1533
    goto :goto_11

    .line 1534
    :cond_24
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineStart()V

    .line 1535
    .line 1536
    .line 1537
    :cond_25
    :goto_11
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1538
    .line 1539
    .line 1540
    goto/16 :goto_f

    .line 1541
    .line 1542
    :pswitch_20
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1543
    .line 1544
    const/4 v2, 0x0

    .line 1545
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1546
    .line 1547
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1548
    .line 1549
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1550
    .line 1551
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1552
    .line 1553
    .line 1554
    move-result v1

    .line 1555
    if-lez v1, :cond_27

    .line 1556
    .line 1557
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    .line 1558
    .line 1559
    .line 1560
    move-result v1

    .line 1561
    if-eqz v1, :cond_26

    .line 1562
    .line 1563
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineStart()V

    .line 1564
    .line 1565
    .line 1566
    goto :goto_12

    .line 1567
    :cond_26
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineEnd()V

    .line 1568
    .line 1569
    .line 1570
    :cond_27
    :goto_12
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1571
    .line 1572
    .line 1573
    goto/16 :goto_f

    .line 1574
    .line 1575
    :pswitch_21
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineEnd()V

    .line 1576
    .line 1577
    .line 1578
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1579
    .line 1580
    .line 1581
    goto/16 :goto_f

    .line 1582
    .line 1583
    :pswitch_22
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineStart()V

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1587
    .line 1588
    .line 1589
    goto/16 :goto_f

    .line 1590
    .line 1591
    :pswitch_23
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorNextByParagraph()V

    .line 1592
    .line 1593
    .line 1594
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1595
    .line 1596
    .line 1597
    goto/16 :goto_f

    .line 1598
    .line 1599
    :pswitch_24
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorPrevByParagraph()V

    .line 1600
    .line 1601
    .line 1602
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1603
    .line 1604
    .line 1605
    goto/16 :goto_f

    .line 1606
    .line 1607
    :pswitch_25
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1608
    .line 1609
    const/4 v2, 0x0

    .line 1610
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1611
    .line 1612
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1613
    .line 1614
    iget-object v4, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1615
    .line 1616
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1617
    .line 1618
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1619
    .line 1620
    .line 1621
    move-result v4

    .line 1622
    if-lez v4, :cond_29

    .line 1623
    .line 1624
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    .line 1625
    .line 1626
    .line 1627
    move-result v4

    .line 1628
    if-eqz v4, :cond_28

    .line 1629
    .line 1630
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1631
    .line 1632
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1633
    .line 1634
    .line 1635
    move-result v1

    .line 1636
    if-lez v1, :cond_29

    .line 1637
    .line 1638
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getNextWordOffset()Ljava/lang/Integer;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v1

    .line 1642
    if-eqz v1, :cond_29

    .line 1643
    .line 1644
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1645
    .line 1646
    .line 1647
    move-result v1

    .line 1648
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1649
    .line 1650
    .line 1651
    goto :goto_13

    .line 1652
    :cond_28
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1653
    .line 1654
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1655
    .line 1656
    .line 1657
    move-result v1

    .line 1658
    if-lez v1, :cond_29

    .line 1659
    .line 1660
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getPreviousWordOffset()Ljava/lang/Integer;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v1

    .line 1664
    if-eqz v1, :cond_29

    .line 1665
    .line 1666
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1667
    .line 1668
    .line 1669
    move-result v1

    .line 1670
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1671
    .line 1672
    .line 1673
    :cond_29
    :goto_13
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1674
    .line 1675
    .line 1676
    goto/16 :goto_f

    .line 1677
    .line 1678
    :pswitch_26
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1679
    .line 1680
    const/4 v2, 0x0

    .line 1681
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1682
    .line 1683
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1684
    .line 1685
    iget-object v4, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1686
    .line 1687
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1688
    .line 1689
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1690
    .line 1691
    .line 1692
    move-result v4

    .line 1693
    if-lez v4, :cond_2b

    .line 1694
    .line 1695
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    .line 1696
    .line 1697
    .line 1698
    move-result v4

    .line 1699
    if-eqz v4, :cond_2a

    .line 1700
    .line 1701
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1702
    .line 1703
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1704
    .line 1705
    .line 1706
    move-result v1

    .line 1707
    if-lez v1, :cond_2b

    .line 1708
    .line 1709
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getPreviousWordOffset()Ljava/lang/Integer;

    .line 1710
    .line 1711
    .line 1712
    move-result-object v1

    .line 1713
    if-eqz v1, :cond_2b

    .line 1714
    .line 1715
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1716
    .line 1717
    .line 1718
    move-result v1

    .line 1719
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1720
    .line 1721
    .line 1722
    goto :goto_14

    .line 1723
    :cond_2a
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1724
    .line 1725
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1726
    .line 1727
    .line 1728
    move-result v1

    .line 1729
    if-lez v1, :cond_2b

    .line 1730
    .line 1731
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getNextWordOffset()Ljava/lang/Integer;

    .line 1732
    .line 1733
    .line 1734
    move-result-object v1

    .line 1735
    if-eqz v1, :cond_2b

    .line 1736
    .line 1737
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1738
    .line 1739
    .line 1740
    move-result v1

    .line 1741
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1742
    .line 1743
    .line 1744
    :cond_2b
    :goto_14
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1745
    .line 1746
    .line 1747
    goto/16 :goto_f

    .line 1748
    .line 1749
    :pswitch_27
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorRight()V

    .line 1750
    .line 1751
    .line 1752
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1753
    .line 1754
    .line 1755
    goto/16 :goto_f

    .line 1756
    .line 1757
    :pswitch_28
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorLeft()V

    .line 1758
    .line 1759
    .line 1760
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1761
    .line 1762
    .line 1763
    goto/16 :goto_f

    .line 1764
    .line 1765
    :pswitch_29
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1766
    .line 1767
    const/4 v2, 0x0

    .line 1768
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1769
    .line 1770
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1771
    .line 1772
    iget-object v2, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1773
    .line 1774
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1775
    .line 1776
    .line 1777
    move-result v2

    .line 1778
    if-lez v2, :cond_1c

    .line 1779
    .line 1780
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1781
    .line 1782
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1783
    .line 1784
    .line 1785
    move-result v1

    .line 1786
    const/4 v7, 0x0

    .line 1787
    invoke-virtual {v0, v7, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1788
    .line 1789
    .line 1790
    goto/16 :goto_f

    .line 1791
    .line 1792
    :pswitch_2a
    const/4 v7, 0x0

    .line 1793
    iget-boolean v0, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->singleLine:Z

    .line 1794
    .line 1795
    if-nez v0, :cond_2c

    .line 1796
    .line 1797
    new-instance v0, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 1798
    .line 1799
    const-string v1, "\t"

    .line 1800
    .line 1801
    invoke-direct {v0, v4, v1}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(ILjava/lang/String;)V

    .line 1802
    .line 1803
    .line 1804
    invoke-static {v0}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1805
    .line 1806
    .line 1807
    move-result-object v0

    .line 1808
    invoke-virtual {v15, v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->apply(Ljava/util/List;)V

    .line 1809
    .line 1810
    .line 1811
    goto/16 :goto_f

    .line 1812
    .line 1813
    :cond_2c
    iput-boolean v7, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1814
    .line 1815
    goto/16 :goto_f

    .line 1816
    .line 1817
    :pswitch_2b
    iget-boolean v0, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->singleLine:Z

    .line 1818
    .line 1819
    if-nez v0, :cond_2d

    .line 1820
    .line 1821
    new-instance v0, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 1822
    .line 1823
    const-string v1, "\n"

    .line 1824
    .line 1825
    invoke-direct {v0, v4, v1}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(ILjava/lang/String;)V

    .line 1826
    .line 1827
    .line 1828
    invoke-static {v0}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v0

    .line 1832
    invoke-virtual {v15, v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->apply(Ljava/util/List;)V

    .line 1833
    .line 1834
    .line 1835
    goto/16 :goto_f

    .line 1836
    .line 1837
    :cond_2d
    iget-object v0, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 1838
    .line 1839
    iget-object v0, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->onImeActionPerformedWithResult:Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;

    .line 1840
    .line 1841
    iget v1, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->imeAction:I

    .line 1842
    .line 1843
    iget-object v0, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 1844
    .line 1845
    iget-object v0, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->keyboardActionRunner:Landroidx/compose/foundation/text/KeyboardActionRunner;

    .line 1846
    .line 1847
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/KeyboardActionRunner;->runAction-KlQnJC8(I)Z

    .line 1848
    .line 1849
    .line 1850
    move-result v0

    .line 1851
    iput-boolean v0, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1852
    .line 1853
    goto/16 :goto_f

    .line 1854
    .line 1855
    :pswitch_2c
    new-instance v1, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;

    .line 1856
    .line 1857
    invoke-direct {v1, v2}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1858
    .line 1859
    .line 1860
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->deleteIfSelectedOr(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 1861
    .line 1862
    .line 1863
    move-result-object v0

    .line 1864
    if-eqz v0, :cond_1c

    .line 1865
    .line 1866
    invoke-virtual {v15, v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->apply(Ljava/util/List;)V

    .line 1867
    .line 1868
    .line 1869
    goto/16 :goto_f

    .line 1870
    .line 1871
    :pswitch_2d
    new-instance v1, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;

    .line 1872
    .line 1873
    invoke-direct {v1, v10}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1874
    .line 1875
    .line 1876
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->deleteIfSelectedOr(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 1877
    .line 1878
    .line 1879
    move-result-object v0

    .line 1880
    if-eqz v0, :cond_1c

    .line 1881
    .line 1882
    invoke-virtual {v15, v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->apply(Ljava/util/List;)V

    .line 1883
    .line 1884
    .line 1885
    goto/16 :goto_f

    .line 1886
    .line 1887
    :pswitch_2e
    new-instance v1, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;

    .line 1888
    .line 1889
    invoke-direct {v1, v9}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1890
    .line 1891
    .line 1892
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->deleteIfSelectedOr(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 1893
    .line 1894
    .line 1895
    move-result-object v0

    .line 1896
    if-eqz v0, :cond_1c

    .line 1897
    .line 1898
    invoke-virtual {v15, v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->apply(Ljava/util/List;)V

    .line 1899
    .line 1900
    .line 1901
    goto/16 :goto_f

    .line 1902
    .line 1903
    :pswitch_2f
    new-instance v1, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;

    .line 1904
    .line 1905
    invoke-direct {v1, v4}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1906
    .line 1907
    .line 1908
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->deleteIfSelectedOr(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 1909
    .line 1910
    .line 1911
    move-result-object v0

    .line 1912
    if-eqz v0, :cond_1c

    .line 1913
    .line 1914
    invoke-virtual {v15, v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->apply(Ljava/util/List;)V

    .line 1915
    .line 1916
    .line 1917
    goto/16 :goto_f

    .line 1918
    .line 1919
    :pswitch_30
    new-instance v1, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;

    .line 1920
    .line 1921
    const/16 v2, 0x1d

    .line 1922
    .line 1923
    invoke-direct {v1, v2}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1924
    .line 1925
    .line 1926
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->deleteIfSelectedOr(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 1927
    .line 1928
    .line 1929
    move-result-object v0

    .line 1930
    if-eqz v0, :cond_1c

    .line 1931
    .line 1932
    invoke-virtual {v15, v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->apply(Ljava/util/List;)V

    .line 1933
    .line 1934
    .line 1935
    goto/16 :goto_f

    .line 1936
    .line 1937
    :pswitch_31
    new-instance v1, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;

    .line 1938
    .line 1939
    invoke-direct {v1, v3}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1940
    .line 1941
    .line 1942
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->deleteIfSelectedOr(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 1943
    .line 1944
    .line 1945
    move-result-object v0

    .line 1946
    if-eqz v0, :cond_1c

    .line 1947
    .line 1948
    invoke-virtual {v15, v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->apply(Ljava/util/List;)V

    .line 1949
    .line 1950
    .line 1951
    goto/16 :goto_f

    .line 1952
    .line 1953
    :pswitch_32
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1954
    .line 1955
    const/4 v2, 0x0

    .line 1956
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1957
    .line 1958
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1959
    .line 1960
    iget-object v2, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1961
    .line 1962
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1963
    .line 1964
    .line 1965
    move-result v2

    .line 1966
    if-lez v2, :cond_1c

    .line 1967
    .line 1968
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1969
    .line 1970
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1971
    .line 1972
    .line 1973
    move-result v1

    .line 1974
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1975
    .line 1976
    .line 1977
    goto/16 :goto_f

    .line 1978
    .line 1979
    :pswitch_33
    const/4 v2, 0x0

    .line 1980
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1981
    .line 1982
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1983
    .line 1984
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1985
    .line 1986
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1987
    .line 1988
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1989
    .line 1990
    .line 1991
    move-result v1

    .line 1992
    if-lez v1, :cond_1c

    .line 1993
    .line 1994
    const/4 v7, 0x0

    .line 1995
    invoke-virtual {v0, v7, v7}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1996
    .line 1997
    .line 1998
    goto/16 :goto_f

    .line 1999
    .line 2000
    :pswitch_34
    const/4 v2, 0x0

    .line 2001
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 2002
    .line 2003
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 2004
    .line 2005
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2006
    .line 2007
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2008
    .line 2009
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2010
    .line 2011
    .line 2012
    move-result v1

    .line 2013
    if-lez v1, :cond_1c

    .line 2014
    .line 2015
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    .line 2016
    .line 2017
    .line 2018
    move-result v1

    .line 2019
    if-eqz v1, :cond_2e

    .line 2020
    .line 2021
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineEnd()V

    .line 2022
    .line 2023
    .line 2024
    goto/16 :goto_f

    .line 2025
    .line 2026
    :cond_2e
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineStart()V

    .line 2027
    .line 2028
    .line 2029
    goto/16 :goto_f

    .line 2030
    .line 2031
    :pswitch_35
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 2032
    .line 2033
    const/4 v2, 0x0

    .line 2034
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 2035
    .line 2036
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2037
    .line 2038
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2039
    .line 2040
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2041
    .line 2042
    .line 2043
    move-result v1

    .line 2044
    if-lez v1, :cond_1c

    .line 2045
    .line 2046
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    .line 2047
    .line 2048
    .line 2049
    move-result v1

    .line 2050
    if-eqz v1, :cond_2f

    .line 2051
    .line 2052
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineStart()V

    .line 2053
    .line 2054
    .line 2055
    goto/16 :goto_f

    .line 2056
    .line 2057
    :cond_2f
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineEnd()V

    .line 2058
    .line 2059
    .line 2060
    goto/16 :goto_f

    .line 2061
    .line 2062
    :pswitch_36
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineEnd()V

    .line 2063
    .line 2064
    .line 2065
    goto/16 :goto_f

    .line 2066
    .line 2067
    :pswitch_37
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineStart()V

    .line 2068
    .line 2069
    .line 2070
    goto/16 :goto_f

    .line 2071
    .line 2072
    :pswitch_38
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2073
    .line 2074
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2075
    .line 2076
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2077
    .line 2078
    .line 2079
    move-result v1

    .line 2080
    if-lez v1, :cond_1c

    .line 2081
    .line 2082
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResultProxy:Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 2083
    .line 2084
    if-eqz v1, :cond_1c

    .line 2085
    .line 2086
    invoke-virtual {v0, v1, v4}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->jumpByPagesOffset(Landroidx/compose/foundation/text/TextLayoutResultProxy;I)I

    .line 2087
    .line 2088
    .line 2089
    move-result v1

    .line 2090
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2091
    .line 2092
    .line 2093
    goto/16 :goto_f

    .line 2094
    .line 2095
    :pswitch_39
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2096
    .line 2097
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2098
    .line 2099
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2100
    .line 2101
    .line 2102
    move-result v1

    .line 2103
    if-lez v1, :cond_1c

    .line 2104
    .line 2105
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResultProxy:Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 2106
    .line 2107
    if-eqz v1, :cond_1c

    .line 2108
    .line 2109
    invoke-virtual {v0, v1, v5}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->jumpByPagesOffset(Landroidx/compose/foundation/text/TextLayoutResultProxy;I)I

    .line 2110
    .line 2111
    .line 2112
    move-result v1

    .line 2113
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2114
    .line 2115
    .line 2116
    goto/16 :goto_f

    .line 2117
    .line 2118
    :pswitch_3a
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2119
    .line 2120
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2121
    .line 2122
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2123
    .line 2124
    .line 2125
    move-result v1

    .line 2126
    if-lez v1, :cond_1c

    .line 2127
    .line 2128
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 2129
    .line 2130
    if-eqz v1, :cond_1c

    .line 2131
    .line 2132
    invoke-virtual {v0, v1, v4}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    .line 2133
    .line 2134
    .line 2135
    move-result v1

    .line 2136
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2137
    .line 2138
    .line 2139
    goto/16 :goto_f

    .line 2140
    .line 2141
    :pswitch_3b
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2142
    .line 2143
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2144
    .line 2145
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2146
    .line 2147
    .line 2148
    move-result v1

    .line 2149
    if-lez v1, :cond_1c

    .line 2150
    .line 2151
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 2152
    .line 2153
    if-eqz v1, :cond_1c

    .line 2154
    .line 2155
    invoke-virtual {v0, v1, v5}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    .line 2156
    .line 2157
    .line 2158
    move-result v1

    .line 2159
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2160
    .line 2161
    .line 2162
    goto/16 :goto_f

    .line 2163
    .line 2164
    :pswitch_3c
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorNextByParagraph()V

    .line 2165
    .line 2166
    .line 2167
    goto/16 :goto_f

    .line 2168
    .line 2169
    :pswitch_3d
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorPrevByParagraph()V

    .line 2170
    .line 2171
    .line 2172
    goto/16 :goto_f

    .line 2173
    .line 2174
    :pswitch_3e
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 2175
    .line 2176
    const/4 v2, 0x0

    .line 2177
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 2178
    .line 2179
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2180
    .line 2181
    iget-object v4, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2182
    .line 2183
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2184
    .line 2185
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 2186
    .line 2187
    .line 2188
    move-result v4

    .line 2189
    if-lez v4, :cond_1c

    .line 2190
    .line 2191
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    .line 2192
    .line 2193
    .line 2194
    move-result v4

    .line 2195
    if-eqz v4, :cond_30

    .line 2196
    .line 2197
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 2198
    .line 2199
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 2200
    .line 2201
    .line 2202
    move-result v1

    .line 2203
    if-lez v1, :cond_1c

    .line 2204
    .line 2205
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getNextWordOffset()Ljava/lang/Integer;

    .line 2206
    .line 2207
    .line 2208
    move-result-object v1

    .line 2209
    if-eqz v1, :cond_1c

    .line 2210
    .line 2211
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 2212
    .line 2213
    .line 2214
    move-result v1

    .line 2215
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2216
    .line 2217
    .line 2218
    goto/16 :goto_f

    .line 2219
    .line 2220
    :cond_30
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 2221
    .line 2222
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 2223
    .line 2224
    .line 2225
    move-result v1

    .line 2226
    if-lez v1, :cond_1c

    .line 2227
    .line 2228
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getPreviousWordOffset()Ljava/lang/Integer;

    .line 2229
    .line 2230
    .line 2231
    move-result-object v1

    .line 2232
    if-eqz v1, :cond_1c

    .line 2233
    .line 2234
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 2235
    .line 2236
    .line 2237
    move-result v1

    .line 2238
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2239
    .line 2240
    .line 2241
    goto/16 :goto_f

    .line 2242
    .line 2243
    :pswitch_3f
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 2244
    .line 2245
    const/4 v2, 0x0

    .line 2246
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 2247
    .line 2248
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2249
    .line 2250
    iget-object v4, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2251
    .line 2252
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2253
    .line 2254
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 2255
    .line 2256
    .line 2257
    move-result v4

    .line 2258
    if-lez v4, :cond_1c

    .line 2259
    .line 2260
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    .line 2261
    .line 2262
    .line 2263
    move-result v4

    .line 2264
    if-eqz v4, :cond_31

    .line 2265
    .line 2266
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 2267
    .line 2268
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 2269
    .line 2270
    .line 2271
    move-result v1

    .line 2272
    if-lez v1, :cond_1c

    .line 2273
    .line 2274
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getPreviousWordOffset()Ljava/lang/Integer;

    .line 2275
    .line 2276
    .line 2277
    move-result-object v1

    .line 2278
    if-eqz v1, :cond_1c

    .line 2279
    .line 2280
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 2281
    .line 2282
    .line 2283
    move-result v1

    .line 2284
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2285
    .line 2286
    .line 2287
    goto/16 :goto_f

    .line 2288
    .line 2289
    :cond_31
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 2290
    .line 2291
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 2292
    .line 2293
    .line 2294
    move-result v1

    .line 2295
    if-lez v1, :cond_1c

    .line 2296
    .line 2297
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getNextWordOffset()Ljava/lang/Integer;

    .line 2298
    .line 2299
    .line 2300
    move-result-object v1

    .line 2301
    if-eqz v1, :cond_1c

    .line 2302
    .line 2303
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 2304
    .line 2305
    .line 2306
    move-result v1

    .line 2307
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2308
    .line 2309
    .line 2310
    goto/16 :goto_f

    .line 2311
    .line 2312
    :pswitch_40
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 2313
    .line 2314
    const/4 v2, 0x0

    .line 2315
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 2316
    .line 2317
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2318
    .line 2319
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2320
    .line 2321
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2322
    .line 2323
    .line 2324
    move-result v1

    .line 2325
    if-lez v1, :cond_1c

    .line 2326
    .line 2327
    iget-wide v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 2328
    .line 2329
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 2330
    .line 2331
    .line 2332
    move-result v1

    .line 2333
    if-eqz v1, :cond_32

    .line 2334
    .line 2335
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorRight()V

    .line 2336
    .line 2337
    .line 2338
    goto/16 :goto_f

    .line 2339
    .line 2340
    :cond_32
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    .line 2341
    .line 2342
    .line 2343
    move-result v1

    .line 2344
    iget-wide v2, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 2345
    .line 2346
    if-eqz v1, :cond_33

    .line 2347
    .line 2348
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 2349
    .line 2350
    .line 2351
    move-result v1

    .line 2352
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2353
    .line 2354
    .line 2355
    goto/16 :goto_f

    .line 2356
    .line 2357
    :cond_33
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 2358
    .line 2359
    .line 2360
    move-result v1

    .line 2361
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2362
    .line 2363
    .line 2364
    goto/16 :goto_f

    .line 2365
    .line 2366
    :pswitch_41
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 2367
    .line 2368
    const/4 v2, 0x0

    .line 2369
    iput-object v2, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 2370
    .line 2371
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2372
    .line 2373
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2374
    .line 2375
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2376
    .line 2377
    .line 2378
    move-result v1

    .line 2379
    if-lez v1, :cond_1c

    .line 2380
    .line 2381
    iget-wide v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 2382
    .line 2383
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 2384
    .line 2385
    .line 2386
    move-result v1

    .line 2387
    if-eqz v1, :cond_34

    .line 2388
    .line 2389
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorLeft()V

    .line 2390
    .line 2391
    .line 2392
    goto/16 :goto_f

    .line 2393
    .line 2394
    :cond_34
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    .line 2395
    .line 2396
    .line 2397
    move-result v1

    .line 2398
    iget-wide v2, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 2399
    .line 2400
    if-eqz v1, :cond_35

    .line 2401
    .line 2402
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 2403
    .line 2404
    .line 2405
    move-result v1

    .line 2406
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2407
    .line 2408
    .line 2409
    goto/16 :goto_f

    .line 2410
    .line 2411
    :cond_35
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 2412
    .line 2413
    .line 2414
    move-result v1

    .line 2415
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2416
    .line 2417
    .line 2418
    goto/16 :goto_f

    .line 2419
    .line 2420
    :pswitch_42
    iget-object v0, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->selectionManager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 2421
    .line 2422
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->cut$foundation()V

    .line 2423
    .line 2424
    .line 2425
    goto/16 :goto_f

    .line 2426
    .line 2427
    :pswitch_43
    iget-object v0, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->selectionManager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 2428
    .line 2429
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->paste$foundation()V

    .line 2430
    .line 2431
    .line 2432
    goto/16 :goto_f

    .line 2433
    .line 2434
    :pswitch_44
    iget-object v0, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->selectionManager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 2435
    .line 2436
    const/4 v1, 0x0

    .line 2437
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->copy$foundation(Z)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 2438
    .line 2439
    .line 2440
    goto/16 :goto_f

    .line 2441
    .line 2442
    :goto_15
    return-object v11

    .line 2443
    :pswitch_45
    check-cast v2, Landroidx/cardview/widget/CardView$1;

    .line 2444
    .line 2445
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 2446
    .line 2447
    check-cast v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2448
    .line 2449
    move-object/from16 v0, p1

    .line 2450
    .line 2451
    check-cast v0, Ljava/util/List;

    .line 2452
    .line 2453
    iget-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2454
    .line 2455
    check-cast v1, Landroidx/compose/ui/text/input/TextInputSession;

    .line 2456
    .line 2457
    invoke-virtual {v2, v0}, Landroidx/cardview/widget/CardView$1;->apply(Ljava/util/List;)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 2458
    .line 2459
    .line 2460
    move-result-object v0

    .line 2461
    if-eqz v1, :cond_36

    .line 2462
    .line 2463
    const/4 v2, 0x0

    .line 2464
    invoke-virtual {v1, v2, v0}, Landroidx/compose/ui/text/input/TextInputSession;->updateState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 2465
    .line 2466
    .line 2467
    :cond_36
    invoke-interface {v15, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2468
    .line 2469
    .line 2470
    return-object v13

    .line 2471
    :pswitch_46
    check-cast v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2472
    .line 2473
    check-cast v15, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 2474
    .line 2475
    check-cast v14, Landroidx/compose/ui/text/SpanStyle;

    .line 2476
    .line 2477
    move-object/from16 v0, p1

    .line 2478
    .line 2479
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 2480
    .line 2481
    iget-boolean v1, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2482
    .line 2483
    if-eqz v1, :cond_38

    .line 2484
    .line 2485
    iget-object v1, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 2486
    .line 2487
    iget v3, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 2488
    .line 2489
    iget v4, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 2490
    .line 2491
    instance-of v1, v1, Landroidx/compose/ui/text/SpanStyle;

    .line 2492
    .line 2493
    if-eqz v1, :cond_38

    .line 2494
    .line 2495
    iget v1, v15, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 2496
    .line 2497
    if-ne v4, v1, :cond_38

    .line 2498
    .line 2499
    iget v1, v15, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 2500
    .line 2501
    if-ne v3, v1, :cond_38

    .line 2502
    .line 2503
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 2504
    .line 2505
    if-nez v14, :cond_37

    .line 2506
    .line 2507
    new-instance v16, Landroidx/compose/ui/text/SpanStyle;

    .line 2508
    .line 2509
    const/16 v34, 0x0

    .line 2510
    .line 2511
    const v35, 0xffff

    .line 2512
    .line 2513
    .line 2514
    const-wide/16 v17, 0x0

    .line 2515
    .line 2516
    const-wide/16 v19, 0x0

    .line 2517
    .line 2518
    const/16 v21, 0x0

    .line 2519
    .line 2520
    const/16 v22, 0x0

    .line 2521
    .line 2522
    const/16 v23, 0x0

    .line 2523
    .line 2524
    const/16 v24, 0x0

    .line 2525
    .line 2526
    const/16 v25, 0x0

    .line 2527
    .line 2528
    const-wide/16 v26, 0x0

    .line 2529
    .line 2530
    const/16 v28, 0x0

    .line 2531
    .line 2532
    const/16 v29, 0x0

    .line 2533
    .line 2534
    const/16 v30, 0x0

    .line 2535
    .line 2536
    const-wide/16 v31, 0x0

    .line 2537
    .line 2538
    const/16 v33, 0x0

    .line 2539
    .line 2540
    invoke-direct/range {v16 .. v35}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 2541
    .line 2542
    .line 2543
    move-object/from16 v14, v16

    .line 2544
    .line 2545
    :cond_37
    invoke-direct {v1, v4, v3, v14}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 2546
    .line 2547
    .line 2548
    goto :goto_16

    .line 2549
    :cond_38
    move-object v1, v0

    .line 2550
    :goto_16
    invoke-virtual {v15, v0}, Landroidx/compose/ui/text/AnnotatedString$Range;->equals(Ljava/lang/Object;)Z

    .line 2551
    .line 2552
    .line 2553
    move-result v0

    .line 2554
    iput-boolean v0, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2555
    .line 2556
    return-object v1

    .line 2557
    :pswitch_47
    move v1, v12

    .line 2558
    check-cast v2, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 2559
    .line 2560
    check-cast v15, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 2561
    .line 2562
    iget-wide v5, v15, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 2563
    .line 2564
    check-cast v14, Landroidx/compose/ui/text/input/OffsetMapping;

    .line 2565
    .line 2566
    move-object/from16 v0, p1

    .line 2567
    .line 2568
    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 2569
    .line 2570
    invoke-virtual {v2}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 2571
    .line 2572
    .line 2573
    move-result-object v3

    .line 2574
    if-eqz v3, :cond_4a

    .line 2575
    .line 2576
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Lcom/caverock/androidsvg/SVG;

    .line 2577
    .line 2578
    .line 2579
    move-result-object v0

    .line 2580
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 2581
    .line 2582
    .line 2583
    move-result-object v9

    .line 2584
    iget-object v0, v2, Landroidx/compose/foundation/text/LegacyTextFieldState;->selectionPreviewHighlightRange$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2585
    .line 2586
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 2587
    .line 2588
    .line 2589
    move-result-object v0

    .line 2590
    check-cast v0, Landroidx/compose/ui/text/TextRange;

    .line 2591
    .line 2592
    iget-wide v11, v0, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 2593
    .line 2594
    iget-object v0, v2, Landroidx/compose/foundation/text/LegacyTextFieldState;->deletionPreviewHighlightRange$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2595
    .line 2596
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 2597
    .line 2598
    .line 2599
    move-result-object v0

    .line 2600
    check-cast v0, Landroidx/compose/ui/text/TextRange;

    .line 2601
    .line 2602
    move-wide/from16 v20, v7

    .line 2603
    .line 2604
    iget-wide v7, v0, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 2605
    .line 2606
    iget-object v0, v3, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 2607
    .line 2608
    move-wide/from16 v22, v5

    .line 2609
    .line 2610
    iget-wide v4, v0, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    .line 2611
    .line 2612
    iget-object v6, v0, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 2613
    .line 2614
    iget-object v15, v0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 2615
    .line 2616
    iget-object v1, v2, Landroidx/compose/foundation/text/LegacyTextFieldState;->highlightPaint:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 2617
    .line 2618
    move-wide/from16 v24, v4

    .line 2619
    .line 2620
    iget-wide v3, v2, Landroidx/compose/foundation/text/LegacyTextFieldState;->selectionBackgroundColor:J

    .line 2621
    .line 2622
    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 2623
    .line 2624
    .line 2625
    move-result v2

    .line 2626
    if-nez v2, :cond_39

    .line 2627
    .line 2628
    invoke-virtual {v1, v3, v4}, Landroidx/compose/ui/graphics/AndroidPaint;->setColor-8_81llA(J)V

    .line 2629
    .line 2630
    .line 2631
    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 2632
    .line 2633
    .line 2634
    move-result v2

    .line 2635
    invoke-interface {v14, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 2636
    .line 2637
    .line 2638
    move-result v2

    .line 2639
    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 2640
    .line 2641
    .line 2642
    move-result v3

    .line 2643
    invoke-interface {v14, v3}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 2644
    .line 2645
    .line 2646
    move-result v3

    .line 2647
    if-eq v2, v3, :cond_3d

    .line 2648
    .line 2649
    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getPathForRange(II)Landroidx/compose/ui/graphics/AndroidPath;

    .line 2650
    .line 2651
    .line 2652
    move-result-object v2

    .line 2653
    invoke-interface {v9, v2, v1}, Landroidx/compose/ui/graphics/Canvas;->drawPath(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/AndroidPaint;)V

    .line 2654
    .line 2655
    .line 2656
    goto :goto_19

    .line 2657
    :cond_39
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 2658
    .line 2659
    .line 2660
    move-result v2

    .line 2661
    if-nez v2, :cond_3c

    .line 2662
    .line 2663
    iget-object v2, v6, Landroidx/compose/ui/text/TextLayoutInput;->style:Landroidx/compose/ui/text/TextStyle;

    .line 2664
    .line 2665
    invoke-virtual {v2}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    .line 2666
    .line 2667
    .line 2668
    move-result-wide v2

    .line 2669
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    .line 2670
    .line 2671
    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 2672
    .line 2673
    .line 2674
    const-wide/16 v11, 0x10

    .line 2675
    .line 2676
    cmp-long v2, v2, v11

    .line 2677
    .line 2678
    if-nez v2, :cond_3a

    .line 2679
    .line 2680
    const/4 v11, 0x0

    .line 2681
    goto :goto_17

    .line 2682
    :cond_3a
    move-object v11, v4

    .line 2683
    :goto_17
    if-eqz v11, :cond_3b

    .line 2684
    .line 2685
    iget-wide v2, v11, Landroidx/compose/ui/graphics/Color;->value:J

    .line 2686
    .line 2687
    goto :goto_18

    .line 2688
    :cond_3b
    sget-wide v2, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 2689
    .line 2690
    :goto_18
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 2691
    .line 2692
    .line 2693
    move-result v4

    .line 2694
    const v5, 0x3e4ccccd    # 0.2f

    .line 2695
    .line 2696
    .line 2697
    mul-float/2addr v4, v5

    .line 2698
    invoke-static {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 2699
    .line 2700
    .line 2701
    move-result-wide v2

    .line 2702
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/AndroidPaint;->setColor-8_81llA(J)V

    .line 2703
    .line 2704
    .line 2705
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 2706
    .line 2707
    .line 2708
    move-result v2

    .line 2709
    invoke-interface {v14, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 2710
    .line 2711
    .line 2712
    move-result v2

    .line 2713
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 2714
    .line 2715
    .line 2716
    move-result v3

    .line 2717
    invoke-interface {v14, v3}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 2718
    .line 2719
    .line 2720
    move-result v3

    .line 2721
    if-eq v2, v3, :cond_3d

    .line 2722
    .line 2723
    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getPathForRange(II)Landroidx/compose/ui/graphics/AndroidPath;

    .line 2724
    .line 2725
    .line 2726
    move-result-object v2

    .line 2727
    invoke-interface {v9, v2, v1}, Landroidx/compose/ui/graphics/Canvas;->drawPath(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/AndroidPaint;)V

    .line 2728
    .line 2729
    .line 2730
    goto :goto_19

    .line 2731
    :cond_3c
    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 2732
    .line 2733
    .line 2734
    move-result v2

    .line 2735
    if-nez v2, :cond_3d

    .line 2736
    .line 2737
    invoke-virtual {v1, v3, v4}, Landroidx/compose/ui/graphics/AndroidPaint;->setColor-8_81llA(J)V

    .line 2738
    .line 2739
    .line 2740
    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 2741
    .line 2742
    .line 2743
    move-result v2

    .line 2744
    invoke-interface {v14, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 2745
    .line 2746
    .line 2747
    move-result v2

    .line 2748
    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 2749
    .line 2750
    .line 2751
    move-result v3

    .line 2752
    invoke-interface {v14, v3}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 2753
    .line 2754
    .line 2755
    move-result v3

    .line 2756
    if-eq v2, v3, :cond_3d

    .line 2757
    .line 2758
    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getPathForRange(II)Landroidx/compose/ui/graphics/AndroidPath;

    .line 2759
    .line 2760
    .line 2761
    move-result-object v2

    .line 2762
    invoke-interface {v9, v2, v1}, Landroidx/compose/ui/graphics/Canvas;->drawPath(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/AndroidPaint;)V

    .line 2763
    .line 2764
    .line 2765
    :cond_3d
    :goto_19
    shr-long v1, v24, v17

    .line 2766
    .line 2767
    long-to-int v1, v1

    .line 2768
    int-to-float v1, v1

    .line 2769
    iget v2, v15, Landroidx/compose/ui/text/MultiParagraph;->width:F

    .line 2770
    .line 2771
    cmpg-float v1, v1, v2

    .line 2772
    .line 2773
    if-gez v1, :cond_3e

    .line 2774
    .line 2775
    goto :goto_1a

    .line 2776
    :cond_3e
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutResult;->getDidOverflowHeight()Z

    .line 2777
    .line 2778
    .line 2779
    move-result v0

    .line 2780
    if-eqz v0, :cond_3f

    .line 2781
    .line 2782
    :goto_1a
    const/4 v7, 0x1

    .line 2783
    goto :goto_1b

    .line 2784
    :cond_3f
    const/4 v7, 0x0

    .line 2785
    :goto_1b
    if-eqz v7, :cond_41

    .line 2786
    .line 2787
    iget v0, v6, Landroidx/compose/ui/text/TextLayoutInput;->overflow:I

    .line 2788
    .line 2789
    if-ne v0, v10, :cond_40

    .line 2790
    .line 2791
    goto :goto_1c

    .line 2792
    :cond_40
    const/4 v12, 0x1

    .line 2793
    goto :goto_1d

    .line 2794
    :cond_41
    :goto_1c
    const/4 v12, 0x0

    .line 2795
    :goto_1d
    if-eqz v12, :cond_42

    .line 2796
    .line 2797
    shr-long v0, v24, v17

    .line 2798
    .line 2799
    long-to-int v0, v0

    .line 2800
    int-to-float v0, v0

    .line 2801
    and-long v1, v24, v20

    .line 2802
    .line 2803
    long-to-int v1, v1

    .line 2804
    int-to-float v1, v1

    .line 2805
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2806
    .line 2807
    .line 2808
    move-result v0

    .line 2809
    int-to-long v2, v0

    .line 2810
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2811
    .line 2812
    .line 2813
    move-result v0

    .line 2814
    int-to-long v0, v0

    .line 2815
    shl-long v2, v2, v17

    .line 2816
    .line 2817
    and-long v0, v0, v20

    .line 2818
    .line 2819
    or-long/2addr v0, v2

    .line 2820
    const-wide/16 v2, 0x0

    .line 2821
    .line 2822
    invoke-static {v2, v3, v0, v1}, Lcoil3/util/UtilsKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 2823
    .line 2824
    .line 2825
    move-result-object v0

    .line 2826
    invoke-interface {v9}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 2827
    .line 2828
    .line 2829
    invoke-interface {v9, v0}, Landroidx/compose/ui/graphics/Canvas;->clipRect-mtrdD-E(Landroidx/compose/ui/geometry/Rect;)V

    .line 2830
    .line 2831
    .line 2832
    :cond_42
    iget-object v0, v6, Landroidx/compose/ui/text/TextLayoutInput;->style:Landroidx/compose/ui/text/TextStyle;

    .line 2833
    .line 2834
    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 2835
    .line 2836
    iget-object v1, v0, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 2837
    .line 2838
    iget-object v2, v0, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 2839
    .line 2840
    if-nez v1, :cond_43

    .line 2841
    .line 2842
    sget-object v1, Landroidx/compose/ui/text/style/TextDecoration;->None:Landroidx/compose/ui/text/style/TextDecoration;

    .line 2843
    .line 2844
    :cond_43
    move-object/from16 v25, v1

    .line 2845
    .line 2846
    iget-object v1, v0, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 2847
    .line 2848
    if-nez v1, :cond_44

    .line 2849
    .line 2850
    sget-object v1, Landroidx/compose/ui/graphics/Shadow;->None:Landroidx/compose/ui/graphics/Shadow;

    .line 2851
    .line 2852
    :cond_44
    move-object/from16 v24, v1

    .line 2853
    .line 2854
    iget-object v0, v0, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 2855
    .line 2856
    if-nez v0, :cond_45

    .line 2857
    .line 2858
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 2859
    .line 2860
    :cond_45
    move-object/from16 v26, v0

    .line 2861
    .line 2862
    :try_start_1
    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    .line 2863
    .line 2864
    .line 2865
    move-result-object v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2866
    sget-object v0, Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;->INSTANCE:Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;

    .line 2867
    .line 2868
    if-eqz v22, :cond_47

    .line 2869
    .line 2870
    if-eq v2, v0, :cond_46

    .line 2871
    .line 2872
    :try_start_2
    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    .line 2873
    .line 2874
    .line 2875
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2876
    move/from16 v23, v2

    .line 2877
    .line 2878
    :goto_1e
    move-object/from16 v21, v9

    .line 2879
    .line 2880
    move-object/from16 v20, v15

    .line 2881
    .line 2882
    goto :goto_1f

    .line 2883
    :catchall_1
    move-exception v0

    .line 2884
    move-object/from16 v21, v9

    .line 2885
    .line 2886
    goto :goto_23

    .line 2887
    :cond_46
    const/high16 v23, 0x3f800000    # 1.0f

    .line 2888
    .line 2889
    goto :goto_1e

    .line 2890
    :goto_1f
    :try_start_3
    invoke-static/range {v20 .. v26}, Landroidx/compose/ui/text/MultiParagraph;->paint-hn5TExg$default(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 2891
    .line 2892
    .line 2893
    goto :goto_22

    .line 2894
    :catchall_2
    move-exception v0

    .line 2895
    goto :goto_23

    .line 2896
    :cond_47
    move-object/from16 v21, v9

    .line 2897
    .line 2898
    move-object/from16 v20, v15

    .line 2899
    .line 2900
    if-eq v2, v0, :cond_48

    .line 2901
    .line 2902
    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    .line 2903
    .line 2904
    .line 2905
    move-result-wide v0

    .line 2906
    :goto_20
    move-wide/from16 v22, v0

    .line 2907
    .line 2908
    goto :goto_21

    .line 2909
    :cond_48
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 2910
    .line 2911
    goto :goto_20

    .line 2912
    :goto_21
    invoke-static/range {v20 .. v26}, Landroidx/compose/ui/text/MultiParagraph;->paint-LG529CI$default(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2913
    .line 2914
    .line 2915
    :goto_22
    if-eqz v12, :cond_4a

    .line 2916
    .line 2917
    invoke-interface/range {v21 .. v21}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 2918
    .line 2919
    .line 2920
    goto :goto_24

    .line 2921
    :goto_23
    if-eqz v12, :cond_49

    .line 2922
    .line 2923
    invoke-interface/range {v21 .. v21}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 2924
    .line 2925
    .line 2926
    :cond_49
    throw v0

    .line 2927
    :cond_4a
    :goto_24
    return-object v13

    .line 2928
    :pswitch_48
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 2929
    .line 2930
    check-cast v15, Landroidx/compose/runtime/MutableState;

    .line 2931
    .line 2932
    check-cast v14, Landroidx/compose/runtime/MutableState;

    .line 2933
    .line 2934
    move-object/from16 v0, p1

    .line 2935
    .line 2936
    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 2937
    .line 2938
    invoke-interface {v15, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 2939
    .line 2940
    .line 2941
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2942
    .line 2943
    .line 2944
    move-result-object v1

    .line 2945
    check-cast v1, Ljava/lang/String;

    .line 2946
    .line 2947
    iget-object v3, v0, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2948
    .line 2949
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2950
    .line 2951
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2952
    .line 2953
    .line 2954
    move-result v1

    .line 2955
    iget-object v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2956
    .line 2957
    iget-object v3, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2958
    .line 2959
    invoke-interface {v14, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 2960
    .line 2961
    .line 2962
    if-nez v1, :cond_4b

    .line 2963
    .line 2964
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2965
    .line 2966
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2967
    .line 2968
    .line 2969
    :cond_4b
    return-object v13

    .line 2970
    :pswitch_49
    check-cast v2, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 2971
    .line 2972
    check-cast v15, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;

    .line 2973
    .line 2974
    check-cast v14, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 2975
    .line 2976
    move-object/from16 v0, p1

    .line 2977
    .line 2978
    check-cast v0, Landroidx/compose/animation/core/AnimationScope;

    .line 2979
    .line 2980
    iget-object v1, v0, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2981
    .line 2982
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 2983
    .line 2984
    .line 2985
    move-result-object v1

    .line 2986
    check-cast v1, Ljava/lang/Number;

    .line 2987
    .line 2988
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 2989
    .line 2990
    .line 2991
    move-result v1

    .line 2992
    iget v3, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 2993
    .line 2994
    sub-float/2addr v1, v3

    .line 2995
    invoke-virtual {v15, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;->scrollBy(F)F

    .line 2996
    .line 2997
    .line 2998
    move-result v3

    .line 2999
    iget-object v4, v0, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 3000
    .line 3001
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 3002
    .line 3003
    .line 3004
    move-result-object v4

    .line 3005
    check-cast v4, Ljava/lang/Number;

    .line 3006
    .line 3007
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 3008
    .line 3009
    .line 3010
    move-result v4

    .line 3011
    iput v4, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 3012
    .line 3013
    iget-object v2, v0, Landroidx/compose/animation/core/AnimationScope;->typeConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 3014
    .line 3015
    iget-object v2, v2, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertFromVector:Lkotlin/jvm/functions/Function1;

    .line 3016
    .line 3017
    iget-object v4, v0, Landroidx/compose/animation/core/AnimationScope;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    .line 3018
    .line 3019
    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3020
    .line 3021
    .line 3022
    move-result-object v2

    .line 3023
    check-cast v2, Ljava/lang/Number;

    .line 3024
    .line 3025
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 3026
    .line 3027
    .line 3028
    move-result v2

    .line 3029
    iput v2, v14, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 3030
    .line 3031
    sub-float/2addr v1, v3

    .line 3032
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 3033
    .line 3034
    .line 3035
    move-result v1

    .line 3036
    const/high16 v2, 0x3f000000    # 0.5f

    .line 3037
    .line 3038
    cmpl-float v1, v1, v2

    .line 3039
    .line 3040
    if-lez v1, :cond_4c

    .line 3041
    .line 3042
    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationScope;->cancelAnimation()V

    .line 3043
    .line 3044
    .line 3045
    :cond_4c
    return-object v13

    .line 3046
    :pswitch_4a
    check-cast v2, Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 3047
    .line 3048
    check-cast v15, Lkotlinx/coroutines/Job;

    .line 3049
    .line 3050
    check-cast v14, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 3051
    .line 3052
    move-object/from16 v0, p1

    .line 3053
    .line 3054
    check-cast v0, Ljava/lang/Float;

    .line 3055
    .line 3056
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 3057
    .line 3058
    .line 3059
    move-result v0

    .line 3060
    iget-boolean v1, v2, Landroidx/compose/foundation/gestures/ContentInViewNode;->reverseDirection:Z

    .line 3061
    .line 3062
    if-eqz v1, :cond_4d

    .line 3063
    .line 3064
    const/high16 v16, 0x3f800000    # 1.0f

    .line 3065
    .line 3066
    goto :goto_25

    .line 3067
    :cond_4d
    const/high16 v1, -0x40800000    # -1.0f

    .line 3068
    .line 3069
    move/from16 v16, v1

    .line 3070
    .line 3071
    :goto_25
    mul-float v1, v16, v0

    .line 3072
    .line 3073
    iget-object v2, v2, Landroidx/compose/foundation/gestures/ContentInViewNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 3074
    .line 3075
    invoke-virtual {v2, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toOffset-tuRUvjQ(F)J

    .line 3076
    .line 3077
    .line 3078
    move-result-wide v3

    .line 3079
    invoke-virtual {v2, v3, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    .line 3080
    .line 3081
    .line 3082
    move-result-wide v3

    .line 3083
    iget-object v1, v14, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 3084
    .line 3085
    iget-object v5, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->outerStateScope:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 3086
    .line 3087
    const/4 v6, 0x1

    .line 3088
    invoke-virtual {v1, v5, v3, v4, v6}, Landroidx/compose/foundation/gestures/ScrollingLogic;->performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/ScrollScope;JI)J

    .line 3089
    .line 3090
    .line 3091
    move-result-wide v3

    .line 3092
    invoke-virtual {v2, v3, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    .line 3093
    .line 3094
    .line 3095
    move-result-wide v3

    .line 3096
    invoke-virtual {v2, v3, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    .line 3097
    .line 3098
    .line 3099
    move-result v1

    .line 3100
    mul-float v1, v1, v16

    .line 3101
    .line 3102
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 3103
    .line 3104
    .line 3105
    move-result v2

    .line 3106
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 3107
    .line 3108
    .line 3109
    move-result v3

    .line 3110
    cmpg-float v2, v2, v3

    .line 3111
    .line 3112
    if-gez v2, :cond_4e

    .line 3113
    .line 3114
    new-instance v2, Ljava/lang/StringBuilder;

    .line 3115
    .line 3116
    const-string v3, "Scroll animation cancelled because scroll was not consumed ("

    .line 3117
    .line 3118
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3119
    .line 3120
    .line 3121
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3122
    .line 3123
    .line 3124
    const-string v1, " < "

    .line 3125
    .line 3126
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3127
    .line 3128
    .line 3129
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3130
    .line 3131
    .line 3132
    const/16 v0, 0x29

    .line 3133
    .line 3134
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3135
    .line 3136
    .line 3137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3138
    .line 3139
    .line 3140
    move-result-object v0

    .line 3141
    const/4 v2, 0x0

    .line 3142
    invoke-static {v0, v2}, Lkotlinx/coroutines/AwaitKt;->CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    .line 3143
    .line 3144
    .line 3145
    move-result-object v0

    .line 3146
    invoke-interface {v15, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 3147
    .line 3148
    .line 3149
    :cond_4e
    return-object v13

    .line 3150
    :pswitch_4b
    check-cast v2, Landroidx/compose/ui/graphics/painter/Painter;

    .line 3151
    .line 3152
    check-cast v15, Landroidx/compose/ui/graphics/painter/Painter;

    .line 3153
    .line 3154
    check-cast v14, Landroidx/compose/ui/graphics/painter/Painter;

    .line 3155
    .line 3156
    move-object/from16 v0, p1

    .line 3157
    .line 3158
    check-cast v0, Lcoil3/compose/AsyncImagePainter$State;

    .line 3159
    .line 3160
    instance-of v1, v0, Lcoil3/compose/AsyncImagePainter$State$Loading;

    .line 3161
    .line 3162
    if-eqz v1, :cond_50

    .line 3163
    .line 3164
    if-eqz v2, :cond_4f

    .line 3165
    .line 3166
    new-instance v0, Lcoil3/compose/AsyncImagePainter$State$Loading;

    .line 3167
    .line 3168
    invoke-direct {v0, v2}, Lcoil3/compose/AsyncImagePainter$State$Loading;-><init>(Landroidx/compose/ui/graphics/painter/Painter;)V

    .line 3169
    .line 3170
    .line 3171
    goto :goto_26

    .line 3172
    :cond_4f
    check-cast v0, Lcoil3/compose/AsyncImagePainter$State$Loading;

    .line 3173
    .line 3174
    goto :goto_26

    .line 3175
    :cond_50
    instance-of v1, v0, Lcoil3/compose/AsyncImagePainter$State$Error;

    .line 3176
    .line 3177
    if-eqz v1, :cond_52

    .line 3178
    .line 3179
    check-cast v0, Lcoil3/compose/AsyncImagePainter$State$Error;

    .line 3180
    .line 3181
    iget-object v1, v0, Lcoil3/compose/AsyncImagePainter$State$Error;->result:Lcoil3/request/ErrorResult;

    .line 3182
    .line 3183
    iget-object v2, v1, Lcoil3/request/ErrorResult;->throwable:Ljava/lang/Throwable;

    .line 3184
    .line 3185
    instance-of v2, v2, Lcoil3/request/NullRequestDataException;

    .line 3186
    .line 3187
    if-eqz v2, :cond_51

    .line 3188
    .line 3189
    if-eqz v15, :cond_52

    .line 3190
    .line 3191
    new-instance v0, Lcoil3/compose/AsyncImagePainter$State$Error;

    .line 3192
    .line 3193
    invoke-direct {v0, v15, v1}, Lcoil3/compose/AsyncImagePainter$State$Error;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Lcoil3/request/ErrorResult;)V

    .line 3194
    .line 3195
    .line 3196
    goto :goto_26

    .line 3197
    :cond_51
    if-eqz v14, :cond_52

    .line 3198
    .line 3199
    new-instance v0, Lcoil3/compose/AsyncImagePainter$State$Error;

    .line 3200
    .line 3201
    invoke-direct {v0, v14, v1}, Lcoil3/compose/AsyncImagePainter$State$Error;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Lcoil3/request/ErrorResult;)V

    .line 3202
    .line 3203
    .line 3204
    :cond_52
    :goto_26
    return-object v0

    .line 3205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

    .line 3206
    .line 3207
    .line 3208
    .line 3209
    .line 3210
    .line 3211
    .line 3212
    .line 3213
    .line 3214
    .line 3215
    .line 3216
    .line 3217
    .line 3218
    .line 3219
    .line 3220
    .line 3221
    .line 3222
    .line 3223
    .line 3224
    .line 3225
    .line 3226
    .line 3227
    .line 3228
    .line 3229
    .line 3230
    .line 3231
    .line 3232
    .line 3233
    .line 3234
    .line 3235
    .line 3236
    .line 3237
    .line 3238
    .line 3239
    .line 3240
    .line 3241
    .line 3242
    .line 3243
    .line 3244
    .line 3245
    .line 3246
    .line 3247
    .line 3248
    .line 3249
    .line 3250
    .line 3251
    .line 3252
    .line 3253
    .line 3254
    .line 3255
    .line 3256
    .line 3257
    .line 3258
    .line 3259
    .line 3260
    .line 3261
    .line 3262
    .line 3263
    .line 3264
    .line 3265
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_15
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method
