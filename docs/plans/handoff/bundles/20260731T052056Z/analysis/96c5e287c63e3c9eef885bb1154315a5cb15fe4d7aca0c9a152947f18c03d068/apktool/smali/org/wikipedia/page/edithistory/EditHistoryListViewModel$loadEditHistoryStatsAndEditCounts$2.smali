.class public final Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public L$11:Landroidx/lifecycle/MutableLiveData;

.field public L$12:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

.field public L$13:Ljava/util/List;

.field public L$14:Lorg/wikipedia/dataclient/restbase/EditCount;

.field public L$15:Lorg/wikipedia/dataclient/restbase/EditCount;

.field public L$16:Lorg/wikipedia/dataclient/restbase/EditCount;

.field public L$5:Lkotlinx/coroutines/Deferred;

.field public L$6:Lkotlinx/coroutines/Deferred;

.field public L$7:Lkotlinx/coroutines/Deferred;

.field public L$8:Lkotlinx/coroutines/Deferred;

.field public L$9:Lkotlinx/coroutines/DeferredCoroutine;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

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
    new-instance v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$0:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    iget v3, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->label:I

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x4

    .line 13
    const/4 v6, 0x3

    .line 14
    iget-object v8, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 15
    .line 16
    const/4 v11, 0x0

    .line 17
    packed-switch v3, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    return-object v0

    .line 27
    :pswitch_0
    iget-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$16:Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 28
    .line 29
    iget-object v2, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$15:Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 30
    .line 31
    iget-object v3, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$14:Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 32
    .line 33
    iget-object v4, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$13:Ljava/util/List;

    .line 34
    .line 35
    iget-object v5, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$12:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 36
    .line 37
    iget-object v0, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$11:Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    move-object v11, v1

    .line 43
    move-object v10, v2

    .line 44
    move-object v7, v5

    .line 45
    move-object v5, v0

    .line 46
    move-object/from16 v0, p1

    .line 47
    .line 48
    :goto_0
    move-object v9, v3

    .line 49
    move-object v8, v4

    .line 50
    goto/16 :goto_9

    .line 51
    .line 52
    :pswitch_1
    iget-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$15:Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 53
    .line 54
    iget-object v3, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$14:Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 55
    .line 56
    iget-object v4, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$13:Ljava/util/List;

    .line 57
    .line 58
    iget-object v5, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$12:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 59
    .line 60
    iget-object v6, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$11:Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    iget-object v7, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$8:Lkotlinx/coroutines/Deferred;

    .line 63
    .line 64
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    move-object v8, v6

    .line 68
    move-object v6, v5

    .line 69
    move-object v5, v8

    .line 70
    move-object v8, v7

    .line 71
    move-object/from16 v7, p1

    .line 72
    .line 73
    goto/16 :goto_7

    .line 74
    .line 75
    :pswitch_2
    iget-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$14:Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 76
    .line 77
    iget-object v3, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$13:Ljava/util/List;

    .line 78
    .line 79
    iget-object v4, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$12:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 80
    .line 81
    iget-object v5, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$11:Landroidx/lifecycle/MutableLiveData;

    .line 82
    .line 83
    iget-object v6, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$8:Lkotlinx/coroutines/Deferred;

    .line 84
    .line 85
    iget-object v7, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$7:Lkotlinx/coroutines/Deferred;

    .line 86
    .line 87
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    move-object/from16 v8, p1

    .line 91
    .line 92
    goto/16 :goto_6

    .line 93
    .line 94
    :pswitch_3
    iget-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$13:Ljava/util/List;

    .line 95
    .line 96
    iget-object v3, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$12:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 97
    .line 98
    iget-object v4, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$11:Landroidx/lifecycle/MutableLiveData;

    .line 99
    .line 100
    iget-object v6, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$8:Lkotlinx/coroutines/Deferred;

    .line 101
    .line 102
    iget-object v7, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$7:Lkotlinx/coroutines/Deferred;

    .line 103
    .line 104
    iget-object v8, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$6:Lkotlinx/coroutines/Deferred;

    .line 105
    .line 106
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    move-object v5, v4

    .line 110
    move-object v4, v3

    .line 111
    move-object v3, v1

    .line 112
    move-object v1, v6

    .line 113
    move-object/from16 v6, p1

    .line 114
    .line 115
    goto/16 :goto_5

    .line 116
    .line 117
    :pswitch_4
    iget-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$12:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 118
    .line 119
    iget-object v3, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$11:Landroidx/lifecycle/MutableLiveData;

    .line 120
    .line 121
    iget-object v4, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$8:Lkotlinx/coroutines/Deferred;

    .line 122
    .line 123
    iget-object v7, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$7:Lkotlinx/coroutines/Deferred;

    .line 124
    .line 125
    iget-object v8, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$6:Lkotlinx/coroutines/Deferred;

    .line 126
    .line 127
    iget-object v9, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$5:Lkotlinx/coroutines/Deferred;

    .line 128
    .line 129
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    move-object v5, v3

    .line 133
    move-object v3, v1

    .line 134
    move-object/from16 v1, p1

    .line 135
    .line 136
    goto/16 :goto_4

    .line 137
    .line 138
    :pswitch_5
    iget-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$9:Lkotlinx/coroutines/DeferredCoroutine;

    .line 139
    .line 140
    iget-object v3, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$8:Lkotlinx/coroutines/Deferred;

    .line 141
    .line 142
    iget-object v7, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$7:Lkotlinx/coroutines/Deferred;

    .line 143
    .line 144
    iget-object v9, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$6:Lkotlinx/coroutines/Deferred;

    .line 145
    .line 146
    iget-object v10, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$5:Lkotlinx/coroutines/Deferred;

    .line 147
    .line 148
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    move-object v4, v3

    .line 152
    move-object v14, v9

    .line 153
    move-object v9, v10

    .line 154
    move-object/from16 v3, p1

    .line 155
    .line 156
    goto/16 :goto_1

    .line 157
    .line 158
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    sget-object v7, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-static {v3}, Lorg/wikipedia/util/DateUtil;->getYMDDateString(Lj$/time/LocalDate;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    const-wide/16 v12, 0x1

    .line 175
    .line 176
    invoke-virtual {v3, v12, v13}, Lj$/time/LocalDate;->minusYears(J)Lj$/time/LocalDate;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    invoke-static {v3}, Lorg/wikipedia/util/DateUtil;->getYMDDateString(Lj$/time/LocalDate;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    new-instance v3, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;

    .line 188
    .line 189
    const/4 v7, 0x0

    .line 190
    invoke-direct {v3, v8, v11, v7}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 191
    .line 192
    .line 193
    invoke-static {v1, v11, v3, v6}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    new-instance v7, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;

    .line 198
    .line 199
    invoke-direct {v7, v8, v11, v6}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 200
    .line 201
    .line 202
    invoke-static {v1, v11, v7, v6}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    new-instance v7, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;

    .line 207
    .line 208
    invoke-direct {v7, v8, v11, v5}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 209
    .line 210
    .line 211
    invoke-static {v1, v11, v7, v6}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 212
    .line 213
    .line 214
    move-result-object v14

    .line 215
    new-instance v7, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;

    .line 216
    .line 217
    const/4 v15, 0x1

    .line 218
    invoke-direct {v7, v8, v11, v15}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 219
    .line 220
    .line 221
    invoke-static {v1, v11, v7, v6}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    new-instance v12, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;

    .line 226
    .line 227
    invoke-direct {v12, v8, v11, v4}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 228
    .line 229
    .line 230
    invoke-static {v1, v11, v12, v6}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 231
    .line 232
    .line 233
    move-result-object v12

    .line 234
    move-object/from16 v16, v7

    .line 235
    .line 236
    new-instance v7, Lcoil3/RealImageLoader$execute$2;

    .line 237
    .line 238
    move-object/from16 v17, v12

    .line 239
    .line 240
    const/16 v12, 0x11

    .line 241
    .line 242
    move-object/from16 v5, v16

    .line 243
    .line 244
    move-object/from16 v4, v17

    .line 245
    .line 246
    invoke-direct/range {v7 .. v12}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 247
    .line 248
    .line 249
    invoke-static {v1, v11, v7, v6}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    iput-object v11, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$0:Ljava/lang/Object;

    .line 254
    .line 255
    iput-object v13, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$5:Lkotlinx/coroutines/Deferred;

    .line 256
    .line 257
    iput-object v14, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$6:Lkotlinx/coroutines/Deferred;

    .line 258
    .line 259
    iput-object v5, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$7:Lkotlinx/coroutines/Deferred;

    .line 260
    .line 261
    iput-object v4, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$8:Lkotlinx/coroutines/Deferred;

    .line 262
    .line 263
    iput-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$9:Lkotlinx/coroutines/DeferredCoroutine;

    .line 264
    .line 265
    iput v15, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->label:I

    .line 266
    .line 267
    invoke-virtual {v3, v0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    if-ne v3, v2, :cond_0

    .line 272
    .line 273
    goto/16 :goto_8

    .line 274
    .line 275
    :cond_0
    move-object v7, v5

    .line 276
    move-object v9, v13

    .line 277
    :goto_1
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 278
    .line 279
    iget-object v3, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 280
    .line 281
    if-eqz v3, :cond_1

    .line 282
    .line 283
    iget-object v3, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 284
    .line 285
    if-eqz v3, :cond_1

    .line 286
    .line 287
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 292
    .line 293
    goto :goto_2

    .line 294
    :cond_1
    move-object v3, v11

    .line 295
    :goto_2
    if-eqz v3, :cond_2

    .line 296
    .line 297
    iget v5, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageId:I

    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_2
    const/4 v5, -0x1

    .line 301
    :goto_3
    iput v5, v8, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->pageId:I

    .line 302
    .line 303
    iget-object v5, v8, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->editHistoryStatsData:Landroidx/lifecycle/MutableLiveData;

    .line 304
    .line 305
    if-eqz v3, :cond_3

    .line 306
    .line 307
    iget-object v3, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->revisions:Ljava/util/List;

    .line 308
    .line 309
    if-eqz v3, :cond_3

    .line 310
    .line 311
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 316
    .line 317
    if-nez v3, :cond_4

    .line 318
    .line 319
    :cond_3
    new-instance v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 320
    .line 321
    invoke-direct {v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;-><init>()V

    .line 322
    .line 323
    .line 324
    :cond_4
    iput-object v11, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$0:Ljava/lang/Object;

    .line 325
    .line 326
    iput-object v9, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$5:Lkotlinx/coroutines/Deferred;

    .line 327
    .line 328
    iput-object v14, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$6:Lkotlinx/coroutines/Deferred;

    .line 329
    .line 330
    iput-object v7, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$7:Lkotlinx/coroutines/Deferred;

    .line 331
    .line 332
    iput-object v4, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$8:Lkotlinx/coroutines/Deferred;

    .line 333
    .line 334
    iput-object v11, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$9:Lkotlinx/coroutines/DeferredCoroutine;

    .line 335
    .line 336
    iput-object v5, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$11:Landroidx/lifecycle/MutableLiveData;

    .line 337
    .line 338
    iput-object v3, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$12:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 339
    .line 340
    const/4 v8, 0x2

    .line 341
    iput v8, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->label:I

    .line 342
    .line 343
    invoke-interface {v1, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    if-ne v1, v2, :cond_5

    .line 348
    .line 349
    goto/16 :goto_8

    .line 350
    .line 351
    :cond_5
    move-object v8, v14

    .line 352
    :goto_4
    check-cast v1, Lorg/wikipedia/dataclient/restbase/Metrics;

    .line 353
    .line 354
    if-eqz v1, :cond_6

    .line 355
    .line 356
    iget-object v1, v1, Lorg/wikipedia/dataclient/restbase/Metrics;->firstItem:Lorg/wikipedia/dataclient/restbase/Metrics$Items;

    .line 357
    .line 358
    if-eqz v1, :cond_6

    .line 359
    .line 360
    iget-object v1, v1, Lorg/wikipedia/dataclient/restbase/Metrics$Items;->results:Ljava/util/List;

    .line 361
    .line 362
    if-nez v1, :cond_7

    .line 363
    .line 364
    :cond_6
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 365
    .line 366
    :cond_7
    iput-object v11, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$0:Ljava/lang/Object;

    .line 367
    .line 368
    iput-object v11, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$5:Lkotlinx/coroutines/Deferred;

    .line 369
    .line 370
    iput-object v8, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$6:Lkotlinx/coroutines/Deferred;

    .line 371
    .line 372
    iput-object v7, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$7:Lkotlinx/coroutines/Deferred;

    .line 373
    .line 374
    iput-object v4, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$8:Lkotlinx/coroutines/Deferred;

    .line 375
    .line 376
    iput-object v11, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$9:Lkotlinx/coroutines/DeferredCoroutine;

    .line 377
    .line 378
    iput-object v5, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$11:Landroidx/lifecycle/MutableLiveData;

    .line 379
    .line 380
    iput-object v3, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$12:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 381
    .line 382
    iput-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$13:Ljava/util/List;

    .line 383
    .line 384
    iput v6, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->label:I

    .line 385
    .line 386
    invoke-interface {v9, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v6

    .line 390
    if-ne v6, v2, :cond_8

    .line 391
    .line 392
    goto/16 :goto_8

    .line 393
    .line 394
    :cond_8
    move-object/from16 v18, v3

    .line 395
    .line 396
    move-object v3, v1

    .line 397
    move-object v1, v4

    .line 398
    move-object/from16 v4, v18

    .line 399
    .line 400
    :goto_5
    check-cast v6, Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 401
    .line 402
    iput-object v11, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$0:Ljava/lang/Object;

    .line 403
    .line 404
    iput-object v11, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$5:Lkotlinx/coroutines/Deferred;

    .line 405
    .line 406
    iput-object v11, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$6:Lkotlinx/coroutines/Deferred;

    .line 407
    .line 408
    iput-object v7, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$7:Lkotlinx/coroutines/Deferred;

    .line 409
    .line 410
    iput-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$8:Lkotlinx/coroutines/Deferred;

    .line 411
    .line 412
    iput-object v11, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$9:Lkotlinx/coroutines/DeferredCoroutine;

    .line 413
    .line 414
    iput-object v5, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$11:Landroidx/lifecycle/MutableLiveData;

    .line 415
    .line 416
    iput-object v4, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$12:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 417
    .line 418
    iput-object v3, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$13:Ljava/util/List;

    .line 419
    .line 420
    iput-object v6, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$14:Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 421
    .line 422
    const/4 v9, 0x4

    .line 423
    iput v9, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->label:I

    .line 424
    .line 425
    invoke-interface {v8, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v8

    .line 429
    if-ne v8, v2, :cond_9

    .line 430
    .line 431
    goto :goto_8

    .line 432
    :cond_9
    move-object/from16 v18, v6

    .line 433
    .line 434
    move-object v6, v1

    .line 435
    move-object/from16 v1, v18

    .line 436
    .line 437
    :goto_6
    check-cast v8, Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 438
    .line 439
    iput-object v11, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$0:Ljava/lang/Object;

    .line 440
    .line 441
    iput-object v11, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$5:Lkotlinx/coroutines/Deferred;

    .line 442
    .line 443
    iput-object v11, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$6:Lkotlinx/coroutines/Deferred;

    .line 444
    .line 445
    iput-object v11, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$7:Lkotlinx/coroutines/Deferred;

    .line 446
    .line 447
    iput-object v6, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$8:Lkotlinx/coroutines/Deferred;

    .line 448
    .line 449
    iput-object v11, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$9:Lkotlinx/coroutines/DeferredCoroutine;

    .line 450
    .line 451
    iput-object v5, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$11:Landroidx/lifecycle/MutableLiveData;

    .line 452
    .line 453
    iput-object v4, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$12:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 454
    .line 455
    iput-object v3, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$13:Ljava/util/List;

    .line 456
    .line 457
    iput-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$14:Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 458
    .line 459
    iput-object v8, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$15:Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 460
    .line 461
    const/4 v9, 0x5

    .line 462
    iput v9, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->label:I

    .line 463
    .line 464
    invoke-interface {v7, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v7

    .line 468
    if-ne v7, v2, :cond_a

    .line 469
    .line 470
    goto :goto_8

    .line 471
    :cond_a
    move-object/from16 v18, v3

    .line 472
    .line 473
    move-object v3, v1

    .line 474
    move-object v1, v8

    .line 475
    move-object v8, v6

    .line 476
    move-object v6, v4

    .line 477
    move-object/from16 v4, v18

    .line 478
    .line 479
    :goto_7
    check-cast v7, Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 480
    .line 481
    iput-object v11, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$0:Ljava/lang/Object;

    .line 482
    .line 483
    iput-object v11, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$5:Lkotlinx/coroutines/Deferred;

    .line 484
    .line 485
    iput-object v11, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$6:Lkotlinx/coroutines/Deferred;

    .line 486
    .line 487
    iput-object v11, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$7:Lkotlinx/coroutines/Deferred;

    .line 488
    .line 489
    iput-object v11, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$8:Lkotlinx/coroutines/Deferred;

    .line 490
    .line 491
    iput-object v11, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$9:Lkotlinx/coroutines/DeferredCoroutine;

    .line 492
    .line 493
    iput-object v5, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$11:Landroidx/lifecycle/MutableLiveData;

    .line 494
    .line 495
    iput-object v6, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$12:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 496
    .line 497
    iput-object v4, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$13:Ljava/util/List;

    .line 498
    .line 499
    iput-object v3, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$14:Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 500
    .line 501
    iput-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$15:Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 502
    .line 503
    iput-object v7, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->L$16:Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 504
    .line 505
    const/4 v9, 0x6

    .line 506
    iput v9, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2;->label:I

    .line 507
    .line 508
    invoke-interface {v8, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    if-ne v0, v2, :cond_b

    .line 513
    .line 514
    :goto_8
    return-object v2

    .line 515
    :cond_b
    move-object v10, v1

    .line 516
    move-object v11, v7

    .line 517
    move-object v7, v6

    .line 518
    goto/16 :goto_0

    .line 519
    .line 520
    :goto_9
    move-object v12, v0

    .line 521
    check-cast v12, Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 522
    .line 523
    new-instance v6, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryStats;

    .line 524
    .line 525
    invoke-direct/range {v6 .. v12}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryStats;-><init>(Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;Ljava/util/List;Lorg/wikipedia/dataclient/restbase/EditCount;Lorg/wikipedia/dataclient/restbase/EditCount;Lorg/wikipedia/dataclient/restbase/EditCount;Lorg/wikipedia/dataclient/restbase/EditCount;)V

    .line 526
    .line 527
    .line 528
    new-instance v0, Lorg/wikipedia/util/Resource$Success;

    .line 529
    .line 530
    invoke-direct {v0, v6}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v5, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 537
    .line 538
    return-object v0

    .line 539
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
