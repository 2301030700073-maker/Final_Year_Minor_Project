.class public final Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _siteInfoList:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public fetchJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

.field public final nonSuggestedLanguageCodes:Ljava/util/ArrayList;

.field public final suggestedLanguageCodes:Ljava/util/ArrayList;

.field public final uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 5
    .line 6
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getRemainingSuggestedLanguageCodes()Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->suggestedLanguageCodes:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, v0, Lorg/wikipedia/language/AppLanguageState;->appLanguageLookUpTable:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Lkotlin/SynchronizedLazyImpl;

    .line 33
    .line 34
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/util/List;

    .line 39
    .line 40
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v0, v0, Lorg/wikipedia/language/AppLanguageState;->_mruLanguageCodes:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v2, 0x0

    .line 51
    move v3, v2

    .line 52
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_0

    .line 69
    .line 70
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 80
    .line 81
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isShowDeveloperSettingsEnabled()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_6

    .line 86
    .line 87
    const-string v0, "org.wikipedia"

    .line 88
    .line 89
    const-string v3, "beta"

    .line 90
    .line 91
    invoke-static {v0, v3, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    const/4 v4, 0x1

    .line 96
    if-eqz v3, :cond_2

    .line 97
    .line 98
    move v2, v4

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    const-string v3, "alpha"

    .line 101
    .line 102
    invoke-static {v0, v3, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_3

    .line 107
    .line 108
    const/4 v2, 0x2

    .line 109
    goto :goto_1

    .line 110
    :cond_3
    const-string v3, "dev"

    .line 111
    .line 112
    invoke-static {v0, v3, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_4

    .line 117
    .line 118
    const/4 v2, 0x3

    .line 119
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 120
    .line 121
    if-eq v2, v4, :cond_5

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_5
    new-instance v0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;

    .line 125
    .line 126
    const/16 v2, 0x19

    .line 127
    .line 128
    invoke-direct {v0, v2}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 129
    .line 130
    .line 131
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    :goto_2
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isShowDeveloperSettingsEnabled()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_7

    .line 139
    .line 140
    const-string/jumbo v0, "zh-hant"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    const-string/jumbo v0, "zh-hans"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_a

    .line 166
    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    move-object v3, v2

    .line 172
    check-cast v3, Ljava/lang/String;

    .line 173
    .line 174
    iget-object v4, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->suggestedLanguageCodes:Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-nez v4, :cond_8

    .line 181
    .line 182
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 183
    .line 184
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    check-cast v4, Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_9

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_a
    iput-object v0, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->nonSuggestedLanguageCodes:Ljava/util/ArrayList;

    .line 202
    .line 203
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 204
    .line 205
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    iput-object v0, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->_siteInfoList:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 210
    .line 211
    sget-object v0, Lorg/wikipedia/util/UiState$Loading;->INSTANCE:Lorg/wikipedia/util/UiState$Loading;

    .line 212
    .line 213
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iput-object v0, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 218
    .line 219
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 220
    .line 221
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 222
    .line 223
    .line 224
    iput-object v1, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 225
    .line 226
    new-instance v0, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 227
    .line 228
    invoke-direct {v0, p0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;)V

    .line 229
    .line 230
    .line 231
    iput-object v0, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 232
    .line 233
    invoke-virtual {p0}, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->fetchAllData()V

    .line 234
    .line 235
    .line 236
    return-void
.end method


# virtual methods
.method public final addFilteredLanguageListItems(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x1

    .line 10
    move v4, v3

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    if-eqz v5, :cond_b

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    move-object v8, v5

    .line 22
    check-cast v8, Ljava/lang/String;

    .line 23
    .line 24
    sget-object v5, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 25
    .line 26
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v5}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v5, v8}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    const-string v6, ""

    .line 39
    .line 40
    if-nez v5, :cond_1

    .line 41
    .line 42
    move-object v9, v6

    .line 43
    :goto_1
    move-object/from16 v5, p0

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    move-object v9, v5

    .line 47
    goto :goto_1

    .line 48
    :goto_2
    iget-object v7, v5, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->_siteInfoList:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 49
    .line 50
    invoke-virtual {v7}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    check-cast v7, Ljava/lang/Iterable;

    .line 55
    .line 56
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    const/4 v11, 0x0

    .line 65
    if-eqz v10, :cond_3

    .line 66
    .line 67
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    move-object v12, v10

    .line 72
    check-cast v12, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;

    .line 73
    .line 74
    iget-object v12, v12, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;->code:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    if-eqz v12, :cond_2

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    move-object v10, v11

    .line 84
    :goto_3
    check-cast v10, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;

    .line 85
    .line 86
    if-eqz v10, :cond_4

    .line 87
    .line 88
    iget-object v11, v10, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;->localname:Ljava/lang/String;

    .line 89
    .line 90
    :cond_4
    if-nez v11, :cond_5

    .line 91
    .line 92
    move-object v11, v6

    .line 93
    :cond_5
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-nez v7, :cond_7

    .line 98
    .line 99
    sget-object v7, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 100
    .line 101
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {v7}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v7, v8}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    if-nez v7, :cond_6

    .line 114
    .line 115
    move-object v10, v6

    .line 116
    goto :goto_4

    .line 117
    :cond_6
    move-object v10, v7

    .line 118
    goto :goto_4

    .line 119
    :cond_7
    move-object v10, v11

    .line 120
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-nez v6, :cond_8

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_8
    invoke-static {v8, v0, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-nez v6, :cond_9

    .line 132
    .line 133
    invoke-static {v9}, Lorg/apache/commons/lang3/StringUtils;->stripAccents(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-static {v6, v0, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-nez v6, :cond_9

    .line 145
    .line 146
    invoke-static {v10}, Lorg/apache/commons/lang3/StringUtils;->stripAccents(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-static {v6, v0, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-eqz v6, :cond_0

    .line 158
    .line 159
    :cond_9
    :goto_5
    if-eqz v4, :cond_a

    .line 160
    .line 161
    new-instance v11, Lorg/wikipedia/language/addlanguages/LanguageListItem;

    .line 162
    .line 163
    const/4 v15, 0x0

    .line 164
    const/4 v12, 0x6

    .line 165
    const-string v13, ""

    .line 166
    .line 167
    const/4 v14, 0x0

    .line 168
    move-object/from16 v16, p3

    .line 169
    .line 170
    invoke-direct/range {v11 .. v16}, Lorg/wikipedia/language/addlanguages/LanguageListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    const/4 v4, 0x0

    .line 177
    :cond_a
    new-instance v6, Lorg/wikipedia/language/addlanguages/LanguageListItem;

    .line 178
    .line 179
    const/4 v11, 0x0

    .line 180
    const/16 v7, 0x8

    .line 181
    .line 182
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/language/addlanguages/LanguageListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_b
    return-void
.end method

.method public final fetchAllData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->fetchJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v2, Lorg/wikipedia/util/UiState$Loading;->INSTANCE:Lorg/wikipedia/util/UiState$Loading;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 24
    .line 25
    const/16 v3, 0x12

    .line 26
    .line 27
    invoke-direct {v2, v3, p0, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    iget-object v4, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 32
    .line 33
    invoke-static {v0, v4, v1, v2, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;->fetchJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 38
    .line 39
    return-void
.end method
