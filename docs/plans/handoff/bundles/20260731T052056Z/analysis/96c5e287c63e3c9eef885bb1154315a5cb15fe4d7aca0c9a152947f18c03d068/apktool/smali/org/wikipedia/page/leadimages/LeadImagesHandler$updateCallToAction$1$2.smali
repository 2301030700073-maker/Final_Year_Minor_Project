.class public final Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $imageTitle:Ljava/lang/String;

.field public final synthetic $it:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public I$0:I

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p5, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->$imageTitle:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->$it:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->$it:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v3, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;

    .line 11
    .line 12
    move-object v4, v2

    .line 13
    check-cast v4, Lorg/wikipedia/dataclient/WikiSite;

    .line 14
    .line 15
    move-object v6, v1

    .line 16
    check-cast v6, Lorg/wikipedia/search/SearchResultsViewModel;

    .line 17
    .line 18
    const/4 v8, 0x1

    .line 19
    iget-object v5, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->$imageTitle:Ljava/lang/String;

    .line 20
    .line 21
    move-object v7, p2

    .line 22
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 23
    .line 24
    .line 25
    iput-object p1, v3, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$0:Ljava/lang/Object;

    .line 26
    .line 27
    return-object v3

    .line 28
    :pswitch_0
    move-object v7, p2

    .line 29
    new-instance v4, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;

    .line 30
    .line 31
    move-object v5, v2

    .line 32
    check-cast v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    .line 33
    .line 34
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    iget-object v6, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->$imageTitle:Ljava/lang/String;

    .line 38
    .line 39
    move-object v8, v7

    .line 40
    move-object v7, v1

    .line 41
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 42
    .line 43
    .line 44
    iput-object p1, v4, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    iget v0, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->$r8$classId:I

    .line 4
    .line 5
    iget-object v1, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->$it:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    iget-object v3, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->$imageTitle:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v4, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x1

    .line 16
    const/4 v9, 0x2

    .line 17
    const/4 v10, 0x0

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    iget-object v0, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 24
    .line 25
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 26
    .line 27
    iget v0, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->label:I

    .line 28
    .line 29
    const-string v12, ""

    .line 30
    .line 31
    const-string/jumbo v13, "x-search-id"

    .line 32
    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    if-eq v0, v8, :cond_1

    .line 37
    .line 38
    if-ne v0, v9, :cond_0

    .line 39
    .line 40
    iget-object v0, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$5:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    check-cast v0, Lretrofit2/Response;

    .line 45
    .line 46
    iget-object v0, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$3:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Ljava/util/List;

    .line 49
    .line 50
    iget-object v1, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$2:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Lorg/wikipedia/search/SearchResultsViewModel;

    .line 53
    .line 54
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 55
    .line 56
    iget-object v1, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$4:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Lorg/wikipedia/search/SearchResultsViewModel;

    .line 59
    .line 60
    iget-object v2, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$1:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v2, Lorg/wikipedia/dataclient/WikiSite;

    .line 63
    .line 64
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    move-object v8, v0

    .line 68
    move-object/from16 v0, p1

    .line 69
    .line 70
    goto/16 :goto_2

    .line 71
    .line 72
    :cond_0
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_5

    .line 76
    .line 77
    :cond_1
    iget v2, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->I$0:I

    .line 78
    .line 79
    iget-object v0, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$5:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Ljava/util/ArrayList;

    .line 82
    .line 83
    iget-object v1, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$3:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v1, Ljava/util/List;

    .line 86
    .line 87
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 88
    .line 89
    iget-object v1, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$2:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v1, Lorg/wikipedia/search/SearchResultsViewModel;

    .line 92
    .line 93
    iget-object v3, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$4:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v3, Ljava/lang/String;

    .line 96
    .line 97
    iget-object v4, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$1:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v4, Lorg/wikipedia/dataclient/WikiSite;

    .line 100
    .line 101
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .line 103
    .line 104
    move-object/from16 v6, p1

    .line 105
    .line 106
    :cond_2
    move-object v8, v0

    .line 107
    move-object v14, v1

    .line 108
    move-object v1, v3

    .line 109
    move-object v15, v4

    .line 110
    goto :goto_0

    .line 111
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    check-cast v4, Lorg/wikipedia/dataclient/WikiSite;

    .line 115
    .line 116
    check-cast v1, Lorg/wikipedia/search/SearchResultsViewModel;

    .line 117
    .line 118
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    sget-object v6, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 124
    .line 125
    invoke-static {v4}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    new-instance v14, Ljava/lang/Integer;

    .line 130
    .line 131
    invoke-direct {v14, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 132
    .line 133
    .line 134
    iput-object v10, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$0:Ljava/lang/Object;

    .line 135
    .line 136
    iput-object v4, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$1:Ljava/lang/Object;

    .line 137
    .line 138
    iput-object v3, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$4:Ljava/lang/Object;

    .line 139
    .line 140
    iput-object v1, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$2:Ljava/lang/Object;

    .line 141
    .line 142
    iput-object v10, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$3:Ljava/lang/Object;

    .line 143
    .line 144
    iput-object v0, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$5:Ljava/lang/Object;

    .line 145
    .line 146
    iput v2, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->I$0:I

    .line 147
    .line 148
    iput v8, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->label:I

    .line 149
    .line 150
    invoke-interface {v6, v3, v2, v14, v5}, Lorg/wikipedia/dataclient/Service;->prefixSearchResponse(Ljava/lang/String;ILjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    if-ne v6, v11, :cond_2

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :goto_0
    check-cast v6, Lretrofit2/Response;

    .line 158
    .line 159
    iget-object v0, v6, Lretrofit2/Response;->rawResponse:Lokhttp3/Response;

    .line 160
    .line 161
    iget-object v0, v0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 162
    .line 163
    invoke-virtual {v0, v13}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    if-nez v0, :cond_4

    .line 168
    .line 169
    move-object v0, v12

    .line 170
    :cond_4
    iput-object v0, v14, Lorg/wikipedia/search/SearchResultsViewModel;->lastXSearchIdPrefix:Ljava/lang/String;

    .line 171
    .line 172
    iget-object v0, v6, Lretrofit2/Response;->body:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 175
    .line 176
    invoke-virtual {v14}, Lorg/wikipedia/search/SearchResultsViewModel;->getInvokeSource()Lorg/wikipedia/Constants$InvokeSource;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    sget-object v4, Lorg/wikipedia/search/SearchResult$SearchResultType;->PREFIX:Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 181
    .line 182
    invoke-static {v0, v3, v15, v4}, Lorg/wikipedia/search/NoSearchResultsKt;->buildList(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/search/SearchResult$SearchResultType;)Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    .line 188
    .line 189
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-ge v0, v2, :cond_7

    .line 194
    .line 195
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 196
    .line 197
    invoke-static {v15}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    new-instance v3, Ljava/lang/Integer;

    .line 202
    .line 203
    invoke-direct {v3, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 204
    .line 205
    .line 206
    iput-object v10, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$0:Ljava/lang/Object;

    .line 207
    .line 208
    iput-object v15, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$1:Ljava/lang/Object;

    .line 209
    .line 210
    iput-object v14, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$4:Ljava/lang/Object;

    .line 211
    .line 212
    iput-object v10, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$2:Ljava/lang/Object;

    .line 213
    .line 214
    iput-object v8, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$3:Ljava/lang/Object;

    .line 215
    .line 216
    iput-object v10, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$5:Ljava/lang/Object;

    .line 217
    .line 218
    iput v7, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->I$0:I

    .line 219
    .line 220
    iput v9, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->label:I

    .line 221
    .line 222
    const/4 v4, 0x0

    .line 223
    invoke-interface/range {v0 .. v5}, Lorg/wikipedia/dataclient/Service;->fullTextSearchResponse(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    if-ne v0, v11, :cond_5

    .line 228
    .line 229
    :goto_1
    move-object v10, v11

    .line 230
    goto :goto_5

    .line 231
    :cond_5
    move-object v1, v14

    .line 232
    move-object v2, v15

    .line 233
    :goto_2
    check-cast v0, Lretrofit2/Response;

    .line 234
    .line 235
    iget-object v3, v0, Lretrofit2/Response;->rawResponse:Lokhttp3/Response;

    .line 236
    .line 237
    iget-object v3, v3, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 238
    .line 239
    invoke-virtual {v3, v13}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    if-nez v3, :cond_6

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_6
    move-object v12, v3

    .line 247
    :goto_3
    iput-object v12, v1, Lorg/wikipedia/search/SearchResultsViewModel;->lastXSearchIdFullText:Ljava/lang/String;

    .line 248
    .line 249
    iget-object v0, v0, Lretrofit2/Response;->body:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 252
    .line 253
    invoke-virtual {v1}, Lorg/wikipedia/search/SearchResultsViewModel;->getInvokeSource()Lorg/wikipedia/Constants$InvokeSource;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    sget-object v3, Lorg/wikipedia/search/SearchResult$SearchResultType;->FULL_TEXT:Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 258
    .line 259
    invoke-static {v0, v1, v2, v3}, Lorg/wikipedia/search/NoSearchResultsKt;->buildList(Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/search/SearchResult$SearchResultType;)Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    .line 265
    .line 266
    goto :goto_4

    .line 267
    :catchall_0
    move-exception v0

    .line 268
    new-instance v8, Lkotlin/Result$Failure;

    .line 269
    .line 270
    invoke-direct {v8, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 271
    .line 272
    .line 273
    :cond_7
    :goto_4
    new-instance v10, Lkotlin/Result;

    .line 274
    .line 275
    invoke-direct {v10, v8}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :goto_5
    return-object v10

    .line 279
    :pswitch_0
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 280
    .line 281
    check-cast v4, Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    .line 282
    .line 283
    iget-object v0, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$0:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 286
    .line 287
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 288
    .line 289
    iget v12, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->label:I

    .line 290
    .line 291
    sget-object v13, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 292
    .line 293
    const/4 v14, 0x4

    .line 294
    if-eqz v12, :cond_c

    .line 295
    .line 296
    if-eq v12, v8, :cond_b

    .line 297
    .line 298
    if-eq v12, v9, :cond_a

    .line 299
    .line 300
    if-eq v12, v2, :cond_9

    .line 301
    .line 302
    if-ne v12, v14, :cond_8

    .line 303
    .line 304
    iget-object v0, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$5:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;

    .line 307
    .line 308
    iget-object v2, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$4:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v2, Ljava/util/List;

    .line 311
    .line 312
    iget-object v5, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$3:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast v5, Ljava/util/Map;

    .line 315
    .line 316
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    move-object v15, v5

    .line 320
    move-object v5, v2

    .line 321
    move-object v2, v0

    .line 322
    move-object/from16 v0, p1

    .line 323
    .line 324
    goto/16 :goto_d

    .line 325
    .line 326
    :cond_8
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    goto/16 :goto_f

    .line 330
    .line 331
    :cond_9
    iget v0, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->I$0:I

    .line 332
    .line 333
    iget-object v2, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$4:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast v2, Lorg/wikipedia/commons/ImageTagsProvider;

    .line 336
    .line 337
    iget-object v6, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$3:Ljava/lang/Object;

    .line 338
    .line 339
    check-cast v6, Ljava/util/Map;

    .line 340
    .line 341
    iget-object v7, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$2:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast v7, Lkotlinx/coroutines/Deferred;

    .line 344
    .line 345
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    move-object v8, v2

    .line 349
    move-object v15, v6

    .line 350
    move-object/from16 v2, p1

    .line 351
    .line 352
    goto/16 :goto_9

    .line 353
    .line 354
    :cond_a
    iget v0, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->I$0:I

    .line 355
    .line 356
    iget-object v6, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$2:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v6, Lkotlinx/coroutines/Deferred;

    .line 359
    .line 360
    iget-object v7, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$1:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast v7, Lkotlinx/coroutines/DeferredCoroutine;

    .line 363
    .line 364
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    move-object/from16 v8, p1

    .line 368
    .line 369
    goto :goto_7

    .line 370
    :cond_b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    move-object/from16 v6, p1

    .line 374
    .line 375
    goto :goto_6

    .line 376
    :cond_c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    iput-object v3, v4, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->lastImageTitleForCallToAction:Ljava/lang/String;

    .line 380
    .line 381
    sget-object v6, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 382
    .line 383
    sget-object v6, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 384
    .line 385
    invoke-static {v6}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 386
    .line 387
    .line 388
    move-result-object v6

    .line 389
    iput-object v0, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$0:Ljava/lang/Object;

    .line 390
    .line 391
    iput v8, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->label:I

    .line 392
    .line 393
    invoke-interface {v6, v3, v5}, Lorg/wikipedia/dataclient/Service;->getProtectionWithUserInfo(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    if-ne v6, v11, :cond_d

    .line 398
    .line 399
    goto/16 :goto_c

    .line 400
    .line 401
    :cond_d
    :goto_6
    check-cast v6, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 402
    .line 403
    iget-object v6, v6, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 404
    .line 405
    if-eqz v6, :cond_e

    .line 406
    .line 407
    invoke-virtual {v6}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->isEditProtected()Z

    .line 408
    .line 409
    .line 410
    move-result v7

    .line 411
    :cond_e
    if-nez v7, :cond_1c

    .line 412
    .line 413
    new-instance v6, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 414
    .line 415
    const/4 v8, 0x6

    .line 416
    invoke-direct {v6, v3, v8, v10}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 417
    .line 418
    .line 419
    invoke-static {v0, v10, v6, v2}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 420
    .line 421
    .line 422
    move-result-object v6

    .line 423
    new-instance v8, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 424
    .line 425
    const/4 v12, 0x7

    .line 426
    invoke-direct {v8, v3, v12, v10}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 427
    .line 428
    .line 429
    invoke-static {v0, v10, v8, v2}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    iput-object v10, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$0:Ljava/lang/Object;

    .line 434
    .line 435
    iput-object v6, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$1:Ljava/lang/Object;

    .line 436
    .line 437
    iput-object v0, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$2:Ljava/lang/Object;

    .line 438
    .line 439
    iput v7, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->I$0:I

    .line 440
    .line 441
    iput v9, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->label:I

    .line 442
    .line 443
    invoke-virtual {v6, v5}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v8

    .line 447
    if-ne v8, v11, :cond_f

    .line 448
    .line 449
    goto/16 :goto_c

    .line 450
    .line 451
    :cond_f
    move-object/from16 v16, v6

    .line 452
    .line 453
    move-object v6, v0

    .line 454
    move v0, v7

    .line 455
    move-object/from16 v7, v16

    .line 456
    .line 457
    :goto_7
    check-cast v8, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    .line 458
    .line 459
    if-eqz v8, :cond_11

    .line 460
    .line 461
    invoke-virtual {v8}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->getLabels()Ljava/util/Map;

    .line 462
    .line 463
    .line 464
    move-result-object v8

    .line 465
    if-eqz v8, :cond_11

    .line 466
    .line 467
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 468
    .line 469
    .line 470
    move-result-object v8

    .line 471
    if-eqz v8, :cond_11

    .line 472
    .line 473
    check-cast v8, Ljava/lang/Iterable;

    .line 474
    .line 475
    const/16 v12, 0xa

    .line 476
    .line 477
    invoke-static {v8, v12}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 478
    .line 479
    .line 480
    move-result v12

    .line 481
    invoke-static {v12}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 482
    .line 483
    .line 484
    move-result v12

    .line 485
    const/16 v15, 0x10

    .line 486
    .line 487
    if-ge v12, v15, :cond_10

    .line 488
    .line 489
    move v12, v15

    .line 490
    :cond_10
    new-instance v15, Ljava/util/LinkedHashMap;

    .line 491
    .line 492
    invoke-direct {v15, v12}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 493
    .line 494
    .line 495
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 496
    .line 497
    .line 498
    move-result-object v8

    .line 499
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 500
    .line 501
    .line 502
    move-result v12

    .line 503
    if-eqz v12, :cond_12

    .line 504
    .line 505
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v12

    .line 509
    check-cast v12, Lorg/wikipedia/dataclient/wikidata/Entities$Label;

    .line 510
    .line 511
    iget-object v9, v12, Lorg/wikipedia/dataclient/wikidata/Entities$Label;->language:Ljava/lang/String;

    .line 512
    .line 513
    iget-object v12, v12, Lorg/wikipedia/dataclient/wikidata/Entities$Label;->value:Ljava/lang/String;

    .line 514
    .line 515
    invoke-interface {v15, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    const/4 v9, 0x2

    .line 519
    goto :goto_8

    .line 520
    :cond_11
    move-object v15, v10

    .line 521
    :cond_12
    if-nez v15, :cond_13

    .line 522
    .line 523
    move-object v15, v13

    .line 524
    :cond_13
    iput-object v10, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$0:Ljava/lang/Object;

    .line 525
    .line 526
    iput-object v10, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$1:Ljava/lang/Object;

    .line 527
    .line 528
    iput-object v6, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$2:Ljava/lang/Object;

    .line 529
    .line 530
    iput-object v15, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$3:Ljava/lang/Object;

    .line 531
    .line 532
    sget-object v8, Lorg/wikipedia/commons/ImageTagsProvider;->INSTANCE:Lorg/wikipedia/commons/ImageTagsProvider;

    .line 533
    .line 534
    iput-object v8, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$4:Ljava/lang/Object;

    .line 535
    .line 536
    iput v0, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->I$0:I

    .line 537
    .line 538
    iput v2, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->label:I

    .line 539
    .line 540
    invoke-interface {v7, v5}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    if-ne v2, v11, :cond_14

    .line 545
    .line 546
    goto :goto_c

    .line 547
    :cond_14
    move-object v7, v6

    .line 548
    :goto_9
    check-cast v2, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    .line 549
    .line 550
    if-eqz v2, :cond_15

    .line 551
    .line 552
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->getStatements()Ljava/util/Map;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    goto :goto_a

    .line 557
    :cond_15
    move-object v2, v10

    .line 558
    :goto_a
    if-nez v2, :cond_16

    .line 559
    .line 560
    goto :goto_b

    .line 561
    :cond_16
    move-object v13, v2

    .line 562
    :goto_b
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    invoke-static {v13}, Lorg/wikipedia/commons/ImageTagsProvider;->getDepictsClaims(Ljava/util/Map;)Ljava/util/List;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    iput-object v10, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$0:Ljava/lang/Object;

    .line 570
    .line 571
    iput-object v10, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$1:Ljava/lang/Object;

    .line 572
    .line 573
    iput-object v10, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$2:Ljava/lang/Object;

    .line 574
    .line 575
    iput-object v15, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$3:Ljava/lang/Object;

    .line 576
    .line 577
    iput-object v2, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$4:Ljava/lang/Object;

    .line 578
    .line 579
    iput-object v4, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->L$5:Ljava/lang/Object;

    .line 580
    .line 581
    iput v0, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->I$0:I

    .line 582
    .line 583
    iput v14, v5, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;->label:I

    .line 584
    .line 585
    invoke-interface {v7, v5}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    if-ne v0, v11, :cond_17

    .line 590
    .line 591
    :goto_c
    move-object v10, v11

    .line 592
    goto/16 :goto_f

    .line 593
    .line 594
    :cond_17
    move-object v5, v2

    .line 595
    move-object v2, v4

    .line 596
    :goto_d
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 597
    .line 598
    iput-object v0, v2, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->imagePage:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 599
    .line 600
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    .line 601
    .line 602
    new-instance v2, Lorg/wikipedia/dataclient/WikiSite;

    .line 603
    .line 604
    iget-object v6, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 605
    .line 606
    iget-object v6, v6, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 607
    .line 608
    const-string v7, "https://commons.wikimedia.org/"

    .line 609
    .line 610
    invoke-direct {v2, v7, v6}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    invoke-direct {v0, v3, v2, v10}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    iput-object v0, v4, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->captionSourcePageTitle:Lorg/wikipedia/page/PageTitle;

    .line 617
    .line 618
    iget-object v2, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 619
    .line 620
    iget-object v2, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 621
    .line 622
    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v2

    .line 626
    check-cast v2, Ljava/lang/String;

    .line 627
    .line 628
    iput-object v2, v0, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 629
    .line 630
    iget-object v0, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 631
    .line 632
    iget-object v0, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 633
    .line 634
    invoke-interface {v15, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    if-nez v0, :cond_18

    .line 639
    .line 640
    sget-object v0, Lorg/wikipedia/Constants$ImageEditType;->ADD_CAPTION:Lorg/wikipedia/Constants$ImageEditType;

    .line 641
    .line 642
    iput-object v0, v4, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    .line 643
    .line 644
    :cond_18
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 645
    .line 646
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    check-cast v0, Ljava/util/ArrayList;

    .line 651
    .line 652
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 653
    .line 654
    .line 655
    move-result v0

    .line 656
    const/4 v1, 0x2

    .line 657
    if-lt v0, v1, :cond_1b

    .line 658
    .line 659
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    check-cast v0, Ljava/util/ArrayList;

    .line 664
    .line 665
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    if-eqz v1, :cond_1a

    .line 674
    .line 675
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    move-object v2, v1

    .line 680
    check-cast v2, Ljava/lang/String;

    .line 681
    .line 682
    invoke-interface {v15, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    move-result v2

    .line 686
    if-nez v2, :cond_19

    .line 687
    .line 688
    goto :goto_e

    .line 689
    :cond_1a
    move-object v1, v10

    .line 690
    :goto_e
    check-cast v1, Ljava/lang/String;

    .line 691
    .line 692
    if-eqz v1, :cond_1b

    .line 693
    .line 694
    sget-object v0, Lorg/wikipedia/Constants$ImageEditType;->ADD_CAPTION_TRANSLATION:Lorg/wikipedia/Constants$ImageEditType;

    .line 695
    .line 696
    iput-object v0, v4, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    .line 697
    .line 698
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    .line 699
    .line 700
    new-instance v2, Lorg/wikipedia/dataclient/WikiSite;

    .line 701
    .line 702
    invoke-direct {v2, v7, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    invoke-direct {v0, v3, v2, v10}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    iput-object v0, v4, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->captionTargetPageTitle:Lorg/wikipedia/page/PageTitle;

    .line 709
    .line 710
    :cond_1b
    iget-object v0, v4, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    .line 711
    .line 712
    sget-object v1, Lorg/wikipedia/Constants$ImageEditType;->ADD_CAPTION:Lorg/wikipedia/Constants$ImageEditType;

    .line 713
    .line 714
    if-eq v0, v1, :cond_1c

    .line 715
    .line 716
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 717
    .line 718
    .line 719
    move-result v0

    .line 720
    if-eqz v0, :cond_1c

    .line 721
    .line 722
    sget-object v0, Lorg/wikipedia/Constants$ImageEditType;->ADD_TAGS:Lorg/wikipedia/Constants$ImageEditType;

    .line 723
    .line 724
    iput-object v0, v4, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    .line 725
    .line 726
    :cond_1c
    invoke-virtual {v4}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->finalizeCallToAction()V

    .line 727
    .line 728
    .line 729
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 730
    .line 731
    :goto_f
    return-object v10

    .line 732
    nop

    .line 733
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
