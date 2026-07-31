.class public final Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public L$3:Ljava/lang/Object;

.field public L$4:Lorg/wikipedia/gallery/ImageInfo;

.field public L$6:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

.field public Z$0:Z

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/commons/ImagePreviewViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/commons/ImagePreviewViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->this$0:Lorg/wikipedia/commons/ImagePreviewViewModel;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->this$0:Lorg/wikipedia/commons/ImagePreviewViewModel;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;-><init>(Lorg/wikipedia/commons/ImagePreviewViewModel;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->this$0:Lorg/wikipedia/commons/ImagePreviewViewModel;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/commons/ImagePreviewViewModel;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$0:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 8
    .line 9
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 10
    .line 11
    iget v4, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->label:I

    .line 12
    .line 13
    const/4 v5, 0x3

    .line 14
    const/4 v6, 0x2

    .line 15
    const/4 v7, 0x1

    .line 16
    const/4 v8, 0x0

    .line 17
    if-eqz v4, :cond_3

    .line 18
    .line 19
    if-eq v4, v7, :cond_2

    .line 20
    .line 21
    if-eq v4, v6, :cond_1

    .line 22
    .line 23
    if-ne v4, v5, :cond_0

    .line 24
    .line 25
    iget-boolean v0, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->Z$0:Z

    .line 26
    .line 27
    iget-object v1, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$6:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 28
    .line 29
    iget-object v2, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$4:Lorg/wikipedia/gallery/ImageInfo;

    .line 30
    .line 31
    iget-object p0, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$3:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lorg/wikipedia/commons/ImagePreviewViewModel;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    move v3, v0

    .line 39
    move-object v6, v1

    .line 40
    goto/16 :goto_7

    .line 41
    .line 42
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v8

    .line 48
    :cond_1
    iget-object v4, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$3:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 51
    .line 52
    iget-object v7, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 53
    .line 54
    iget-object v9, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 55
    .line 56
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_2
    iget-object v4, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$3:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 64
    .line 65
    iget-object v9, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 66
    .line 67
    iget-object v10, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 68
    .line 69
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 82
    .line 83
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 84
    .line 85
    .line 86
    sget-object v9, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 87
    .line 88
    sget-object v9, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 89
    .line 90
    invoke-static {v9}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    iget-object v10, v1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->title:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v11, v1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->lang:Ljava/lang/String;

    .line 97
    .line 98
    iput-object v2, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$0:Ljava/lang/Object;

    .line 99
    .line 100
    iput-object p1, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 101
    .line 102
    iput-object v4, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 103
    .line 104
    iput-object v4, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$3:Ljava/lang/Object;

    .line 105
    .line 106
    iput v7, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->label:I

    .line 107
    .line 108
    invoke-interface {v9, v10, v11, p0}, Lorg/wikipedia/dataclient/Service;->getImageInfo(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    if-ne v9, v3, :cond_4

    .line 113
    .line 114
    goto/16 :goto_6

    .line 115
    .line 116
    :cond_4
    move-object v10, p1

    .line 117
    move-object p1, v9

    .line 118
    move-object v9, v4

    .line 119
    :goto_0
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 120
    .line 121
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 122
    .line 123
    if-eqz p1, :cond_5

    .line 124
    .line 125
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    goto :goto_1

    .line 130
    :cond_5
    move-object p1, v8

    .line 131
    :goto_1
    iput-object p1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 132
    .line 133
    iget-object p1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 136
    .line 137
    if-eqz p1, :cond_6

    .line 138
    .line 139
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    goto :goto_2

    .line 144
    :cond_6
    move-object p1, v8

    .line 145
    :goto_2
    if-nez p1, :cond_9

    .line 146
    .line 147
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 148
    .line 149
    iget-object p1, v1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 150
    .line 151
    iget-object p1, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 152
    .line 153
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iget-object v4, v1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->title:Ljava/lang/String;

    .line 158
    .line 159
    iget-object v7, v1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->lang:Ljava/lang/String;

    .line 160
    .line 161
    iput-object v2, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$0:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v10, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 164
    .line 165
    iput-object v9, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 166
    .line 167
    iput-object v9, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$3:Ljava/lang/Object;

    .line 168
    .line 169
    iput v6, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->label:I

    .line 170
    .line 171
    invoke-interface {p1, v4, v7, p0}, Lorg/wikipedia/dataclient/Service;->getImageInfo(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-ne p1, v3, :cond_7

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_7
    move-object v4, v9

    .line 179
    move-object v7, v4

    .line 180
    move-object v9, v10

    .line 181
    :goto_3
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 182
    .line 183
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 184
    .line 185
    if-eqz p1, :cond_8

    .line 186
    .line 187
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    goto :goto_4

    .line 192
    :cond_8
    move-object p1, v8

    .line 193
    :goto_4
    iput-object p1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 194
    .line 195
    move-object v10, v9

    .line 196
    move-object v9, v7

    .line 197
    goto :goto_5

    .line 198
    :cond_9
    iget-object p1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 201
    .line 202
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imagerepository:Ljava/lang/String;

    .line 203
    .line 204
    if-nez p1, :cond_a

    .line 205
    .line 206
    const-string p1, ""

    .line 207
    .line 208
    :cond_a
    const-string v4, "shared"

    .line 209
    .line 210
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    xor-int/2addr p1, v7

    .line 215
    iput-boolean p1, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 216
    .line 217
    :goto_5
    iget-object p1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 220
    .line 221
    if-eqz p1, :cond_c

    .line 222
    .line 223
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    if-eqz p1, :cond_c

    .line 228
    .line 229
    iget-object v4, p1, Lorg/wikipedia/gallery/ImageInfo;->timestamp:Ljava/lang/String;

    .line 230
    .line 231
    iput-object v4, v1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->timestamp:Ljava/lang/String;

    .line 232
    .line 233
    iget-object v4, p1, Lorg/wikipedia/gallery/ImageInfo;->user:Ljava/lang/String;

    .line 234
    .line 235
    iput-object v4, v1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->user:Ljava/lang/String;

    .line 236
    .line 237
    iget-object v4, p1, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 238
    .line 239
    iput-object v4, v1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 240
    .line 241
    new-instance v1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 242
    .line 243
    invoke-direct {v1, v9, v0, v8, v6}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 244
    .line 245
    .line 246
    invoke-static {v2, v8, v1, v5}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    iget-boolean v4, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 251
    .line 252
    iget-object v6, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v6, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 255
    .line 256
    iput-object v2, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$0:Ljava/lang/Object;

    .line 257
    .line 258
    iput-object v8, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 259
    .line 260
    iput-object v8, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 261
    .line 262
    iput-object v0, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$3:Ljava/lang/Object;

    .line 263
    .line 264
    iput-object p1, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$4:Lorg/wikipedia/gallery/ImageInfo;

    .line 265
    .line 266
    iput-object v6, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->L$6:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 267
    .line 268
    iput-boolean v4, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->Z$0:Z

    .line 269
    .line 270
    iput v5, p0, Lorg/wikipedia/commons/ImagePreviewViewModel$loadImageInfo$1;->label:I

    .line 271
    .line 272
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    if-ne p0, v3, :cond_b

    .line 277
    .line 278
    :goto_6
    return-object v3

    .line 279
    :cond_b
    move-object v2, p1

    .line 280
    move v3, v4

    .line 281
    move-object p1, p0

    .line 282
    move-object p0, v0

    .line 283
    :goto_7
    move-object v7, p1

    .line 284
    check-cast v7, Ljava/util/Map;

    .line 285
    .line 286
    iget v1, v2, Lorg/wikipedia/gallery/ImageInfo;->thumbWidth:I

    .line 287
    .line 288
    iget v2, v2, Lorg/wikipedia/gallery/ImageInfo;->thumbHeight:I

    .line 289
    .line 290
    new-instance v0, Lorg/wikipedia/commons/FilePage;

    .line 291
    .line 292
    const/4 v4, 0x0

    .line 293
    const/4 v5, 0x0

    .line 294
    invoke-direct/range {v0 .. v7}, Lorg/wikipedia/commons/FilePage;-><init>(IIZZZLorg/wikipedia/dataclient/mwapi/MwQueryPage;Ljava/util/Map;)V

    .line 295
    .line 296
    .line 297
    iget-object p0, p0, Lorg/wikipedia/commons/ImagePreviewViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 298
    .line 299
    new-instance p1, Lorg/wikipedia/util/Resource$Success;

    .line 300
    .line 301
    invoke-direct {p1, v0}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, v8, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    goto :goto_8

    .line 311
    :cond_c
    iget-object p0, v0, Lorg/wikipedia/commons/ImagePreviewViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 312
    .line 313
    new-instance p1, Lorg/wikipedia/util/Resource$Error;

    .line 314
    .line 315
    new-instance v0, Ljava/lang/Throwable;

    .line 316
    .line 317
    const-string v1, "No image info found."

    .line 318
    .line 319
    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-direct {p1, v0}, Lorg/wikipedia/util/Resource$Error;-><init>(Ljava/lang/Throwable;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0, v8, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    :goto_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 332
    .line 333
    return-object p0
.end method
