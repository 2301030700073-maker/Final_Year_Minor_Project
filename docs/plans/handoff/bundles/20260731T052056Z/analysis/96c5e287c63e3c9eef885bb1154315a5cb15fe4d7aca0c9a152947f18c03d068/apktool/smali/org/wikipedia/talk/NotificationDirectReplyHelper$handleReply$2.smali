.class public final Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $notificationId:I

.field public final synthetic $replyText:Ljava/lang/String;

.field public final synthetic $title:Lorg/wikipedia/page/PageTitle;

.field public final synthetic $wiki:Lorg/wikipedia/dataclient/WikiSite;

.field public I$0:I

.field public I$1:I

.field public J$0:J

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lkotlinx/coroutines/Deferred;

.field public L$10:Ljava/lang/String;

.field public L$11:Ljava/lang/String;

.field public L$12:Ljava/lang/String;

.field public L$13:Lorg/wikipedia/dataclient/Service;

.field public L$2:Lkotlinx/coroutines/DeferredCoroutine;

.field public L$4:Lorg/wikipedia/dataclient/WikiSite;

.field public L$5:Lorg/wikipedia/page/PageTitle;

.field public L$6:Landroid/content/Context;

.field public L$8:Ljava/lang/String;

.field public L$9:Ljava/lang/String;

.field public label:I


# direct methods
.method public constructor <init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Landroid/content/Context;ILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->$wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->$title:Lorg/wikipedia/page/PageTitle;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->$replyText:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->$context:Landroid/content/Context;

    .line 8
    .line 9
    iput p5, p0, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->$notificationId:I

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;

    .line 2
    .line 3
    iget-object v4, p0, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iget v5, p0, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->$notificationId:I

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->$wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->$title:Lorg/wikipedia/page/PageTitle;

    .line 10
    .line 11
    iget-object v3, p0, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->$replyText:Ljava/lang/String;

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Landroid/content/Context;ILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, v0, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$0:Ljava/lang/Object;

    .line 18
    .line 19
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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    sget-object v15, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    iget v1, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->label:I

    .line 10
    .line 11
    const/4 v2, 0x5

    .line 12
    const/4 v3, 0x4

    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x2

    .line 15
    iget-object v6, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->$title:Lorg/wikipedia/page/PageTitle;

    .line 16
    .line 17
    iget-object v8, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->$wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 18
    .line 19
    const/4 v9, 0x1

    .line 20
    const/4 v10, 0x0

    .line 21
    if-eqz v1, :cond_6

    .line 22
    .line 23
    if-eq v1, v9, :cond_4

    .line 24
    .line 25
    if-eq v1, v5, :cond_3

    .line 26
    .line 27
    if-eq v1, v4, :cond_2

    .line 28
    .line 29
    if-eq v1, v3, :cond_1

    .line 30
    .line 31
    if-ne v1, v2, :cond_0

    .line 32
    .line 33
    iget-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$5:Lorg/wikipedia/page/PageTitle;

    .line 34
    .line 35
    check-cast v0, Lorg/wikipedia/edit/Edit;

    .line 36
    .line 37
    iget-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$4:Lorg/wikipedia/dataclient/WikiSite;

    .line 38
    .line 39
    check-cast v0, Lorg/wikipedia/dataclient/page/TalkPage$Topic;

    .line 40
    .line 41
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_9

    .line 45
    .line 46
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v10

    .line 52
    :cond_1
    iget v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->I$1:I

    .line 53
    .line 54
    iget v1, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->I$0:I

    .line 55
    .line 56
    iget-object v3, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$6:Landroid/content/Context;

    .line 57
    .line 58
    iget-object v4, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$5:Lorg/wikipedia/page/PageTitle;

    .line 59
    .line 60
    iget-object v5, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$4:Lorg/wikipedia/dataclient/WikiSite;

    .line 61
    .line 62
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move v6, v1

    .line 66
    move-object v2, v5

    .line 67
    move v1, v0

    .line 68
    move-object/from16 v0, p1

    .line 69
    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    :cond_2
    iget-wide v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->J$0:J

    .line 73
    .line 74
    iget v4, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->I$1:I

    .line 75
    .line 76
    iget v5, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->I$0:I

    .line 77
    .line 78
    iget-object v6, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$13:Lorg/wikipedia/dataclient/Service;

    .line 79
    .line 80
    iget-object v8, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$12:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v11, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$11:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v12, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$10:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v13, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$9:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v14, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$8:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v2, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$6:Landroid/content/Context;

    .line 91
    .line 92
    iget-object v3, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$5:Lorg/wikipedia/page/PageTitle;

    .line 93
    .line 94
    iget-object v9, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$4:Lorg/wikipedia/dataclient/WikiSite;

    .line 95
    .line 96
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    move-object/from16 v21, v3

    .line 100
    .line 101
    move-object v3, v2

    .line 102
    move v2, v5

    .line 103
    move-object v5, v9

    .line 104
    move-wide v9, v0

    .line 105
    move v1, v4

    .line 106
    move-object/from16 v4, v21

    .line 107
    .line 108
    move-object/from16 v0, p1

    .line 109
    .line 110
    goto/16 :goto_4

    .line 111
    .line 112
    :cond_3
    iget v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->I$1:I

    .line 113
    .line 114
    iget v1, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->I$0:I

    .line 115
    .line 116
    iget-object v2, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$13:Lorg/wikipedia/dataclient/Service;

    .line 117
    .line 118
    iget-object v3, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$12:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v5, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$11:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v6, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$10:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v8, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$9:Ljava/lang/String;

    .line 125
    .line 126
    iget-object v9, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$8:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v11, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$6:Landroid/content/Context;

    .line 129
    .line 130
    iget-object v12, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$5:Lorg/wikipedia/page/PageTitle;

    .line 131
    .line 132
    iget-object v13, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$4:Lorg/wikipedia/dataclient/WikiSite;

    .line 133
    .line 134
    iget-object v14, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$1:Lkotlinx/coroutines/Deferred;

    .line 135
    .line 136
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    move v10, v0

    .line 140
    move-object v4, v8

    .line 141
    move-object/from16 v0, p1

    .line 142
    .line 143
    move-object v8, v3

    .line 144
    move-object v3, v6

    .line 145
    move-object v6, v2

    .line 146
    move-object v2, v11

    .line 147
    move-object v11, v5

    .line 148
    move-object v5, v14

    .line 149
    move-object v14, v9

    .line 150
    goto/16 :goto_3

    .line 151
    .line 152
    :cond_4
    iget-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$2:Lkotlinx/coroutines/DeferredCoroutine;

    .line 153
    .line 154
    iget-object v1, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$1:Lkotlinx/coroutines/Deferred;

    .line 155
    .line 156
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    move-object/from16 v3, p1

    .line 160
    .line 161
    const/4 v2, 0x1

    .line 162
    :cond_5
    move-object v14, v1

    .line 163
    goto :goto_0

    .line 164
    :cond_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    new-instance v1, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;

    .line 168
    .line 169
    const/4 v2, 0x1

    .line 170
    invoke-direct {v1, v8, v10, v2}, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/Continuation;I)V

    .line 171
    .line 172
    .line 173
    invoke-static {v0, v10, v1, v4}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    new-instance v3, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 178
    .line 179
    const/4 v9, 0x6

    .line 180
    invoke-direct {v3, v8, v6, v10, v9}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 181
    .line 182
    .line 183
    invoke-static {v0, v10, v3, v4}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iput-object v10, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$0:Ljava/lang/Object;

    .line 188
    .line 189
    iput-object v1, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$1:Lkotlinx/coroutines/Deferred;

    .line 190
    .line 191
    iput-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$2:Lkotlinx/coroutines/DeferredCoroutine;

    .line 192
    .line 193
    iput v2, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->label:I

    .line 194
    .line 195
    invoke-virtual {v0, v7}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    if-ne v3, v15, :cond_5

    .line 200
    .line 201
    goto/16 :goto_6

    .line 202
    .line 203
    :goto_0
    check-cast v3, Lorg/wikipedia/dataclient/page/TalkPage;

    .line 204
    .line 205
    iget-object v1, v3, Lorg/wikipedia/dataclient/page/TalkPage;->topics:Ljava/util/List;

    .line 206
    .line 207
    if-nez v1, :cond_7

    .line 208
    .line 209
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 210
    .line 211
    :cond_7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-eqz v3, :cond_c

    .line 220
    .line 221
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    move-object v9, v3

    .line 226
    check-cast v9, Lorg/wikipedia/dataclient/page/TalkPage$Topic;

    .line 227
    .line 228
    iget v11, v9, Lorg/wikipedia/dataclient/page/TalkPage$Topic;->id:I

    .line 229
    .line 230
    if-lez v11, :cond_8

    .line 231
    .line 232
    iget-object v9, v9, Lorg/wikipedia/dataclient/page/TalkPage$Topic;->html:Ljava/lang/String;

    .line 233
    .line 234
    const-string v11, ""

    .line 235
    .line 236
    if-nez v9, :cond_9

    .line 237
    .line 238
    move-object v9, v11

    .line 239
    :cond_9
    invoke-static {v9}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    if-nez v9, :cond_a

    .line 248
    .line 249
    move-object v9, v11

    .line 250
    :cond_a
    sget-object v12, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 251
    .line 252
    iget-object v12, v6, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 253
    .line 254
    if-nez v12, :cond_b

    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_b
    move-object v11, v12

    .line 258
    :goto_1
    const-string v12, "_"

    .line 259
    .line 260
    const-string v13, " "

    .line 261
    .line 262
    invoke-static {v11, v12, v13}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v11

    .line 266
    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    if-eqz v9, :cond_8

    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_c
    move-object v3, v10

    .line 274
    :goto_2
    check-cast v3, Lorg/wikipedia/dataclient/page/TalkPage$Topic;

    .line 275
    .line 276
    if-eqz v3, :cond_12

    .line 277
    .line 278
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 279
    .line 280
    invoke-static {v8}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v9

    .line 288
    iget v3, v3, Lorg/wikipedia/dataclient/page/TalkPage$Topic;->id:I

    .line 289
    .line 290
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-static {}, Lokhttp3/Headers$Companion;->getAssertUser()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v11

    .line 298
    iput-object v10, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$0:Ljava/lang/Object;

    .line 299
    .line 300
    iput-object v14, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$1:Lkotlinx/coroutines/Deferred;

    .line 301
    .line 302
    iput-object v10, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$2:Lkotlinx/coroutines/DeferredCoroutine;

    .line 303
    .line 304
    iput-object v8, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$4:Lorg/wikipedia/dataclient/WikiSite;

    .line 305
    .line 306
    iput-object v6, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$5:Lorg/wikipedia/page/PageTitle;

    .line 307
    .line 308
    iget-object v12, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->$context:Landroid/content/Context;

    .line 309
    .line 310
    iput-object v12, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$6:Landroid/content/Context;

    .line 311
    .line 312
    iget-object v13, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->$replyText:Ljava/lang/String;

    .line 313
    .line 314
    iput-object v13, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$8:Ljava/lang/String;

    .line 315
    .line 316
    iput-object v11, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$9:Ljava/lang/String;

    .line 317
    .line 318
    const-string v2, "#directreply-1.0"

    .line 319
    .line 320
    iput-object v2, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$10:Ljava/lang/String;

    .line 321
    .line 322
    iput-object v3, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$11:Ljava/lang/String;

    .line 323
    .line 324
    iput-object v9, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$12:Ljava/lang/String;

    .line 325
    .line 326
    iput-object v1, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$13:Lorg/wikipedia/dataclient/Service;

    .line 327
    .line 328
    iget v4, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->$notificationId:I

    .line 329
    .line 330
    iput v4, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->I$0:I

    .line 331
    .line 332
    const/4 v10, 0x0

    .line 333
    iput v10, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->I$1:I

    .line 334
    .line 335
    iput v5, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->label:I

    .line 336
    .line 337
    invoke-interface {v0, v7}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    if-ne v0, v15, :cond_d

    .line 342
    .line 343
    goto/16 :goto_6

    .line 344
    .line 345
    :cond_d
    move-object v5, v6

    .line 346
    move-object v6, v1

    .line 347
    move v1, v4

    .line 348
    move-object v4, v11

    .line 349
    move-object v11, v3

    .line 350
    move-object v3, v2

    .line 351
    move-object v2, v12

    .line 352
    move-object v12, v5

    .line 353
    move-object v5, v14

    .line 354
    move-object v14, v13

    .line 355
    move-object v13, v8

    .line 356
    move-object v8, v9

    .line 357
    :goto_3
    check-cast v0, Lorg/wikipedia/dataclient/page/TalkPage;

    .line 358
    .line 359
    move/from16 p1, v10

    .line 360
    .line 361
    iget-wide v9, v0, Lorg/wikipedia/dataclient/page/TalkPage;->revision:J

    .line 362
    .line 363
    const/4 v0, 0x0

    .line 364
    iput-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$0:Ljava/lang/Object;

    .line 365
    .line 366
    iput-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$1:Lkotlinx/coroutines/Deferred;

    .line 367
    .line 368
    iput-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$2:Lkotlinx/coroutines/DeferredCoroutine;

    .line 369
    .line 370
    iput-object v13, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$4:Lorg/wikipedia/dataclient/WikiSite;

    .line 371
    .line 372
    iput-object v12, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$5:Lorg/wikipedia/page/PageTitle;

    .line 373
    .line 374
    iput-object v2, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$6:Landroid/content/Context;

    .line 375
    .line 376
    iput-object v14, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$8:Ljava/lang/String;

    .line 377
    .line 378
    iput-object v4, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$9:Ljava/lang/String;

    .line 379
    .line 380
    iput-object v3, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$10:Ljava/lang/String;

    .line 381
    .line 382
    iput-object v11, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$11:Ljava/lang/String;

    .line 383
    .line 384
    iput-object v8, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$12:Ljava/lang/String;

    .line 385
    .line 386
    iput-object v6, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$13:Lorg/wikipedia/dataclient/Service;

    .line 387
    .line 388
    iput v1, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->I$0:I

    .line 389
    .line 390
    move/from16 v0, p1

    .line 391
    .line 392
    iput v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->I$1:I

    .line 393
    .line 394
    iput-wide v9, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->J$0:J

    .line 395
    .line 396
    const/4 v0, 0x3

    .line 397
    iput v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->label:I

    .line 398
    .line 399
    invoke-interface {v5, v7}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    if-ne v0, v15, :cond_e

    .line 404
    .line 405
    goto/16 :goto_6

    .line 406
    .line 407
    :cond_e
    move-object v5, v13

    .line 408
    move-object v13, v4

    .line 409
    move-object v4, v12

    .line 410
    move-object v12, v3

    .line 411
    move-object v3, v2

    .line 412
    move v2, v1

    .line 413
    move/from16 v1, p1

    .line 414
    .line 415
    :goto_4
    check-cast v0, Ljava/lang/String;

    .line 416
    .line 417
    move-object/from16 p1, v0

    .line 418
    .line 419
    const/4 v0, 0x0

    .line 420
    iput-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$0:Ljava/lang/Object;

    .line 421
    .line 422
    iput-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$1:Lkotlinx/coroutines/Deferred;

    .line 423
    .line 424
    iput-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$2:Lkotlinx/coroutines/DeferredCoroutine;

    .line 425
    .line 426
    iput-object v5, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$4:Lorg/wikipedia/dataclient/WikiSite;

    .line 427
    .line 428
    iput-object v4, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$5:Lorg/wikipedia/page/PageTitle;

    .line 429
    .line 430
    iput-object v3, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$6:Landroid/content/Context;

    .line 431
    .line 432
    iput-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$8:Ljava/lang/String;

    .line 433
    .line 434
    iput-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$9:Ljava/lang/String;

    .line 435
    .line 436
    iput-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$10:Ljava/lang/String;

    .line 437
    .line 438
    iput-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$11:Ljava/lang/String;

    .line 439
    .line 440
    iput-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$12:Ljava/lang/String;

    .line 441
    .line 442
    iput-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$13:Lorg/wikipedia/dataclient/Service;

    .line 443
    .line 444
    iput v2, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->I$0:I

    .line 445
    .line 446
    iput v1, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->I$1:I

    .line 447
    .line 448
    const/4 v0, 0x4

    .line 449
    iput v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->label:I

    .line 450
    .line 451
    move-object v0, v5

    .line 452
    const/4 v5, 0x0

    .line 453
    move-wide/from16 v21, v9

    .line 454
    .line 455
    move v9, v1

    .line 456
    move-object v1, v8

    .line 457
    move-wide/from16 v7, v21

    .line 458
    .line 459
    const/4 v10, 0x0

    .line 460
    move/from16 v17, v2

    .line 461
    .line 462
    move-object v2, v11

    .line 463
    const/4 v11, 0x0

    .line 464
    move-object/from16 v19, v3

    .line 465
    .line 466
    move-object v3, v12

    .line 467
    const/4 v12, 0x0

    .line 468
    move-object/from16 v20, v0

    .line 469
    .line 470
    move-object v0, v6

    .line 471
    move-object v6, v14

    .line 472
    const/16 v14, 0x3800

    .line 473
    .line 474
    move-object/from16 v16, v4

    .line 475
    .line 476
    move/from16 v18, v9

    .line 477
    .line 478
    move-object v4, v13

    .line 479
    move-object/from16 v13, p0

    .line 480
    .line 481
    move-object/from16 v9, p1

    .line 482
    .line 483
    invoke-static/range {v0 .. v14}, Lorg/wikipedia/dataclient/Service$-CC;->postEditSubmit$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    move-object v7, v13

    .line 488
    if-ne v0, v15, :cond_f

    .line 489
    .line 490
    goto :goto_6

    .line 491
    :cond_f
    move-object/from16 v4, v16

    .line 492
    .line 493
    move/from16 v6, v17

    .line 494
    .line 495
    move/from16 v1, v18

    .line 496
    .line 497
    move-object/from16 v3, v19

    .line 498
    .line 499
    move-object/from16 v2, v20

    .line 500
    .line 501
    :goto_5
    check-cast v0, Lorg/wikipedia/edit/Edit;

    .line 502
    .line 503
    iget-object v5, v0, Lorg/wikipedia/edit/Edit;->edit:Lorg/wikipedia/edit/Edit$Result;

    .line 504
    .line 505
    if-eqz v5, :cond_11

    .line 506
    .line 507
    const-string v8, "Success"

    .line 508
    .line 509
    iget-object v5, v5, Lorg/wikipedia/edit/Edit$Result;->status:Ljava/lang/String;

    .line 510
    .line 511
    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v5

    .line 515
    const/4 v8, 0x1

    .line 516
    if-ne v5, v8, :cond_10

    .line 517
    .line 518
    sget-object v5, Lorg/wikipedia/talk/UserTalkPopupHelper;->INSTANCE$1:Lorg/wikipedia/talk/UserTalkPopupHelper;

    .line 519
    .line 520
    iget-object v0, v0, Lorg/wikipedia/edit/Edit;->edit:Lorg/wikipedia/edit/Edit$Result;

    .line 521
    .line 522
    iget-wide v8, v0, Lorg/wikipedia/edit/Edit$Result;->newRevId:J

    .line 523
    .line 524
    const/4 v0, 0x0

    .line 525
    iput-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$0:Ljava/lang/Object;

    .line 526
    .line 527
    iput-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$1:Lkotlinx/coroutines/Deferred;

    .line 528
    .line 529
    iput-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$2:Lkotlinx/coroutines/DeferredCoroutine;

    .line 530
    .line 531
    iput-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$4:Lorg/wikipedia/dataclient/WikiSite;

    .line 532
    .line 533
    iput-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$5:Lorg/wikipedia/page/PageTitle;

    .line 534
    .line 535
    iput-object v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->L$6:Landroid/content/Context;

    .line 536
    .line 537
    iput v1, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->I$0:I

    .line 538
    .line 539
    const/4 v0, 0x5

    .line 540
    iput v0, v7, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;->label:I

    .line 541
    .line 542
    move-object v1, v3

    .line 543
    move-object v3, v4

    .line 544
    move-object v0, v5

    .line 545
    move-wide v4, v8

    .line 546
    invoke-virtual/range {v0 .. v7}, Lorg/wikipedia/talk/UserTalkPopupHelper;->waitForUpdatedRevision(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/PageTitle;JILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    if-ne v0, v15, :cond_12

    .line 551
    .line 552
    :goto_6
    return-object v15

    .line 553
    :cond_10
    :goto_7
    move-object v1, v3

    .line 554
    move-object v3, v4

    .line 555
    goto :goto_8

    .line 556
    :cond_11
    const/4 v8, 0x1

    .line 557
    goto :goto_7

    .line 558
    :goto_8
    const v0, 0x7f120489

    .line 559
    .line 560
    .line 561
    invoke-static {v1, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 566
    .line 567
    .line 568
    sget v0, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 569
    .line 570
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->NOTIFICATION:Lorg/wikipedia/Constants$InvokeSource;

    .line 571
    .line 572
    invoke-static {v1, v3, v0}, Lokhttp3/Headers$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 577
    .line 578
    .line 579
    :cond_12
    :goto_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 580
    .line 581
    return-object v0
.end method
