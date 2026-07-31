.class public final Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public I$0:I

.field public I$1:I

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:[J

.field public label:I

.field public final synthetic this$0:Landroidx/compose/runtime/snapshots/SnapshotIdSet;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->this$0:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->this$0:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->this$0:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 4
    .line 5
    iget-wide v2, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    .line 6
    .line 7
    iget-wide v4, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    .line 8
    .line 9
    iget-wide v6, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    .line 10
    .line 11
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 12
    .line 13
    iget v9, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->label:I

    .line 14
    .line 15
    const/4 v10, 0x0

    .line 16
    const/16 v13, 0x40

    .line 17
    .line 18
    const/4 v14, 0x3

    .line 19
    const/4 v15, 0x2

    .line 20
    const/16 v16, 0x0

    .line 21
    .line 22
    const-wide/16 v17, 0x0

    .line 23
    .line 24
    const-wide/16 v19, 0x1

    .line 25
    .line 26
    const/4 v11, 0x1

    .line 27
    if-eqz v9, :cond_3

    .line 28
    .line 29
    if-eq v9, v11, :cond_2

    .line 30
    .line 31
    if-eq v9, v15, :cond_1

    .line 32
    .line 33
    if-ne v9, v14, :cond_0

    .line 34
    .line 35
    iget v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$0:I

    .line 36
    .line 37
    iget-object v6, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v6, Lkotlin/sequences/SequenceBuilderIterator;

    .line 40
    .line 41
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    move v9, v14

    .line 45
    goto/16 :goto_7

    .line 46
    .line 47
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v10

    .line 53
    :cond_1
    iget v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$0:I

    .line 54
    .line 55
    iget-object v9, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v9, Lkotlin/sequences/SequenceBuilderIterator;

    .line 58
    .line 59
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    move v10, v15

    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_2
    iget v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$1:I

    .line 66
    .line 67
    iget v9, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$0:I

    .line 68
    .line 69
    iget-object v12, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$1:[J

    .line 70
    .line 71
    iget-object v14, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v14, Lkotlin/sequences/SequenceBuilderIterator;

    .line 74
    .line 75
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    move v10, v11

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object v9, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v9, Lkotlin/sequences/SequenceBuilderIterator;

    .line 86
    .line 87
    iget-object v1, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    .line 88
    .line 89
    if-eqz v1, :cond_6

    .line 90
    .line 91
    array-length v12, v1

    .line 92
    move v14, v12

    .line 93
    move-object v12, v1

    .line 94
    move v1, v14

    .line 95
    move-object v14, v9

    .line 96
    move/from16 v9, v16

    .line 97
    .line 98
    :goto_0
    if-ge v9, v1, :cond_5

    .line 99
    .line 100
    aget-wide v10, v12, v9

    .line 101
    .line 102
    new-instance v15, Ljava/lang/Long;

    .line 103
    .line 104
    invoke-direct {v15, v10, v11}, Ljava/lang/Long;-><init>(J)V

    .line 105
    .line 106
    .line 107
    iput-object v14, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    .line 108
    .line 109
    iput-object v12, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$1:[J

    .line 110
    .line 111
    iput v9, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$0:I

    .line 112
    .line 113
    iput v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$1:I

    .line 114
    .line 115
    const/4 v10, 0x1

    .line 116
    iput v10, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->label:I

    .line 117
    .line 118
    invoke-virtual {v14, v15, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    if-ne v11, v8, :cond_4

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_4
    :goto_1
    add-int/2addr v9, v10

    .line 126
    move v11, v10

    .line 127
    const/4 v10, 0x0

    .line 128
    const/4 v15, 0x2

    .line 129
    goto :goto_0

    .line 130
    :cond_5
    move-object v9, v14

    .line 131
    :cond_6
    cmp-long v1, v6, v17

    .line 132
    .line 133
    if-eqz v1, :cond_9

    .line 134
    .line 135
    move/from16 v1, v16

    .line 136
    .line 137
    :goto_2
    if-ge v1, v13, :cond_9

    .line 138
    .line 139
    shl-long v10, v19, v1

    .line 140
    .line 141
    and-long/2addr v10, v6

    .line 142
    cmp-long v10, v10, v17

    .line 143
    .line 144
    if-eqz v10, :cond_8

    .line 145
    .line 146
    int-to-long v10, v1

    .line 147
    add-long/2addr v10, v4

    .line 148
    new-instance v12, Ljava/lang/Long;

    .line 149
    .line 150
    invoke-direct {v12, v10, v11}, Ljava/lang/Long;-><init>(J)V

    .line 151
    .line 152
    .line 153
    iput-object v9, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    .line 154
    .line 155
    const/4 v10, 0x0

    .line 156
    iput-object v10, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$1:[J

    .line 157
    .line 158
    iput v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$0:I

    .line 159
    .line 160
    const/4 v10, 0x2

    .line 161
    iput v10, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->label:I

    .line 162
    .line 163
    invoke-virtual {v9, v12, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    if-ne v11, v8, :cond_7

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_7
    :goto_3
    const/16 v21, 0x1

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_8
    const/4 v10, 0x2

    .line 174
    goto :goto_3

    .line 175
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_9
    cmp-long v1, v2, v17

    .line 179
    .line 180
    if-eqz v1, :cond_c

    .line 181
    .line 182
    move-object v6, v9

    .line 183
    move/from16 v1, v16

    .line 184
    .line 185
    :goto_5
    if-ge v1, v13, :cond_c

    .line 186
    .line 187
    shl-long v9, v19, v1

    .line 188
    .line 189
    and-long/2addr v9, v2

    .line 190
    cmp-long v7, v9, v17

    .line 191
    .line 192
    if-eqz v7, :cond_b

    .line 193
    .line 194
    int-to-long v9, v1

    .line 195
    add-long/2addr v9, v4

    .line 196
    const-wide/16 v11, 0x40

    .line 197
    .line 198
    add-long/2addr v9, v11

    .line 199
    new-instance v7, Ljava/lang/Long;

    .line 200
    .line 201
    invoke-direct {v7, v9, v10}, Ljava/lang/Long;-><init>(J)V

    .line 202
    .line 203
    .line 204
    iput-object v6, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$0:Ljava/lang/Object;

    .line 205
    .line 206
    const/4 v10, 0x0

    .line 207
    iput-object v10, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->L$1:[J

    .line 208
    .line 209
    iput v1, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->I$0:I

    .line 210
    .line 211
    const/4 v9, 0x3

    .line 212
    iput v9, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;->label:I

    .line 213
    .line 214
    invoke-virtual {v6, v7, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    if-ne v7, v8, :cond_a

    .line 219
    .line 220
    :goto_6
    return-object v8

    .line 221
    :cond_a
    :goto_7
    const/16 v21, 0x1

    .line 222
    .line 223
    goto :goto_8

    .line 224
    :cond_b
    const/4 v9, 0x3

    .line 225
    const/4 v10, 0x0

    .line 226
    goto :goto_7

    .line 227
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 231
    .line 232
    return-object v0
.end method
