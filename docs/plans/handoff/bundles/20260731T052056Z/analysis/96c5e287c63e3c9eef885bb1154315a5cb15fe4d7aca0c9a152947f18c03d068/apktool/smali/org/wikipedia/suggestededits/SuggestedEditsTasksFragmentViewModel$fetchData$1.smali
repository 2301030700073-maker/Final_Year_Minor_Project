.class public final Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public L$2:Lkotlinx/coroutines/DeferredCoroutine;

.field public L$3:Lkotlinx/coroutines/Deferred;

.field public L$4:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

.field public L$5:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

.field public L$6:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

.field public L$8:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

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
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$0:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    sget-object v0, Lorg/wikipedia/util/ShareUtil;->INSTANCE:Lorg/wikipedia/util/ShareUtil;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    iget v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->label:I

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
    iget-object v8, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    packed-switch v3, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v9

    .line 27
    :pswitch_0
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$8:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 28
    .line 29
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$6:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 30
    .line 31
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$5:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 32
    .line 33
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$4:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_a

    .line 39
    .line 40
    :pswitch_1
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$8:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 41
    .line 42
    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$6:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 43
    .line 44
    iget-object v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$5:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 45
    .line 46
    iget-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$4:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_8

    .line 52
    .line 53
    :pswitch_2
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$8:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 54
    .line 55
    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$6:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 56
    .line 57
    iget-object v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$5:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 58
    .line 59
    iget-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$4:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 60
    .line 61
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_7

    .line 65
    .line 66
    :pswitch_3
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$5:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 67
    .line 68
    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$4:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 69
    .line 70
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    move-object v4, v1

    .line 74
    move-object v5, v3

    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :pswitch_4
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$4:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 78
    .line 79
    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$3:Lkotlinx/coroutines/Deferred;

    .line 80
    .line 81
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :pswitch_5
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$3:Lkotlinx/coroutines/Deferred;

    .line 86
    .line 87
    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$2:Lkotlinx/coroutines/DeferredCoroutine;

    .line 88
    .line 89
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iput-object v9, v8, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->blockMessageWikipedia:Ljava/lang/String;

    .line 97
    .line 98
    iput-object v9, v8, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->blockMessageWikidata:Ljava/lang/String;

    .line 99
    .line 100
    iput-object v9, v8, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->blockMessageCommons:Ljava/lang/String;

    .line 101
    .line 102
    iput v7, v8, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->totalContributions:I

    .line 103
    .line 104
    new-instance p1, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 105
    .line 106
    const/16 v3, 0xa

    .line 107
    .line 108
    invoke-direct {p1, v5, v3, v9}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v1, v9, p1, v4}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    new-instance v3, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 116
    .line 117
    const/16 v10, 0x9

    .line 118
    .line 119
    invoke-direct {v3, v5, v10, v9}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v1, v9, v3, v4}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    new-instance v10, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 127
    .line 128
    const/16 v11, 0xb

    .line 129
    .line 130
    invoke-direct {v10, v5, v11, v9}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v9, v10, v4}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iput-object v9, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$0:Ljava/lang/Object;

    .line 138
    .line 139
    iput-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$2:Lkotlinx/coroutines/DeferredCoroutine;

    .line 140
    .line 141
    iput-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$3:Lkotlinx/coroutines/Deferred;

    .line 142
    .line 143
    iput v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->label:I

    .line 144
    .line 145
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    if-ne p1, v2, :cond_0

    .line 150
    .line 151
    goto/16 :goto_9

    .line 152
    .line 153
    :cond_0
    :goto_0
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 154
    .line 155
    iput-object v9, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$0:Ljava/lang/Object;

    .line 156
    .line 157
    iput-object v9, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$2:Lkotlinx/coroutines/DeferredCoroutine;

    .line 158
    .line 159
    iput-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$3:Lkotlinx/coroutines/Deferred;

    .line 160
    .line 161
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$4:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 162
    .line 163
    iput v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->label:I

    .line 164
    .line 165
    invoke-interface {v3, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    if-ne v3, v2, :cond_1

    .line 170
    .line 171
    goto/16 :goto_9

    .line 172
    .line 173
    :cond_1
    move-object v13, v1

    .line 174
    move-object v1, p1

    .line 175
    move-object p1, v3

    .line 176
    move-object v3, v13

    .line 177
    :goto_1
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 178
    .line 179
    iput-object v9, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$0:Ljava/lang/Object;

    .line 180
    .line 181
    iput-object v9, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$2:Lkotlinx/coroutines/DeferredCoroutine;

    .line 182
    .line 183
    iput-object v9, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$3:Lkotlinx/coroutines/Deferred;

    .line 184
    .line 185
    iput-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$4:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 186
    .line 187
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$5:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 188
    .line 189
    iput v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->label:I

    .line 190
    .line 191
    invoke-interface {v3, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    if-ne v3, v2, :cond_2

    .line 196
    .line 197
    goto/16 :goto_9

    .line 198
    .line 199
    :cond_2
    move-object v4, p1

    .line 200
    move-object v5, v1

    .line 201
    move-object p1, v3

    .line 202
    :goto_2
    move-object v3, p1

    .line 203
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 204
    .line 205
    iput-boolean v6, v8, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->wikiSupportsImageRecommendations:Z

    .line 206
    .line 207
    iget-object p1, v5, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 208
    .line 209
    if-eqz p1, :cond_9

    .line 210
    .line 211
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 212
    .line 213
    if-eqz p1, :cond_9

    .line 214
    .line 215
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 216
    .line 217
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    iget-object v1, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 226
    .line 227
    const-string v10, "ig"

    .line 228
    .line 229
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-eqz v1, :cond_4

    .line 234
    .line 235
    iget v1, p1, Lorg/wikipedia/dataclient/mwapi/UserInfo;->editCount:I

    .line 236
    .line 237
    const/16 v10, 0x1f4

    .line 238
    .line 239
    if-lt v1, v10, :cond_3

    .line 240
    .line 241
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/UserInfo;->getRegistrationDate()Ljava/util/Date;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-static {v1}, Lj$/util/DateRetargetClass;->toInstant(Ljava/util/Date;)Lj$/time/Instant;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    const-wide/16 v10, 0x1e

    .line 250
    .line 251
    sget-object v12, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 252
    .line 253
    invoke-virtual {v1, v10, v11, v12}, Lj$/time/Instant;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/Instant;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    .line 258
    .line 259
    .line 260
    move-result-object v10

    .line 261
    invoke-virtual {v1, v10}, Lj$/time/Instant;->isBefore(Lj$/time/Instant;)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_3

    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_3
    move v6, v7

    .line 269
    :goto_3
    iput-boolean v6, v8, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->allowToPatrolEdits:Z

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_4
    iget-object v1, p1, Lorg/wikipedia/dataclient/mwapi/UserInfo;->rights:Ljava/util/List;

    .line 273
    .line 274
    const-string v10, "rollback"

    .line 275
    .line 276
    invoke-interface {v1, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-nez v1, :cond_7

    .line 281
    .line 282
    iget-object v1, p1, Lorg/wikipedia/dataclient/mwapi/UserInfo;->groups:Ljava/util/List;

    .line 283
    .line 284
    if-eqz v1, :cond_5

    .line 285
    .line 286
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    goto :goto_4

    .line 291
    :cond_5
    sget-object v1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 292
    .line 293
    :goto_4
    const-string v10, "sysop"

    .line 294
    .line 295
    invoke-interface {v1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_6

    .line 300
    .line 301
    goto :goto_5

    .line 302
    :cond_6
    move v6, v7

    .line 303
    :cond_7
    :goto_5
    iput-boolean v6, v8, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->allowToPatrolEdits:Z

    .line 304
    .line 305
    :goto_6
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->isBlocked()Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_9

    .line 310
    .line 311
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    iput-object v9, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$0:Ljava/lang/Object;

    .line 320
    .line 321
    iput-object v9, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$2:Lkotlinx/coroutines/DeferredCoroutine;

    .line 322
    .line 323
    iput-object v9, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$3:Lkotlinx/coroutines/Deferred;

    .line 324
    .line 325
    iput-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$4:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 326
    .line 327
    iput-object v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$5:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 328
    .line 329
    iput-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$6:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 330
    .line 331
    iput-object v8, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$8:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 332
    .line 333
    const/4 v6, 0x4

    .line 334
    iput v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->label:I

    .line 335
    .line 336
    invoke-virtual {v0, p1, v1, p0}, Lorg/wikipedia/util/ShareUtil;->getBlockMessageHtml(Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    if-ne p1, v2, :cond_8

    .line 341
    .line 342
    goto :goto_9

    .line 343
    :cond_8
    move-object v1, v8

    .line 344
    :goto_7
    check-cast p1, Ljava/lang/String;

    .line 345
    .line 346
    iput-object p1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->blockMessageWikipedia:Ljava/lang/String;

    .line 347
    .line 348
    :cond_9
    iget-object p1, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 349
    .line 350
    if-eqz p1, :cond_b

    .line 351
    .line 352
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 353
    .line 354
    if-eqz p1, :cond_b

    .line 355
    .line 356
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->isBlocked()Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    if-eqz v1, :cond_b

    .line 361
    .line 362
    sget-object v1, Lorg/wikipedia/Constants;->wikidataWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 363
    .line 364
    iput-object v9, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$0:Ljava/lang/Object;

    .line 365
    .line 366
    iput-object v9, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$2:Lkotlinx/coroutines/DeferredCoroutine;

    .line 367
    .line 368
    iput-object v9, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$3:Lkotlinx/coroutines/Deferred;

    .line 369
    .line 370
    iput-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$4:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 371
    .line 372
    iput-object v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$5:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 373
    .line 374
    iput-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$6:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 375
    .line 376
    iput-object v8, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$8:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 377
    .line 378
    const/4 v6, 0x5

    .line 379
    iput v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->label:I

    .line 380
    .line 381
    invoke-virtual {v0, p1, v1, p0}, Lorg/wikipedia/util/ShareUtil;->getBlockMessageHtml(Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    if-ne p1, v2, :cond_a

    .line 386
    .line 387
    goto :goto_9

    .line 388
    :cond_a
    move-object v1, v8

    .line 389
    :goto_8
    check-cast p1, Ljava/lang/String;

    .line 390
    .line 391
    iput-object p1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->blockMessageWikidata:Ljava/lang/String;

    .line 392
    .line 393
    :cond_b
    move-object v1, v3

    .line 394
    iget-object p1, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 395
    .line 396
    if-eqz p1, :cond_d

    .line 397
    .line 398
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 399
    .line 400
    if-eqz p1, :cond_d

    .line 401
    .line 402
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->isBlocked()Z

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    if-eqz v3, :cond_d

    .line 407
    .line 408
    sget-object v3, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 409
    .line 410
    iput-object v9, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$0:Ljava/lang/Object;

    .line 411
    .line 412
    iput-object v9, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$2:Lkotlinx/coroutines/DeferredCoroutine;

    .line 413
    .line 414
    iput-object v9, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$3:Lkotlinx/coroutines/Deferred;

    .line 415
    .line 416
    iput-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$4:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 417
    .line 418
    iput-object v4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$5:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 419
    .line 420
    iput-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$6:Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 421
    .line 422
    iput-object v8, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->L$8:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;

    .line 423
    .line 424
    const/4 v6, 0x6

    .line 425
    iput v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel$fetchData$1;->label:I

    .line 426
    .line 427
    invoke-virtual {v0, p1, v3, p0}, Lorg/wikipedia/util/ShareUtil;->getBlockMessageHtml(Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    if-ne p1, v2, :cond_c

    .line 432
    .line 433
    :goto_9
    return-object v2

    .line 434
    :cond_c
    move-object v2, v4

    .line 435
    move-object p0, v5

    .line 436
    move-object v0, v8

    .line 437
    :goto_a
    check-cast p1, Ljava/lang/String;

    .line 438
    .line 439
    iput-object p1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->blockMessageCommons:Ljava/lang/String;

    .line 440
    .line 441
    move-object v5, p0

    .line 442
    move-object v4, v2

    .line 443
    :cond_d
    iget-object p0, v5, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 444
    .line 445
    if-eqz p0, :cond_e

    .line 446
    .line 447
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 448
    .line 449
    goto :goto_b

    .line 450
    :cond_e
    move-object p0, v9

    .line 451
    :goto_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 452
    .line 453
    .line 454
    iget p0, p0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->editCount:I

    .line 455
    .line 456
    iput p0, v8, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->homeContributions:I

    .line 457
    .line 458
    iget p0, v8, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->totalContributions:I

    .line 459
    .line 460
    iget-object p1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 461
    .line 462
    if-eqz p1, :cond_f

    .line 463
    .line 464
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 465
    .line 466
    goto :goto_c

    .line 467
    :cond_f
    move-object p1, v9

    .line 468
    :goto_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    .line 470
    .line 471
    iget p1, p1, Lorg/wikipedia/dataclient/mwapi/UserInfo;->editCount:I

    .line 472
    .line 473
    add-int/2addr p0, p1

    .line 474
    iput p0, v8, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->totalContributions:I

    .line 475
    .line 476
    iget-object p1, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 477
    .line 478
    if-eqz p1, :cond_10

    .line 479
    .line 480
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 481
    .line 482
    goto :goto_d

    .line 483
    :cond_10
    move-object p1, v9

    .line 484
    :goto_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 485
    .line 486
    .line 487
    iget p1, p1, Lorg/wikipedia/dataclient/mwapi/UserInfo;->editCount:I

    .line 488
    .line 489
    add-int/2addr p0, p1

    .line 490
    iget p1, v8, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->homeContributions:I

    .line 491
    .line 492
    add-int/2addr p0, p1

    .line 493
    iput p0, v8, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->totalContributions:I

    .line 494
    .line 495
    iget-object p0, v5, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 496
    .line 497
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    .line 499
    .line 500
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userContributions:Ljava/util/List;

    .line 501
    .line 502
    iget-object p1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 503
    .line 504
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    .line 506
    .line 507
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userContributions:Ljava/util/List;

    .line 508
    .line 509
    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 510
    .line 511
    .line 512
    move-result-object p0

    .line 513
    iget-object p1, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 514
    .line 515
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    .line 517
    .line 518
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userContributions:Ljava/util/List;

    .line 519
    .line 520
    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 521
    .line 522
    .line 523
    move-result-object p0

    .line 524
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 525
    .line 526
    .line 527
    move-result p1

    .line 528
    sput p1, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->totalEdits:I

    .line 529
    .line 530
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 531
    .line 532
    .line 533
    move-result p1

    .line 534
    if-eqz p1, :cond_11

    .line 535
    .line 536
    move p1, v7

    .line 537
    goto :goto_f

    .line 538
    :cond_11
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 539
    .line 540
    .line 541
    move-result-object p0

    .line 542
    move p1, v7

    .line 543
    :cond_12
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 544
    .line 545
    .line 546
    move-result v0

    .line 547
    if-eqz v0, :cond_14

    .line 548
    .line 549
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 554
    .line 555
    iget v1, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->ns:I

    .line 556
    .line 557
    if-nez v1, :cond_12

    .line 558
    .line 559
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->tags:Ljava/util/List;

    .line 560
    .line 561
    const-string v1, "mw-reverted"

    .line 562
    .line 563
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    if-eqz v0, :cond_12

    .line 568
    .line 569
    add-int/lit8 p1, p1, 0x1

    .line 570
    .line 571
    if-ltz p1, :cond_13

    .line 572
    .line 573
    goto :goto_e

    .line 574
    :cond_13
    invoke-static {}, Landroidx/room/Room;->throwCountOverflow()V

    .line 575
    .line 576
    .line 577
    throw v9

    .line 578
    :cond_14
    :goto_f
    sput p1, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->totalReverts:I

    .line 579
    .line 580
    invoke-static {}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->maybePauseAndGetEndDate()Ljava/util/Date;

    .line 581
    .line 582
    .line 583
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 584
    .line 585
    const p0, 0x7f120689

    .line 586
    .line 587
    .line 588
    invoke-static {p0, v7}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 589
    .line 590
    .line 591
    move-result p1

    .line 592
    if-lez p1, :cond_15

    .line 593
    .line 594
    invoke-static {p0, v7}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 595
    .line 596
    .line 597
    move-result p0

    .line 598
    iput p0, v8, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->totalContributions:I

    .line 599
    .line 600
    :cond_15
    iget-object p0, v8, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragmentViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 601
    .line 602
    new-instance p1, Lorg/wikipedia/util/Resource$Success;

    .line 603
    .line 604
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 605
    .line 606
    invoke-direct {p1, v0}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 610
    .line 611
    .line 612
    invoke-virtual {p0, v9, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    return-object v0

    .line 616
    nop

    .line 617
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
