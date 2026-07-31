.class public final Landroidx/navigationevent/NavigationEventProcessor;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final _history:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _transitionState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final defaultHandlers:Lkotlin/collections/ArrayDeque;

.field public final defaultInputs:Landroidx/collection/MutableOrderedScatterSet;

.field public hasEnabledAnyHandlers:Z

.field public hasEnabledDefaultHandlers:Z

.field public hasEnabledOverlayHandlers:Z

.field public final history:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public inProgressDirection:I

.field public inProgressHandler:Landroidx/navigationevent/NavigationEventHandler;

.field public inProgressInput:Landroidx/navigationevent/NavigationEventInput;

.field public final overlayHandlers:Lkotlin/collections/ArrayDeque;

.field public final overlayInputs:Landroidx/collection/MutableOrderedScatterSet;

.field public final unspecifiedInputs:Landroidx/collection/MutableOrderedScatterSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/navigationevent/NavigationEventTransitionState$Idle;->INSTANCE:Landroidx/navigationevent/NavigationEventTransitionState$Idle;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->_transitionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 11
    .line 12
    new-instance v0, Landroidx/navigationevent/NavigationEventHistory;

    .line 13
    .line 14
    invoke-direct {v0}, Landroidx/navigationevent/NavigationEventHistory;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->_history:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 22
    .line 23
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/StateFlowImpl;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->history:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 28
    .line 29
    new-instance v0, Lkotlin/collections/ArrayDeque;

    .line 30
    .line 31
    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->overlayHandlers:Lkotlin/collections/ArrayDeque;

    .line 35
    .line 36
    new-instance v0, Lkotlin/collections/ArrayDeque;

    .line 37
    .line 38
    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->defaultHandlers:Lkotlin/collections/ArrayDeque;

    .line 42
    .line 43
    invoke-static {}, Landroidx/collection/OrderedScatterSetKt;->mutableOrderedScatterSetOf()Landroidx/collection/MutableOrderedScatterSet;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->unspecifiedInputs:Landroidx/collection/MutableOrderedScatterSet;

    .line 48
    .line 49
    invoke-static {}, Landroidx/collection/OrderedScatterSetKt;->mutableOrderedScatterSetOf()Landroidx/collection/MutableOrderedScatterSet;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->defaultInputs:Landroidx/collection/MutableOrderedScatterSet;

    .line 54
    .line 55
    invoke-static {}, Landroidx/collection/OrderedScatterSetKt;->mutableOrderedScatterSetOf()Landroidx/collection/MutableOrderedScatterSet;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->overlayInputs:Landroidx/collection/MutableOrderedScatterSet;

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final addInput(Lokhttp3/Dispatcher;Landroidx/navigationevent/NavigationEventInput;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p2, Landroidx/navigationevent/NavigationEventInput;->dispatcher:Lokhttp3/Dispatcher;

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    if-eq p3, v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/navigationevent/NavigationEventProcessor;->unspecifiedInputs:Landroidx/collection/MutableOrderedScatterSet;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Landroidx/navigationevent/NavigationEventProcessor;->defaultInputs:Landroidx/collection/MutableOrderedScatterSet;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, p0, Landroidx/navigationevent/NavigationEventProcessor;->overlayInputs:Landroidx/collection/MutableOrderedScatterSet;

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v1, p2}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p2, Landroidx/navigationevent/NavigationEventInput;->dispatcher:Lokhttp3/Dispatcher;

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/navigationevent/NavigationEventProcessor;->history:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 27
    .line 28
    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 29
    .line 30
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroidx/navigationevent/NavigationEventHistory;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    if-eqz p3, :cond_3

    .line 40
    .line 41
    if-eq p3, v0, :cond_2

    .line 42
    .line 43
    iget-boolean p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->hasEnabledAnyHandlers:Z

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-boolean p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->hasEnabledDefaultHandlers:Z

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    iget-boolean p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->hasEnabledOverlayHandlers:Z

    .line 50
    .line 51
    :goto_1
    invoke-virtual {p2, p0}, Landroidx/navigationevent/NavigationEventInput;->onHasEnabledHandlersChanged(Z)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string p1, "Input \'"

    .line 58
    .line 59
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object p1, p2, Landroidx/navigationevent/NavigationEventInput;->dispatcher:Lokhttp3/Dispatcher;

    .line 66
    .line 67
    const-string p2, "\' is already added to dispatcher "

    .line 68
    .line 69
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const/16 p1, 0x2e

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method public final refreshEnabledHandlers()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v3, v0, Landroidx/navigationevent/NavigationEventProcessor;->overlayHandlers:Lkotlin/collections/ArrayDeque;

    .line 5
    .line 6
    if-eqz v3, :cond_1

    .line 7
    .line 8
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-eqz v4, :cond_1

    .line 13
    .line 14
    :cond_0
    const/4 v4, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v3}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Landroidx/navigationevent/NavigationEventHandler;

    .line 31
    .line 32
    iget-boolean v5, v5, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled:Z

    .line 33
    .line 34
    if-nez v5, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    move v4, v1

    .line 38
    :goto_1
    iget-object v5, v0, Landroidx/navigationevent/NavigationEventProcessor;->defaultHandlers:Lkotlin/collections/ArrayDeque;

    .line 39
    .line 40
    if-eqz v5, :cond_4

    .line 41
    .line 42
    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_4

    .line 47
    .line 48
    :cond_3
    const/4 v6, 0x0

    .line 49
    goto :goto_3

    .line 50
    :cond_4
    invoke-virtual {v5}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_3

    .line 59
    .line 60
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    check-cast v7, Landroidx/navigationevent/NavigationEventHandler;

    .line 65
    .line 66
    iget-boolean v7, v7, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled:Z

    .line 67
    .line 68
    if-nez v7, :cond_5

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_5
    move v6, v1

    .line 72
    :goto_3
    if-nez v4, :cond_7

    .line 73
    .line 74
    if-eqz v6, :cond_6

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_6
    const/4 v7, 0x0

    .line 78
    goto :goto_5

    .line 79
    :cond_7
    :goto_4
    move v7, v1

    .line 80
    :goto_5
    iget-boolean v8, v0, Landroidx/navigationevent/NavigationEventProcessor;->hasEnabledOverlayHandlers:Z

    .line 81
    .line 82
    if-eq v8, v4, :cond_8

    .line 83
    .line 84
    move v8, v1

    .line 85
    goto :goto_6

    .line 86
    :cond_8
    const/4 v8, 0x0

    .line 87
    :goto_6
    iget-boolean v9, v0, Landroidx/navigationevent/NavigationEventProcessor;->hasEnabledDefaultHandlers:Z

    .line 88
    .line 89
    if-eq v9, v6, :cond_9

    .line 90
    .line 91
    move v9, v1

    .line 92
    goto :goto_7

    .line 93
    :cond_9
    const/4 v9, 0x0

    .line 94
    :goto_7
    iget-boolean v10, v0, Landroidx/navigationevent/NavigationEventProcessor;->hasEnabledAnyHandlers:Z

    .line 95
    .line 96
    if-eq v10, v7, :cond_a

    .line 97
    .line 98
    goto :goto_8

    .line 99
    :cond_a
    const/4 v1, 0x0

    .line 100
    :goto_8
    iget-object v10, v0, Landroidx/navigationevent/NavigationEventProcessor;->overlayInputs:Landroidx/collection/MutableOrderedScatterSet;

    .line 101
    .line 102
    const/16 v13, 0x1f

    .line 103
    .line 104
    const v14, 0x7fffffff

    .line 105
    .line 106
    .line 107
    if-eqz v8, :cond_c

    .line 108
    .line 109
    iget-object v8, v10, Landroidx/collection/MutableOrderedScatterSet;->elements:[Ljava/lang/Object;

    .line 110
    .line 111
    iget-object v15, v10, Landroidx/collection/MutableOrderedScatterSet;->nodes:[J

    .line 112
    .line 113
    const-wide/32 v16, 0x7fffffff

    .line 114
    .line 115
    .line 116
    iget v11, v10, Landroidx/collection/MutableOrderedScatterSet;->tail:I

    .line 117
    .line 118
    :goto_9
    if-eq v11, v14, :cond_b

    .line 119
    .line 120
    aget-wide v18, v15, v11

    .line 121
    .line 122
    shr-long v18, v18, v13

    .line 123
    .line 124
    move-object/from16 v20, v3

    .line 125
    .line 126
    and-long v2, v18, v16

    .line 127
    .line 128
    long-to-int v2, v2

    .line 129
    aget-object v3, v8, v11

    .line 130
    .line 131
    check-cast v3, Landroidx/navigationevent/NavigationEventInput;

    .line 132
    .line 133
    invoke-virtual {v3, v4}, Landroidx/navigationevent/NavigationEventInput;->onHasEnabledHandlersChanged(Z)V

    .line 134
    .line 135
    .line 136
    move v11, v2

    .line 137
    move-object/from16 v3, v20

    .line 138
    .line 139
    goto :goto_9

    .line 140
    :cond_b
    :goto_a
    move-object/from16 v20, v3

    .line 141
    .line 142
    goto :goto_b

    .line 143
    :cond_c
    const-wide/32 v16, 0x7fffffff

    .line 144
    .line 145
    .line 146
    goto :goto_a

    .line 147
    :goto_b
    iget-object v2, v0, Landroidx/navigationevent/NavigationEventProcessor;->defaultInputs:Landroidx/collection/MutableOrderedScatterSet;

    .line 148
    .line 149
    if-eqz v9, :cond_d

    .line 150
    .line 151
    iget-object v3, v2, Landroidx/collection/MutableOrderedScatterSet;->elements:[Ljava/lang/Object;

    .line 152
    .line 153
    iget-object v8, v2, Landroidx/collection/MutableOrderedScatterSet;->nodes:[J

    .line 154
    .line 155
    iget v9, v2, Landroidx/collection/MutableOrderedScatterSet;->tail:I

    .line 156
    .line 157
    :goto_c
    if-eq v9, v14, :cond_d

    .line 158
    .line 159
    aget-wide v18, v8, v9

    .line 160
    .line 161
    shr-long v18, v18, v13

    .line 162
    .line 163
    move v11, v13

    .line 164
    and-long v12, v18, v16

    .line 165
    .line 166
    long-to-int v12, v12

    .line 167
    aget-object v9, v3, v9

    .line 168
    .line 169
    check-cast v9, Landroidx/navigationevent/NavigationEventInput;

    .line 170
    .line 171
    invoke-virtual {v9, v6}, Landroidx/navigationevent/NavigationEventInput;->onHasEnabledHandlersChanged(Z)V

    .line 172
    .line 173
    .line 174
    move v13, v11

    .line 175
    move v9, v12

    .line 176
    goto :goto_c

    .line 177
    :cond_d
    move v11, v13

    .line 178
    iget-object v3, v0, Landroidx/navigationevent/NavigationEventProcessor;->unspecifiedInputs:Landroidx/collection/MutableOrderedScatterSet;

    .line 179
    .line 180
    if-eqz v1, :cond_e

    .line 181
    .line 182
    iget-object v1, v3, Landroidx/collection/MutableOrderedScatterSet;->elements:[Ljava/lang/Object;

    .line 183
    .line 184
    iget-object v8, v3, Landroidx/collection/MutableOrderedScatterSet;->nodes:[J

    .line 185
    .line 186
    iget v9, v3, Landroidx/collection/MutableOrderedScatterSet;->tail:I

    .line 187
    .line 188
    :goto_d
    if-eq v9, v14, :cond_e

    .line 189
    .line 190
    aget-wide v12, v8, v9

    .line 191
    .line 192
    shr-long/2addr v12, v11

    .line 193
    and-long v12, v12, v16

    .line 194
    .line 195
    long-to-int v12, v12

    .line 196
    aget-object v9, v1, v9

    .line 197
    .line 198
    check-cast v9, Landroidx/navigationevent/NavigationEventInput;

    .line 199
    .line 200
    invoke-virtual {v9, v7}, Landroidx/navigationevent/NavigationEventInput;->onHasEnabledHandlersChanged(Z)V

    .line 201
    .line 202
    .line 203
    move v9, v12

    .line 204
    goto :goto_d

    .line 205
    :cond_e
    iput-boolean v4, v0, Landroidx/navigationevent/NavigationEventProcessor;->hasEnabledOverlayHandlers:Z

    .line 206
    .line 207
    iput-boolean v6, v0, Landroidx/navigationevent/NavigationEventProcessor;->hasEnabledDefaultHandlers:Z

    .line 208
    .line 209
    iput-boolean v7, v0, Landroidx/navigationevent/NavigationEventProcessor;->hasEnabledAnyHandlers:Z

    .line 210
    .line 211
    iget-object v1, v0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressHandler:Landroidx/navigationevent/NavigationEventHandler;

    .line 212
    .line 213
    const/4 v15, 0x0

    .line 214
    if-nez v1, :cond_f

    .line 215
    .line 216
    invoke-virtual {v0, v15}, Landroidx/navigationevent/NavigationEventProcessor;->resolveEnabledHandler(I)Landroidx/navigationevent/NavigationEventHandler;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    :cond_f
    iget-object v4, v0, Landroidx/navigationevent/NavigationEventProcessor;->inProgressHandler:Landroidx/navigationevent/NavigationEventHandler;

    .line 221
    .line 222
    if-nez v4, :cond_10

    .line 223
    .line 224
    invoke-virtual {v0, v15}, Landroidx/navigationevent/NavigationEventProcessor;->resolveEnabledHandler(I)Landroidx/navigationevent/NavigationEventHandler;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    :cond_10
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-nez v1, :cond_11

    .line 233
    .line 234
    goto/16 :goto_14

    .line 235
    .line 236
    :cond_11
    if-nez v4, :cond_12

    .line 237
    .line 238
    new-instance v1, Landroidx/navigationevent/NavigationEventHistory;

    .line 239
    .line 240
    invoke-direct {v1}, Landroidx/navigationevent/NavigationEventHistory;-><init>()V

    .line 241
    .line 242
    .line 243
    goto :goto_10

    .line 244
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual/range {v20 .. v20}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    if-eqz v7, :cond_13

    .line 258
    .line 259
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    check-cast v7, Landroidx/navigationevent/NavigationEventHandler;

    .line 264
    .line 265
    iget-boolean v7, v7, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled:Z

    .line 266
    .line 267
    goto :goto_e

    .line 268
    :cond_13
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    if-eqz v6, :cond_14

    .line 277
    .line 278
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    check-cast v6, Landroidx/navigationevent/NavigationEventHandler;

    .line 283
    .line 284
    iget-boolean v6, v6, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled:Z

    .line 285
    .line 286
    goto :goto_f

    .line 287
    :cond_14
    iget-object v4, v4, Landroidx/navigationevent/NavigationEventHandler;->currentInfo:Landroidx/work/OperationKt;

    .line 288
    .line 289
    new-instance v5, Landroidx/navigationevent/NavigationEventHistory;

    .line 290
    .line 291
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    sget-object v7, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 296
    .line 297
    invoke-direct {v5, v4, v1, v7, v6}, Landroidx/navigationevent/NavigationEventHistory;-><init>(Landroidx/work/OperationKt;Ljava/util/List;Ljava/util/List;I)V

    .line 298
    .line 299
    .line 300
    move-object v1, v5

    .line 301
    :goto_10
    iget-object v0, v0, Landroidx/navigationevent/NavigationEventProcessor;->_history:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 302
    .line 303
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    check-cast v4, Landroidx/navigationevent/NavigationEventHistory;

    .line 308
    .line 309
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v4

    .line 313
    if-eqz v4, :cond_15

    .line 314
    .line 315
    goto :goto_14

    .line 316
    :cond_15
    const/4 v4, 0x0

    .line 317
    invoke-virtual {v0, v4, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    iget-object v0, v10, Landroidx/collection/MutableOrderedScatterSet;->elements:[Ljava/lang/Object;

    .line 321
    .line 322
    iget-object v1, v10, Landroidx/collection/MutableOrderedScatterSet;->nodes:[J

    .line 323
    .line 324
    iget v4, v10, Landroidx/collection/MutableOrderedScatterSet;->tail:I

    .line 325
    .line 326
    :goto_11
    if-eq v4, v14, :cond_16

    .line 327
    .line 328
    aget-wide v5, v1, v4

    .line 329
    .line 330
    shr-long/2addr v5, v11

    .line 331
    and-long v5, v5, v16

    .line 332
    .line 333
    long-to-int v5, v5

    .line 334
    aget-object v4, v0, v4

    .line 335
    .line 336
    check-cast v4, Landroidx/navigationevent/NavigationEventInput;

    .line 337
    .line 338
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    move v4, v5

    .line 342
    goto :goto_11

    .line 343
    :cond_16
    iget-object v0, v2, Landroidx/collection/MutableOrderedScatterSet;->elements:[Ljava/lang/Object;

    .line 344
    .line 345
    iget-object v1, v2, Landroidx/collection/MutableOrderedScatterSet;->nodes:[J

    .line 346
    .line 347
    iget v2, v2, Landroidx/collection/MutableOrderedScatterSet;->tail:I

    .line 348
    .line 349
    :goto_12
    if-eq v2, v14, :cond_17

    .line 350
    .line 351
    aget-wide v4, v1, v2

    .line 352
    .line 353
    shr-long/2addr v4, v11

    .line 354
    and-long v4, v4, v16

    .line 355
    .line 356
    long-to-int v4, v4

    .line 357
    aget-object v2, v0, v2

    .line 358
    .line 359
    check-cast v2, Landroidx/navigationevent/NavigationEventInput;

    .line 360
    .line 361
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    move v2, v4

    .line 365
    goto :goto_12

    .line 366
    :cond_17
    iget-object v0, v3, Landroidx/collection/MutableOrderedScatterSet;->elements:[Ljava/lang/Object;

    .line 367
    .line 368
    iget-object v1, v3, Landroidx/collection/MutableOrderedScatterSet;->nodes:[J

    .line 369
    .line 370
    iget v2, v3, Landroidx/collection/MutableOrderedScatterSet;->tail:I

    .line 371
    .line 372
    :goto_13
    if-eq v2, v14, :cond_18

    .line 373
    .line 374
    aget-wide v3, v1, v2

    .line 375
    .line 376
    shr-long/2addr v3, v11

    .line 377
    and-long v3, v3, v16

    .line 378
    .line 379
    long-to-int v3, v3

    .line 380
    aget-object v2, v0, v2

    .line 381
    .line 382
    check-cast v2, Landroidx/navigationevent/NavigationEventInput;

    .line 383
    .line 384
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    move v2, v3

    .line 388
    goto :goto_13

    .line 389
    :cond_18
    :goto_14
    return-void
.end method

.method public final resolveEnabledHandler(I)Landroidx/navigationevent/NavigationEventHandler;
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iget-object v1, p0, Landroidx/navigationevent/NavigationEventProcessor;->defaultHandlers:Lkotlin/collections/ArrayDeque;

    .line 3
    .line 4
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->overlayHandlers:Lkotlin/collections/ArrayDeque;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq p1, v0, :cond_9

    .line 8
    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p1, v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroidx/navigationevent/NavigationEventHandler;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroidx/navigationevent/NavigationEventHandler;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    return-object v2

    .line 55
    :cond_2
    const-string p0, "Unsupported direction: \'"

    .line 56
    .line 57
    const-string v0, "\'."

    .line 58
    .line 59
    invoke-static {p1, v0, p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(ILjava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v2

    .line 63
    :cond_3
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    move-object v0, p1

    .line 78
    check-cast v0, Landroidx/navigationevent/NavigationEventHandler;

    .line 79
    .line 80
    iget-boolean v0, v0, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled:Z

    .line 81
    .line 82
    if-nez v0, :cond_5

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    move-object p1, v2

    .line 86
    :cond_5
    check-cast p1, Landroidx/navigationevent/NavigationEventHandler;

    .line 87
    .line 88
    if-nez p1, :cond_8

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_7

    .line 99
    .line 100
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    move-object v0, p1

    .line 105
    check-cast v0, Landroidx/navigationevent/NavigationEventHandler;

    .line 106
    .line 107
    iget-boolean v0, v0, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled:Z

    .line 108
    .line 109
    if-nez v0, :cond_6

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_6
    move-object v2, p1

    .line 113
    :cond_7
    check-cast v2, Landroidx/navigationevent/NavigationEventHandler;

    .line 114
    .line 115
    return-object v2

    .line 116
    :cond_8
    return-object p1

    .line 117
    :cond_9
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_b

    .line 126
    .line 127
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    move-object v0, p1

    .line 132
    check-cast v0, Landroidx/navigationevent/NavigationEventHandler;

    .line 133
    .line 134
    iget-boolean v0, v0, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled:Z

    .line 135
    .line 136
    if-eqz v0, :cond_a

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_b
    move-object p1, v2

    .line 140
    :goto_4
    check-cast p1, Landroidx/navigationevent/NavigationEventHandler;

    .line 141
    .line 142
    if-nez p1, :cond_e

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_d

    .line 153
    .line 154
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    move-object v0, p1

    .line 159
    check-cast v0, Landroidx/navigationevent/NavigationEventHandler;

    .line 160
    .line 161
    iget-boolean v0, v0, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled:Z

    .line 162
    .line 163
    if-eqz v0, :cond_c

    .line 164
    .line 165
    move-object v2, p1

    .line 166
    :cond_d
    check-cast v2, Landroidx/navigationevent/NavigationEventHandler;

    .line 167
    .line 168
    return-object v2

    .line 169
    :cond_e
    return-object p1
.end method
