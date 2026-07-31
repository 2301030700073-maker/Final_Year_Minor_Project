.class public final Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $blockInfo:Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;

.field public final synthetic $html:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $wikiSite:Lorg/wikipedia/dataclient/WikiSite;

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lkotlinx/coroutines/Deferred;

.field public L$3:Lkotlinx/coroutines/DeferredCoroutine;

.field public L$4:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public L$5:Lorg/wikipedia/util/ShareUtil;

.field public L$6:Ljava/lang/String;

.field public L$7:Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;

.field public L$8:Ljava/lang/String;

.field public label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->$html:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->$blockInfo:Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->$wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->$blockInfo:Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->$wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->$html:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p2}, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 4
    .line 5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v2, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->label:I

    .line 8
    .line 9
    iget-object v3, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->$blockInfo:Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;

    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x2

    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v7, 0x0

    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    if-eq v2, v6, :cond_2

    .line 18
    .line 19
    if-eq v2, v5, :cond_1

    .line 20
    .line 21
    if-ne v2, v4, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$8:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$7:Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;

    .line 26
    .line 27
    iget-object v2, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$6:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$5:Lorg/wikipedia/util/ShareUtil;

    .line 30
    .line 31
    iget-object p0, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    .line 40
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v7

    .line 44
    :cond_1
    iget-object v3, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$7:Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;

    .line 45
    .line 46
    iget-object v0, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$6:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v2, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$5:Lorg/wikipedia/util/ShareUtil;

    .line 49
    .line 50
    iget-object v5, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 51
    .line 52
    iget-object v6, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$1:Lkotlinx/coroutines/Deferred;

    .line 53
    .line 54
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    move-object v13, v3

    .line 58
    move-object v3, v2

    .line 59
    move-object v2, v5

    .line 60
    move-object v5, v13

    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$5:Lorg/wikipedia/util/ShareUtil;

    .line 64
    .line 65
    iget-object v2, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 66
    .line 67
    iget-object v6, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$3:Lkotlinx/coroutines/DeferredCoroutine;

    .line 68
    .line 69
    iget-object v8, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$1:Lkotlinx/coroutines/Deferred;

    .line 70
    .line 71
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    new-instance p1, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    iget-object v8, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->$wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 82
    .line 83
    invoke-direct {p1, v8, v7, v2}, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/Continuation;I)V

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v7, p1, v4}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    new-instance v2, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;

    .line 91
    .line 92
    invoke-direct {v2, v8, v7, v5}, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/Continuation;I)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v7, v2, v4}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    new-instance v9, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 100
    .line 101
    const/16 v10, 0xb

    .line 102
    .line 103
    invoke-direct {v9, v8, v3, v7, v10}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v7, v9, v4}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sget-object v8, Lorg/wikipedia/util/ShareUtil;->INSTANCE:Lorg/wikipedia/util/ShareUtil;

    .line 111
    .line 112
    iput-object v7, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$0:Ljava/lang/Object;

    .line 113
    .line 114
    iput-object p1, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$1:Lkotlinx/coroutines/Deferred;

    .line 115
    .line 116
    iput-object v0, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$3:Lkotlinx/coroutines/DeferredCoroutine;

    .line 117
    .line 118
    iget-object v9, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->$html:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 119
    .line 120
    iput-object v9, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 121
    .line 122
    iput-object v8, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$5:Lorg/wikipedia/util/ShareUtil;

    .line 123
    .line 124
    iput v6, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->label:I

    .line 125
    .line 126
    invoke-virtual {v2, p0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    if-ne v2, v1, :cond_4

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    move-object v6, v0

    .line 134
    move-object v0, v8

    .line 135
    move-object v8, p1

    .line 136
    move-object p1, v2

    .line 137
    move-object v2, v9

    .line 138
    :goto_0
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwParseResponse;

    .line 139
    .line 140
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwParseResponse;->getText()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iput-object v7, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$0:Ljava/lang/Object;

    .line 145
    .line 146
    iput-object v8, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$1:Lkotlinx/coroutines/Deferred;

    .line 147
    .line 148
    iput-object v7, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$3:Lkotlinx/coroutines/DeferredCoroutine;

    .line 149
    .line 150
    iput-object v2, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 151
    .line 152
    iput-object v0, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$5:Lorg/wikipedia/util/ShareUtil;

    .line 153
    .line 154
    iput-object p1, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$6:Ljava/lang/String;

    .line 155
    .line 156
    iput-object v3, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$7:Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;

    .line 157
    .line 158
    iput v5, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->label:I

    .line 159
    .line 160
    invoke-interface {v6, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    if-ne v5, v1, :cond_5

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_5
    move-object v6, v0

    .line 168
    move-object v0, p1

    .line 169
    move-object p1, v5

    .line 170
    move-object v5, v3

    .line 171
    move-object v3, v6

    .line 172
    move-object v6, v8

    .line 173
    :goto_1
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwParseResponse;

    .line 174
    .line 175
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwParseResponse;->getText()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    iput-object v7, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$0:Ljava/lang/Object;

    .line 180
    .line 181
    iput-object v7, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$1:Lkotlinx/coroutines/Deferred;

    .line 182
    .line 183
    iput-object v7, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$3:Lkotlinx/coroutines/DeferredCoroutine;

    .line 184
    .line 185
    iput-object v2, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 186
    .line 187
    iput-object v3, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$5:Lorg/wikipedia/util/ShareUtil;

    .line 188
    .line 189
    iput-object v0, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$6:Ljava/lang/String;

    .line 190
    .line 191
    iput-object v5, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$7:Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;

    .line 192
    .line 193
    iput-object p1, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->L$8:Ljava/lang/String;

    .line 194
    .line 195
    iput v4, p0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;->label:I

    .line 196
    .line 197
    invoke-interface {v6, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    if-ne p0, v1, :cond_6

    .line 202
    .line 203
    :goto_2
    return-object v1

    .line 204
    :cond_6
    move-object v1, p1

    .line 205
    move-object p1, p0

    .line 206
    move-object p0, v2

    .line 207
    move-object v2, v0

    .line 208
    move-object v0, v1

    .line 209
    move-object v1, v5

    .line 210
    :goto_3
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 211
    .line 212
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 213
    .line 214
    if-eqz p1, :cond_7

    .line 215
    .line 216
    iget-object v7, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 217
    .line 218
    :cond_7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    iget-object p1, v7, Lorg/wikipedia/dataclient/mwapi/UserInfo;->name:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 227
    .line 228
    iget-object v7, v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockedBy:Ljava/lang/String;

    .line 229
    .line 230
    sget-object v3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 231
    .line 232
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    new-instance v4, Lorg/wikipedia/page/PageTitle;

    .line 244
    .line 245
    iget-object v3, v6, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v3}, Lorg/wikipedia/staticdata/UserAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    const/4 v11, 0x0

    .line 252
    const/4 v12, 0x0

    .line 253
    const/4 v8, 0x0

    .line 254
    const/4 v9, 0x0

    .line 255
    const/4 v10, 0x0

    .line 256
    invoke-direct/range {v4 .. v12}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    iget-object v4, v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockedBy:Ljava/lang/String;

    .line 264
    .line 265
    const-string v5, "\">"

    .line 266
    .line 267
    const-string v6, "</a>"

    .line 268
    .line 269
    const-string v7, "<a href=\""

    .line 270
    .line 271
    invoke-static {v7, v3, v5, v4, v6}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    const-string v4, "$1"

    .line 276
    .line 277
    invoke-static {v2, v4, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    const-string v3, "$2"

    .line 282
    .line 283
    invoke-static {v2, v3, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    const-string v2, "$3"

    .line 288
    .line 289
    const-string v3, ""

    .line 290
    .line 291
    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    const-string v2, "$4"

    .line 296
    .line 297
    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    iget v2, v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockId:I

    .line 302
    .line 303
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    const-string v3, "$5"

    .line 308
    .line 309
    invoke-static {v0, v3, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    iget-object v2, v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockExpiry:Ljava/lang/String;

    .line 314
    .line 315
    :try_start_0
    invoke-static {v2}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .line 325
    .line 326
    move-object v2, v3

    .line 327
    :catch_0
    const-string v3, "$6"

    .line 328
    .line 329
    invoke-static {v0, v3, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    const-string v2, "$7"

    .line 334
    .line 335
    invoke-static {v0, v2, p1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    iget-object v0, v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockTimeStamp:Ljava/lang/String;

    .line 340
    .line 341
    :try_start_1
    invoke-static {v0}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 350
    .line 351
    .line 352
    move-object v0, v1

    .line 353
    :catch_1
    const-string v1, "$8"

    .line 354
    .line 355
    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 360
    .line 361
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 362
    .line 363
    return-object p0
.end method
