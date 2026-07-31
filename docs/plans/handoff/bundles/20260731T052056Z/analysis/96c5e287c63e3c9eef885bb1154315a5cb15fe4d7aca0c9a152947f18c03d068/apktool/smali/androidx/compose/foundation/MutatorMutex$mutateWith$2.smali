.class public final Landroidx/compose/foundation/MutatorMutex$mutateWith$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $block:Ljava/lang/Object;

.field public final synthetic $priority:Ljava/io/Serializable;

.field public final synthetic $r8$classId:I

.field public $receiver:Ljava/lang/Object;

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public label:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/MutatePriority;Landroidx/compose/foundation/MutatorMutex;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$priority:Ljava/io/Serializable;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$block:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$receiver:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/savedpages/SavedPageSyncService;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$r8$classId:I

    .line 17
    iput-object p1, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$priority:Ljava/io/Serializable;

    iput-object p2, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$block:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    .line 1
    iget v0, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$block:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$priority:Ljava/io/Serializable;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;

    .line 11
    .line 12
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 13
    .line 14
    check-cast v1, Lorg/wikipedia/savedpages/SavedPageSyncService;

    .line 15
    .line 16
    invoke-direct {p0, v2, v1, p2}, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;-><init>(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/savedpages/SavedPageSyncService;Lkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$2:Ljava/lang/Object;

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_0
    new-instance v3, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;

    .line 23
    .line 24
    move-object v4, v2

    .line 25
    check-cast v4, Landroidx/compose/foundation/MutatePriority;

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->this$0:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v5, v0

    .line 30
    check-cast v5, Landroidx/compose/foundation/MutatorMutex;

    .line 31
    .line 32
    move-object v6, v1

    .line 33
    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 34
    .line 35
    iget-object v7, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$receiver:Ljava/lang/Object;

    .line 36
    .line 37
    move-object v8, p2

    .line 38
    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;-><init>(Landroidx/compose/foundation/MutatePriority;Landroidx/compose/foundation/MutatorMutex;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, v3, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    return-object v3

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$priority:Ljava/io/Serializable;

    .line 8
    .line 9
    iget-object v5, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$block:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object v10, v5

    .line 16
    check-cast v10, Lorg/wikipedia/savedpages/SavedPageSyncService;

    .line 17
    .line 18
    move-object v12, v3

    .line 19
    check-cast v12, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 20
    .line 21
    iget-object v1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$2:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 24
    .line 25
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 26
    .line 27
    iget v5, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->label:I

    .line 28
    .line 29
    const/4 v8, 0x4

    .line 30
    const/4 v9, 0x3

    .line 31
    const-string v11, ":"

    .line 32
    .line 33
    const-string v13, "//"

    .line 34
    .line 35
    const-string v15, ""

    .line 36
    .line 37
    packed-switch v5, :pswitch_data_1

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_12

    .line 44
    .line 45
    :pswitch_0
    iget-object v1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->this$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Ljava/util/Set;

    .line 48
    .line 49
    check-cast v1, Ljava/util/Set;

    .line 50
    .line 51
    iget-object v0, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 54
    .line 55
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    move-object v1, v0

    .line 59
    move-object/from16 v0, p1

    .line 60
    .line 61
    goto/16 :goto_11

    .line 62
    .line 63
    :pswitch_1
    iget-object v1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->this$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Ljava/util/Set;

    .line 66
    .line 67
    check-cast v1, Ljava/util/Set;

    .line 68
    .line 69
    iget-object v1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 72
    .line 73
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_f

    .line 77
    .line 78
    :pswitch_2
    iget-object v1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->this$0:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v1, Ljava/util/Set;

    .line 81
    .line 82
    check-cast v1, Ljava/util/Set;

    .line 83
    .line 84
    iget-object v2, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$4:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v2, Lorg/wikipedia/gallery/MediaList;

    .line 87
    .line 88
    iget-object v4, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$receiver:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v4, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 91
    .line 92
    iget-object v5, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v5, Lorg/wikipedia/page/PageTitle;

    .line 95
    .line 96
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_8

    .line 100
    .line 101
    :pswitch_3
    iget-object v1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->this$0:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v1, Ljava/util/Set;

    .line 104
    .line 105
    check-cast v1, Ljava/util/Set;

    .line 106
    .line 107
    iget-object v2, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$4:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v2, Lorg/wikipedia/gallery/MediaList;

    .line 110
    .line 111
    iget-object v4, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$receiver:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v4, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 114
    .line 115
    iget-object v5, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v5, Lorg/wikipedia/page/PageTitle;

    .line 118
    .line 119
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    move-object v6, v5

    .line 123
    move-object v5, v4

    .line 124
    move-object v4, v2

    .line 125
    move-object/from16 v2, p1

    .line 126
    .line 127
    goto/16 :goto_4

    .line 128
    .line 129
    :pswitch_4
    iget-object v1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$4:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v1, Lorg/wikipedia/gallery/MediaList;

    .line 132
    .line 133
    iget-object v2, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$receiver:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v2, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 136
    .line 137
    iget-object v4, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v4, Lorg/wikipedia/page/PageTitle;

    .line 140
    .line 141
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    move-object v5, v4

    .line 145
    move-object v4, v2

    .line 146
    move-object/from16 v2, p1

    .line 147
    .line 148
    goto/16 :goto_2

    .line 149
    .line 150
    :pswitch_5
    iget-object v1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$receiver:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v1, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 153
    .line 154
    iget-object v2, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$0:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v2, Lkotlinx/coroutines/Deferred;

    .line 157
    .line 158
    iget-object v4, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v4, Lorg/wikipedia/page/PageTitle;

    .line 161
    .line 162
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    move-object v5, v4

    .line 166
    move-object/from16 v4, p1

    .line 167
    .line 168
    goto/16 :goto_1

    .line 169
    .line 170
    :pswitch_6
    iget-object v1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$0:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v1, Lkotlinx/coroutines/Deferred;

    .line 173
    .line 174
    iget-object v2, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$3:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v2, Lkotlinx/coroutines/DeferredCoroutine;

    .line 177
    .line 178
    iget-object v5, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v5, Lorg/wikipedia/page/PageTitle;

    .line 181
    .line 182
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    move-object v4, v2

    .line 186
    move-object/from16 v2, p1

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    iget-object v2, v12, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 196
    .line 197
    iget-object v5, v12, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    iput-object v5, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 206
    .line 207
    new-instance v16, Lorg/wikipedia/page/PageTitle;

    .line 208
    .line 209
    iget-object v5, v12, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 210
    .line 211
    iget-object v14, v12, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 212
    .line 213
    iget-object v4, v12, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 214
    .line 215
    iget-object v6, v12, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 216
    .line 217
    move-object/from16 v18, v2

    .line 218
    .line 219
    move-object/from16 v20, v4

    .line 220
    .line 221
    move-object/from16 v17, v5

    .line 222
    .line 223
    move-object/from16 v21, v6

    .line 224
    .line 225
    move-object/from16 v19, v14

    .line 226
    .line 227
    invoke-direct/range {v16 .. v21}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    move-object/from16 v5, v16

    .line 231
    .line 232
    new-instance v2, Lorg/wikipedia/page/PageFragment$openInNewTab$2;

    .line 233
    .line 234
    invoke-direct {v2, v5, v7, v8}, Lorg/wikipedia/page/PageFragment$openInNewTab$2;-><init>(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/Continuation;I)V

    .line 235
    .line 236
    .line 237
    invoke-static {v1, v7, v2, v9}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    new-instance v4, Lorg/wikipedia/page/PageFragment$openInNewTab$2;

    .line 242
    .line 243
    invoke-direct {v4, v5, v7, v9}, Lorg/wikipedia/page/PageFragment$openInNewTab$2;-><init>(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/Continuation;I)V

    .line 244
    .line 245
    .line 246
    invoke-static {v1, v7, v4, v9}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    new-instance v6, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 251
    .line 252
    const/16 v14, 0x1b

    .line 253
    .line 254
    invoke-direct {v6, v10, v5, v7, v14}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 255
    .line 256
    .line 257
    invoke-static {v1, v7, v6, v9}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    iput-object v7, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$2:Ljava/lang/Object;

    .line 262
    .line 263
    iput-object v5, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 264
    .line 265
    iput-object v4, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$3:Ljava/lang/Object;

    .line 266
    .line 267
    iput-object v1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$0:Ljava/lang/Object;

    .line 268
    .line 269
    const/4 v6, 0x1

    .line 270
    iput v6, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->label:I

    .line 271
    .line 272
    invoke-virtual {v2, v0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    if-ne v2, v3, :cond_0

    .line 277
    .line 278
    goto/16 :goto_10

    .line 279
    .line 280
    :cond_0
    :goto_0
    check-cast v2, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 281
    .line 282
    iput-object v7, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$2:Ljava/lang/Object;

    .line 283
    .line 284
    iput-object v5, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 285
    .line 286
    iput-object v7, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$3:Ljava/lang/Object;

    .line 287
    .line 288
    iput-object v1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$0:Ljava/lang/Object;

    .line 289
    .line 290
    iput-object v2, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$receiver:Ljava/lang/Object;

    .line 291
    .line 292
    const/4 v6, 0x2

    .line 293
    iput v6, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->label:I

    .line 294
    .line 295
    invoke-interface {v4, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    if-ne v4, v3, :cond_1

    .line 300
    .line 301
    goto/16 :goto_10

    .line 302
    .line 303
    :cond_1
    move-object/from16 v33, v2

    .line 304
    .line 305
    move-object v2, v1

    .line 306
    move-object/from16 v1, v33

    .line 307
    .line 308
    :goto_1
    check-cast v4, Lorg/wikipedia/gallery/MediaList;

    .line 309
    .line 310
    iput-object v7, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$2:Ljava/lang/Object;

    .line 311
    .line 312
    iput-object v5, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 313
    .line 314
    iput-object v7, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$3:Ljava/lang/Object;

    .line 315
    .line 316
    iput-object v7, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$0:Ljava/lang/Object;

    .line 317
    .line 318
    iput-object v1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$receiver:Ljava/lang/Object;

    .line 319
    .line 320
    iput-object v4, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$4:Ljava/lang/Object;

    .line 321
    .line 322
    iput v9, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->label:I

    .line 323
    .line 324
    invoke-interface {v2, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    if-ne v2, v3, :cond_2

    .line 329
    .line 330
    goto/16 :goto_10

    .line 331
    .line 332
    :cond_2
    move-object/from16 v33, v4

    .line 333
    .line 334
    move-object v4, v1

    .line 335
    move-object/from16 v1, v33

    .line 336
    .line 337
    :goto_2
    check-cast v2, Lokhttp3/Response;

    .line 338
    .line 339
    const/16 v6, 0x1e

    .line 340
    .line 341
    iput v6, v12, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress:I

    .line 342
    .line 343
    sget-object v6, Lorg/wikipedia/concurrency/FlowEventBus;->_events:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 344
    .line 345
    new-instance v6, Lorg/wikipedia/events/PageDownloadEvent;

    .line 346
    .line 347
    invoke-direct {v6, v12}, Lorg/wikipedia/events/PageDownloadEvent;-><init>(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    .line 348
    .line 349
    .line 350
    invoke-static {v6}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 354
    .line 355
    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 356
    .line 357
    .line 358
    iget-object v2, v2, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 359
    .line 360
    :try_start_0
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v9

    .line 364
    iget-object v14, v5, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 365
    .line 366
    invoke-static {v9, v14}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)Ljava/util/List;

    .line 367
    .line 368
    .line 369
    move-result-object v9

    .line 370
    new-instance v14, Ljava/util/ArrayList;

    .line 371
    .line 372
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 376
    .line 377
    .line 378
    move-result-object v9

    .line 379
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    .line 381
    .line 382
    move-result v16

    .line 383
    if-eqz v16, :cond_4

    .line 384
    .line 385
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v8

    .line 389
    move-object/from16 v17, v8

    .line 390
    .line 391
    check-cast v17, Ljava/lang/String;

    .line 392
    .line 393
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    .line 394
    .line 395
    .line 396
    move-result v17

    .line 397
    if-lez v17, :cond_3

    .line 398
    .line 399
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    :cond_3
    const/4 v8, 0x4

    .line 403
    goto :goto_3

    .line 404
    :catchall_0
    move-exception v0

    .line 405
    move-object v1, v0

    .line 406
    goto/16 :goto_13

    .line 407
    .line 408
    :cond_4
    invoke-interface {v6, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    .line 410
    .line 411
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 412
    .line 413
    .line 414
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 415
    .line 416
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isImageDownloadEnabled()Z

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    if-eqz v2, :cond_14

    .line 421
    .line 422
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    if-eqz v2, :cond_f

    .line 427
    .line 428
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    if-nez v2, :cond_5

    .line 433
    .line 434
    goto/16 :goto_9

    .line 435
    .line 436
    :cond_5
    iget-object v2, v5, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 437
    .line 438
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v8

    .line 442
    if-nez v8, :cond_6

    .line 443
    .line 444
    move-object v8, v15

    .line 445
    :cond_6
    invoke-static {v8, v2}, Lorg/wikipedia/util/UriUtil;->resolveProtocolRelativeUrl(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    iput-object v2, v12, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 450
    .line 451
    sget-object v2, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 452
    .line 453
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    invoke-virtual {v2}, Lorg/wikipedia/database/AppDatabase;->pageImagesDao()Lorg/wikipedia/pageimages/db/PageImageDao_Impl;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    iget-object v8, v5, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 462
    .line 463
    iget-object v8, v8, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 464
    .line 465
    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getNamespace()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v9

    .line 469
    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v14

    .line 473
    iput-object v7, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$2:Ljava/lang/Object;

    .line 474
    .line 475
    iput-object v5, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 476
    .line 477
    iput-object v7, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$3:Ljava/lang/Object;

    .line 478
    .line 479
    iput-object v7, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$0:Ljava/lang/Object;

    .line 480
    .line 481
    iput-object v4, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$receiver:Ljava/lang/Object;

    .line 482
    .line 483
    iput-object v1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$4:Ljava/lang/Object;

    .line 484
    .line 485
    iput-object v6, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->this$0:Ljava/lang/Object;

    .line 486
    .line 487
    const/4 v7, 0x4

    .line 488
    iput v7, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->label:I

    .line 489
    .line 490
    iget-object v2, v2, Lorg/wikipedia/pageimages/db/PageImageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 491
    .line 492
    new-instance v7, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda2;

    .line 493
    .line 494
    invoke-direct {v7, v8, v9, v14}, Lorg/wikipedia/history/db/HistoryEntryDao_Impl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    const/4 v8, 0x1

    .line 498
    const/4 v9, 0x0

    .line 499
    invoke-static {v2, v8, v9, v7, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    if-ne v2, v3, :cond_7

    .line 504
    .line 505
    goto/16 :goto_10

    .line 506
    .line 507
    :cond_7
    move-object/from16 v33, v4

    .line 508
    .line 509
    move-object v4, v1

    .line 510
    move-object v1, v6

    .line 511
    move-object v6, v5

    .line 512
    move-object/from16 v5, v33

    .line 513
    .line 514
    :goto_4
    check-cast v2, Ljava/util/List;

    .line 515
    .line 516
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    check-cast v2, Lorg/wikipedia/pageimages/db/PageImage;

    .line 521
    .line 522
    sget-object v7, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 523
    .line 524
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 525
    .line 526
    .line 527
    move-result-object v7

    .line 528
    invoke-virtual {v7}, Lorg/wikipedia/database/AppDatabase;->pageImagesDao()Lorg/wikipedia/pageimages/db/PageImageDao_Impl;

    .line 529
    .line 530
    .line 531
    move-result-object v7

    .line 532
    new-instance v22, Lorg/wikipedia/pageimages/db/PageImage;

    .line 533
    .line 534
    iget-object v8, v6, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 535
    .line 536
    iget-object v8, v8, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 537
    .line 538
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getNamespace()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v24

    .line 542
    iget-object v9, v12, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 543
    .line 544
    iget-object v14, v12, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 545
    .line 546
    if-nez v14, :cond_8

    .line 547
    .line 548
    move-object/from16 v26, v15

    .line 549
    .line 550
    goto :goto_5

    .line 551
    :cond_8
    move-object/from16 v26, v14

    .line 552
    .line 553
    :goto_5
    iget-object v14, v5, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 554
    .line 555
    move-object/from16 p1, v1

    .line 556
    .line 557
    iget-object v1, v5, Lorg/wikipedia/dataclient/page/PageSummary;->coordinates:Landroid/location/Location;

    .line 558
    .line 559
    if-eqz v2, :cond_9

    .line 560
    .line 561
    iget v2, v2, Lorg/wikipedia/pageimages/db/PageImage;->timeSpentSec:I

    .line 562
    .line 563
    move/from16 v28, v2

    .line 564
    .line 565
    goto :goto_6

    .line 566
    :cond_9
    const/16 v28, 0x0

    .line 567
    .line 568
    :goto_6
    const-wide/16 v18, 0x0

    .line 569
    .line 570
    if-eqz v1, :cond_a

    .line 571
    .line 572
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    .line 573
    .line 574
    .line 575
    move-result-wide v20

    .line 576
    move-wide/from16 v29, v20

    .line 577
    .line 578
    goto :goto_7

    .line 579
    :cond_a
    move-wide/from16 v29, v18

    .line 580
    .line 581
    :goto_7
    if-eqz v1, :cond_b

    .line 582
    .line 583
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    .line 584
    .line 585
    .line 586
    move-result-wide v18

    .line 587
    :cond_b
    move-object/from16 v23, v8

    .line 588
    .line 589
    move-object/from16 v25, v9

    .line 590
    .line 591
    move-object/from16 v27, v14

    .line 592
    .line 593
    move-wide/from16 v31, v18

    .line 594
    .line 595
    invoke-direct/range {v22 .. v32}, Lorg/wikipedia/pageimages/db/PageImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDD)V

    .line 596
    .line 597
    .line 598
    move-object/from16 v1, v22

    .line 599
    .line 600
    const/4 v2, 0x0

    .line 601
    iput-object v2, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$2:Ljava/lang/Object;

    .line 602
    .line 603
    iput-object v6, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 604
    .line 605
    iput-object v2, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$3:Ljava/lang/Object;

    .line 606
    .line 607
    iput-object v2, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$0:Ljava/lang/Object;

    .line 608
    .line 609
    iput-object v5, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$receiver:Ljava/lang/Object;

    .line 610
    .line 611
    iput-object v4, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$4:Ljava/lang/Object;

    .line 612
    .line 613
    move-object/from16 v2, p1

    .line 614
    .line 615
    check-cast v2, Ljava/util/Set;

    .line 616
    .line 617
    iput-object v2, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->this$0:Ljava/lang/Object;

    .line 618
    .line 619
    const/4 v2, 0x5

    .line 620
    iput v2, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->label:I

    .line 621
    .line 622
    invoke-virtual {v7, v1, v0}, Lorg/wikipedia/pageimages/db/PageImageDao_Impl;->insertPageImage(Lorg/wikipedia/pageimages/db/PageImage;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    if-ne v1, v3, :cond_c

    .line 627
    .line 628
    goto/16 :goto_10

    .line 629
    .line 630
    :cond_c
    move-object/from16 v1, p1

    .line 631
    .line 632
    move-object v2, v4

    .line 633
    move-object v4, v5

    .line 634
    move-object v5, v6

    .line 635
    :goto_8
    sget-object v6, Lorg/wikipedia/util/ImageUrlUtil;->WIDTH_IN_IMAGE_URL_REGEX:Ljava/util/regex/Pattern;

    .line 636
    .line 637
    iget-object v6, v12, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 638
    .line 639
    if-nez v6, :cond_d

    .line 640
    .line 641
    move-object v6, v15

    .line 642
    :cond_d
    const/16 v7, 0x3c0

    .line 643
    .line 644
    invoke-static {v7, v6}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(ILjava/lang/String;)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v6

    .line 648
    const/4 v9, 0x0

    .line 649
    invoke-static {v6, v13, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 650
    .line 651
    .line 652
    move-result v7

    .line 653
    if-eqz v7, :cond_e

    .line 654
    .line 655
    sget-object v7, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 656
    .line 657
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 658
    .line 659
    .line 660
    move-result-object v7

    .line 661
    invoke-virtual {v7}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 662
    .line 663
    .line 664
    move-result-object v7

    .line 665
    invoke-virtual {v7}, Lorg/wikipedia/dataclient/WikiSite;->scheme()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v7

    .line 669
    invoke-static {v7, v11, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v6

    .line 673
    :cond_e
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 674
    .line 675
    .line 676
    move-object v6, v1

    .line 677
    move-object v1, v2

    .line 678
    :cond_f
    :goto_9
    const-string v2, "image"

    .line 679
    .line 680
    filled-new-array {v2}, [Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v2

    .line 684
    invoke-virtual {v1, v2}, Lorg/wikipedia/gallery/MediaList;->getItems([Ljava/lang/String;)Ljava/util/ArrayList;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 693
    .line 694
    .line 695
    move-result v2

    .line 696
    if-eqz v2, :cond_14

    .line 697
    .line 698
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v2

    .line 702
    check-cast v2, Lorg/wikipedia/gallery/MediaListItem;

    .line 703
    .line 704
    iget-object v7, v2, Lorg/wikipedia/gallery/MediaListItem;->srcSets:Ljava/util/List;

    .line 705
    .line 706
    sget-object v7, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 707
    .line 708
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 709
    .line 710
    .line 711
    move-result-object v7

    .line 712
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 713
    .line 714
    .line 715
    move-result-object v7

    .line 716
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 720
    .line 721
    .line 722
    move-result-object v7

    .line 723
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 724
    .line 725
    .line 726
    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 727
    .line 728
    iget-object v2, v2, Lorg/wikipedia/gallery/MediaListItem;->srcSets:Ljava/util/List;

    .line 729
    .line 730
    const/4 v9, 0x0

    .line 731
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v8

    .line 735
    check-cast v8, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;

    .line 736
    .line 737
    iget-object v8, v8, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;->src:Ljava/lang/String;

    .line 738
    .line 739
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 740
    .line 741
    .line 742
    move-result-object v2

    .line 743
    const/high16 v9, 0x3f800000    # 1.0f

    .line 744
    .line 745
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 746
    .line 747
    .line 748
    move-result v14

    .line 749
    if-eqz v14, :cond_12

    .line 750
    .line 751
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v14

    .line 755
    check-cast v14, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;

    .line 756
    .line 757
    move-object/from16 p1, v1

    .line 758
    .line 759
    iget-object v1, v14, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;->_scale:Ljava/lang/String;

    .line 760
    .line 761
    move-object/from16 v16, v2

    .line 762
    .line 763
    if-eqz v1, :cond_10

    .line 764
    .line 765
    const-string/jumbo v2, "x"

    .line 766
    .line 767
    .line 768
    invoke-static {v1, v2, v15}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 773
    .line 774
    .line 775
    move-result v1

    .line 776
    goto :goto_c

    .line 777
    :cond_10
    const/4 v1, 0x0

    .line 778
    :goto_c
    cmpl-float v2, v7, v1

    .line 779
    .line 780
    if-ltz v2, :cond_11

    .line 781
    .line 782
    cmpg-float v2, v9, v1

    .line 783
    .line 784
    if-gez v2, :cond_11

    .line 785
    .line 786
    iget-object v2, v14, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;->src:Ljava/lang/String;

    .line 787
    .line 788
    move v9, v1

    .line 789
    move-object v8, v2

    .line 790
    :cond_11
    move-object/from16 v1, p1

    .line 791
    .line 792
    move-object/from16 v2, v16

    .line 793
    .line 794
    goto :goto_b

    .line 795
    :cond_12
    move-object/from16 p1, v1

    .line 796
    .line 797
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 798
    .line 799
    .line 800
    const/4 v9, 0x0

    .line 801
    invoke-static {v8, v13, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 802
    .line 803
    .line 804
    move-result v1

    .line 805
    if-eqz v1, :cond_13

    .line 806
    .line 807
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 808
    .line 809
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 810
    .line 811
    .line 812
    move-result-object v1

    .line 813
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 814
    .line 815
    .line 816
    move-result-object v1

    .line 817
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->scheme()Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v1

    .line 821
    invoke-static {v1, v11, v8}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v8

    .line 825
    :cond_13
    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 826
    .line 827
    .line 828
    move-object/from16 v1, p1

    .line 829
    .line 830
    goto/16 :goto_a

    .line 831
    .line 832
    :cond_14
    move-object v11, v5

    .line 833
    move-object v9, v6

    .line 834
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v1

    .line 838
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 839
    .line 840
    .line 841
    iput-object v1, v12, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 842
    .line 843
    iget-object v1, v4, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 844
    .line 845
    if-nez v1, :cond_15

    .line 846
    .line 847
    goto :goto_d

    .line 848
    :cond_15
    move-object v15, v1

    .line 849
    :goto_d
    iput-object v15, v12, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 850
    .line 851
    const/4 v2, 0x0

    .line 852
    iput-object v2, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$2:Ljava/lang/Object;

    .line 853
    .line 854
    iput-object v11, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 855
    .line 856
    iput-object v2, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$3:Ljava/lang/Object;

    .line 857
    .line 858
    iput-object v2, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$0:Ljava/lang/Object;

    .line 859
    .line 860
    iput-object v2, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$receiver:Ljava/lang/Object;

    .line 861
    .line 862
    iput-object v2, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$4:Ljava/lang/Object;

    .line 863
    .line 864
    iput-object v2, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->this$0:Ljava/lang/Object;

    .line 865
    .line 866
    const/4 v1, 0x6

    .line 867
    iput v1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->label:I

    .line 868
    .line 869
    invoke-interface {v9}, Ljava/util/Set;->size()I

    .line 870
    .line 871
    .line 872
    move-result v1

    .line 873
    new-instance v13, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 874
    .line 875
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 876
    .line 877
    .line 878
    const/high16 v2, 0x41f00000    # 30.0f

    .line 879
    .line 880
    iput v2, v13, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 881
    .line 882
    const/high16 v2, 0x428c0000    # 70.0f

    .line 883
    .line 884
    int-to-float v1, v1

    .line 885
    div-float v14, v2, v1

    .line 886
    .line 887
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 888
    .line 889
    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 890
    .line 891
    new-instance v8, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;

    .line 892
    .line 893
    const/4 v15, 0x0

    .line 894
    invoke-direct/range {v8 .. v15}, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;-><init>(Ljava/util/Set;Lorg/wikipedia/savedpages/SavedPageSyncService;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/readinglist/database/ReadingListPage;Lkotlin/jvm/internal/Ref$FloatRef;FLkotlin/coroutines/Continuation;)V

    .line 895
    .line 896
    .line 897
    invoke-static {v1, v8, v0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v1

    .line 901
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 902
    .line 903
    if-ne v1, v2, :cond_16

    .line 904
    .line 905
    goto :goto_e

    .line 906
    :cond_16
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 907
    .line 908
    :goto_e
    if-ne v1, v3, :cond_17

    .line 909
    .line 910
    goto :goto_10

    .line 911
    :cond_17
    move-object v1, v11

    .line 912
    :goto_f
    sget-object v2, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 913
    .line 914
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 915
    .line 916
    .line 917
    move-result-object v2

    .line 918
    invoke-virtual {v2}, Lorg/wikipedia/database/AppDatabase;->offlineObjectDao()Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 919
    .line 920
    .line 921
    move-result-object v2

    .line 922
    iget-wide v4, v12, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 923
    .line 924
    const/4 v6, 0x0

    .line 925
    iput-object v6, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$2:Ljava/lang/Object;

    .line 926
    .line 927
    iput-object v1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 928
    .line 929
    iput-object v6, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$3:Ljava/lang/Object;

    .line 930
    .line 931
    iput-object v6, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$0:Ljava/lang/Object;

    .line 932
    .line 933
    iput-object v6, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$receiver:Ljava/lang/Object;

    .line 934
    .line 935
    iput-object v6, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$4:Ljava/lang/Object;

    .line 936
    .line 937
    iput-object v6, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->this$0:Ljava/lang/Object;

    .line 938
    .line 939
    const/4 v6, 0x7

    .line 940
    iput v6, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->label:I

    .line 941
    .line 942
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 943
    .line 944
    .line 945
    invoke-static {v2, v4, v5, v0}, Lorg/wikipedia/dataclient/Service$-CC;->getTotalBytesForPageId$suspendImpl(Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    if-ne v0, v3, :cond_18

    .line 950
    .line 951
    :goto_10
    move-object v7, v3

    .line 952
    goto :goto_12

    .line 953
    :cond_18
    :goto_11
    check-cast v0, Ljava/lang/Number;

    .line 954
    .line 955
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 956
    .line 957
    .line 958
    move-result-wide v2

    .line 959
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    new-instance v1, Ljava/lang/StringBuilder;

    .line 964
    .line 965
    const-string v4, "Saved page "

    .line 966
    .line 967
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 968
    .line 969
    .line 970
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    .line 972
    .line 973
    const-string v0, " ("

    .line 974
    .line 975
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    .line 977
    .line 978
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 979
    .line 980
    .line 981
    const-string v0, ")"

    .line 982
    .line 983
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    .line 985
    .line 986
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v0

    .line 990
    sget-object v1, Lorg/wikipedia/util/log/L;->LEVEL_I:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 991
    .line 992
    const/4 v6, 0x0

    .line 993
    invoke-virtual {v1, v0, v6}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 994
    .line 995
    .line 996
    new-instance v7, Ljava/lang/Long;

    .line 997
    .line 998
    invoke-direct {v7, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 999
    .line 1000
    .line 1001
    :goto_12
    return-object v7

    .line 1002
    :goto_13
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1003
    :catchall_1
    move-exception v0

    .line 1004
    invoke-static {v2, v1}, Lkotlin/ResultKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1005
    .line 1006
    .line 1007
    throw v0

    .line 1008
    :pswitch_8
    iget-object v1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->this$0:Ljava/lang/Object;

    .line 1009
    .line 1010
    check-cast v1, Landroidx/compose/foundation/MutatorMutex;

    .line 1011
    .line 1012
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1013
    .line 1014
    iget v6, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->label:I

    .line 1015
    .line 1016
    if-eqz v6, :cond_1b

    .line 1017
    .line 1018
    const/4 v8, 0x1

    .line 1019
    if-eq v6, v8, :cond_1a

    .line 1020
    .line 1021
    const/4 v1, 0x2

    .line 1022
    if-ne v6, v1, :cond_19

    .line 1023
    .line 1024
    iget-object v1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$2:Ljava/lang/Object;

    .line 1025
    .line 1026
    check-cast v1, Landroidx/compose/foundation/MutatorMutex;

    .line 1027
    .line 1028
    iget-object v2, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 1029
    .line 1030
    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    .line 1031
    .line 1032
    iget-object v0, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$0:Ljava/lang/Object;

    .line 1033
    .line 1034
    move-object v3, v0

    .line 1035
    check-cast v3, Landroidx/compose/foundation/MutatorMutex$Mutator;

    .line 1036
    .line 1037
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1038
    .line 1039
    .line 1040
    move-object/from16 v0, p1

    .line 1041
    .line 1042
    goto/16 :goto_16

    .line 1043
    .line 1044
    :catchall_2
    move-exception v0

    .line 1045
    goto/16 :goto_1a

    .line 1046
    .line 1047
    :cond_19
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1048
    .line 1049
    .line 1050
    const/4 v7, 0x0

    .line 1051
    goto/16 :goto_18

    .line 1052
    .line 1053
    :cond_1a
    iget-object v1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$4:Ljava/lang/Object;

    .line 1054
    .line 1055
    check-cast v1, Landroidx/compose/foundation/MutatorMutex;

    .line 1056
    .line 1057
    iget-object v2, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$3:Ljava/lang/Object;

    .line 1058
    .line 1059
    iget-object v3, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$2:Ljava/lang/Object;

    .line 1060
    .line 1061
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 1062
    .line 1063
    iget-object v5, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 1064
    .line 1065
    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    .line 1066
    .line 1067
    iget-object v6, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$0:Ljava/lang/Object;

    .line 1068
    .line 1069
    check-cast v6, Landroidx/compose/foundation/MutatorMutex$Mutator;

    .line 1070
    .line 1071
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1072
    .line 1073
    .line 1074
    goto :goto_14

    .line 1075
    :cond_1b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1076
    .line 1077
    .line 1078
    iget-object v2, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$0:Ljava/lang/Object;

    .line 1079
    .line 1080
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 1081
    .line 1082
    new-instance v6, Landroidx/compose/foundation/MutatorMutex$Mutator;

    .line 1083
    .line 1084
    check-cast v3, Landroidx/compose/foundation/MutatePriority;

    .line 1085
    .line 1086
    invoke-interface {v2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v2

    .line 1090
    sget-object v7, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    .line 1091
    .line 1092
    invoke-interface {v2, v7}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v2

    .line 1096
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1097
    .line 1098
    .line 1099
    check-cast v2, Lkotlinx/coroutines/Job;

    .line 1100
    .line 1101
    invoke-direct {v6, v3, v2}, Landroidx/compose/foundation/MutatorMutex$Mutator;-><init>(Landroidx/compose/foundation/MutatePriority;Lkotlinx/coroutines/Job;)V

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v1, v6}, Landroidx/compose/foundation/MutatorMutex;->tryMutateOrCancel(Landroidx/compose/foundation/MutatorMutex$Mutator;)V

    .line 1105
    .line 1106
    .line 1107
    iget-object v2, v1, Landroidx/compose/foundation/MutatorMutex;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 1108
    .line 1109
    move-object v3, v5

    .line 1110
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 1111
    .line 1112
    iget-object v5, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->$receiver:Ljava/lang/Object;

    .line 1113
    .line 1114
    iput-object v6, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$0:Ljava/lang/Object;

    .line 1115
    .line 1116
    iput-object v2, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 1117
    .line 1118
    iput-object v3, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$2:Ljava/lang/Object;

    .line 1119
    .line 1120
    iput-object v5, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$3:Ljava/lang/Object;

    .line 1121
    .line 1122
    iput-object v1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$4:Ljava/lang/Object;

    .line 1123
    .line 1124
    const/4 v8, 0x1

    .line 1125
    iput v8, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->label:I

    .line 1126
    .line 1127
    invoke-virtual {v2, v0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v7

    .line 1131
    if-ne v7, v4, :cond_1c

    .line 1132
    .line 1133
    goto :goto_15

    .line 1134
    :cond_1c
    move-object/from16 v33, v5

    .line 1135
    .line 1136
    move-object v5, v2

    .line 1137
    move-object/from16 v2, v33

    .line 1138
    .line 1139
    :goto_14
    :try_start_3
    iput-object v6, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$0:Ljava/lang/Object;

    .line 1140
    .line 1141
    iput-object v5, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 1142
    .line 1143
    iput-object v1, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$2:Ljava/lang/Object;

    .line 1144
    .line 1145
    const/4 v7, 0x0

    .line 1146
    iput-object v7, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$3:Ljava/lang/Object;

    .line 1147
    .line 1148
    iput-object v7, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->L$4:Ljava/lang/Object;

    .line 1149
    .line 1150
    const/4 v7, 0x2

    .line 1151
    iput v7, v0, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;->label:I

    .line 1152
    .line 1153
    invoke-interface {v3, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1157
    if-ne v0, v4, :cond_1d

    .line 1158
    .line 1159
    :goto_15
    move-object v7, v4

    .line 1160
    goto :goto_18

    .line 1161
    :cond_1d
    move-object v2, v5

    .line 1162
    move-object v3, v6

    .line 1163
    :goto_16
    :try_start_4
    iget-object v1, v1, Landroidx/compose/foundation/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1164
    .line 1165
    const/4 v6, 0x0

    .line 1166
    :cond_1e
    invoke-virtual {v1, v3, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1167
    .line 1168
    .line 1169
    move-result v4

    .line 1170
    if-eqz v4, :cond_1f

    .line 1171
    .line 1172
    goto :goto_17

    .line 1173
    :cond_1f
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1177
    if-eq v4, v3, :cond_1e

    .line 1178
    .line 1179
    :goto_17
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1180
    .line 1181
    .line 1182
    move-object v7, v0

    .line 1183
    :goto_18
    return-object v7

    .line 1184
    :goto_19
    const/4 v6, 0x0

    .line 1185
    goto :goto_1c

    .line 1186
    :catchall_3
    move-exception v0

    .line 1187
    goto :goto_19

    .line 1188
    :catchall_4
    move-exception v0

    .line 1189
    move-object v2, v5

    .line 1190
    move-object v3, v6

    .line 1191
    :goto_1a
    :try_start_5
    iget-object v1, v1, Landroidx/compose/foundation/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1192
    .line 1193
    :goto_1b
    const/4 v6, 0x0

    .line 1194
    invoke-virtual {v1, v3, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1195
    .line 1196
    .line 1197
    move-result v4

    .line 1198
    if-nez v4, :cond_20

    .line 1199
    .line 1200
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v4

    .line 1204
    if-ne v4, v3, :cond_20

    .line 1205
    .line 1206
    goto :goto_1b

    .line 1207
    :cond_20
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1208
    :goto_1c
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1209
    .line 1210
    .line 1211
    throw v0

    .line 1212
    nop

    .line 1213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch

    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
