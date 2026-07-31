.class public final Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;


# instance fields
.field public availableTimeNanos:J

.field public elapsedTimeNanos:J

.field public hasResolvedNestedPrefetches:Z

.field public final index:I

.field public isApplied:Z

.field public isCanceled:Z

.field public isMeasured:Z

.field public isUrgent:Z

.field public keyUsedForComposition:Ljava/lang/Object;

.field public nestedPrefetchController:Landroidx/paging/FlattenedPageEventStorage;

.field public final onItemPremeasured:Lkotlin/jvm/functions/Function1;

.field public pauseRequested:Z

.field public pausedPrecomposition:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;

.field public precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

.field public final prefetchMetrics:Lcom/caverock/androidsvg/SVG;

.field public premeasureConstraints:Landroidx/compose/ui/unit/Constraints;

.field public startTime:J

.field public final synthetic this$0:Landroidx/compose/runtime/Latch;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Latch;ILcom/caverock/androidsvg/SVG;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->this$0:Landroidx/compose/runtime/Latch;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->index:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->prefetchMetrics:Lcom/caverock/androidsvg/SVG;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->onItemPremeasured:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    invoke-static {}, Lkotlin/time/MonotonicTimeSource;->read()J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->startTime:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isCanceled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isCanceled:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->cleanUp()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final cleanUp()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->pausedPrecomposition:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v2, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;->$r8$classId:I

    .line 7
    .line 8
    packed-switch v2, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;->getNodeState()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v2, v2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->pausedComposition:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v1

    .line 21
    :goto_0
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-object v2, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 24
    .line 25
    iget-object v0, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;->$slotId:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->disposePrecomposedSlot(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :pswitch_0
    iput-object v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->pausedPrecomposition:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-interface {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->dispose()V

    .line 37
    .line 38
    .line 39
    :cond_2
    iput-object v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 40
    .line 41
    iput-object v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->nestedPrefetchController:Landroidx/paging/FlattenedPageEventStorage;

    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final execute(Landroidx/appcompat/app/TwilightManager$TwilightState;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->this$0:Landroidx/compose/runtime/Latch;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isUrgent:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v0, "compose:lazy:prefetch:execute:urgent"

    .line 14
    .line 15
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->executeRequest(Landroidx/appcompat/app/TwilightManager$TwilightState;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->executeRequest(Landroidx/appcompat/app/TwilightManager$TwilightState;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    :goto_0
    const-string p1, "compose:lazy:prefetch:execute:item"

    .line 36
    .line 37
    const-wide/16 v0, -0x1

    .line 38
    .line 39
    invoke-static {p1, v0, v1}, Lorg/wikipedia/util/FileUtil;->traceValue(Ljava/lang/String;J)V

    .line 40
    .line 41
    .line 42
    return p0
.end method

.method public final executeRequest(Landroidx/appcompat/app/TwilightManager$TwilightState;)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->index:I

    .line 4
    .line 5
    int-to-long v2, v1

    .line 6
    const-string v4, "compose:lazy:prefetch:execute:item"

    .line 7
    .line 8
    invoke-static {v4, v2, v3}, Lorg/wikipedia/util/FileUtil;->traceValue(Ljava/lang/String;J)V

    .line 9
    .line 10
    .line 11
    iget-object v5, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->this$0:Landroidx/compose/runtime/Latch;

    .line 12
    .line 13
    iget-object v5, v5, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 16
    .line 17
    iget-object v5, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->itemProvider:Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;

    .line 18
    .line 19
    invoke-virtual {v5}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 24
    .line 25
    iget-boolean v6, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isCanceled:Z

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    if-nez v6, :cond_26

    .line 29
    .line 30
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getItemCount()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-ltz v1, :cond_26

    .line 35
    .line 36
    if-ge v1, v6, :cond_26

    .line 37
    .line 38
    invoke-interface {v5, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getKey(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    iget-object v8, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->keyUsedForComposition:Ljava/lang/Object;

    .line 43
    .line 44
    if-eqz v8, :cond_0

    .line 45
    .line 46
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-nez v8, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->cleanUp()V

    .line 53
    .line 54
    .line 55
    return v7

    .line 56
    :cond_0
    invoke-interface {v5, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getContentType(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object v5, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->prefetchMetrics:Lcom/caverock/androidsvg/SVG;

    .line 61
    .line 62
    iget-object v8, v5, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v8, Landroidx/compose/foundation/lazy/layout/Averages;

    .line 65
    .line 66
    iget-object v9, v5, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 67
    .line 68
    const/4 v10, -0x1

    .line 69
    if-ne v9, v1, :cond_1

    .line 70
    .line 71
    if-eqz v8, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object v8, v5, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v8, Landroidx/collection/MutableScatterMap;

    .line 77
    .line 78
    invoke-virtual {v8, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    if-nez v9, :cond_2

    .line 83
    .line 84
    new-instance v9, Landroidx/compose/foundation/lazy/layout/Averages;

    .line 85
    .line 86
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 87
    .line 88
    .line 89
    iput v10, v9, Landroidx/compose/foundation/lazy/layout/Averages;->nestedPrefetchCount:I

    .line 90
    .line 91
    invoke-virtual {v8, v1, v9}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    move-object v8, v9

    .line 95
    check-cast v8, Landroidx/compose/foundation/lazy/layout/Averages;

    .line 96
    .line 97
    iput-object v1, v5, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 98
    .line 99
    iput-object v8, v5, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 100
    .line 101
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isComposed()Z

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/app/TwilightManager$TwilightState;->availableTimeNanos()J

    .line 105
    .line 106
    .line 107
    move-result-wide v11

    .line 108
    iput-wide v11, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->availableTimeNanos:J

    .line 109
    .line 110
    invoke-static {}, Lkotlin/time/MonotonicTimeSource;->read()J

    .line 111
    .line 112
    .line 113
    move-result-wide v13

    .line 114
    iput-wide v13, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->startTime:J

    .line 115
    .line 116
    const-wide/16 v13, 0x0

    .line 117
    .line 118
    iput-wide v13, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->elapsedTimeNanos:J

    .line 119
    .line 120
    const-string v5, "compose:lazy:prefetch:available_time_nanos"

    .line 121
    .line 122
    invoke-static {v5, v11, v12}, Lorg/wikipedia/util/FileUtil;->traceValue(Ljava/lang/String;J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isComposed()Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-nez v5, :cond_5

    .line 130
    .line 131
    iget-wide v11, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->availableTimeNanos:J

    .line 132
    .line 133
    move-wide v15, v13

    .line 134
    iget-wide v13, v8, Landroidx/compose/foundation/lazy/layout/Averages;->resumeTimeNanos:J

    .line 135
    .line 136
    iget-wide v9, v8, Landroidx/compose/foundation/lazy/layout/Averages;->pauseTimeNanos:J

    .line 137
    .line 138
    add-long/2addr v13, v9

    .line 139
    invoke-virtual {v0, v11, v12, v13, v14}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->shouldExecute(JJ)Z

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-eqz v9, :cond_3

    .line 144
    .line 145
    const-string v9, "compose:lazy:prefetch:compose"

    .line 146
    .line 147
    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :try_start_0
    invoke-virtual {v0, v6, v1, v8}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->performPausableComposition(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/Averages;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .line 152
    .line 153
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 159
    .line 160
    .line 161
    throw v0

    .line 162
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isComposed()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-nez v1, :cond_6

    .line 167
    .line 168
    :cond_4
    const/16 v17, 0x1

    .line 169
    .line 170
    goto/16 :goto_10

    .line 171
    .line 172
    :cond_5
    move-wide v15, v13

    .line 173
    :cond_6
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->pausedPrecomposition:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;

    .line 174
    .line 175
    const/4 v6, 0x0

    .line 176
    if-eqz v1, :cond_9

    .line 177
    .line 178
    iget-wide v9, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->availableTimeNanos:J

    .line 179
    .line 180
    iget-wide v11, v8, Landroidx/compose/foundation/lazy/layout/Averages;->applyTimeNanos:J

    .line 181
    .line 182
    invoke-virtual {v0, v9, v10, v11, v12}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->shouldExecute(JJ)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_4

    .line 187
    .line 188
    const-string v1, "compose:lazy:prefetch:apply"

    .line 189
    .line 190
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :try_start_1
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->pausedPrecomposition:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;

    .line 194
    .line 195
    if-eqz v1, :cond_8

    .line 196
    .line 197
    iget v9, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;->$r8$classId:I

    .line 198
    .line 199
    packed-switch v9, :pswitch_data_0

    .line 200
    .line 201
    .line 202
    iget-object v9, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 203
    .line 204
    invoke-virtual {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;->getNodeState()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    if-eqz v10, :cond_7

    .line 209
    .line 210
    invoke-virtual {v9, v10, v7}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->applyPausedPrecomposition(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;Z)V

    .line 211
    .line 212
    .line 213
    :cond_7
    iget-object v1, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;->$slotId:Ljava/lang/Object;

    .line 214
    .line 215
    invoke-virtual {v9, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->createPrecomposedSlotHandle(Ljava/lang/Object;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    goto :goto_2

    .line 220
    :pswitch_0
    iget-object v9, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 221
    .line 222
    iget-object v1, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;->$slotId:Ljava/lang/Object;

    .line 223
    .line 224
    invoke-virtual {v9, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->createPrecomposedSlotHandle(Ljava/lang/Object;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    :goto_2
    iput-object v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 229
    .line 230
    iput-object v6, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->pausedPrecomposition:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;

    .line 231
    .line 232
    const/4 v1, 0x1

    .line 233
    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isApplied:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 234
    .line 235
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->updateElapsedAndAvailableTime()V

    .line 239
    .line 240
    .line 241
    iget-wide v9, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->elapsedTimeNanos:J

    .line 242
    .line 243
    iget-wide v11, v8, Landroidx/compose/foundation/lazy/layout/Averages;->applyTimeNanos:J

    .line 244
    .line 245
    invoke-static {v9, v10, v11, v12}, Landroidx/compose/foundation/lazy/layout/Averages;->calculateAverageTime(JJ)J

    .line 246
    .line 247
    .line 248
    move-result-wide v9

    .line 249
    iput-wide v9, v8, Landroidx/compose/foundation/lazy/layout/Averages;->applyTimeNanos:J

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_8
    :try_start_2
    const-string v0, "Nothing to apply!"

    .line 253
    .line 254
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 255
    .line 256
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 260
    :catchall_1
    move-exception v0

    .line 261
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 262
    .line 263
    .line 264
    throw v0

    .line 265
    :cond_9
    :goto_3
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->hasResolvedNestedPrefetches:Z

    .line 266
    .line 267
    if-nez v1, :cond_c

    .line 268
    .line 269
    iget-wide v9, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->availableTimeNanos:J

    .line 270
    .line 271
    cmp-long v1, v9, v15

    .line 272
    .line 273
    if-lez v1, :cond_4

    .line 274
    .line 275
    const-string v1, "compose:lazy:prefetch:resolve-nested"

    .line 276
    .line 277
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    :try_start_3
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 281
    .line 282
    if-eqz v1, :cond_b

    .line 283
    .line 284
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 285
    .line 286
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 287
    .line 288
    .line 289
    new-instance v10, Landroidx/navigation/NavGraphNavigator$$ExternalSyntheticLambda0;

    .line 290
    .line 291
    const/4 v11, 0x1

    .line 292
    invoke-direct {v10, v9, v11}, Landroidx/navigation/NavGraphNavigator$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    .line 293
    .line 294
    .line 295
    invoke-interface {v1, v10}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->traverseDescendants(Landroidx/navigation/NavGraphNavigator$$ExternalSyntheticLambda0;)V

    .line 296
    .line 297
    .line 298
    iget-object v1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v1, Ljava/util/List;

    .line 301
    .line 302
    if-eqz v1, :cond_a

    .line 303
    .line 304
    new-instance v9, Landroidx/paging/FlattenedPageEventStorage;

    .line 305
    .line 306
    invoke-direct {v9, v0, v1}, Landroidx/paging/FlattenedPageEventStorage;-><init>(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;Ljava/util/List;)V

    .line 307
    .line 308
    .line 309
    goto :goto_4

    .line 310
    :cond_a
    move-object v9, v6

    .line 311
    :goto_4
    iput-object v9, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->nestedPrefetchController:Landroidx/paging/FlattenedPageEventStorage;

    .line 312
    .line 313
    const/4 v1, 0x1

    .line 314
    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->hasResolvedNestedPrefetches:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 315
    .line 316
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 317
    .line 318
    .line 319
    goto :goto_6

    .line 320
    :catchall_2
    move-exception v0

    .line 321
    goto :goto_5

    .line 322
    :cond_b
    :try_start_4
    const-string v0, "Should precompose before resolving nested prefetch states"

    .line 323
    .line 324
    invoke-static {v0}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->m(Ljava/lang/String;)Lcoil3/network/HttpException;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 329
    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 330
    .line 331
    .line 332
    throw v0

    .line 333
    :cond_c
    :goto_6
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->nestedPrefetchController:Landroidx/paging/FlattenedPageEventStorage;

    .line 334
    .line 335
    if-eqz v1, :cond_19

    .line 336
    .line 337
    iget v9, v8, Landroidx/compose/foundation/lazy/layout/Averages;->nestedPrefetchCount:I

    .line 338
    .line 339
    iget-boolean v10, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isUrgent:Z

    .line 340
    .line 341
    iget-object v11, v1, Landroidx/paging/FlattenedPageEventStorage;->sourceStates:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast v11, [Ljava/util/List;

    .line 344
    .line 345
    iget v12, v1, Landroidx/paging/FlattenedPageEventStorage;->placeholdersBefore:I

    .line 346
    .line 347
    iget-object v13, v1, Landroidx/paging/FlattenedPageEventStorage;->pages:Ljava/util/List;

    .line 348
    .line 349
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 350
    .line 351
    .line 352
    move-result v14

    .line 353
    if-lt v12, v14, :cond_d

    .line 354
    .line 355
    goto/16 :goto_e

    .line 356
    .line 357
    :cond_d
    iget-object v12, v1, Landroidx/paging/FlattenedPageEventStorage;->mediatorStates:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast v12, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    .line 360
    .line 361
    iget-boolean v12, v12, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isCanceled:Z

    .line 362
    .line 363
    if-eqz v12, :cond_e

    .line 364
    .line 365
    const-string v12, "Should not execute nested prefetch on canceled request"

    .line 366
    .line 367
    invoke-static {v12}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    :cond_e
    const-string v12, "compose:lazy:prefetch:update_nested_prefetch_count"

    .line 371
    .line 372
    invoke-static {v12}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    :try_start_5
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    .line 376
    .line 377
    .line 378
    move-result v12

    .line 379
    move v14, v7

    .line 380
    :goto_7
    if-ge v14, v12, :cond_f

    .line 381
    .line 382
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v18

    .line 386
    move-object/from16 v5, v18

    .line 387
    .line 388
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 389
    .line 390
    iput v9, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->realizedNestedPrefetchCount:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 391
    .line 392
    add-int/lit8 v14, v14, 0x1

    .line 393
    .line 394
    goto :goto_7

    .line 395
    :cond_f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 396
    .line 397
    .line 398
    const-string v5, "compose:lazy:prefetch:nested"

    .line 399
    .line 400
    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    :goto_8
    :try_start_6
    iget v5, v1, Landroidx/paging/FlattenedPageEventStorage;->placeholdersBefore:I

    .line 404
    .line 405
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 406
    .line 407
    .line 408
    move-result v9

    .line 409
    if-ge v5, v9, :cond_18

    .line 410
    .line 411
    iget v5, v1, Landroidx/paging/FlattenedPageEventStorage;->placeholdersBefore:I

    .line 412
    .line 413
    aget-object v5, v11, v5

    .line 414
    .line 415
    if-nez v5, :cond_12

    .line 416
    .line 417
    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/app/TwilightManager$TwilightState;->availableTimeNanos()J

    .line 418
    .line 419
    .line 420
    move-result-wide v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 421
    cmp-long v5, v19, v15

    .line 422
    .line 423
    if-gtz v5, :cond_10

    .line 424
    .line 425
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 426
    .line 427
    .line 428
    const/16 v17, 0x1

    .line 429
    .line 430
    return v17

    .line 431
    :cond_10
    :try_start_7
    iget v5, v1, Landroidx/paging/FlattenedPageEventStorage;->placeholdersBefore:I

    .line 432
    .line 433
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v9

    .line 437
    check-cast v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 438
    .line 439
    iget-object v12, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->onNestedPrefetch:Lkotlin/jvm/functions/Function1;

    .line 440
    .line 441
    if-nez v12, :cond_11

    .line 442
    .line 443
    sget-object v9, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 444
    .line 445
    goto :goto_9

    .line 446
    :cond_11
    new-instance v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;

    .line 447
    .line 448
    iget v6, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->realizedNestedPrefetchCount:I

    .line 449
    .line 450
    invoke-direct {v14, v9, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;I)V

    .line 451
    .line 452
    .line 453
    invoke-interface {v12, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    iget-object v6, v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->_requests:Ljava/util/ArrayList;

    .line 457
    .line 458
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 459
    .line 460
    .line 461
    move-result v12

    .line 462
    iput v12, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->lastNumberOfNestedPrefetchItems:I

    .line 463
    .line 464
    move-object v9, v6

    .line 465
    :goto_9
    aput-object v9, v11, v5

    .line 466
    .line 467
    :cond_12
    iget v5, v1, Landroidx/paging/FlattenedPageEventStorage;->placeholdersBefore:I

    .line 468
    .line 469
    aget-object v5, v11, v5

    .line 470
    .line 471
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 472
    .line 473
    .line 474
    :goto_a
    iget v6, v1, Landroidx/paging/FlattenedPageEventStorage;->placeholdersAfter:I

    .line 475
    .line 476
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 477
    .line 478
    .line 479
    move-result v9

    .line 480
    if-ge v6, v9, :cond_17

    .line 481
    .line 482
    iget v6, v1, Landroidx/paging/FlattenedPageEventStorage;->placeholdersAfter:I

    .line 483
    .line 484
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v6

    .line 488
    check-cast v6, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    .line 489
    .line 490
    if-eqz v10, :cond_15

    .line 491
    .line 492
    if-eqz v6, :cond_13

    .line 493
    .line 494
    const/4 v9, 0x1

    .line 495
    goto :goto_b

    .line 496
    :cond_13
    move v9, v7

    .line 497
    :goto_b
    if-eqz v9, :cond_14

    .line 498
    .line 499
    move-object v9, v6

    .line 500
    goto :goto_c

    .line 501
    :cond_14
    const/4 v9, 0x0

    .line 502
    :goto_c
    if-eqz v9, :cond_15

    .line 503
    .line 504
    const/4 v12, 0x1

    .line 505
    iput-boolean v12, v9, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isUrgent:Z

    .line 506
    .line 507
    goto :goto_d

    .line 508
    :cond_15
    const/4 v12, 0x1

    .line 509
    :goto_d
    iput-boolean v12, v1, Landroidx/paging/FlattenedPageEventStorage;->receivedFirstEvent:Z

    .line 510
    .line 511
    move-object/from16 v9, p1

    .line 512
    .line 513
    invoke-virtual {v6, v9}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->execute(Landroidx/appcompat/app/TwilightManager$TwilightState;)Z

    .line 514
    .line 515
    .line 516
    move-result v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 517
    if-eqz v6, :cond_16

    .line 518
    .line 519
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 520
    .line 521
    .line 522
    return v12

    .line 523
    :cond_16
    :try_start_8
    iget v6, v1, Landroidx/paging/FlattenedPageEventStorage;->placeholdersAfter:I

    .line 524
    .line 525
    add-int/2addr v6, v12

    .line 526
    iput v6, v1, Landroidx/paging/FlattenedPageEventStorage;->placeholdersAfter:I

    .line 527
    .line 528
    goto :goto_a

    .line 529
    :cond_17
    move-object/from16 v9, p1

    .line 530
    .line 531
    iput v7, v1, Landroidx/paging/FlattenedPageEventStorage;->placeholdersAfter:I

    .line 532
    .line 533
    iget v5, v1, Landroidx/paging/FlattenedPageEventStorage;->placeholdersBefore:I

    .line 534
    .line 535
    const/16 v17, 0x1

    .line 536
    .line 537
    add-int/lit8 v5, v5, 0x1

    .line 538
    .line 539
    iput v5, v1, Landroidx/paging/FlattenedPageEventStorage;->placeholdersBefore:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 540
    .line 541
    const/4 v6, 0x0

    .line 542
    goto/16 :goto_8

    .line 543
    .line 544
    :cond_18
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 545
    .line 546
    .line 547
    goto :goto_e

    .line 548
    :catchall_3
    move-exception v0

    .line 549
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 550
    .line 551
    .line 552
    throw v0

    .line 553
    :catchall_4
    move-exception v0

    .line 554
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 555
    .line 556
    .line 557
    throw v0

    .line 558
    :cond_19
    :goto_e
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->nestedPrefetchController:Landroidx/paging/FlattenedPageEventStorage;

    .line 559
    .line 560
    if-eqz v1, :cond_1a

    .line 561
    .line 562
    iget-boolean v1, v1, Landroidx/paging/FlattenedPageEventStorage;->receivedFirstEvent:Z

    .line 563
    .line 564
    const/4 v11, 0x1

    .line 565
    if-ne v1, v11, :cond_1a

    .line 566
    .line 567
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->updateElapsedAndAvailableTime()V

    .line 568
    .line 569
    .line 570
    invoke-static {v4, v2, v3}, Lorg/wikipedia/util/FileUtil;->traceValue(Ljava/lang/String;J)V

    .line 571
    .line 572
    .line 573
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->nestedPrefetchController:Landroidx/paging/FlattenedPageEventStorage;

    .line 574
    .line 575
    if-eqz v1, :cond_1a

    .line 576
    .line 577
    iput-boolean v7, v1, Landroidx/paging/FlattenedPageEventStorage;->receivedFirstEvent:Z

    .line 578
    .line 579
    :cond_1a
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->premeasureConstraints:Landroidx/compose/ui/unit/Constraints;

    .line 580
    .line 581
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isMeasured:Z

    .line 582
    .line 583
    if-nez v2, :cond_1f

    .line 584
    .line 585
    if-eqz v1, :cond_1f

    .line 586
    .line 587
    iget-wide v2, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->availableTimeNanos:J

    .line 588
    .line 589
    iget-wide v4, v8, Landroidx/compose/foundation/lazy/layout/Averages;->measureTimeNanos:J

    .line 590
    .line 591
    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->shouldExecute(JJ)Z

    .line 592
    .line 593
    .line 594
    move-result v2

    .line 595
    if-eqz v2, :cond_4

    .line 596
    .line 597
    const-string v2, "compose:lazy:prefetch:measure"

    .line 598
    .line 599
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    :try_start_9
    iget-wide v1, v1, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 603
    .line 604
    iget-boolean v3, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isCanceled:Z

    .line 605
    .line 606
    if-eqz v3, :cond_1b

    .line 607
    .line 608
    const-string v3, "Callers should check whether the request is still valid before calling performMeasure()"

    .line 609
    .line 610
    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    :cond_1b
    iget-boolean v3, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isMeasured:Z

    .line 614
    .line 615
    if-eqz v3, :cond_1c

    .line 616
    .line 617
    const-string v3, "Request was already measured!"

    .line 618
    .line 619
    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    :cond_1c
    const/4 v11, 0x1

    .line 623
    iput-boolean v11, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isMeasured:Z

    .line 624
    .line 625
    iget-object v3, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    .line 626
    .line 627
    if-eqz v3, :cond_1e

    .line 628
    .line 629
    invoke-interface {v3}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->getPlaceablesCount()I

    .line 630
    .line 631
    .line 632
    move-result v4

    .line 633
    move v5, v7

    .line 634
    :goto_f
    if-ge v5, v4, :cond_1d

    .line 635
    .line 636
    invoke-interface {v3, v1, v2, v5}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->premeasure-0kLqBqw(JI)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 637
    .line 638
    .line 639
    add-int/lit8 v5, v5, 0x1

    .line 640
    .line 641
    goto :goto_f

    .line 642
    :cond_1d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->updateElapsedAndAvailableTime()V

    .line 646
    .line 647
    .line 648
    iget-wide v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->elapsedTimeNanos:J

    .line 649
    .line 650
    iget-wide v3, v8, Landroidx/compose/foundation/lazy/layout/Averages;->measureTimeNanos:J

    .line 651
    .line 652
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/foundation/lazy/layout/Averages;->calculateAverageTime(JJ)J

    .line 653
    .line 654
    .line 655
    move-result-wide v1

    .line 656
    iput-wide v1, v8, Landroidx/compose/foundation/lazy/layout/Averages;->measureTimeNanos:J

    .line 657
    .line 658
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->onItemPremeasured:Lkotlin/jvm/functions/Function1;

    .line 659
    .line 660
    if-eqz v1, :cond_1f

    .line 661
    .line 662
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    goto :goto_11

    .line 666
    :cond_1e
    :try_start_a
    const-string v0, "performComposition() must be called before performMeasure()"

    .line 667
    .line 668
    invoke-static {v0}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->m(Ljava/lang/String;)Lcoil3/network/HttpException;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 673
    :catchall_5
    move-exception v0

    .line 674
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 675
    .line 676
    .line 677
    throw v0

    .line 678
    :goto_10
    return v17

    .line 679
    :cond_1f
    :goto_11
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->nestedPrefetchController:Landroidx/paging/FlattenedPageEventStorage;

    .line 680
    .line 681
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isMeasured:Z

    .line 682
    .line 683
    if-eqz v2, :cond_25

    .line 684
    .line 685
    iget-boolean v0, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->hasResolvedNestedPrefetches:Z

    .line 686
    .line 687
    if-eqz v0, :cond_25

    .line 688
    .line 689
    if-eqz v1, :cond_25

    .line 690
    .line 691
    iget-object v0, v1, Landroidx/paging/FlattenedPageEventStorage;->pages:Ljava/util/List;

    .line 692
    .line 693
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 694
    .line 695
    .line 696
    move-result v1

    .line 697
    const v2, 0x7fffffff

    .line 698
    .line 699
    .line 700
    move v4, v2

    .line 701
    move v3, v7

    .line 702
    :goto_12
    if-ge v3, v1, :cond_20

    .line 703
    .line 704
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v5

    .line 708
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 709
    .line 710
    iget v5, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->idealNestedPrefetchCount:I

    .line 711
    .line 712
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 713
    .line 714
    .line 715
    move-result v4

    .line 716
    add-int/lit8 v3, v3, 0x1

    .line 717
    .line 718
    goto :goto_12

    .line 719
    :cond_20
    if-ne v4, v2, :cond_21

    .line 720
    .line 721
    move v4, v7

    .line 722
    :cond_21
    iget v1, v8, Landroidx/compose/foundation/lazy/layout/Averages;->nestedPrefetchCount:I

    .line 723
    .line 724
    const/4 v5, -0x1

    .line 725
    if-ne v1, v5, :cond_22

    .line 726
    .line 727
    move v1, v4

    .line 728
    goto :goto_13

    .line 729
    :cond_22
    mul-int/lit8 v1, v1, 0x3

    .line 730
    .line 731
    add-int/2addr v1, v4

    .line 732
    div-int/lit8 v1, v1, 0x4

    .line 733
    .line 734
    :goto_13
    iput v1, v8, Landroidx/compose/foundation/lazy/layout/Averages;->nestedPrefetchCount:I

    .line 735
    .line 736
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 737
    .line 738
    .line 739
    move-result v1

    .line 740
    move v5, v2

    .line 741
    move v3, v7

    .line 742
    :goto_14
    if-ge v3, v1, :cond_23

    .line 743
    .line 744
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v6

    .line 748
    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 749
    .line 750
    iget v6, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->lastNumberOfNestedPrefetchItems:I

    .line 751
    .line 752
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 753
    .line 754
    .line 755
    move-result v5

    .line 756
    add-int/lit8 v3, v3, 0x1

    .line 757
    .line 758
    goto :goto_14

    .line 759
    :cond_23
    if-ne v5, v2, :cond_24

    .line 760
    .line 761
    move v5, v7

    .line 762
    :cond_24
    if-ge v5, v4, :cond_25

    .line 763
    .line 764
    move-wide v0, v15

    .line 765
    iput-wide v0, v8, Landroidx/compose/foundation/lazy/layout/Averages;->measureTimeNanos:J

    .line 766
    .line 767
    :cond_25
    return v7

    .line 768
    :cond_26
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->cleanUp()V

    .line 769
    .line 770
    .line 771
    return v7

    .line 772
    nop

    .line 773
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isComposed()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isApplied:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->pausedPrecomposition:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;->isComplete()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-ne p0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_1
    :goto_0
    return v1
.end method

.method public final markAsUrgent()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isUrgent:Z

    .line 3
    .line 4
    return-void
.end method

.method public final performPausableComposition(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/Averages;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->pausedPrecomposition:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->this$0:Landroidx/compose/runtime/Latch;

    .line 8
    .line 9
    iget-object v3, v0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 12
    .line 13
    iget v4, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->index:I

    .line 14
    .line 15
    invoke-virtual {v3, v4, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->getContent(ILjava/lang/Object;Ljava/lang/Object;)Lkotlin/jvm/functions/Function2;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iget-object v0, v0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getState()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v3, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    new-instance p2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;

    .line 36
    .line 37
    invoke-direct {p2, v0, p1, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Ljava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    move-object v0, p2

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {v0, p1, p2, v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Z)V

    .line 43
    .line 44
    .line 45
    new-instance p2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;

    .line 46
    .line 47
    invoke-direct {p2, v0, p1, v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;-><init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :goto_1
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->pausedPrecomposition:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;

    .line 52
    .line 53
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->keyUsedForComposition:Ljava/lang/Object;

    .line 54
    .line 55
    :cond_1
    iput-boolean v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->pauseRequested:Z

    .line 56
    .line 57
    :cond_2
    :goto_2
    :pswitch_0
    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;->isComplete()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_5

    .line 62
    .line 63
    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->pauseRequested:Z

    .line 64
    .line 65
    if-nez p1, :cond_5

    .line 66
    .line 67
    new-instance p1, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;

    .line 68
    .line 69
    invoke-direct {p1, v2, p0, p3}, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget p2, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;->$r8$classId:I

    .line 73
    .line 74
    packed-switch p2, :pswitch_data_0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$1;->getNodeState()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    const/4 v1, 0x0

    .line 82
    if-eqz p2, :cond_3

    .line 83
    .line 84
    iget-object v3, p2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->pausedComposition:Landroidx/compose/runtime/PausedCompositionImpl;

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    move-object v3, v1

    .line 88
    :goto_3
    if-eqz v3, :cond_2

    .line 89
    .line 90
    invoke-virtual {v3}, Landroidx/compose/runtime/PausedCompositionImpl;->isComplete()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-nez v4, :cond_2

    .line 95
    .line 96
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    if-eqz v4, :cond_4

    .line 101
    .line 102
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    :cond_4
    invoke-static {v4}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    :try_start_0
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/PausedCompositionImpl;->resume(Landroidx/compose/runtime/ShouldPauseCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    .line 113
    invoke-static {v4, v5, v1}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    :catchall_1
    move-exception p0

    .line 123
    invoke-static {v4, v5, v1}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->updateElapsedAndAvailableTime()V

    .line 128
    .line 129
    .line 130
    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->pauseRequested:Z

    .line 131
    .line 132
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->elapsedTimeNanos:J

    .line 133
    .line 134
    if-eqz p1, :cond_6

    .line 135
    .line 136
    iget-wide p0, p3, Landroidx/compose/foundation/lazy/layout/Averages;->pauseTimeNanos:J

    .line 137
    .line 138
    invoke-static {v0, v1, p0, p1}, Landroidx/compose/foundation/lazy/layout/Averages;->calculateAverageTime(JJ)J

    .line 139
    .line 140
    .line 141
    move-result-wide p0

    .line 142
    iput-wide p0, p3, Landroidx/compose/foundation/lazy/layout/Averages;->pauseTimeNanos:J

    .line 143
    .line 144
    return-void

    .line 145
    :cond_6
    iget-wide p0, p3, Landroidx/compose/foundation/lazy/layout/Averages;->resumeTimeNanos:J

    .line 146
    .line 147
    invoke-static {v0, v1, p0, p1}, Landroidx/compose/foundation/lazy/layout/Averages;->calculateAverageTime(JJ)J

    .line 148
    .line 149
    .line 150
    move-result-wide p0

    .line 151
    iput-wide p0, p3, Landroidx/compose/foundation/lazy/layout/Averages;->resumeTimeNanos:J

    .line 152
    .line 153
    return-void

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldExecute(JJ)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isUrgent:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/16 p3, 0x0

    .line 6
    .line 7
    :cond_0
    cmp-long p0, p1, p3

    .line 8
    .line 9
    if-lez p0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_1
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "HandleAndRequestImpl { index = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->index:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", constraints = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->premeasureConstraints:Landroidx/compose/ui/unit/Constraints;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isComposed = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isComposed()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", isMeasured = "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isMeasured:Z

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, ", isCanceled = "

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->isCanceled:Z

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p0, " }"

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method

.method public final updateElapsedAndAvailableTime()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/time/MonotonicTimeSource;->read()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-wide v3, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->startTime:J

    .line 8
    .line 9
    sget v5, Lkotlin/time/MonotonicTimeSource;->$r8$clinit:I

    .line 10
    .line 11
    sget-object v5, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    .line 12
    .line 13
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-wide/16 v6, 0x1

    .line 17
    .line 18
    sub-long v8, v3, v6

    .line 19
    .line 20
    or-long/2addr v8, v6

    .line 21
    const-wide v10, 0x7fffffffffffffffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    cmp-long v8, v8, v10

    .line 27
    .line 28
    const-wide/16 v12, 0x0

    .line 29
    .line 30
    if-nez v8, :cond_2

    .line 31
    .line 32
    cmp-long v5, v1, v3

    .line 33
    .line 34
    if-nez v5, :cond_0

    .line 35
    .line 36
    sget-object v3, Lkotlin/time/Duration;->Companion:Lokio/Path$Companion;

    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_0
    cmp-long v3, v3, v12

    .line 41
    .line 42
    if-gez v3, :cond_1

    .line 43
    .line 44
    sget-wide v3, Lkotlin/time/Duration;->NEG_INFINITE:J

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    sget-wide v3, Lkotlin/time/Duration;->INFINITE:J

    .line 48
    .line 49
    :goto_0
    invoke-static {v3, v4}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    .line 50
    .line 51
    .line 52
    move-result-wide v12

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    sub-long v8, v1, v6

    .line 55
    .line 56
    or-long/2addr v8, v6

    .line 57
    cmp-long v8, v8, v10

    .line 58
    .line 59
    if-nez v8, :cond_4

    .line 60
    .line 61
    cmp-long v3, v1, v12

    .line 62
    .line 63
    if-gez v3, :cond_3

    .line 64
    .line 65
    sget-wide v12, Lkotlin/time/Duration;->NEG_INFINITE:J

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    sget-wide v12, Lkotlin/time/Duration;->INFINITE:J

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    sub-long v8, v1, v3

    .line 72
    .line 73
    xor-long v14, v8, v1

    .line 74
    .line 75
    xor-long v10, v8, v3

    .line 76
    .line 77
    not-long v10, v10

    .line 78
    and-long/2addr v10, v14

    .line 79
    cmp-long v10, v10, v12

    .line 80
    .line 81
    if-gez v10, :cond_7

    .line 82
    .line 83
    sget-object v10, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 84
    .line 85
    invoke-virtual {v5, v10}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    if-gez v11, :cond_5

    .line 90
    .line 91
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    invoke-virtual {v10}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    invoke-virtual {v8, v6, v7, v9}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 103
    .line 104
    .line 105
    move-result-wide v6

    .line 106
    div-long v8, v1, v6

    .line 107
    .line 108
    div-long v11, v3, v6

    .line 109
    .line 110
    sub-long/2addr v8, v11

    .line 111
    rem-long v11, v1, v6

    .line 112
    .line 113
    rem-long/2addr v3, v6

    .line 114
    sub-long/2addr v11, v3

    .line 115
    sget-object v3, Lkotlin/time/Duration;->Companion:Lokio/Path$Companion;

    .line 116
    .line 117
    invoke-static {v8, v9, v10}, Lkotlin/time/InstantKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 118
    .line 119
    .line 120
    move-result-wide v3

    .line 121
    invoke-static {v11, v12, v5}, Lkotlin/time/InstantKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 122
    .line 123
    .line 124
    move-result-wide v5

    .line 125
    invoke-static {v3, v4, v5, v6}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    .line 126
    .line 127
    .line 128
    move-result-wide v12

    .line 129
    goto :goto_2

    .line 130
    :cond_5
    cmp-long v3, v8, v12

    .line 131
    .line 132
    if-gez v3, :cond_6

    .line 133
    .line 134
    sget-wide v3, Lkotlin/time/Duration;->NEG_INFINITE:J

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_6
    sget-wide v3, Lkotlin/time/Duration;->INFINITE:J

    .line 138
    .line 139
    :goto_1
    invoke-static {v3, v4}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    .line 140
    .line 141
    .line 142
    move-result-wide v12

    .line 143
    goto :goto_2

    .line 144
    :cond_7
    invoke-static {v8, v9, v5}, Lkotlin/time/InstantKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 145
    .line 146
    .line 147
    move-result-wide v12

    .line 148
    :goto_2
    const/4 v3, 0x1

    .line 149
    shr-long v4, v12, v3

    .line 150
    .line 151
    sget-object v6, Lkotlin/time/Duration;->Companion:Lokio/Path$Companion;

    .line 152
    .line 153
    long-to-int v6, v12

    .line 154
    and-int/2addr v3, v6

    .line 155
    if-nez v3, :cond_8

    .line 156
    .line 157
    move-wide v10, v4

    .line 158
    goto :goto_3

    .line 159
    :cond_8
    const-wide v6, 0x8637bd05af6L

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    cmp-long v3, v4, v6

    .line 165
    .line 166
    if-lez v3, :cond_9

    .line 167
    .line 168
    const-wide v10, 0x7fffffffffffffffL

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_9
    const-wide v6, -0x8637bd05af6L

    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    cmp-long v3, v4, v6

    .line 180
    .line 181
    if-gez v3, :cond_a

    .line 182
    .line 183
    const-wide/high16 v10, -0x8000000000000000L

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_a
    const-wide/32 v6, 0xf4240

    .line 187
    .line 188
    .line 189
    mul-long v10, v4, v6

    .line 190
    .line 191
    :goto_3
    iput-wide v10, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->elapsedTimeNanos:J

    .line 192
    .line 193
    iget-wide v3, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->availableTimeNanos:J

    .line 194
    .line 195
    sub-long/2addr v3, v10

    .line 196
    iput-wide v3, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->availableTimeNanos:J

    .line 197
    .line 198
    iput-wide v1, v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->startTime:J

    .line 199
    .line 200
    const-string v0, "compose:lazy:prefetch:available_time_nanos"

    .line 201
    .line 202
    invoke-static {v0, v3, v4}, Lorg/wikipedia/util/FileUtil;->traceValue(Ljava/lang/String;J)V

    .line 203
    .line 204
    .line 205
    return-void
.end method
