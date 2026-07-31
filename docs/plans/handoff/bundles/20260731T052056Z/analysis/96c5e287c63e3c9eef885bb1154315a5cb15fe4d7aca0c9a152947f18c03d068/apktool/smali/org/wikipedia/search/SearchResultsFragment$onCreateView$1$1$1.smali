.class public final Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Lorg/wikipedia/search/SearchResultsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/search/SearchResultsFragment;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;-><init>(Lorg/wikipedia/search/SearchResultsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;-><init>(Lorg/wikipedia/search/SearchResultsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_1
    new-instance v0, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;-><init>(Lorg/wikipedia/search/SearchResultsFragment;Lkotlin/coroutines/Continuation;I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, v0, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lorg/wikipedia/util/UiState;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    check-cast p1, Ljava/util/List;

    .line 23
    .line 24
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "query"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    iget-object v4, p0, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;->this$0:Lorg/wikipedia/search/SearchResultsFragment;

    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsFragment$onCreateView$1$1$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lorg/wikipedia/util/UiState;

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    instance-of p0, p0, Lorg/wikipedia/util/UiState$Success;

    .line 21
    .line 22
    if-eqz p0, :cond_3

    .line 23
    .line 24
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    invoke-virtual {v4}, Lorg/wikipedia/search/SearchResultsFragment;->getViewModel()Lorg/wikipedia/search/SearchResultsViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0, v2}, Lorg/wikipedia/search/SearchResultsViewModel;->getHybridEventActionContext(Lorg/wikipedia/search/SearchResult;)Lkotlin/collections/builders/MapBuilder;

    .line 39
    .line 40
    .line 41
    move-result-object v11

    .line 42
    const/16 v12, 0x7e

    .line 43
    .line 44
    const-string v6, "show_hybrid_result"

    .line 45
    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v8, 0x0

    .line 48
    const/4 v9, 0x0

    .line 49
    const/4 v10, 0x0

    .line 50
    invoke-static/range {v5 .. v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {v4}, Lorg/wikipedia/search/SearchResultsFragment;->getViewModel()Lorg/wikipedia/search/SearchResultsViewModel;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsViewModel;->languageCode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 58
    .line 59
    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 60
    .line 61
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string p1, "el"

    .line 66
    .line 67
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_3

    .line 72
    .line 73
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 74
    .line 75
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v4}, Lorg/wikipedia/search/SearchResultsFragment;->getViewModel()Lorg/wikipedia/search/SearchResultsViewModel;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v4, v0, Lorg/wikipedia/search/SearchResultsViewModel;->lastXSearchIdSemantic:Ljava/lang/String;

    .line 84
    .line 85
    new-instance v5, Lkotlin/Pair;

    .line 86
    .line 87
    const-string v6, "search_id_sem"

    .line 88
    .line 89
    invoke-direct {v5, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object v4, v0, Lorg/wikipedia/search/SearchResultsViewModel;->lexicalResultsTitlesForEvent:Ljava/lang/String;

    .line 93
    .line 94
    new-instance v6, Lkotlin/Pair;

    .line 95
    .line 96
    const-string v7, "lexical"

    .line 97
    .line 98
    invoke-direct {v6, v7, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-object v4, v0, Lorg/wikipedia/search/SearchResultsViewModel;->semanticResultsTitlesForEvent:Ljava/lang/String;

    .line 102
    .line 103
    new-instance v7, Lkotlin/Pair;

    .line 104
    .line 105
    const-string v8, "semantic"

    .line 106
    .line 107
    invoke-direct {v7, v8, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, v0, Lorg/wikipedia/search/SearchResultsViewModel;->searchTerm:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 111
    .line 112
    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 113
    .line 114
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Ljava/lang/String;

    .line 119
    .line 120
    const-string v4, ""

    .line 121
    .line 122
    if-nez v0, :cond_1

    .line 123
    .line 124
    move-object v0, v4

    .line 125
    :cond_1
    new-instance v8, Lkotlin/Pair;

    .line 126
    .line 127
    invoke-direct {v8, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    const/4 v0, 0x4

    .line 131
    new-array v0, v0, [Lkotlin/Pair;

    .line 132
    .line 133
    const/4 v1, 0x0

    .line 134
    aput-object v5, v0, v1

    .line 135
    .line 136
    const/4 v1, 0x1

    .line 137
    aput-object v6, v0, v1

    .line 138
    .line 139
    const/4 v5, 0x2

    .line 140
    aput-object v7, v0, v5

    .line 141
    .line 142
    const/4 v5, 0x3

    .line 143
    aput-object v8, v0, v5

    .line 144
    .line 145
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 153
    .line 154
    invoke-static {p1, v2}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->getReadableScreenName(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    :try_start_0
    sget-object p1, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    new-instance v5, Lkotlinx/serialization/internal/HashMapSerializer;

    .line 164
    .line 165
    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 166
    .line 167
    invoke-direct {v5, v6, v6, v1}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v5, v0}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    move-object p1, v0

    .line 177
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 178
    .line 179
    .line 180
    :goto_0
    if-nez v2, :cond_2

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_2
    move-object v4, v2

    .line 184
    :goto_1
    new-instance p1, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;

    .line 185
    .line 186
    invoke-direct {p1, p0, v4}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-static {p1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 190
    .line 191
    .line 192
    :cond_3
    return-object v3

    .line 193
    :pswitch_0
    check-cast p0, Ljava/util/List;

    .line 194
    .line 195
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    if-eqz p0, :cond_4

    .line 199
    .line 200
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    if-eqz v5, :cond_4

    .line 209
    .line 210
    invoke-virtual {v4}, Lorg/wikipedia/search/SearchResultsFragment;->getViewModel()Lorg/wikipedia/search/SearchResultsViewModel;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-virtual {p0, v2}, Lorg/wikipedia/search/SearchResultsViewModel;->getStandardEventActionContext(Lorg/wikipedia/search/SearchResult;)Lkotlin/collections/builders/MapBuilder;

    .line 215
    .line 216
    .line 217
    move-result-object v11

    .line 218
    const/16 v12, 0x7e

    .line 219
    .line 220
    const-string v6, "show_search_result"

    .line 221
    .line 222
    const/4 v7, 0x0

    .line 223
    const/4 v8, 0x0

    .line 224
    const/4 v9, 0x0

    .line 225
    const/4 v10, 0x0

    .line 226
    invoke-static/range {v5 .. v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 227
    .line 228
    .line 229
    :cond_4
    return-object v3

    .line 230
    :pswitch_1
    check-cast p0, Ljava/lang/String;

    .line 231
    .line 232
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    if-eqz p0, :cond_6

    .line 236
    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-nez p1, :cond_5

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_5
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-static {p1}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    if-eqz v4, :cond_6

    .line 253
    .line 254
    invoke-static {v1, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    const/16 v11, 0x7e

    .line 262
    .line 263
    const-string v5, "search_init"

    .line 264
    .line 265
    const/4 v6, 0x0

    .line 266
    const/4 v7, 0x0

    .line 267
    const/4 v8, 0x0

    .line 268
    const/4 v9, 0x0

    .line 269
    invoke-static/range {v4 .. v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 270
    .line 271
    .line 272
    :cond_6
    :goto_2
    return-object v3

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
