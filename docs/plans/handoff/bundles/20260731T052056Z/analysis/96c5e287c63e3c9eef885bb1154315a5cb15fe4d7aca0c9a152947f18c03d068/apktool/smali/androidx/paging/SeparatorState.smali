.class public final Landroidx/paging/SeparatorState;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public endTerminalSeparatorDeferred:Z

.field public footerAdded:Z

.field public final generator:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;

.field public headerAdded:Z

.field public mediatorStates:Landroidx/paging/LoadStates;

.field public final pageStash:Ljava/util/ArrayList;

.field public placeholdersAfter:I

.field public placeholdersBefore:I

.field public final sourceStates:Lcom/caverock/androidsvg/SVG;

.field public startTerminalSeparatorDeferred:Z

.field public final terminalSeparatorType:Landroidx/paging/TerminalSeparatorType;


# direct methods
.method public constructor <init>(Landroidx/paging/TerminalSeparatorType;Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/paging/SeparatorState;->terminalSeparatorType:Landroidx/paging/TerminalSeparatorType;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/paging/SeparatorState;->generator:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/paging/SeparatorState;->pageStash:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance p1, Lcom/caverock/androidsvg/SVG;

    .line 16
    .line 17
    const/16 p2, 0x17

    .line 18
    .line 19
    invoke-direct {p1, p2}, Lcom/caverock/androidsvg/SVG;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroidx/paging/SeparatorState;->sourceStates:Lcom/caverock/androidsvg/SVG;

    .line 23
    .line 24
    return-void
.end method

.method public static transformablePageToStash(Landroidx/paging/TransformablePage;)Landroidx/paging/TransformablePage;
    .locals 9

    .line 1
    new-instance v0, Landroidx/paging/TransformablePage;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/paging/TransformablePage;->originalPageOffsets:[I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const/4 v5, 0x2

    .line 16
    new-array v6, v5, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    aput-object v3, v6, v7

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    aput-object v4, v6, v3

    .line 23
    .line 24
    invoke-static {v6}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget v6, p0, Landroidx/paging/TransformablePage;->hintOriginalPageOffset:I

    .line 29
    .line 30
    iget-object p0, p0, Landroidx/paging/TransformablePage;->hintOriginalIndices:Ljava/util/List;

    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    check-cast v8, Ljava/lang/Number;

    .line 39
    .line 40
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v8, v7

    .line 46
    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    if-eqz p0, :cond_1

    .line 51
    .line 52
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Ljava/lang/Number;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    sub-int/2addr p0, v3

    .line 68
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    new-array v2, v5, [Ljava/lang/Integer;

    .line 73
    .line 74
    aput-object v8, v2, v7

    .line 75
    .line 76
    aput-object p0, v2, v3

    .line 77
    .line 78
    invoke-static {v2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-direct {v0, v1, v4, v6, p0}, Landroidx/paging/TransformablePage;-><init>([ILjava/util/List;ILjava/util/List;)V

    .line 83
    .line 84
    .line 85
    return-object v0
.end method


# virtual methods
.method public final onEvent(Landroidx/paging/PageEvent;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v2, Landroidx/paging/SeparatorState$onEvent$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Landroidx/paging/SeparatorState$onEvent$1;

    .line 13
    .line 14
    iget v4, v3, Landroidx/paging/SeparatorState$onEvent$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Landroidx/paging/SeparatorState$onEvent$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Landroidx/paging/SeparatorState$onEvent$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Landroidx/paging/SeparatorState$onEvent$1;-><init>(Landroidx/paging/SeparatorState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Landroidx/paging/SeparatorState$onEvent$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v5, v3, Landroidx/paging/SeparatorState$onEvent$1;->label:I

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x3

    .line 39
    const/4 v8, 0x2

    .line 40
    iget-object v9, v0, Landroidx/paging/SeparatorState;->pageStash:Ljava/util/ArrayList;

    .line 41
    .line 42
    const/4 v10, 0x1

    .line 43
    if-eqz v5, :cond_4

    .line 44
    .line 45
    if-eq v5, v10, :cond_3

    .line 46
    .line 47
    if-eq v5, v8, :cond_2

    .line 48
    .line 49
    if-ne v5, v7, :cond_1

    .line 50
    .line 51
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    check-cast v2, Landroidx/paging/PageEvent;

    .line 55
    .line 56
    goto/16 :goto_a

    .line 57
    .line 58
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v6

    .line 64
    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_9

    .line 68
    .line 69
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    instance-of v2, v1, Landroidx/paging/PageEvent$Insert;

    .line 77
    .line 78
    if-eqz v2, :cond_6

    .line 79
    .line 80
    check-cast v1, Landroidx/paging/PageEvent$Insert;

    .line 81
    .line 82
    iput v10, v3, Landroidx/paging/SeparatorState$onEvent$1;->label:I

    .line 83
    .line 84
    invoke-virtual {v0, v1, v3}, Landroidx/paging/SeparatorState;->onInsert(Landroidx/paging/PageEvent$Insert;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-ne v2, v4, :cond_5

    .line 89
    .line 90
    goto/16 :goto_8

    .line 91
    .line 92
    :cond_5
    :goto_1
    check-cast v2, Landroidx/paging/PageEvent;

    .line 93
    .line 94
    goto/16 :goto_a

    .line 95
    .line 96
    :cond_6
    instance-of v2, v1, Landroidx/paging/PageEvent$Drop;

    .line 97
    .line 98
    iget-object v5, v0, Landroidx/paging/SeparatorState;->sourceStates:Lcom/caverock/androidsvg/SVG;

    .line 99
    .line 100
    if-eqz v2, :cond_b

    .line 101
    .line 102
    move-object v2, v1

    .line 103
    check-cast v2, Landroidx/paging/PageEvent$Drop;

    .line 104
    .line 105
    sget-object v1, Landroidx/paging/LoadState$NotLoading;->Incomplete:Landroidx/paging/LoadState$NotLoading;

    .line 106
    .line 107
    invoke-virtual {v5, v6, v1}, Lcom/caverock/androidsvg/SVG;->set(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    .line 108
    .line 109
    .line 110
    sget-object v1, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    .line 111
    .line 112
    const/4 v3, 0x0

    .line 113
    if-nez v1, :cond_7

    .line 114
    .line 115
    iput v3, v0, Landroidx/paging/SeparatorState;->placeholdersBefore:I

    .line 116
    .line 117
    iput-boolean v3, v0, Landroidx/paging/SeparatorState;->headerAdded:Z

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_7
    sget-object v4, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    .line 121
    .line 122
    if-nez v4, :cond_8

    .line 123
    .line 124
    iput v3, v0, Landroidx/paging/SeparatorState;->placeholdersAfter:I

    .line 125
    .line 126
    iput-boolean v3, v0, Landroidx/paging/SeparatorState;->footerAdded:Z

    .line 127
    .line 128
    :cond_8
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-eqz v4, :cond_a

    .line 133
    .line 134
    if-nez v1, :cond_9

    .line 135
    .line 136
    iput-boolean v3, v0, Landroidx/paging/SeparatorState;->startTerminalSeparatorDeferred:Z

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_9
    iput-boolean v3, v0, Landroidx/paging/SeparatorState;->endTerminalSeparatorDeferred:Z

    .line 140
    .line 141
    :cond_a
    :goto_3
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 142
    .line 143
    invoke-direct {v1, v3, v3, v10}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 144
    .line 145
    .line 146
    new-instance v3, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 147
    .line 148
    const/16 v4, 0x11

    .line 149
    .line 150
    invoke-direct {v3, v4, v1}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v9, v3}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_a

    .line 157
    .line 158
    :cond_b
    instance-of v2, v1, Landroidx/paging/PageEvent$LoadStateUpdate;

    .line 159
    .line 160
    if-eqz v2, :cond_16

    .line 161
    .line 162
    check-cast v1, Landroidx/paging/PageEvent$LoadStateUpdate;

    .line 163
    .line 164
    iput v8, v3, Landroidx/paging/SeparatorState$onEvent$1;->label:I

    .line 165
    .line 166
    iget-object v2, v0, Landroidx/paging/SeparatorState;->mediatorStates:Landroidx/paging/LoadStates;

    .line 167
    .line 168
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG;->snapshot()Landroidx/paging/LoadStates;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    iget-object v15, v1, Landroidx/paging/PageEvent$LoadStateUpdate;->source:Landroidx/paging/LoadStates;

    .line 173
    .line 174
    iget-object v8, v1, Landroidx/paging/PageEvent$LoadStateUpdate;->mediator:Landroidx/paging/LoadStates;

    .line 175
    .line 176
    invoke-virtual {v7, v15}, Landroidx/paging/LoadStates;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    if-eqz v7, :cond_d

    .line 181
    .line 182
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    if-eqz v7, :cond_d

    .line 187
    .line 188
    :cond_c
    :goto_4
    move-object v2, v1

    .line 189
    goto :goto_7

    .line 190
    :cond_d
    invoke-virtual {v5, v15}, Lcom/caverock/androidsvg/SVG;->set(Landroidx/paging/LoadStates;)V

    .line 191
    .line 192
    .line 193
    iput-object v8, v0, Landroidx/paging/SeparatorState;->mediatorStates:Landroidx/paging/LoadStates;

    .line 194
    .line 195
    sget-object v12, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 196
    .line 197
    if-eqz v8, :cond_f

    .line 198
    .line 199
    iget-object v5, v8, Landroidx/paging/LoadStates;->prepend:Landroidx/paging/LoadState;

    .line 200
    .line 201
    iget-boolean v7, v5, Landroidx/paging/LoadState;->endOfPaginationReached:Z

    .line 202
    .line 203
    if-eqz v7, :cond_f

    .line 204
    .line 205
    if-eqz v2, :cond_e

    .line 206
    .line 207
    iget-object v7, v2, Landroidx/paging/LoadStates;->prepend:Landroidx/paging/LoadState;

    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_e
    move-object v7, v6

    .line 211
    :goto_5
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-nez v5, :cond_f

    .line 216
    .line 217
    iget v13, v0, Landroidx/paging/SeparatorState;->placeholdersBefore:I

    .line 218
    .line 219
    iget-object v1, v1, Landroidx/paging/PageEvent$LoadStateUpdate;->mediator:Landroidx/paging/LoadStates;

    .line 220
    .line 221
    new-instance v10, Landroidx/paging/PageEvent$Insert;

    .line 222
    .line 223
    sget-object v11, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    .line 224
    .line 225
    const/4 v14, -0x1

    .line 226
    move-object/from16 v16, v1

    .line 227
    .line 228
    invoke-direct/range {v10 .. v16}, Landroidx/paging/PageEvent$Insert;-><init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v10, v3}, Landroidx/paging/SeparatorState;->onInsert(Landroidx/paging/PageEvent$Insert;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    goto :goto_4

    .line 236
    :cond_f
    if-eqz v8, :cond_c

    .line 237
    .line 238
    iget-object v5, v8, Landroidx/paging/LoadStates;->append:Landroidx/paging/LoadState;

    .line 239
    .line 240
    iget-boolean v7, v5, Landroidx/paging/LoadState;->endOfPaginationReached:Z

    .line 241
    .line 242
    if-eqz v7, :cond_c

    .line 243
    .line 244
    if-eqz v2, :cond_10

    .line 245
    .line 246
    iget-object v2, v2, Landroidx/paging/LoadStates;->append:Landroidx/paging/LoadState;

    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_10
    move-object v2, v6

    .line 250
    :goto_6
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-nez v2, :cond_c

    .line 255
    .line 256
    iget v14, v0, Landroidx/paging/SeparatorState;->placeholdersAfter:I

    .line 257
    .line 258
    iget-object v1, v1, Landroidx/paging/PageEvent$LoadStateUpdate;->mediator:Landroidx/paging/LoadStates;

    .line 259
    .line 260
    new-instance v10, Landroidx/paging/PageEvent$Insert;

    .line 261
    .line 262
    sget-object v11, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    .line 263
    .line 264
    const/4 v13, -0x1

    .line 265
    move-object/from16 v16, v1

    .line 266
    .line 267
    invoke-direct/range {v10 .. v16}, Landroidx/paging/PageEvent$Insert;-><init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v10, v3}, Landroidx/paging/SeparatorState;->onInsert(Landroidx/paging/PageEvent$Insert;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    goto :goto_4

    .line 275
    :goto_7
    if-ne v2, v4, :cond_11

    .line 276
    .line 277
    :goto_8
    return-object v4

    .line 278
    :cond_11
    :goto_9
    check-cast v2, Landroidx/paging/PageEvent;

    .line 279
    .line 280
    :goto_a
    iget-boolean v1, v0, Landroidx/paging/SeparatorState;->endTerminalSeparatorDeferred:Z

    .line 281
    .line 282
    if-eqz v1, :cond_13

    .line 283
    .line 284
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-eqz v1, :cond_12

    .line 289
    .line 290
    goto :goto_b

    .line 291
    :cond_12
    const-string v0, "deferred endTerm, page stash should be empty"

    .line 292
    .line 293
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    return-object v6

    .line 297
    :cond_13
    :goto_b
    iget-boolean v0, v0, Landroidx/paging/SeparatorState;->startTerminalSeparatorDeferred:Z

    .line 298
    .line 299
    if-eqz v0, :cond_15

    .line 300
    .line 301
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-eqz v0, :cond_14

    .line 306
    .line 307
    goto :goto_c

    .line 308
    :cond_14
    const-string v0, "deferred startTerm, page stash should be empty"

    .line 309
    .line 310
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    return-object v6

    .line 314
    :cond_15
    :goto_c
    return-object v2

    .line 315
    :cond_16
    instance-of v2, v1, Landroidx/paging/PageEvent$StaticList;

    .line 316
    .line 317
    if-nez v2, :cond_17

    .line 318
    .line 319
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 320
    .line 321
    .line 322
    return-object v6

    .line 323
    :cond_17
    check-cast v1, Landroidx/paging/PageEvent$StaticList;

    .line 324
    .line 325
    iput v7, v3, Landroidx/paging/SeparatorState$onEvent$1;->label:I

    .line 326
    .line 327
    invoke-virtual {v0, v1, v3}, Landroidx/paging/SeparatorState;->onStaticList(Landroidx/paging/PageEvent$StaticList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    throw v6
.end method

.method public final onInsert(Landroidx/paging/PageEvent$Insert;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v2, Landroidx/paging/SeparatorState$onInsert$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Landroidx/paging/SeparatorState$onInsert$1;

    .line 13
    .line 14
    iget v4, v3, Landroidx/paging/SeparatorState$onInsert$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Landroidx/paging/SeparatorState$onInsert$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Landroidx/paging/SeparatorState$onInsert$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Landroidx/paging/SeparatorState$onInsert$1;-><init>(Landroidx/paging/SeparatorState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Landroidx/paging/SeparatorState$onInsert$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v5, v3, Landroidx/paging/SeparatorState$onInsert$1;->label:I

    .line 36
    .line 37
    iget-object v6, v0, Landroidx/paging/SeparatorState;->pageStash:Ljava/util/ArrayList;

    .line 38
    .line 39
    iget-object v7, v0, Landroidx/paging/SeparatorState;->generator:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;

    .line 40
    .line 41
    const/4 v10, 0x0

    .line 42
    packed-switch v5, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v10

    .line 51
    :pswitch_0
    iget-object v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$4:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Ljava/util/List;

    .line 54
    .line 55
    iget-object v4, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$3:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v4, Landroidx/paging/TransformablePage;

    .line 58
    .line 59
    iget-object v5, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$2:Ljava/util/ArrayList;

    .line 60
    .line 61
    iget-object v7, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$1:Ljava/util/ArrayList;

    .line 62
    .line 63
    iget-object v3, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$0:Landroidx/paging/PageEvent$Insert;

    .line 64
    .line 65
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    move-object v8, v7

    .line 69
    move-object v7, v1

    .line 70
    move-object v1, v8

    .line 71
    move-object v8, v2

    .line 72
    move-object v9, v4

    .line 73
    move-object/from16 v18, v6

    .line 74
    .line 75
    move-object v2, v0

    .line 76
    goto/16 :goto_2c

    .line 77
    .line 78
    :pswitch_1
    iget v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$2:I

    .line 79
    .line 80
    iget v5, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$1:I

    .line 81
    .line 82
    iget v11, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$0:I

    .line 83
    .line 84
    iget-boolean v12, v3, Landroidx/paging/SeparatorState$onInsert$1;->Z$0:Z

    .line 85
    .line 86
    iget-object v13, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$4:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v13, Ljava/util/ArrayList;

    .line 89
    .line 90
    iget-object v14, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$3:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v14, Landroidx/paging/TransformablePage;

    .line 93
    .line 94
    iget-object v15, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$2:Ljava/util/ArrayList;

    .line 95
    .line 96
    iget-object v8, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$1:Ljava/util/ArrayList;

    .line 97
    .line 98
    move-object/from16 v16, v10

    .line 99
    .line 100
    iget-object v10, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$0:Landroidx/paging/PageEvent$Insert;

    .line 101
    .line 102
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    move-object/from16 v18, v6

    .line 106
    .line 107
    goto/16 :goto_28

    .line 108
    .line 109
    :pswitch_2
    move-object/from16 v16, v10

    .line 110
    .line 111
    iget v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$0:I

    .line 112
    .line 113
    iget-boolean v5, v3, Landroidx/paging/SeparatorState$onInsert$1;->Z$0:Z

    .line 114
    .line 115
    iget-object v8, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$5:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v8, Landroidx/paging/TransformablePage;

    .line 118
    .line 119
    iget-object v10, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$4:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v10, Ljava/lang/Integer;

    .line 122
    .line 123
    iget-object v11, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$3:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v11, Landroidx/paging/TransformablePage;

    .line 126
    .line 127
    iget-object v12, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$2:Ljava/util/ArrayList;

    .line 128
    .line 129
    iget-object v13, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$1:Ljava/util/ArrayList;

    .line 130
    .line 131
    iget-object v14, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$0:Landroidx/paging/PageEvent$Insert;

    .line 132
    .line 133
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    move-object/from16 v18, v6

    .line 137
    .line 138
    move-object v0, v10

    .line 139
    move-object v9, v2

    .line 140
    move-object v10, v11

    .line 141
    move-object v2, v12

    .line 142
    move-object v11, v8

    .line 143
    :goto_1
    move-object v8, v13

    .line 144
    goto/16 :goto_23

    .line 145
    .line 146
    :pswitch_3
    move-object/from16 v16, v10

    .line 147
    .line 148
    iget v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$0:I

    .line 149
    .line 150
    iget-boolean v5, v3, Landroidx/paging/SeparatorState$onInsert$1;->Z$0:Z

    .line 151
    .line 152
    iget-object v8, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$8:Ljava/util/ArrayList;

    .line 153
    .line 154
    iget-object v10, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$7:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v10, Landroidx/paging/TransformablePage;

    .line 157
    .line 158
    iget-object v11, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$6:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v11, Landroidx/paging/TransformablePage;

    .line 161
    .line 162
    iget-object v12, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$5:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v12, Ljava/util/Iterator;

    .line 165
    .line 166
    iget-object v13, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$4:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v13, Ljava/lang/Integer;

    .line 169
    .line 170
    iget-object v14, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$3:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v14, Landroidx/paging/TransformablePage;

    .line 173
    .line 174
    iget-object v15, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$2:Ljava/util/ArrayList;

    .line 175
    .line 176
    iget-object v9, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$1:Ljava/util/ArrayList;

    .line 177
    .line 178
    move/from16 p1, v1

    .line 179
    .line 180
    iget-object v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$0:Landroidx/paging/PageEvent$Insert;

    .line 181
    .line 182
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    move-object v0, v13

    .line 186
    move-object v13, v9

    .line 187
    move-object v9, v0

    .line 188
    move-object v0, v1

    .line 189
    move-object/from16 v18, v6

    .line 190
    .line 191
    move/from16 v1, p1

    .line 192
    .line 193
    goto/16 :goto_21

    .line 194
    .line 195
    :pswitch_4
    move-object/from16 v16, v10

    .line 196
    .line 197
    iget v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$0:I

    .line 198
    .line 199
    iget-boolean v5, v3, Landroidx/paging/SeparatorState$onInsert$1;->Z$0:Z

    .line 200
    .line 201
    iget-object v8, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$7:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v8, Landroidx/paging/TransformablePage;

    .line 204
    .line 205
    iget-object v9, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$6:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v9, Landroidx/paging/TransformablePage;

    .line 208
    .line 209
    iget-object v10, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$5:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v10, Ljava/util/Iterator;

    .line 212
    .line 213
    iget-object v11, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$4:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v11, Ljava/lang/Integer;

    .line 216
    .line 217
    iget-object v12, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$3:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v12, Landroidx/paging/TransformablePage;

    .line 220
    .line 221
    iget-object v13, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$2:Ljava/util/ArrayList;

    .line 222
    .line 223
    iget-object v14, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$1:Ljava/util/ArrayList;

    .line 224
    .line 225
    iget-object v15, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$0:Landroidx/paging/PageEvent$Insert;

    .line 226
    .line 227
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    move-object v0, v9

    .line 231
    move-object v9, v2

    .line 232
    move-object v2, v11

    .line 233
    move-object v11, v0

    .line 234
    move-object/from16 v18, v6

    .line 235
    .line 236
    move-object v0, v10

    .line 237
    move-object v6, v12

    .line 238
    move-object v10, v8

    .line 239
    move-object v8, v14

    .line 240
    move-object v14, v13

    .line 241
    goto/16 :goto_1c

    .line 242
    .line 243
    :pswitch_5
    move-object/from16 v16, v10

    .line 244
    .line 245
    iget v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$0:I

    .line 246
    .line 247
    iget-boolean v5, v3, Landroidx/paging/SeparatorState$onInsert$1;->Z$0:Z

    .line 248
    .line 249
    iget-object v8, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$6:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v8, Ljava/util/ArrayList;

    .line 252
    .line 253
    iget-object v9, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$5:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v9, Ljava/lang/Integer;

    .line 256
    .line 257
    iget-object v10, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$4:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v10, Landroidx/paging/TransformablePage;

    .line 260
    .line 261
    iget-object v11, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$3:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v11, Ljava/lang/Integer;

    .line 264
    .line 265
    iget-object v12, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$2:Ljava/util/ArrayList;

    .line 266
    .line 267
    iget-object v13, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$1:Ljava/util/ArrayList;

    .line 268
    .line 269
    iget-object v14, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$0:Landroidx/paging/PageEvent$Insert;

    .line 270
    .line 271
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    move-object/from16 v18, v6

    .line 275
    .line 276
    goto/16 :goto_1a

    .line 277
    .line 278
    :pswitch_6
    move-object/from16 v16, v10

    .line 279
    .line 280
    iget v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$0:I

    .line 281
    .line 282
    iget-boolean v5, v3, Landroidx/paging/SeparatorState$onInsert$1;->Z$0:Z

    .line 283
    .line 284
    iget-object v8, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$7:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v8, Landroidx/paging/TransformablePage;

    .line 287
    .line 288
    iget-object v9, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$6:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast v9, Ljava/lang/Integer;

    .line 291
    .line 292
    iget-object v10, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$5:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v10, Landroidx/paging/TransformablePage;

    .line 295
    .line 296
    iget-object v11, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$4:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v11, Ljava/lang/Integer;

    .line 299
    .line 300
    iget-object v12, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$3:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast v12, Landroidx/paging/TransformablePage;

    .line 303
    .line 304
    iget-object v13, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$2:Ljava/util/ArrayList;

    .line 305
    .line 306
    iget-object v14, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$1:Ljava/util/ArrayList;

    .line 307
    .line 308
    iget-object v15, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$0:Landroidx/paging/PageEvent$Insert;

    .line 309
    .line 310
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    move-object/from16 v18, v6

    .line 314
    .line 315
    move-object v0, v9

    .line 316
    move-object v6, v11

    .line 317
    move-object v11, v12

    .line 318
    move-object v9, v2

    .line 319
    move-object v2, v10

    .line 320
    move-object v10, v8

    .line 321
    :goto_2
    move-object v8, v14

    .line 322
    move-object v14, v13

    .line 323
    goto/16 :goto_16

    .line 324
    .line 325
    :pswitch_7
    move-object/from16 v16, v10

    .line 326
    .line 327
    iget v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$2:I

    .line 328
    .line 329
    iget v5, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$1:I

    .line 330
    .line 331
    iget v8, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$0:I

    .line 332
    .line 333
    iget-boolean v9, v3, Landroidx/paging/SeparatorState$onInsert$1;->Z$0:Z

    .line 334
    .line 335
    iget-object v10, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$7:Ljava/lang/Object;

    .line 336
    .line 337
    check-cast v10, Ljava/util/ArrayList;

    .line 338
    .line 339
    iget-object v11, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$6:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v11, Ljava/lang/Integer;

    .line 342
    .line 343
    iget-object v12, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$5:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v12, Landroidx/paging/TransformablePage;

    .line 346
    .line 347
    iget-object v13, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$4:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v13, Ljava/lang/Integer;

    .line 350
    .line 351
    iget-object v14, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$3:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast v14, Landroidx/paging/TransformablePage;

    .line 354
    .line 355
    iget-object v15, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$2:Ljava/util/ArrayList;

    .line 356
    .line 357
    move/from16 p1, v1

    .line 358
    .line 359
    iget-object v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$1:Ljava/util/ArrayList;

    .line 360
    .line 361
    move-object/from16 v18, v1

    .line 362
    .line 363
    iget-object v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$0:Landroidx/paging/PageEvent$Insert;

    .line 364
    .line 365
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    move-object/from16 v0, v18

    .line 369
    .line 370
    move-object/from16 v18, v6

    .line 371
    .line 372
    move-object v6, v0

    .line 373
    move v0, v8

    .line 374
    move v8, v9

    .line 375
    move-object v9, v11

    .line 376
    move-object v11, v13

    .line 377
    move-object v13, v15

    .line 378
    move-object v15, v1

    .line 379
    move/from16 v1, p1

    .line 380
    .line 381
    goto/16 :goto_15

    .line 382
    .line 383
    :pswitch_8
    move-object/from16 v16, v10

    .line 384
    .line 385
    iget v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$0:I

    .line 386
    .line 387
    iget-boolean v5, v3, Landroidx/paging/SeparatorState$onInsert$1;->Z$0:Z

    .line 388
    .line 389
    iget-object v8, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$8:Ljava/util/ArrayList;

    .line 390
    .line 391
    iget-object v9, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$7:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v9, Landroidx/paging/TransformablePage;

    .line 394
    .line 395
    iget-object v10, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$6:Ljava/lang/Object;

    .line 396
    .line 397
    check-cast v10, Ljava/lang/Integer;

    .line 398
    .line 399
    iget-object v11, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$5:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast v11, Landroidx/paging/TransformablePage;

    .line 402
    .line 403
    iget-object v12, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$4:Ljava/lang/Object;

    .line 404
    .line 405
    check-cast v12, Ljava/lang/Integer;

    .line 406
    .line 407
    iget-object v13, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$3:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast v13, Landroidx/paging/TransformablePage;

    .line 410
    .line 411
    iget-object v14, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$2:Ljava/util/ArrayList;

    .line 412
    .line 413
    iget-object v15, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$1:Ljava/util/ArrayList;

    .line 414
    .line 415
    move/from16 v18, v1

    .line 416
    .line 417
    iget-object v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$0:Landroidx/paging/PageEvent$Insert;

    .line 418
    .line 419
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    move-object/from16 v19, v9

    .line 423
    .line 424
    move-object v9, v2

    .line 425
    move-object v2, v11

    .line 426
    move-object/from16 v11, v19

    .line 427
    .line 428
    move-object/from16 v19, v13

    .line 429
    .line 430
    move-object/from16 v20, v14

    .line 431
    .line 432
    move-object/from16 v21, v15

    .line 433
    .line 434
    move-object v14, v10

    .line 435
    move-object v15, v12

    .line 436
    goto/16 :goto_11

    .line 437
    .line 438
    :pswitch_9
    iget-object v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$0:Landroidx/paging/PageEvent$Insert;

    .line 439
    .line 440
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    const/4 v15, 0x1

    .line 444
    :cond_1
    const/4 v3, 0x0

    .line 445
    goto/16 :goto_a

    .line 446
    .line 447
    :pswitch_a
    move-object/from16 v16, v10

    .line 448
    .line 449
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 453
    .line 454
    .line 455
    iget-object v2, v1, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    .line 456
    .line 457
    iget-object v5, v1, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    .line 458
    .line 459
    iget-object v8, v5, Landroidx/paging/LoadStates;->append:Landroidx/paging/LoadState;

    .line 460
    .line 461
    iget-object v9, v5, Landroidx/paging/LoadStates;->prepend:Landroidx/paging/LoadState;

    .line 462
    .line 463
    iget-object v10, v1, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    .line 464
    .line 465
    iget-object v11, v1, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    .line 466
    .line 467
    sget-object v12, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    .line 468
    .line 469
    iget-object v13, v0, Landroidx/paging/SeparatorState;->terminalSeparatorType:Landroidx/paging/TerminalSeparatorType;

    .line 470
    .line 471
    const/4 v14, 0x2

    .line 472
    if-ne v10, v12, :cond_2

    .line 473
    .line 474
    iget-boolean v9, v0, Landroidx/paging/SeparatorState;->startTerminalSeparatorDeferred:Z

    .line 475
    .line 476
    goto :goto_4

    .line 477
    :cond_2
    sget-object v12, Landroidx/paging/SeparatorState$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 478
    .line 479
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 480
    .line 481
    .line 482
    move-result v15

    .line 483
    aget v12, v12, v15

    .line 484
    .line 485
    const/4 v15, 0x1

    .line 486
    if-eq v12, v15, :cond_4

    .line 487
    .line 488
    if-ne v12, v14, :cond_3

    .line 489
    .line 490
    iget-boolean v9, v9, Landroidx/paging/LoadState;->endOfPaginationReached:Z

    .line 491
    .line 492
    goto :goto_4

    .line 493
    :cond_3
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 494
    .line 495
    .line 496
    return-object v16

    .line 497
    :cond_4
    iget-boolean v9, v9, Landroidx/paging/LoadState;->endOfPaginationReached:Z

    .line 498
    .line 499
    if-eqz v9, :cond_6

    .line 500
    .line 501
    if-eqz v2, :cond_5

    .line 502
    .line 503
    iget-object v9, v2, Landroidx/paging/LoadStates;->prepend:Landroidx/paging/LoadState;

    .line 504
    .line 505
    iget-boolean v9, v9, Landroidx/paging/LoadState;->endOfPaginationReached:Z

    .line 506
    .line 507
    if-nez v9, :cond_5

    .line 508
    .line 509
    goto :goto_3

    .line 510
    :cond_5
    const/4 v9, 0x1

    .line 511
    goto :goto_4

    .line 512
    :cond_6
    :goto_3
    const/4 v9, 0x0

    .line 513
    :goto_4
    sget-object v12, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    .line 514
    .line 515
    if-ne v10, v12, :cond_7

    .line 516
    .line 517
    iget-boolean v8, v0, Landroidx/paging/SeparatorState;->endTerminalSeparatorDeferred:Z

    .line 518
    .line 519
    goto :goto_6

    .line 520
    :cond_7
    sget-object v12, Landroidx/paging/SeparatorState$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 521
    .line 522
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 523
    .line 524
    .line 525
    move-result v13

    .line 526
    aget v12, v12, v13

    .line 527
    .line 528
    const/4 v15, 0x1

    .line 529
    if-eq v12, v15, :cond_9

    .line 530
    .line 531
    if-ne v12, v14, :cond_8

    .line 532
    .line 533
    iget-boolean v8, v8, Landroidx/paging/LoadState;->endOfPaginationReached:Z

    .line 534
    .line 535
    goto :goto_6

    .line 536
    :cond_8
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 537
    .line 538
    .line 539
    return-object v16

    .line 540
    :cond_9
    iget-boolean v8, v8, Landroidx/paging/LoadState;->endOfPaginationReached:Z

    .line 541
    .line 542
    if-eqz v8, :cond_b

    .line 543
    .line 544
    if-eqz v2, :cond_a

    .line 545
    .line 546
    iget-object v8, v2, Landroidx/paging/LoadStates;->append:Landroidx/paging/LoadState;

    .line 547
    .line 548
    iget-boolean v8, v8, Landroidx/paging/LoadState;->endOfPaginationReached:Z

    .line 549
    .line 550
    if-nez v8, :cond_a

    .line 551
    .line 552
    goto :goto_5

    .line 553
    :cond_a
    const/4 v8, 0x1

    .line 554
    goto :goto_6

    .line 555
    :cond_b
    :goto_5
    const/4 v8, 0x0

    .line 556
    :goto_6
    if-eqz v11, :cond_d

    .line 557
    .line 558
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 559
    .line 560
    .line 561
    move-result v12

    .line 562
    if-eqz v12, :cond_d

    .line 563
    .line 564
    :cond_c
    const/4 v12, 0x1

    .line 565
    goto :goto_7

    .line 566
    :cond_d
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 567
    .line 568
    .line 569
    move-result-object v12

    .line 570
    :cond_e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 571
    .line 572
    .line 573
    move-result v13

    .line 574
    if-eqz v13, :cond_c

    .line 575
    .line 576
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v13

    .line 580
    check-cast v13, Landroidx/paging/TransformablePage;

    .line 581
    .line 582
    iget-object v13, v13, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 583
    .line 584
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 585
    .line 586
    .line 587
    move-result v13

    .line 588
    if-nez v13, :cond_e

    .line 589
    .line 590
    const/4 v12, 0x0

    .line 591
    :goto_7
    iget-boolean v13, v0, Landroidx/paging/SeparatorState;->headerAdded:Z

    .line 592
    .line 593
    if-eqz v13, :cond_10

    .line 594
    .line 595
    sget-object v13, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    .line 596
    .line 597
    if-ne v10, v13, :cond_10

    .line 598
    .line 599
    if-eqz v12, :cond_f

    .line 600
    .line 601
    goto :goto_8

    .line 602
    :cond_f
    const-string v0, "Additional prepend event after prepend state is done"

    .line 603
    .line 604
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    return-object v16

    .line 608
    :cond_10
    :goto_8
    iget-boolean v13, v0, Landroidx/paging/SeparatorState;->footerAdded:Z

    .line 609
    .line 610
    if-eqz v13, :cond_12

    .line 611
    .line 612
    sget-object v13, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    .line 613
    .line 614
    if-ne v10, v13, :cond_12

    .line 615
    .line 616
    if-eqz v12, :cond_11

    .line 617
    .line 618
    goto :goto_9

    .line 619
    :cond_11
    const-string v0, "Additional append event after append state is done"

    .line 620
    .line 621
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    return-object v16

    .line 625
    :cond_12
    :goto_9
    iget-object v13, v0, Landroidx/paging/SeparatorState;->sourceStates:Lcom/caverock/androidsvg/SVG;

    .line 626
    .line 627
    invoke-virtual {v13, v5}, Lcom/caverock/androidsvg/SVG;->set(Landroidx/paging/LoadStates;)V

    .line 628
    .line 629
    .line 630
    iput-object v2, v0, Landroidx/paging/SeparatorState;->mediatorStates:Landroidx/paging/LoadStates;

    .line 631
    .line 632
    sget-object v2, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    .line 633
    .line 634
    if-eq v10, v2, :cond_13

    .line 635
    .line 636
    iget v2, v1, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    .line 637
    .line 638
    iput v2, v0, Landroidx/paging/SeparatorState;->placeholdersBefore:I

    .line 639
    .line 640
    :cond_13
    sget-object v2, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    .line 641
    .line 642
    if-eq v10, v2, :cond_14

    .line 643
    .line 644
    iget v2, v1, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    .line 645
    .line 646
    iput v2, v0, Landroidx/paging/SeparatorState;->placeholdersAfter:I

    .line 647
    .line 648
    :cond_14
    if-eqz v12, :cond_1b

    .line 649
    .line 650
    if-nez v9, :cond_15

    .line 651
    .line 652
    if-nez v8, :cond_15

    .line 653
    .line 654
    goto/16 :goto_c

    .line 655
    .line 656
    :cond_15
    iget-boolean v2, v0, Landroidx/paging/SeparatorState;->headerAdded:Z

    .line 657
    .line 658
    if-eqz v2, :cond_16

    .line 659
    .line 660
    iget-boolean v2, v0, Landroidx/paging/SeparatorState;->footerAdded:Z

    .line 661
    .line 662
    if-eqz v2, :cond_16

    .line 663
    .line 664
    goto :goto_c

    .line 665
    :cond_16
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 666
    .line 667
    .line 668
    move-result v2

    .line 669
    if-eqz v2, :cond_1b

    .line 670
    .line 671
    if-eqz v9, :cond_18

    .line 672
    .line 673
    if-eqz v8, :cond_18

    .line 674
    .line 675
    iget-boolean v2, v0, Landroidx/paging/SeparatorState;->headerAdded:Z

    .line 676
    .line 677
    if-nez v2, :cond_18

    .line 678
    .line 679
    iget-boolean v2, v0, Landroidx/paging/SeparatorState;->footerAdded:Z

    .line 680
    .line 681
    if-nez v2, :cond_18

    .line 682
    .line 683
    iput-object v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$0:Landroidx/paging/PageEvent$Insert;

    .line 684
    .line 685
    const/4 v15, 0x1

    .line 686
    iput v15, v3, Landroidx/paging/SeparatorState$onInsert$1;->label:I

    .line 687
    .line 688
    move-object/from16 v2, v16

    .line 689
    .line 690
    invoke-virtual {v7, v2, v2, v3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    if-ne v2, v4, :cond_1

    .line 695
    .line 696
    goto/16 :goto_2b

    .line 697
    .line 698
    :goto_a
    iput-boolean v3, v0, Landroidx/paging/SeparatorState;->endTerminalSeparatorDeferred:Z

    .line 699
    .line 700
    iput-boolean v3, v0, Landroidx/paging/SeparatorState;->startTerminalSeparatorDeferred:Z

    .line 701
    .line 702
    iput-boolean v15, v0, Landroidx/paging/SeparatorState;->headerAdded:Z

    .line 703
    .line 704
    iput-boolean v15, v0, Landroidx/paging/SeparatorState;->footerAdded:Z

    .line 705
    .line 706
    if-nez v2, :cond_17

    .line 707
    .line 708
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 709
    .line 710
    .line 711
    return-object v1

    .line 712
    :cond_17
    iget-object v5, v1, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    .line 713
    .line 714
    filled-new-array {v3}, [I

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    new-instance v4, Landroidx/paging/TransformablePage;

    .line 719
    .line 720
    invoke-static {v2}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 721
    .line 722
    .line 723
    move-result-object v2

    .line 724
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 725
    .line 726
    .line 727
    move-result-object v6

    .line 728
    invoke-static {v6}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 729
    .line 730
    .line 731
    move-result-object v6

    .line 732
    invoke-direct {v4, v0, v2, v3, v6}, Landroidx/paging/TransformablePage;-><init>([ILjava/util/List;ILjava/util/List;)V

    .line 733
    .line 734
    .line 735
    invoke-static {v4}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 736
    .line 737
    .line 738
    move-result-object v6

    .line 739
    iget v7, v1, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    .line 740
    .line 741
    iget v8, v1, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    .line 742
    .line 743
    iget-object v9, v1, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    .line 744
    .line 745
    iget-object v10, v1, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    .line 746
    .line 747
    new-instance v4, Landroidx/paging/PageEvent$Insert;

    .line 748
    .line 749
    invoke-direct/range {v4 .. v10}, Landroidx/paging/PageEvent$Insert;-><init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    .line 750
    .line 751
    .line 752
    return-object v4

    .line 753
    :cond_18
    if-eqz v8, :cond_19

    .line 754
    .line 755
    iget-boolean v2, v0, Landroidx/paging/SeparatorState;->footerAdded:Z

    .line 756
    .line 757
    if-nez v2, :cond_19

    .line 758
    .line 759
    const/4 v15, 0x1

    .line 760
    iput-boolean v15, v0, Landroidx/paging/SeparatorState;->endTerminalSeparatorDeferred:Z

    .line 761
    .line 762
    goto :goto_b

    .line 763
    :cond_19
    const/4 v15, 0x1

    .line 764
    :goto_b
    if-eqz v9, :cond_1a

    .line 765
    .line 766
    iget-boolean v2, v0, Landroidx/paging/SeparatorState;->headerAdded:Z

    .line 767
    .line 768
    if-nez v2, :cond_1a

    .line 769
    .line 770
    iput-boolean v15, v0, Landroidx/paging/SeparatorState;->startTerminalSeparatorDeferred:Z

    .line 771
    .line 772
    :cond_1a
    :goto_c
    return-object v1

    .line 773
    :cond_1b
    new-instance v2, Ljava/util/ArrayList;

    .line 774
    .line 775
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 776
    .line 777
    .line 778
    move-result v5

    .line 779
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 780
    .line 781
    .line 782
    new-instance v5, Ljava/util/ArrayList;

    .line 783
    .line 784
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 785
    .line 786
    .line 787
    move-result v10

    .line 788
    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 789
    .line 790
    .line 791
    if-nez v12, :cond_1e

    .line 792
    .line 793
    const/4 v10, 0x0

    .line 794
    :goto_d
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 795
    .line 796
    .line 797
    move-result v13

    .line 798
    const/16 v17, 0x1

    .line 799
    .line 800
    add-int/lit8 v13, v13, -0x1

    .line 801
    .line 802
    if-ge v10, v13, :cond_1c

    .line 803
    .line 804
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    move-result-object v13

    .line 808
    check-cast v13, Landroidx/paging/TransformablePage;

    .line 809
    .line 810
    iget-object v13, v13, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 811
    .line 812
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 813
    .line 814
    .line 815
    move-result v13

    .line 816
    if-eqz v13, :cond_1c

    .line 817
    .line 818
    add-int/lit8 v10, v10, 0x1

    .line 819
    .line 820
    goto :goto_d

    .line 821
    :cond_1c
    new-instance v13, Ljava/lang/Integer;

    .line 822
    .line 823
    invoke-direct {v13, v10}, Ljava/lang/Integer;-><init>(I)V

    .line 824
    .line 825
    .line 826
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v10

    .line 830
    check-cast v10, Landroidx/paging/TransformablePage;

    .line 831
    .line 832
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 833
    .line 834
    .line 835
    move-result v15

    .line 836
    const/16 v17, 0x1

    .line 837
    .line 838
    add-int/lit8 v15, v15, -0x1

    .line 839
    .line 840
    :goto_e
    if-lez v15, :cond_1d

    .line 841
    .line 842
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v18

    .line 846
    move-object/from16 v14, v18

    .line 847
    .line 848
    check-cast v14, Landroidx/paging/TransformablePage;

    .line 849
    .line 850
    iget-object v14, v14, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 851
    .line 852
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 853
    .line 854
    .line 855
    move-result v14

    .line 856
    if-eqz v14, :cond_1d

    .line 857
    .line 858
    add-int/lit8 v15, v15, -0x1

    .line 859
    .line 860
    const/4 v14, 0x2

    .line 861
    goto :goto_e

    .line 862
    :cond_1d
    new-instance v14, Ljava/lang/Integer;

    .line 863
    .line 864
    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    .line 865
    .line 866
    .line 867
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    move-result-object v11

    .line 871
    check-cast v11, Landroidx/paging/TransformablePage;

    .line 872
    .line 873
    goto :goto_f

    .line 874
    :cond_1e
    const/4 v10, 0x0

    .line 875
    const/4 v11, 0x0

    .line 876
    const/4 v13, 0x0

    .line 877
    const/4 v14, 0x0

    .line 878
    :goto_f
    if-eqz v9, :cond_22

    .line 879
    .line 880
    iget-boolean v9, v0, Landroidx/paging/SeparatorState;->headerAdded:Z

    .line 881
    .line 882
    if-nez v9, :cond_22

    .line 883
    .line 884
    const/4 v15, 0x1

    .line 885
    iput-boolean v15, v0, Landroidx/paging/SeparatorState;->headerAdded:Z

    .line 886
    .line 887
    if-eqz v12, :cond_1f

    .line 888
    .line 889
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 890
    .line 891
    .line 892
    move-result-object v9

    .line 893
    check-cast v9, Landroidx/paging/TransformablePage;

    .line 894
    .line 895
    goto :goto_10

    .line 896
    :cond_1f
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 897
    .line 898
    .line 899
    move-object v9, v10

    .line 900
    :goto_10
    iget-object v15, v9, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 901
    .line 902
    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v15

    .line 906
    iput-object v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$0:Landroidx/paging/PageEvent$Insert;

    .line 907
    .line 908
    iput-object v2, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$1:Ljava/util/ArrayList;

    .line 909
    .line 910
    iput-object v5, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$2:Ljava/util/ArrayList;

    .line 911
    .line 912
    iput-object v10, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$3:Ljava/lang/Object;

    .line 913
    .line 914
    iput-object v13, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$4:Ljava/lang/Object;

    .line 915
    .line 916
    iput-object v11, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$5:Ljava/lang/Object;

    .line 917
    .line 918
    iput-object v14, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$6:Ljava/lang/Object;

    .line 919
    .line 920
    iput-object v9, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$7:Ljava/lang/Object;

    .line 921
    .line 922
    iput-object v2, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$8:Ljava/util/ArrayList;

    .line 923
    .line 924
    iput-boolean v8, v3, Landroidx/paging/SeparatorState$onInsert$1;->Z$0:Z

    .line 925
    .line 926
    iput v12, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$0:I

    .line 927
    .line 928
    const/4 v1, 0x2

    .line 929
    iput v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->label:I

    .line 930
    .line 931
    const/4 v1, 0x0

    .line 932
    invoke-virtual {v7, v1, v15, v3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object v15

    .line 936
    if-ne v15, v4, :cond_20

    .line 937
    .line 938
    goto/16 :goto_2b

    .line 939
    .line 940
    :cond_20
    move-object/from16 v1, p1

    .line 941
    .line 942
    move-object/from16 v21, v2

    .line 943
    .line 944
    move-object/from16 v20, v5

    .line 945
    .line 946
    move v5, v8

    .line 947
    move-object/from16 v19, v10

    .line 948
    .line 949
    move/from16 v18, v12

    .line 950
    .line 951
    move-object/from16 v8, v21

    .line 952
    .line 953
    move-object v2, v11

    .line 954
    move-object v11, v9

    .line 955
    move-object v9, v15

    .line 956
    move-object v15, v13

    .line 957
    :goto_11
    iget v12, v11, Landroidx/paging/TransformablePage;->hintOriginalPageOffset:I

    .line 958
    .line 959
    iget-object v10, v11, Landroidx/paging/TransformablePage;->hintOriginalIndices:Ljava/util/List;

    .line 960
    .line 961
    if-eqz v10, :cond_21

    .line 962
    .line 963
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 964
    .line 965
    .line 966
    move-result-object v10

    .line 967
    check-cast v10, Ljava/lang/Number;

    .line 968
    .line 969
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 970
    .line 971
    .line 972
    move-result v10

    .line 973
    move v13, v10

    .line 974
    goto :goto_12

    .line 975
    :cond_21
    const/4 v13, 0x0

    .line 976
    :goto_12
    const/4 v10, 0x0

    .line 977
    invoke-static/range {v8 .. v13}, Landroidx/paging/FlowExtKt;->addSeparatorPage(Ljava/util/List;Ljava/lang/Object;Landroidx/paging/TransformablePage;Landroidx/paging/TransformablePage;II)V

    .line 978
    .line 979
    .line 980
    move-object v11, v2

    .line 981
    move v8, v5

    .line 982
    move-object v13, v15

    .line 983
    move/from16 v12, v18

    .line 984
    .line 985
    move-object/from16 v10, v19

    .line 986
    .line 987
    move-object/from16 v5, v20

    .line 988
    .line 989
    move-object/from16 v2, v21

    .line 990
    .line 991
    goto :goto_13

    .line 992
    :cond_22
    move-object/from16 v1, p1

    .line 993
    .line 994
    :goto_13
    if-nez v12, :cond_3a

    .line 995
    .line 996
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 997
    .line 998
    .line 999
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 1000
    .line 1001
    .line 1002
    move-result v9

    .line 1003
    move-object v15, v1

    .line 1004
    move v1, v9

    .line 1005
    move-object v9, v14

    .line 1006
    move-object v14, v2

    .line 1007
    move-object v2, v10

    .line 1008
    move-object v10, v11

    .line 1009
    move-object v11, v13

    .line 1010
    move-object v13, v5

    .line 1011
    const/4 v5, 0x0

    .line 1012
    :goto_14
    if-ge v5, v1, :cond_24

    .line 1013
    .line 1014
    move-object/from16 v18, v6

    .line 1015
    .line 1016
    iget-object v6, v15, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    .line 1017
    .line 1018
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v6

    .line 1022
    check-cast v6, Landroidx/paging/TransformablePage;

    .line 1023
    .line 1024
    iput-object v15, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$0:Landroidx/paging/PageEvent$Insert;

    .line 1025
    .line 1026
    iput-object v14, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$1:Ljava/util/ArrayList;

    .line 1027
    .line 1028
    iput-object v13, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$2:Ljava/util/ArrayList;

    .line 1029
    .line 1030
    iput-object v2, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$3:Ljava/lang/Object;

    .line 1031
    .line 1032
    iput-object v11, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$4:Ljava/lang/Object;

    .line 1033
    .line 1034
    iput-object v10, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$5:Ljava/lang/Object;

    .line 1035
    .line 1036
    iput-object v9, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$6:Ljava/lang/Object;

    .line 1037
    .line 1038
    iput-object v14, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$7:Ljava/lang/Object;

    .line 1039
    .line 1040
    const/4 v0, 0x0

    .line 1041
    iput-object v0, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$8:Ljava/util/ArrayList;

    .line 1042
    .line 1043
    iput-boolean v8, v3, Landroidx/paging/SeparatorState$onInsert$1;->Z$0:Z

    .line 1044
    .line 1045
    iput v12, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$0:I

    .line 1046
    .line 1047
    iput v5, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$1:I

    .line 1048
    .line 1049
    iput v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$2:I

    .line 1050
    .line 1051
    const/4 v0, 0x3

    .line 1052
    iput v0, v3, Landroidx/paging/SeparatorState$onInsert$1;->label:I

    .line 1053
    .line 1054
    invoke-static {v6, v7, v3}, Landroidx/paging/FlowExtKt;->insertInternalSeparators(Landroidx/paging/TransformablePage;Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v0

    .line 1058
    if-ne v0, v4, :cond_23

    .line 1059
    .line 1060
    goto/16 :goto_2b

    .line 1061
    .line 1062
    :cond_23
    move-object v6, v14

    .line 1063
    move-object v14, v2

    .line 1064
    move-object v2, v0

    .line 1065
    move v0, v12

    .line 1066
    move-object v12, v10

    .line 1067
    move-object v10, v6

    .line 1068
    :goto_15
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1069
    .line 1070
    .line 1071
    const/16 v17, 0x1

    .line 1072
    .line 1073
    add-int/lit8 v5, v5, 0x1

    .line 1074
    .line 1075
    move-object v10, v12

    .line 1076
    move-object v2, v14

    .line 1077
    move v12, v0

    .line 1078
    move-object v14, v6

    .line 1079
    move-object/from16 v6, v18

    .line 1080
    .line 1081
    move-object/from16 v0, p0

    .line 1082
    .line 1083
    goto :goto_14

    .line 1084
    :cond_24
    move-object/from16 v18, v6

    .line 1085
    .line 1086
    iget-object v0, v15, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    .line 1087
    .line 1088
    sget-object v1, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    .line 1089
    .line 1090
    if-ne v0, v1, :cond_27

    .line 1091
    .line 1092
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1093
    .line 1094
    .line 1095
    move-result v0

    .line 1096
    if-nez v0, :cond_27

    .line 1097
    .line 1098
    invoke-static/range {v18 .. v18}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v0

    .line 1102
    check-cast v0, Landroidx/paging/TransformablePage;

    .line 1103
    .line 1104
    iget-object v1, v0, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 1105
    .line 1106
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v1

    .line 1110
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1111
    .line 1112
    .line 1113
    iget-object v5, v2, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 1114
    .line 1115
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v5

    .line 1119
    iput-object v15, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$0:Landroidx/paging/PageEvent$Insert;

    .line 1120
    .line 1121
    iput-object v14, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$1:Ljava/util/ArrayList;

    .line 1122
    .line 1123
    iput-object v13, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$2:Ljava/util/ArrayList;

    .line 1124
    .line 1125
    iput-object v2, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$3:Ljava/lang/Object;

    .line 1126
    .line 1127
    iput-object v11, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$4:Ljava/lang/Object;

    .line 1128
    .line 1129
    iput-object v10, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$5:Ljava/lang/Object;

    .line 1130
    .line 1131
    iput-object v9, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$6:Ljava/lang/Object;

    .line 1132
    .line 1133
    iput-object v0, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$7:Ljava/lang/Object;

    .line 1134
    .line 1135
    const/4 v6, 0x0

    .line 1136
    iput-object v6, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$8:Ljava/util/ArrayList;

    .line 1137
    .line 1138
    iput-boolean v8, v3, Landroidx/paging/SeparatorState$onInsert$1;->Z$0:Z

    .line 1139
    .line 1140
    iput v12, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$0:I

    .line 1141
    .line 1142
    const/4 v6, 0x4

    .line 1143
    iput v6, v3, Landroidx/paging/SeparatorState$onInsert$1;->label:I

    .line 1144
    .line 1145
    invoke-virtual {v7, v1, v5, v3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v1

    .line 1149
    if-ne v1, v4, :cond_25

    .line 1150
    .line 1151
    goto/16 :goto_2b

    .line 1152
    .line 1153
    :cond_25
    move v5, v8

    .line 1154
    move-object v6, v11

    .line 1155
    move-object v11, v2

    .line 1156
    move-object v2, v10

    .line 1157
    move-object v10, v0

    .line 1158
    move-object v0, v9

    .line 1159
    move-object v9, v1

    .line 1160
    move v1, v12

    .line 1161
    goto/16 :goto_2

    .line 1162
    .line 1163
    :goto_16
    iget v12, v11, Landroidx/paging/TransformablePage;->hintOriginalPageOffset:I

    .line 1164
    .line 1165
    iget-object v13, v11, Landroidx/paging/TransformablePage;->hintOriginalIndices:Ljava/util/List;

    .line 1166
    .line 1167
    if-eqz v13, :cond_26

    .line 1168
    .line 1169
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v13

    .line 1173
    check-cast v13, Ljava/lang/Number;

    .line 1174
    .line 1175
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 1176
    .line 1177
    .line 1178
    move-result v13

    .line 1179
    goto :goto_17

    .line 1180
    :cond_26
    const/4 v13, 0x0

    .line 1181
    :goto_17
    invoke-static/range {v8 .. v13}, Landroidx/paging/FlowExtKt;->addSeparatorPage(Ljava/util/List;Ljava/lang/Object;Landroidx/paging/TransformablePage;Landroidx/paging/TransformablePage;II)V

    .line 1182
    .line 1183
    .line 1184
    move-object v9, v0

    .line 1185
    move-object v10, v2

    .line 1186
    move-object v2, v11

    .line 1187
    move-object v12, v14

    .line 1188
    move-object v11, v6

    .line 1189
    :goto_18
    move-object v14, v15

    .line 1190
    goto :goto_19

    .line 1191
    :cond_27
    move v5, v8

    .line 1192
    move v1, v12

    .line 1193
    move-object v12, v13

    .line 1194
    move-object v8, v14

    .line 1195
    goto :goto_18

    .line 1196
    :goto_19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1197
    .line 1198
    .line 1199
    invoke-static {v2}, Landroidx/paging/SeparatorState;->transformablePageToStash(Landroidx/paging/TransformablePage;)Landroidx/paging/TransformablePage;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v0

    .line 1203
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    .line 1205
    .line 1206
    iput-object v14, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$0:Landroidx/paging/PageEvent$Insert;

    .line 1207
    .line 1208
    iput-object v8, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$1:Ljava/util/ArrayList;

    .line 1209
    .line 1210
    iput-object v12, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$2:Ljava/util/ArrayList;

    .line 1211
    .line 1212
    iput-object v11, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$3:Ljava/lang/Object;

    .line 1213
    .line 1214
    iput-object v10, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$4:Ljava/lang/Object;

    .line 1215
    .line 1216
    iput-object v9, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$5:Ljava/lang/Object;

    .line 1217
    .line 1218
    iput-object v8, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$6:Ljava/lang/Object;

    .line 1219
    .line 1220
    const/4 v0, 0x0

    .line 1221
    iput-object v0, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$7:Ljava/lang/Object;

    .line 1222
    .line 1223
    iput-object v0, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$8:Ljava/util/ArrayList;

    .line 1224
    .line 1225
    iput-boolean v5, v3, Landroidx/paging/SeparatorState$onInsert$1;->Z$0:Z

    .line 1226
    .line 1227
    iput v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$0:I

    .line 1228
    .line 1229
    const/4 v0, 0x5

    .line 1230
    iput v0, v3, Landroidx/paging/SeparatorState$onInsert$1;->label:I

    .line 1231
    .line 1232
    invoke-static {v2, v7, v3}, Landroidx/paging/FlowExtKt;->insertInternalSeparators(Landroidx/paging/TransformablePage;Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v2

    .line 1236
    if-ne v2, v4, :cond_28

    .line 1237
    .line 1238
    goto/16 :goto_2b

    .line 1239
    .line 1240
    :cond_28
    move-object v13, v8

    .line 1241
    :goto_1a
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    .line 1243
    .line 1244
    iget-object v0, v14, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    .line 1245
    .line 1246
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 1247
    .line 1248
    .line 1249
    move-result v2

    .line 1250
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1251
    .line 1252
    .line 1253
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 1254
    .line 1255
    .line 1256
    move-result v6

    .line 1257
    const/16 v17, 0x1

    .line 1258
    .line 1259
    add-int/lit8 v6, v6, 0x1

    .line 1260
    .line 1261
    invoke-interface {v0, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v0

    .line 1265
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v0

    .line 1269
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1270
    .line 1271
    .line 1272
    move-result v2

    .line 1273
    if-eqz v2, :cond_39

    .line 1274
    .line 1275
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v2

    .line 1279
    move-object v11, v10

    .line 1280
    move-object v10, v0

    .line 1281
    :goto_1b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 1282
    .line 1283
    .line 1284
    move-result v0

    .line 1285
    if-eqz v0, :cond_32

    .line 1286
    .line 1287
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v0

    .line 1291
    check-cast v0, Landroidx/paging/TransformablePage;

    .line 1292
    .line 1293
    move-object v8, v2

    .line 1294
    check-cast v8, Landroidx/paging/TransformablePage;

    .line 1295
    .line 1296
    iget-object v2, v0, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 1297
    .line 1298
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 1299
    .line 1300
    .line 1301
    move-result v2

    .line 1302
    if-nez v2, :cond_2e

    .line 1303
    .line 1304
    iget-object v2, v8, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 1305
    .line 1306
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v2

    .line 1310
    iget-object v6, v0, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 1311
    .line 1312
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v6

    .line 1316
    iput-object v14, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$0:Landroidx/paging/PageEvent$Insert;

    .line 1317
    .line 1318
    iput-object v13, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$1:Ljava/util/ArrayList;

    .line 1319
    .line 1320
    iput-object v12, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$2:Ljava/util/ArrayList;

    .line 1321
    .line 1322
    iput-object v11, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$3:Ljava/lang/Object;

    .line 1323
    .line 1324
    iput-object v9, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$4:Ljava/lang/Object;

    .line 1325
    .line 1326
    iput-object v10, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$5:Ljava/lang/Object;

    .line 1327
    .line 1328
    iput-object v0, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$6:Ljava/lang/Object;

    .line 1329
    .line 1330
    iput-object v8, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$7:Ljava/lang/Object;

    .line 1331
    .line 1332
    const/4 v15, 0x0

    .line 1333
    iput-object v15, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$8:Ljava/util/ArrayList;

    .line 1334
    .line 1335
    iput-boolean v5, v3, Landroidx/paging/SeparatorState$onInsert$1;->Z$0:Z

    .line 1336
    .line 1337
    iput v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$0:I

    .line 1338
    .line 1339
    const/4 v15, 0x6

    .line 1340
    iput v15, v3, Landroidx/paging/SeparatorState$onInsert$1;->label:I

    .line 1341
    .line 1342
    invoke-virtual {v7, v2, v6, v3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v2

    .line 1346
    if-ne v2, v4, :cond_29

    .line 1347
    .line 1348
    goto/16 :goto_2b

    .line 1349
    .line 1350
    :cond_29
    move-object v6, v9

    .line 1351
    move-object v9, v2

    .line 1352
    move-object v2, v6

    .line 1353
    move-object v6, v11

    .line 1354
    move-object v15, v14

    .line 1355
    move-object v11, v0

    .line 1356
    move-object v0, v10

    .line 1357
    move-object v14, v12

    .line 1358
    move-object v10, v8

    .line 1359
    move-object v8, v13

    .line 1360
    :goto_1c
    iget-object v12, v15, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    .line 1361
    .line 1362
    sget-object v13, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    .line 1363
    .line 1364
    if-ne v12, v13, :cond_2a

    .line 1365
    .line 1366
    move-object/from16 p1, v0

    .line 1367
    .line 1368
    iget v0, v10, Landroidx/paging/TransformablePage;->hintOriginalPageOffset:I

    .line 1369
    .line 1370
    goto :goto_1d

    .line 1371
    :cond_2a
    move-object/from16 p1, v0

    .line 1372
    .line 1373
    iget v0, v11, Landroidx/paging/TransformablePage;->hintOriginalPageOffset:I

    .line 1374
    .line 1375
    :goto_1d
    if-ne v12, v13, :cond_2c

    .line 1376
    .line 1377
    iget-object v12, v10, Landroidx/paging/TransformablePage;->hintOriginalIndices:Ljava/util/List;

    .line 1378
    .line 1379
    if-eqz v12, :cond_2b

    .line 1380
    .line 1381
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v12

    .line 1385
    check-cast v12, Ljava/lang/Number;

    .line 1386
    .line 1387
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 1388
    .line 1389
    .line 1390
    move-result v12

    .line 1391
    :goto_1e
    move v13, v12

    .line 1392
    move v12, v0

    .line 1393
    goto :goto_1f

    .line 1394
    :cond_2b
    iget-object v12, v10, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 1395
    .line 1396
    invoke-static {v12}, Landroidx/room/Room;->getLastIndex(Ljava/util/List;)I

    .line 1397
    .line 1398
    .line 1399
    move-result v12

    .line 1400
    goto :goto_1e

    .line 1401
    :cond_2c
    iget-object v12, v11, Landroidx/paging/TransformablePage;->hintOriginalIndices:Ljava/util/List;

    .line 1402
    .line 1403
    if-eqz v12, :cond_2d

    .line 1404
    .line 1405
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v12

    .line 1409
    check-cast v12, Ljava/lang/Number;

    .line 1410
    .line 1411
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 1412
    .line 1413
    .line 1414
    move-result v12

    .line 1415
    goto :goto_1e

    .line 1416
    :cond_2d
    move v12, v0

    .line 1417
    const/4 v13, 0x0

    .line 1418
    :goto_1f
    invoke-static/range {v8 .. v13}, Landroidx/paging/FlowExtKt;->addSeparatorPage(Ljava/util/List;Ljava/lang/Object;Landroidx/paging/TransformablePage;Landroidx/paging/TransformablePage;II)V

    .line 1419
    .line 1420
    .line 1421
    move-object/from16 v12, p1

    .line 1422
    .line 1423
    move v0, v1

    .line 1424
    move-object v13, v2

    .line 1425
    move-object v1, v15

    .line 1426
    move-object v15, v14

    .line 1427
    move-object v14, v6

    .line 1428
    goto :goto_20

    .line 1429
    :cond_2e
    move-object v15, v11

    .line 1430
    move-object v11, v0

    .line 1431
    move v0, v1

    .line 1432
    move-object v1, v14

    .line 1433
    move-object v14, v15

    .line 1434
    move-object v15, v12

    .line 1435
    move-object v12, v10

    .line 1436
    move-object v10, v8

    .line 1437
    move-object v8, v13

    .line 1438
    move-object v13, v9

    .line 1439
    :goto_20
    iget-object v2, v11, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 1440
    .line 1441
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 1442
    .line 1443
    .line 1444
    move-result v2

    .line 1445
    if-nez v2, :cond_2f

    .line 1446
    .line 1447
    invoke-static {v11}, Landroidx/paging/SeparatorState;->transformablePageToStash(Landroidx/paging/TransformablePage;)Landroidx/paging/TransformablePage;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v2

    .line 1451
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1452
    .line 1453
    .line 1454
    :cond_2f
    iput-object v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$0:Landroidx/paging/PageEvent$Insert;

    .line 1455
    .line 1456
    iput-object v8, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$1:Ljava/util/ArrayList;

    .line 1457
    .line 1458
    iput-object v15, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$2:Ljava/util/ArrayList;

    .line 1459
    .line 1460
    iput-object v14, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$3:Ljava/lang/Object;

    .line 1461
    .line 1462
    iput-object v13, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$4:Ljava/lang/Object;

    .line 1463
    .line 1464
    iput-object v12, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$5:Ljava/lang/Object;

    .line 1465
    .line 1466
    iput-object v11, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$6:Ljava/lang/Object;

    .line 1467
    .line 1468
    iput-object v10, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$7:Ljava/lang/Object;

    .line 1469
    .line 1470
    iput-object v8, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$8:Ljava/util/ArrayList;

    .line 1471
    .line 1472
    iput-boolean v5, v3, Landroidx/paging/SeparatorState$onInsert$1;->Z$0:Z

    .line 1473
    .line 1474
    iput v0, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$0:I

    .line 1475
    .line 1476
    const/4 v2, 0x7

    .line 1477
    iput v2, v3, Landroidx/paging/SeparatorState$onInsert$1;->label:I

    .line 1478
    .line 1479
    invoke-static {v11, v7, v3}, Landroidx/paging/FlowExtKt;->insertInternalSeparators(Landroidx/paging/TransformablePage;Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v2

    .line 1483
    if-ne v2, v4, :cond_30

    .line 1484
    .line 1485
    goto/16 :goto_2b

    .line 1486
    .line 1487
    :cond_30
    move-object v9, v1

    .line 1488
    move v1, v0

    .line 1489
    move-object v0, v9

    .line 1490
    move-object v9, v13

    .line 1491
    move-object v13, v8

    .line 1492
    :goto_21
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1493
    .line 1494
    .line 1495
    iget-object v2, v11, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 1496
    .line 1497
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 1498
    .line 1499
    .line 1500
    move-result v2

    .line 1501
    if-nez v2, :cond_31

    .line 1502
    .line 1503
    move-object v2, v11

    .line 1504
    goto :goto_22

    .line 1505
    :cond_31
    move-object v2, v10

    .line 1506
    :goto_22
    move-object v10, v12

    .line 1507
    move-object v11, v14

    .line 1508
    move-object v12, v15

    .line 1509
    move-object v14, v0

    .line 1510
    goto/16 :goto_1b

    .line 1511
    .line 1512
    :cond_32
    iget-object v0, v14, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    .line 1513
    .line 1514
    sget-object v2, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    .line 1515
    .line 1516
    if-ne v0, v2, :cond_35

    .line 1517
    .line 1518
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1519
    .line 1520
    .line 1521
    move-result v0

    .line 1522
    if-nez v0, :cond_35

    .line 1523
    .line 1524
    invoke-static/range {v18 .. v18}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v0

    .line 1528
    move-object v8, v0

    .line 1529
    check-cast v8, Landroidx/paging/TransformablePage;

    .line 1530
    .line 1531
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1532
    .line 1533
    .line 1534
    iget-object v0, v11, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 1535
    .line 1536
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v0

    .line 1540
    iget-object v2, v8, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 1541
    .line 1542
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v2

    .line 1546
    iput-object v14, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$0:Landroidx/paging/PageEvent$Insert;

    .line 1547
    .line 1548
    iput-object v13, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$1:Ljava/util/ArrayList;

    .line 1549
    .line 1550
    iput-object v12, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$2:Ljava/util/ArrayList;

    .line 1551
    .line 1552
    iput-object v11, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$3:Ljava/lang/Object;

    .line 1553
    .line 1554
    iput-object v9, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$4:Ljava/lang/Object;

    .line 1555
    .line 1556
    iput-object v8, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$5:Ljava/lang/Object;

    .line 1557
    .line 1558
    const/4 v15, 0x0

    .line 1559
    iput-object v15, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$6:Ljava/lang/Object;

    .line 1560
    .line 1561
    iput-object v15, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$7:Ljava/lang/Object;

    .line 1562
    .line 1563
    iput-object v15, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$8:Ljava/util/ArrayList;

    .line 1564
    .line 1565
    iput-boolean v5, v3, Landroidx/paging/SeparatorState$onInsert$1;->Z$0:Z

    .line 1566
    .line 1567
    iput v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$0:I

    .line 1568
    .line 1569
    const/16 v6, 0x8

    .line 1570
    .line 1571
    iput v6, v3, Landroidx/paging/SeparatorState$onInsert$1;->label:I

    .line 1572
    .line 1573
    invoke-virtual {v7, v0, v2, v3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v2

    .line 1577
    if-ne v2, v4, :cond_33

    .line 1578
    .line 1579
    goto/16 :goto_2b

    .line 1580
    .line 1581
    :cond_33
    move-object v0, v9

    .line 1582
    move-object v10, v11

    .line 1583
    move-object v9, v2

    .line 1584
    move-object v11, v8

    .line 1585
    move-object v2, v12

    .line 1586
    goto/16 :goto_1

    .line 1587
    .line 1588
    :goto_23
    iget v12, v10, Landroidx/paging/TransformablePage;->hintOriginalPageOffset:I

    .line 1589
    .line 1590
    iget-object v6, v10, Landroidx/paging/TransformablePage;->hintOriginalIndices:Ljava/util/List;

    .line 1591
    .line 1592
    if-eqz v6, :cond_34

    .line 1593
    .line 1594
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1595
    .line 1596
    .line 1597
    move-result-object v6

    .line 1598
    check-cast v6, Ljava/lang/Number;

    .line 1599
    .line 1600
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 1601
    .line 1602
    .line 1603
    move-result v6

    .line 1604
    :goto_24
    move v13, v6

    .line 1605
    goto :goto_25

    .line 1606
    :cond_34
    iget-object v6, v10, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 1607
    .line 1608
    invoke-static {v6}, Landroidx/room/Room;->getLastIndex(Ljava/util/List;)I

    .line 1609
    .line 1610
    .line 1611
    move-result v6

    .line 1612
    goto :goto_24

    .line 1613
    :goto_25
    invoke-static/range {v8 .. v13}, Landroidx/paging/FlowExtKt;->addSeparatorPage(Ljava/util/List;Ljava/lang/Object;Landroidx/paging/TransformablePage;Landroidx/paging/TransformablePage;II)V

    .line 1614
    .line 1615
    .line 1616
    move-object v9, v0

    .line 1617
    move-object v13, v8

    .line 1618
    move-object v11, v10

    .line 1619
    move v12, v1

    .line 1620
    move v8, v5

    .line 1621
    goto :goto_26

    .line 1622
    :cond_35
    move-object v2, v12

    .line 1623
    move v8, v5

    .line 1624
    move v12, v1

    .line 1625
    :goto_26
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 1626
    .line 1627
    .line 1628
    move-result v0

    .line 1629
    const/16 v17, 0x1

    .line 1630
    .line 1631
    add-int/lit8 v0, v0, 0x1

    .line 1632
    .line 1633
    iget-object v1, v14, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    .line 1634
    .line 1635
    invoke-static {v1}, Landroidx/room/Room;->getLastIndex(Ljava/util/List;)I

    .line 1636
    .line 1637
    .line 1638
    move-result v1

    .line 1639
    if-gt v0, v1, :cond_38

    .line 1640
    .line 1641
    move v5, v0

    .line 1642
    move-object v15, v2

    .line 1643
    move-object v10, v14

    .line 1644
    move-object v14, v11

    .line 1645
    move v11, v12

    .line 1646
    move v12, v8

    .line 1647
    :goto_27
    iget-object v0, v10, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    .line 1648
    .line 1649
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1650
    .line 1651
    .line 1652
    move-result-object v0

    .line 1653
    check-cast v0, Landroidx/paging/TransformablePage;

    .line 1654
    .line 1655
    iput-object v10, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$0:Landroidx/paging/PageEvent$Insert;

    .line 1656
    .line 1657
    iput-object v13, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$1:Ljava/util/ArrayList;

    .line 1658
    .line 1659
    iput-object v15, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$2:Ljava/util/ArrayList;

    .line 1660
    .line 1661
    iput-object v14, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$3:Ljava/lang/Object;

    .line 1662
    .line 1663
    iput-object v13, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$4:Ljava/lang/Object;

    .line 1664
    .line 1665
    const/4 v2, 0x0

    .line 1666
    iput-object v2, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$5:Ljava/lang/Object;

    .line 1667
    .line 1668
    iput-object v2, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$6:Ljava/lang/Object;

    .line 1669
    .line 1670
    iput-object v2, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$7:Ljava/lang/Object;

    .line 1671
    .line 1672
    iput-object v2, v3, Landroidx/paging/SeparatorState$onInsert$1;->L$8:Ljava/util/ArrayList;

    .line 1673
    .line 1674
    iput-boolean v12, v3, Landroidx/paging/SeparatorState$onInsert$1;->Z$0:Z

    .line 1675
    .line 1676
    iput v11, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$0:I

    .line 1677
    .line 1678
    iput v5, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$1:I

    .line 1679
    .line 1680
    iput v1, v3, Landroidx/paging/SeparatorState$onInsert$1;->I$2:I

    .line 1681
    .line 1682
    const/16 v2, 0x9

    .line 1683
    .line 1684
    iput v2, v3, Landroidx/paging/SeparatorState$onInsert$1;->label:I

    .line 1685
    .line 1686
    invoke-static {v0, v7, v3}, Landroidx/paging/FlowExtKt;->insertInternalSeparators(Landroidx/paging/TransformablePage;Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1687
    .line 1688
    .line 1689
    move-result-object v2

    .line 1690
    if-ne v2, v4, :cond_36

    .line 1691
    .line 1692
    goto/16 :goto_2b

    .line 1693
    .line 1694
    :cond_36
    move-object v8, v13

    .line 1695
    :goto_28
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1696
    .line 1697
    .line 1698
    if-eq v5, v1, :cond_37

    .line 1699
    .line 1700
    add-int/lit8 v5, v5, 0x1

    .line 1701
    .line 1702
    move-object v13, v8

    .line 1703
    goto :goto_27

    .line 1704
    :cond_37
    move-object v0, v3

    .line 1705
    move-object v1, v8

    .line 1706
    move-object v3, v10

    .line 1707
    move v8, v12

    .line 1708
    move-object v5, v15

    .line 1709
    move v12, v11

    .line 1710
    move-object v11, v14

    .line 1711
    goto :goto_29

    .line 1712
    :cond_38
    move-object v5, v2

    .line 1713
    move-object v0, v3

    .line 1714
    move-object v1, v13

    .line 1715
    move-object v3, v14

    .line 1716
    goto :goto_29

    .line 1717
    :cond_39
    const-string v0, "Empty collection can\'t be reduced."

    .line 1718
    .line 1719
    invoke-static {v0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1720
    .line 1721
    .line 1722
    const/16 v16, 0x0

    .line 1723
    .line 1724
    return-object v16

    .line 1725
    :cond_3a
    move-object/from16 v18, v6

    .line 1726
    .line 1727
    move-object v0, v3

    .line 1728
    move-object v3, v1

    .line 1729
    move-object v1, v2

    .line 1730
    :goto_29
    move-object/from16 v2, p0

    .line 1731
    .line 1732
    if-eqz v8, :cond_3e

    .line 1733
    .line 1734
    iget-boolean v6, v2, Landroidx/paging/SeparatorState;->footerAdded:Z

    .line 1735
    .line 1736
    if-nez v6, :cond_3e

    .line 1737
    .line 1738
    const/4 v15, 0x1

    .line 1739
    iput-boolean v15, v2, Landroidx/paging/SeparatorState;->footerAdded:Z

    .line 1740
    .line 1741
    if-eqz v12, :cond_3b

    .line 1742
    .line 1743
    invoke-static/range {v18 .. v18}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v6

    .line 1747
    check-cast v6, Landroidx/paging/TransformablePage;

    .line 1748
    .line 1749
    goto :goto_2a

    .line 1750
    :cond_3b
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1751
    .line 1752
    .line 1753
    move-object v6, v11

    .line 1754
    :goto_2a
    iget-object v8, v6, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 1755
    .line 1756
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1757
    .line 1758
    .line 1759
    move-result-object v8

    .line 1760
    iput-object v3, v0, Landroidx/paging/SeparatorState$onInsert$1;->L$0:Landroidx/paging/PageEvent$Insert;

    .line 1761
    .line 1762
    iput-object v1, v0, Landroidx/paging/SeparatorState$onInsert$1;->L$1:Ljava/util/ArrayList;

    .line 1763
    .line 1764
    iput-object v5, v0, Landroidx/paging/SeparatorState$onInsert$1;->L$2:Ljava/util/ArrayList;

    .line 1765
    .line 1766
    iput-object v6, v0, Landroidx/paging/SeparatorState$onInsert$1;->L$3:Ljava/lang/Object;

    .line 1767
    .line 1768
    iput-object v1, v0, Landroidx/paging/SeparatorState$onInsert$1;->L$4:Ljava/lang/Object;

    .line 1769
    .line 1770
    const/4 v15, 0x0

    .line 1771
    iput-object v15, v0, Landroidx/paging/SeparatorState$onInsert$1;->L$5:Ljava/lang/Object;

    .line 1772
    .line 1773
    iput-object v15, v0, Landroidx/paging/SeparatorState$onInsert$1;->L$6:Ljava/lang/Object;

    .line 1774
    .line 1775
    iput-object v15, v0, Landroidx/paging/SeparatorState$onInsert$1;->L$7:Ljava/lang/Object;

    .line 1776
    .line 1777
    iput-object v15, v0, Landroidx/paging/SeparatorState$onInsert$1;->L$8:Ljava/util/ArrayList;

    .line 1778
    .line 1779
    const/16 v9, 0xa

    .line 1780
    .line 1781
    iput v9, v0, Landroidx/paging/SeparatorState$onInsert$1;->label:I

    .line 1782
    .line 1783
    invoke-virtual {v7, v8, v15, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v0

    .line 1787
    if-ne v0, v4, :cond_3c

    .line 1788
    .line 1789
    :goto_2b
    return-object v4

    .line 1790
    :cond_3c
    move-object v8, v0

    .line 1791
    move-object v7, v1

    .line 1792
    move-object v9, v6

    .line 1793
    :goto_2c
    iget v11, v9, Landroidx/paging/TransformablePage;->hintOriginalPageOffset:I

    .line 1794
    .line 1795
    iget-object v0, v9, Landroidx/paging/TransformablePage;->hintOriginalIndices:Ljava/util/List;

    .line 1796
    .line 1797
    if-eqz v0, :cond_3d

    .line 1798
    .line 1799
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v0

    .line 1803
    check-cast v0, Ljava/lang/Number;

    .line 1804
    .line 1805
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 1806
    .line 1807
    .line 1808
    move-result v0

    .line 1809
    :goto_2d
    move v12, v0

    .line 1810
    goto :goto_2e

    .line 1811
    :cond_3d
    iget-object v0, v9, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 1812
    .line 1813
    invoke-static {v0}, Landroidx/room/Room;->getLastIndex(Ljava/util/List;)I

    .line 1814
    .line 1815
    .line 1816
    move-result v0

    .line 1817
    goto :goto_2d

    .line 1818
    :goto_2e
    const/4 v10, 0x0

    .line 1819
    invoke-static/range {v7 .. v12}, Landroidx/paging/FlowExtKt;->addSeparatorPage(Ljava/util/List;Ljava/lang/Object;Landroidx/paging/TransformablePage;Landroidx/paging/TransformablePage;II)V

    .line 1820
    .line 1821
    .line 1822
    :cond_3e
    move-object/from16 v21, v1

    .line 1823
    .line 1824
    const/4 v0, 0x0

    .line 1825
    iput-boolean v0, v2, Landroidx/paging/SeparatorState;->endTerminalSeparatorDeferred:Z

    .line 1826
    .line 1827
    iput-boolean v0, v2, Landroidx/paging/SeparatorState;->startTerminalSeparatorDeferred:Z

    .line 1828
    .line 1829
    iget-object v1, v3, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    .line 1830
    .line 1831
    sget-object v2, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    .line 1832
    .line 1833
    if-ne v1, v2, :cond_3f

    .line 1834
    .line 1835
    move-object/from16 v1, v18

    .line 1836
    .line 1837
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1838
    .line 1839
    .line 1840
    goto :goto_2f

    .line 1841
    :cond_3f
    move-object/from16 v1, v18

    .line 1842
    .line 1843
    invoke-virtual {v1, v0, v5}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1844
    .line 1845
    .line 1846
    :goto_2f
    iget-object v0, v3, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    .line 1847
    .line 1848
    iget v1, v3, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    .line 1849
    .line 1850
    iget v2, v3, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    .line 1851
    .line 1852
    iget-object v4, v3, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    .line 1853
    .line 1854
    iget-object v3, v3, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    .line 1855
    .line 1856
    new-instance v19, Landroidx/paging/PageEvent$Insert;

    .line 1857
    .line 1858
    move-object/from16 v20, v0

    .line 1859
    .line 1860
    move/from16 v22, v1

    .line 1861
    .line 1862
    move/from16 v23, v2

    .line 1863
    .line 1864
    move-object/from16 v25, v3

    .line 1865
    .line 1866
    move-object/from16 v24, v4

    .line 1867
    .line 1868
    invoke-direct/range {v19 .. v25}, Landroidx/paging/PageEvent$Insert;-><init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    .line 1869
    .line 1870
    .line 1871
    return-object v19

    .line 1872
    nop

    .line 1873
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final onStaticList(Landroidx/paging/PageEvent$StaticList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Landroidx/paging/SeparatorState$onStaticList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/paging/SeparatorState$onStaticList$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/paging/SeparatorState$onStaticList$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/paging/SeparatorState$onStaticList$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/paging/SeparatorState$onStaticList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/paging/SeparatorState$onStaticList$1;-><init>(Landroidx/paging/SeparatorState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Landroidx/paging/SeparatorState$onStaticList$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget p2, v0, Landroidx/paging/SeparatorState$onStaticList$1;->label:I

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    if-eqz p2, :cond_3

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    if-ne p2, p1, :cond_2

    .line 34
    .line 35
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    throw v0

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_3
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance p0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    throw v0
.end method
