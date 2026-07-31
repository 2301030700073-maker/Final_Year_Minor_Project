.class public final synthetic Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/search/SearchFragment;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/search/SearchFragment;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/search/SearchFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda2;->f$2:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda2;->f$3:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/search/SearchFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v1, v0, Lorg/wikipedia/search/SearchFragment;->searchResultsFragment:Lorg/wikipedia/search/SearchResultsFragment;

    .line 12
    .line 13
    const-string v2, "searchResultsFragment"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_9

    .line 17
    .line 18
    iget-object v1, v1, Lorg/wikipedia/search/SearchResultsFragment;->composeView:Landroidx/compose/ui/platform/ComposeView;

    .line 19
    .line 20
    if-eqz v1, :cond_8

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_8

    .line 27
    .line 28
    iget-object v0, v0, Lorg/wikipedia/search/SearchFragment;->searchResultsFragment:Lorg/wikipedia/search/SearchResultsFragment;

    .line 29
    .line 30
    if-eqz v0, :cond_7

    .line 31
    .line 32
    iget-object v1, p0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 33
    .line 34
    iget-boolean v2, p0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda2;->f$2:Z

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResultsFragment;->getViewModel()Lorg/wikipedia/search/SearchResultsViewModel;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-object v4, v4, Lorg/wikipedia/search/SearchResultsViewModel;->searchTerm:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 43
    .line 44
    iget-object v4, v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 45
    .line 46
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResultsFragment;->getViewModel()Lorg/wikipedia/search/SearchResultsViewModel;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget-object v4, v4, Lorg/wikipedia/search/SearchResultsViewModel;->languageCode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 61
    .line 62
    iget-object v4, v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 63
    .line 64
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResultsFragment;->getSearchLanguageCode$1()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-static {v4}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    if-eqz v4, :cond_2

    .line 89
    .line 90
    sget-object v5, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 91
    .line 92
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResultsFragment;->getSearchLanguageCode$1()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {v6}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v5}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    new-instance v6, Lorg/wikimedia/testkitchen/context/MediawikiData;

    .line 108
    .line 109
    invoke-direct {v6, v5}, Lorg/wikimedia/testkitchen/context/MediawikiData;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iput-object v6, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 113
    .line 114
    :cond_2
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResultsFragment;->getViewModel()Lorg/wikipedia/search/SearchResultsViewModel;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResultsFragment;->getSearchLanguageCode$1()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    iget-object v4, v4, Lorg/wikipedia/search/SearchResultsViewModel;->_languageCode:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v3, v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResultsFragment;->getViewModel()Lorg/wikipedia/search/SearchResultsViewModel;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    if-eqz v1, :cond_3

    .line 138
    .line 139
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-eqz v5, :cond_4

    .line 144
    .line 145
    :cond_3
    const-string v1, ""

    .line 146
    .line 147
    :cond_4
    iget-object v4, v4, Lorg/wikipedia/search/SearchResultsViewModel;->_searchTerm:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 148
    .line 149
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v3, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    iget-boolean p0, p0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda2;->f$3:Z

    .line 156
    .line 157
    if-nez p0, :cond_5

    .line 158
    .line 159
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResultsFragment;->getShowHybridSearch()Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-eqz p0, :cond_5

    .line 164
    .line 165
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResultsFragment;->getViewModel()Lorg/wikipedia/search/SearchResultsViewModel;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p0}, Lorg/wikipedia/search/SearchResultsViewModel;->isHybridSearchExperimentOn()Z

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    if-eqz p0, :cond_5

    .line 174
    .line 175
    const/4 p0, 0x1

    .line 176
    goto :goto_0

    .line 177
    :cond_5
    const/4 p0, 0x0

    .line 178
    :goto_0
    invoke-virtual {v0, p0}, Lorg/wikipedia/search/SearchResultsFragment;->setShowHybridSearch(Z)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResultsFragment;->getShowHybridSearch()Z

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    if-eqz p0, :cond_6

    .line 186
    .line 187
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResultsFragment;->getViewModel()Lorg/wikipedia/search/SearchResultsViewModel;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsViewModel;->_hybridSearchResultState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 192
    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    sget-object v1, Lorg/wikipedia/util/UiState$Loading;->INSTANCE:Lorg/wikipedia/util/UiState$Loading;

    .line 197
    .line 198
    invoke-virtual {p0, v3, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResultsFragment;->getViewModel()Lorg/wikipedia/search/SearchResultsViewModel;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    new-instance v1, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 210
    .line 211
    invoke-direct {v1, p0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/search/SearchResultsViewModel;)V

    .line 212
    .line 213
    .line 214
    new-instance v2, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;

    .line 215
    .line 216
    invoke-direct {v2, v3, p0}, Lorg/wikipedia/search/SearchResultsViewModel$loadHybridSearchResults$2;-><init>(Lkotlin/coroutines/Continuation;Lorg/wikipedia/search/SearchResultsViewModel;)V

    .line 217
    .line 218
    .line 219
    const/4 p0, 0x2

    .line 220
    invoke-static {v0, v1, v3, v2, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :cond_6
    if-eqz v2, :cond_8

    .line 225
    .line 226
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResultsFragment;->getViewModel()Lorg/wikipedia/search/SearchResultsViewModel;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    invoke-virtual {p0}, Lorg/wikipedia/search/SearchResultsViewModel;->refreshSearchResults()V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw v3

    .line 238
    :cond_8
    :goto_1
    return-void

    .line 239
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v3
.end method
