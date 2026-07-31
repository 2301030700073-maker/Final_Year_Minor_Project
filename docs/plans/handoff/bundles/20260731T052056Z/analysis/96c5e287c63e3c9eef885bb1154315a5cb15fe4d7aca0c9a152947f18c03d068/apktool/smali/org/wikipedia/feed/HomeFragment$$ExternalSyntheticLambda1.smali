.class public final synthetic Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/feed/HomeFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/HomeFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/feed/HomeFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    check-cast p2, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    and-int/lit8 v0, p2, 0x3

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    if-eq v0, v2, :cond_0

    .line 22
    .line 23
    move v0, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v3

    .line 26
    :goto_0
    and-int/2addr p2, v4

    .line 27
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_3

    .line 32
    .line 33
    iget-object v5, p0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/feed/HomeFragment;

    .line 34
    .line 35
    invoke-virtual {v5}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel;->selectedTab:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 40
    .line 41
    invoke-static {p0, p1}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-virtual {v5}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel;->wikiSite:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 50
    .line 51
    invoke-static {p0, p1}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v5}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel;->tabsState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 60
    .line 61
    invoke-static {p0, p1}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    invoke-virtual {v5}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel;->unreadCount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 70
    .line 71
    invoke-static {p0, p1}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    invoke-virtual {v5}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel;->forYouState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 80
    .line 81
    invoke-static {p0, p1}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    invoke-virtual {v5}, Lorg/wikipedia/feed/HomeFragment;->getViewModel()Lorg/wikipedia/feed/HomeViewModel;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel;->communityState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 90
    .line 91
    invoke-static {p0, p1}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 100
    .line 101
    if-ne p0, p2, :cond_1

    .line 102
    .line 103
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 104
    .line 105
    new-array p0, v3, [Ljava/lang/Object;

    .line 106
    .line 107
    sget-object p2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 108
    .line 109
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    const v0, 0x7f12060e

    .line 118
    .line 119
    .line 120
    invoke-static {p0, v3, p2, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-static {p2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p2, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-interface {p2, p0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {p0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_1
    move-object v12, p0

    .line 152
    check-cast v12, Landroidx/compose/runtime/MutableState;

    .line 153
    .line 154
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    check-cast p0, Lorg/wikipedia/feed/HomeTab;

    .line 159
    .line 160
    sget-object p2, Lorg/wikipedia/feed/HomeTab;->FOR_YOU:Lorg/wikipedia/feed/HomeTab;

    .line 161
    .line 162
    if-ne p0, p2, :cond_2

    .line 163
    .line 164
    sget-object p0, Lorg/wikipedia/theme/Theme;->BLACK:Lorg/wikipedia/theme/Theme;

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_2
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 168
    .line 169
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    iget-object p0, p0, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 174
    .line 175
    :goto_1
    new-instance v4, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda5;

    .line 176
    .line 177
    invoke-direct/range {v4 .. v12}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/feed/HomeFragment;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 178
    .line 179
    .line 180
    const p2, 0x3524c003

    .line 181
    .line 182
    .line 183
    invoke-static {p2, v4, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    const/16 v0, 0x30

    .line 188
    .line 189
    invoke-static {p0, p2, p1, v0, v3}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 194
    .line 195
    .line 196
    :goto_2
    return-object v1

    .line 197
    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    .line 198
    .line 199
    check-cast p2, Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    iget-object p0, p0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/feed/HomeFragment;

    .line 205
    .line 206
    iget-object v2, p0, Lorg/wikipedia/feed/HomeFragment;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 207
    .line 208
    new-instance p0, Lkotlin/collections/builders/MapBuilder;

    .line 209
    .line 210
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    if-eqz p1, :cond_4

    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    const-string v0, "score"

    .line 220
    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p0, v0, p1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    :cond_4
    const-string p1, "text"

    .line 229
    .line 230
    invoke-virtual {p0, p1, p2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    const/16 v9, 0x74

    .line 238
    .line 239
    const-string v3, "click"

    .line 240
    .line 241
    const-string v4, "home_feed_feedback"

    .line 242
    .line 243
    const/4 v5, 0x0

    .line 244
    const-string v6, "feedback_submit"

    .line 245
    .line 246
    const/4 v7, 0x0

    .line 247
    invoke-static/range {v2 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 248
    .line 249
    .line 250
    return-object v1

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
