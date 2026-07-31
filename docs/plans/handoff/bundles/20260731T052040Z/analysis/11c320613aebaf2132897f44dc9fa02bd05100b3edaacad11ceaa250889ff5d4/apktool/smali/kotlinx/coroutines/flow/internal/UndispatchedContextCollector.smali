.class public final Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final countOrElement:Ljava/lang/Object;

.field public final emitContext:Ljava/lang/Object;

.field public final emitRef:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 24
    iput p1, p0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;->$r8$classId:I

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;->emitContext:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;->countOrElement:Ljava/lang/Object;

    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;->emitRef:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;->emitContext:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p2}, Lkotlinx/coroutines/internal/InlineList;->threadContextElements(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;->countOrElement:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance p2, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector$emitRef$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p2, p1, v0}, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector$emitRef$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;->emitRef:Ljava/lang/Object;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;->$r8$classId:I

    .line 6
    .line 7
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object v5, v0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;->emitRef:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v6, v0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;->countOrElement:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v0, v0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;->emitContext:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v2, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v1, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v1, Landroidx/navigation3/ui/AnimatedSceneKey;

    .line 24
    .line 25
    check-cast v0, Landroidx/compose/animation/core/Transition;

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroidx/navigation3/scene/Scene;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Landroidx/navigation3/ui/AnimatedSceneKey;-><init>(Landroidx/navigation3/scene/Scene;)V

    .line 36
    .line 37
    .line 38
    check-cast v6, Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 39
    .line 40
    iget-object v0, v6, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->keys:Landroidx/compose/runtime/snapshots/SnapshotMapKeySet;

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Landroidx/navigation3/ui/AnimatedSceneKey;

    .line 61
    .line 62
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-nez v7, :cond_0

    .line 67
    .line 68
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    check-cast v5, Landroidx/collection/MutableObjectFloatMap;

    .line 73
    .line 74
    iget-object v0, v5, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    .line 75
    .line 76
    array-length v2, v0

    .line 77
    add-int/lit8 v2, v2, -0x2

    .line 78
    .line 79
    if-ltz v2, :cond_6

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    :goto_1
    aget-wide v7, v0, v6

    .line 83
    .line 84
    not-long v9, v7

    .line 85
    const/4 v11, 0x7

    .line 86
    shl-long/2addr v9, v11

    .line 87
    and-long/2addr v9, v7

    .line 88
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    and-long/2addr v9, v12

    .line 94
    cmp-long v9, v9, v12

    .line 95
    .line 96
    if-eqz v9, :cond_5

    .line 97
    .line 98
    sub-int v9, v6, v2

    .line 99
    .line 100
    not-int v9, v9

    .line 101
    ushr-int/lit8 v9, v9, 0x1f

    .line 102
    .line 103
    const/16 v10, 0x8

    .line 104
    .line 105
    rsub-int/lit8 v9, v9, 0x8

    .line 106
    .line 107
    const/4 v12, 0x0

    .line 108
    :goto_2
    if-ge v12, v9, :cond_4

    .line 109
    .line 110
    const-wide/16 v13, 0xff

    .line 111
    .line 112
    and-long v15, v7, v13

    .line 113
    .line 114
    const-wide/16 v17, 0x80

    .line 115
    .line 116
    cmp-long v15, v15, v17

    .line 117
    .line 118
    if-gez v15, :cond_2

    .line 119
    .line 120
    shl-int/lit8 v15, v6, 0x3

    .line 121
    .line 122
    add-int/2addr v15, v12

    .line 123
    iget-object v3, v5, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 124
    .line 125
    aget-object v3, v3, v15

    .line 126
    .line 127
    move/from16 p0, v11

    .line 128
    .line 129
    iget-object v11, v5, Landroidx/collection/MutableObjectFloatMap;->values:[F

    .line 130
    .line 131
    aget v11, v11, v15

    .line 132
    .line 133
    check-cast v3, Landroidx/navigation3/ui/AnimatedSceneKey;

    .line 134
    .line 135
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-nez v3, :cond_3

    .line 140
    .line 141
    iget v3, v5, Landroidx/collection/MutableObjectFloatMap;->_size:I

    .line 142
    .line 143
    add-int/lit8 v3, v3, -0x1

    .line 144
    .line 145
    iput v3, v5, Landroidx/collection/MutableObjectFloatMap;->_size:I

    .line 146
    .line 147
    iget-object v3, v5, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    .line 148
    .line 149
    iget v11, v5, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    .line 150
    .line 151
    shr-int/lit8 v17, v15, 0x3

    .line 152
    .line 153
    and-int/lit8 v18, v15, 0x7

    .line 154
    .line 155
    shl-int/lit8 v18, v18, 0x3

    .line 156
    .line 157
    aget-wide v19, v3, v17

    .line 158
    .line 159
    shl-long v13, v13, v18

    .line 160
    .line 161
    not-long v13, v13

    .line 162
    and-long v13, v19, v13

    .line 163
    .line 164
    const-wide/16 v19, 0xfe

    .line 165
    .line 166
    shl-long v18, v19, v18

    .line 167
    .line 168
    or-long v13, v13, v18

    .line 169
    .line 170
    aput-wide v13, v3, v17

    .line 171
    .line 172
    add-int/lit8 v17, v15, -0x7

    .line 173
    .line 174
    and-int v17, v17, v11

    .line 175
    .line 176
    and-int/lit8 v11, v11, 0x7

    .line 177
    .line 178
    add-int v17, v17, v11

    .line 179
    .line 180
    shr-int/lit8 v11, v17, 0x3

    .line 181
    .line 182
    aput-wide v13, v3, v11

    .line 183
    .line 184
    iget-object v3, v5, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 185
    .line 186
    const/4 v11, 0x0

    .line 187
    aput-object v11, v3, v15

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_2
    move/from16 p0, v11

    .line 191
    .line 192
    :cond_3
    :goto_3
    shr-long/2addr v7, v10

    .line 193
    add-int/lit8 v12, v12, 0x1

    .line 194
    .line 195
    move/from16 v11, p0

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_4
    if-ne v9, v10, :cond_6

    .line 199
    .line 200
    :cond_5
    if-eq v6, v2, :cond_6

    .line 201
    .line 202
    add-int/lit8 v6, v6, 0x1

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_6
    return-object v4

    .line 206
    :pswitch_0
    check-cast v1, Ljava/lang/Boolean;

    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    check-cast v6, Landroidx/compose/animation/core/Transition;

    .line 213
    .line 214
    check-cast v0, Landroidx/compose/runtime/ProduceStateScope;

    .line 215
    .line 216
    if-eqz v1, :cond_7

    .line 217
    .line 218
    check-cast v5, Landroidx/compose/runtime/State;

    .line 219
    .line 220
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 225
    .line 226
    iget-object v2, v6, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    .line 227
    .line 228
    invoke-virtual {v2}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    iget-object v3, v6, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 233
    .line 234
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-interface {v1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    check-cast v1, Ljava/lang/Boolean;

    .line 243
    .line 244
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    goto :goto_4

    .line 249
    :cond_7
    const/4 v3, 0x0

    .line 250
    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    check-cast v0, Landroidx/compose/runtime/ProduceStateScopeImpl;

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProduceStateScopeImpl;->setValue(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    return-object v4

    .line 260
    :pswitch_1
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 261
    .line 262
    check-cast v5, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector$emitRef$1;

    .line 263
    .line 264
    move-object/from16 v2, p2

    .line 265
    .line 266
    invoke-static {v0, v1, v6, v5, v2}, Lkotlinx/coroutines/flow/internal/ChannelFlowKt;->withContextUndispatched(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 271
    .line 272
    if-ne v0, v1, :cond_8

    .line 273
    .line 274
    move-object v4, v0

    .line 275
    :cond_8
    return-object v4

    .line 276
    nop

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
