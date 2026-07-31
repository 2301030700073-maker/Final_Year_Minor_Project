.class public final Landroidx/glance/appwidget/AppWidgetSession;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _isOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final eventChannel:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final glanceState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final id:Landroidx/glance/appwidget/AppWidgetId;

.field public final key:Ljava/lang/String;

.field public lambdas:Ljava/util/Map;

.field public final lastRemoteViews:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final options$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final parentJob:Lkotlinx/coroutines/JobImpl;

.field public final widget:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;


# direct methods
.method public constructor <init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;Landroidx/glance/appwidget/AppWidgetId;Landroid/os/Bundle;I)V
    .locals 2

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move-object p3, v0

    .line 7
    :cond_0
    sget-object p4, Landroidx/glance/state/GlanceState;->INSTANCE:Landroidx/glance/state/GlanceState;

    .line 8
    .line 9
    iget p4, p2, Landroidx/glance/appwidget/AppWidgetId;->appWidgetId:I

    .line 10
    .line 11
    invoke-static {p4}, Lkotlin/UnsignedKt;->createUniqueRemoteUiName(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p4, p0, Landroidx/glance/appwidget/AppWidgetSession;->key:Ljava/lang/String;

    .line 19
    .line 20
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-direct {p4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 24
    .line 25
    .line 26
    iput-object p4, p0, Landroidx/glance/appwidget/AppWidgetSession;->_isOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    const p4, 0x7fffffff

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    invoke-static {p4, v1, v0}, Landroidx/compose/ui/unit/DpKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 33
    .line 34
    .line 35
    move-result-object p4

    .line 36
    iput-object p4, p0, Landroidx/glance/appwidget/AppWidgetSession;->eventChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 37
    .line 38
    iput-object p1, p0, Landroidx/glance/appwidget/AppWidgetSession;->widget:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 39
    .line 40
    iput-object p2, p0, Landroidx/glance/appwidget/AppWidgetSession;->id:Landroidx/glance/appwidget/AppWidgetId;

    .line 41
    .line 42
    iget p1, p2, Landroidx/glance/appwidget/AppWidgetId;->appWidgetId:I

    .line 43
    .line 44
    const/high16 p2, -0x80000000

    .line 45
    .line 46
    if-gt p2, p1, :cond_2

    .line 47
    .line 48
    const/4 p2, -0x1

    .line 49
    if-lt p1, p2, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string p0, "If the AppWidgetSession is not created for a bound widget, you must provide a lambda action receiver"

    .line 53
    .line 54
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_2
    :goto_0
    sget-object p1, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 59
    .line 60
    new-instance p2, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 61
    .line 62
    invoke-direct {p2, v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/NeverEqualPolicy;)V

    .line 63
    .line 64
    .line 65
    iput-object p2, p0, Landroidx/glance/appwidget/AppWidgetSession;->glanceState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 66
    .line 67
    new-instance p2, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 68
    .line 69
    invoke-direct {p2, p3, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/NeverEqualPolicy;)V

    .line 70
    .line 71
    .line 72
    iput-object p2, p0, Landroidx/glance/appwidget/AppWidgetSession;->options$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 73
    .line 74
    sget-object p1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 75
    .line 76
    iput-object p1, p0, Landroidx/glance/appwidget/AppWidgetSession;->lambdas:Ljava/util/Map;

    .line 77
    .line 78
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Landroidx/glance/appwidget/AppWidgetSession;->parentJob:Lkotlinx/coroutines/JobImpl;

    .line 83
    .line 84
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Landroidx/glance/appwidget/AppWidgetSession;->lastRemoteViews:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public final notifyWidgetOfError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    const-string v0, "GlanceAppWidget"

    .line 2
    .line 3
    const-string v1, "Error in Glance App Widget"

    .line 4
    .line 5
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/glance/appwidget/AppWidgetSession;->id:Landroidx/glance/appwidget/AppWidgetId;

    .line 9
    .line 10
    iget p0, p0, Landroidx/glance/appwidget/AppWidgetId;->appWidgetId:I

    .line 11
    .line 12
    new-instance p2, Landroid/widget/RemoteViews;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const v1, 0x7f0c01ec

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, p0, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final processEmittableTree(Landroid/content/Context;Landroidx/glance/EmittableWithChildren;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 20

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
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v4, "No app widget info for "

    .line 10
    .line 11
    instance-of v5, v3, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;

    .line 12
    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    move-object v5, v3

    .line 16
    check-cast v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;

    .line 17
    .line 18
    iget v6, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->label:I

    .line 19
    .line 20
    const/high16 v7, -0x80000000

    .line 21
    .line 22
    and-int v8, v6, v7

    .line 23
    .line 24
    if-eqz v8, :cond_0

    .line 25
    .line 26
    sub-int/2addr v6, v7

    .line 27
    iput v6, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->label:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;

    .line 31
    .line 32
    invoke-direct {v5, v0, v3}, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;-><init>(Landroidx/glance/appwidget/AppWidgetSession;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v3, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->result:Ljava/lang/Object;

    .line 36
    .line 37
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 38
    .line 39
    iget v7, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->label:I

    .line 40
    .line 41
    const/4 v8, 0x5

    .line 42
    const/4 v9, 0x4

    .line 43
    const/4 v10, 0x3

    .line 44
    const/4 v11, 0x2

    .line 45
    const/4 v12, 0x1

    .line 46
    const/4 v13, 0x0

    .line 47
    if-eqz v7, :cond_4

    .line 48
    .line 49
    if-eq v7, v12, :cond_3

    .line 50
    .line 51
    if-eq v7, v11, :cond_2

    .line 52
    .line 53
    if-eq v7, v10, :cond_2

    .line 54
    .line 55
    if-eq v7, v9, :cond_2

    .line 56
    .line 57
    if-eq v7, v8, :cond_1

    .line 58
    .line 59
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v13

    .line 65
    :cond_1
    iget-object v0, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->L$0:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Ljava/lang/Throwable;

    .line 68
    .line 69
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_5

    .line 73
    .line 74
    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_3

    .line 78
    .line 79
    :cond_3
    iget-object v0, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->L$2:Landroidx/glance/EmittableWithChildren;

    .line 80
    .line 81
    iget-object v1, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->L$1:Landroid/content/Context;

    .line 82
    .line 83
    iget-object v2, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->L$0:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v2, Landroidx/glance/appwidget/AppWidgetSession;

    .line 86
    .line 87
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    move-object v14, v1

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v2}, Lkotlin/text/UStringsKt;->shouldIgnoreResult(Landroidx/glance/Emittable;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_5

    .line 100
    .line 101
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    move-object v3, v2

    .line 108
    check-cast v3, Landroidx/glance/appwidget/RemoteViewsRoot;

    .line 109
    .line 110
    iget-object v3, v0, Landroidx/glance/appwidget/AppWidgetSession;->id:Landroidx/glance/appwidget/AppWidgetId;

    .line 111
    .line 112
    iget v3, v3, Landroidx/glance/appwidget/AppWidgetId;->appWidgetId:I

    .line 113
    .line 114
    iput-object v0, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->L$0:Ljava/lang/Object;

    .line 115
    .line 116
    iput-object v1, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->L$1:Landroid/content/Context;

    .line 117
    .line 118
    iput-object v2, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->L$2:Landroidx/glance/EmittableWithChildren;

    .line 119
    .line 120
    iput v12, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->label:I

    .line 121
    .line 122
    sget-object v7, Landroidx/glance/appwidget/LayoutConfiguration;->Companion:Landroidx/glance/appwidget/ContentReceiver$Key;

    .line 123
    .line 124
    invoke-virtual {v7, v1, v3, v5}, Landroidx/glance/appwidget/ContentReceiver$Key;->load$glance_appwidget_release(Landroid/content/Context;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    if-ne v3, v6, :cond_6

    .line 129
    .line 130
    goto/16 :goto_7

    .line 131
    .line 132
    :cond_6
    move-object v14, v2

    .line 133
    move-object v2, v0

    .line 134
    move-object v0, v14

    .line 135
    goto :goto_1

    .line 136
    :goto_2
    check-cast v3, Landroidx/glance/appwidget/LayoutConfiguration;

    .line 137
    .line 138
    const-string v1, "appwidget"

    .line 139
    .line 140
    invoke-virtual {v14, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    check-cast v1, Landroid/appwidget/AppWidgetManager;

    .line 148
    .line 149
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .line 151
    .line 152
    iget-object v7, v2, Landroidx/glance/appwidget/AppWidgetSession;->id:Landroidx/glance/appwidget/AppWidgetId;

    .line 153
    .line 154
    :try_start_1
    iget v12, v7, Landroidx/glance/appwidget/AppWidgetId;->appWidgetId:I

    .line 155
    .line 156
    invoke-virtual {v1, v12}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    if-eqz v12, :cond_8

    .line 161
    .line 162
    iget-object v4, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 163
    .line 164
    move-object v12, v0

    .line 165
    check-cast v12, Landroidx/glance/appwidget/RemoteViewsRoot;

    .line 166
    .line 167
    invoke-static {v12}, Lkotlin/uuid/UuidKt;->normalizeCompositionTree(Landroidx/glance/appwidget/RemoteViewsRoot;)V

    .line 168
    .line 169
    .line 170
    invoke-static {v0}, Lkotlin/uuid/UuidKt;->updateLambdaActionKeys(Landroidx/glance/EmittableWithChildren;)Ljava/util/LinkedHashMap;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    iput-object v12, v2, Landroidx/glance/appwidget/AppWidgetSession;->lambdas:Ljava/util/Map;

    .line 175
    .line 176
    iget v15, v7, Landroidx/glance/appwidget/AppWidgetId;->appWidgetId:I

    .line 177
    .line 178
    move-object/from16 v16, v0

    .line 179
    .line 180
    check-cast v16, Landroidx/glance/appwidget/RemoteViewsRoot;

    .line 181
    .line 182
    invoke-virtual {v3, v0}, Landroidx/glance/appwidget/LayoutConfiguration;->addLayout(Landroidx/glance/Emittable;)I

    .line 183
    .line 184
    .line 185
    move-result v18
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    move-object/from16 v17, v3

    .line 187
    .line 188
    move-object/from16 v19, v4

    .line 189
    .line 190
    :try_start_2
    invoke-static/range {v14 .. v19}, Landroidx/compose/ui/unit/DpKt;->translateComposition-KpG6l20(Landroid/content/Context;ILandroidx/glance/appwidget/RemoteViewsRoot;Landroidx/glance/appwidget/LayoutConfiguration;ILandroid/content/ComponentName;)Landroid/widget/RemoteViews;

    .line 191
    .line 192
    .line 193
    move-result-object v0
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 194
    move-object/from16 v3, v17

    .line 195
    .line 196
    :try_start_3
    iget v4, v7, Landroidx/glance/appwidget/AppWidgetId;->appWidgetId:I

    .line 197
    .line 198
    invoke-virtual {v1, v4, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 199
    .line 200
    .line 201
    iget-object v1, v2, Landroidx/glance/appwidget/AppWidgetSession;->lastRemoteViews:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 202
    .line 203
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    .line 205
    .line 206
    iput-object v13, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->L$0:Ljava/lang/Object;

    .line 207
    .line 208
    iput-object v13, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->L$1:Landroid/content/Context;

    .line 209
    .line 210
    iput-object v13, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->L$2:Landroidx/glance/EmittableWithChildren;

    .line 211
    .line 212
    iput v11, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->label:I

    .line 213
    .line 214
    invoke-virtual {v3, v5}, Landroidx/glance/appwidget/LayoutConfiguration;->save(Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    if-ne v0, v6, :cond_7

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_7
    :goto_3
    invoke-static {}, Landroidx/glance/appwidget/Tracing;->endGlanceAppWidgetUpdate()V

    .line 222
    .line 223
    .line 224
    goto :goto_8

    .line 225
    :catchall_0
    move-exception v0

    .line 226
    goto :goto_4

    .line 227
    :catchall_1
    move-exception v0

    .line 228
    move-object/from16 v3, v17

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :catch_0
    move-object/from16 v3, v17

    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_8
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget v1, v7, Landroidx/glance/appwidget/AppWidgetId;->appWidgetId:I

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw v1
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 258
    :goto_4
    :try_start_5
    invoke-virtual {v2, v14, v0}, Landroidx/glance/appwidget/AppWidgetSession;->notifyWidgetOfError(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 259
    .line 260
    .line 261
    iput-object v13, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->L$0:Ljava/lang/Object;

    .line 262
    .line 263
    iput-object v13, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->L$1:Landroid/content/Context;

    .line 264
    .line 265
    iput-object v13, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->L$2:Landroidx/glance/EmittableWithChildren;

    .line 266
    .line 267
    iput v9, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->label:I

    .line 268
    .line 269
    invoke-virtual {v3, v5}, Landroidx/glance/appwidget/LayoutConfiguration;->save(Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    if-ne v0, v6, :cond_7

    .line 274
    .line 275
    goto :goto_7

    .line 276
    :catchall_2
    move-exception v0

    .line 277
    iput-object v0, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->L$0:Ljava/lang/Object;

    .line 278
    .line 279
    iput-object v13, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->L$1:Landroid/content/Context;

    .line 280
    .line 281
    iput-object v13, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->L$2:Landroidx/glance/EmittableWithChildren;

    .line 282
    .line 283
    iput v8, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->label:I

    .line 284
    .line 285
    invoke-virtual {v3, v5}, Landroidx/glance/appwidget/LayoutConfiguration;->save(Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    if-ne v1, v6, :cond_9

    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_9
    :goto_5
    invoke-static {}, Landroidx/glance/appwidget/Tracing;->endGlanceAppWidgetUpdate()V

    .line 293
    .line 294
    .line 295
    throw v0

    .line 296
    :catch_1
    :goto_6
    iput-object v13, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->L$0:Ljava/lang/Object;

    .line 297
    .line 298
    iput-object v13, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->L$1:Landroid/content/Context;

    .line 299
    .line 300
    iput-object v13, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->L$2:Landroidx/glance/EmittableWithChildren;

    .line 301
    .line 302
    iput v10, v5, Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;->label:I

    .line 303
    .line 304
    invoke-virtual {v3, v5}, Landroidx/glance/appwidget/LayoutConfiguration;->save(Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    if-ne v0, v6, :cond_7

    .line 309
    .line 310
    :goto_7
    return-object v6

    .line 311
    :goto_8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 312
    .line 313
    return-object v0
.end method

.method public final processEvent(Landroid/content/Context;Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p3, Landroidx/glance/appwidget/AppWidgetSession$processEvent$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/glance/appwidget/AppWidgetSession$processEvent$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/glance/appwidget/AppWidgetSession$processEvent$1;->label:I

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
    iput v1, v0, Landroidx/glance/appwidget/AppWidgetSession$processEvent$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/glance/appwidget/AppWidgetSession$processEvent$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Landroidx/glance/appwidget/AppWidgetSession$processEvent$1;-><init>(Landroidx/glance/appwidget/AppWidgetSession;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/glance/appwidget/AppWidgetSession$processEvent$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/glance/appwidget/AppWidgetSession$processEvent$1;->label:I

    .line 30
    .line 31
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 32
    .line 33
    const-string v4, "Cannot create a mutable snapshot of an read-only snapshot"

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    if-ne v2, v5, :cond_1

    .line 40
    .line 41
    iget-object p0, v0, Landroidx/glance/appwidget/AppWidgetSession$processEvent$1;->L$0:Landroidx/glance/appwidget/AppWidgetSession;

    .line 42
    .line 43
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v6

    .line 53
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    instance-of p3, p2, Landroidx/glance/appwidget/AppWidgetSession$UpdateGlanceState;

    .line 57
    .line 58
    iget-object v2, p0, Landroidx/glance/appwidget/AppWidgetSession;->key:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz p3, :cond_6

    .line 61
    .line 62
    sget-object p2, Landroidx/glance/state/GlanceState;->INSTANCE:Landroidx/glance/state/GlanceState;

    .line 63
    .line 64
    iput-object p0, v0, Landroidx/glance/appwidget/AppWidgetSession$processEvent$1;->L$0:Landroidx/glance/appwidget/AppWidgetSession;

    .line 65
    .line 66
    iput v5, v0, Landroidx/glance/appwidget/AppWidgetSession$processEvent$1;->label:I

    .line 67
    .line 68
    sget-object p3, Landroidx/glance/state/PreferencesGlanceStateDefinition;->INSTANCE:Landroidx/glance/state/PreferencesGlanceStateDefinition;

    .line 69
    .line 70
    invoke-virtual {p2, p1, p3, v2, v0}, Landroidx/glance/state/GlanceState;->getValue(Landroid/content/Context;Landroidx/glance/state/GlanceStateDefinition;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    if-ne p3, v1, :cond_3

    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_3
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    instance-of p2, p1, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 82
    .line 83
    if-eqz p2, :cond_4

    .line 84
    .line 85
    check-cast p1, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    move-object p1, v6

    .line 89
    :goto_2
    if-eqz p1, :cond_5

    .line 90
    .line 91
    invoke-virtual {p1, v6, v6}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->takeNestedMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-eqz p1, :cond_5

    .line 96
    .line 97
    :try_start_0
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 98
    .line 99
    .line 100
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :try_start_1
    iget-object p0, p0, Landroidx/glance/appwidget/AppWidgetSession;->glanceState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 102
    .line 103
    invoke-virtual {p0, p3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    .line 105
    .line 106
    :try_start_2
    invoke-static {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->apply()Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->check()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->dispose()V

    .line 117
    .line 118
    .line 119
    return-object v3

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    goto :goto_3

    .line 122
    :catchall_1
    move-exception p0

    .line 123
    :try_start_3
    invoke-static {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 124
    .line 125
    .line 126
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    :goto_3
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->dispose()V

    .line 128
    .line 129
    .line 130
    throw p0

    .line 131
    :cond_5
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-object v6

    .line 135
    :cond_6
    instance-of p1, p2, Landroidx/glance/appwidget/AppWidgetSession$UpdateAppWidgetOptions;

    .line 136
    .line 137
    if-eqz p1, :cond_9

    .line 138
    .line 139
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    instance-of p3, p1, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 144
    .line 145
    if-eqz p3, :cond_7

    .line 146
    .line 147
    check-cast p1, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_7
    move-object p1, v6

    .line 151
    :goto_4
    if-eqz p1, :cond_8

    .line 152
    .line 153
    invoke-virtual {p1, v6, v6}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->takeNestedMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    if-eqz p1, :cond_8

    .line 158
    .line 159
    :try_start_4
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 160
    .line 161
    .line 162
    move-result-object p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 163
    :try_start_5
    check-cast p2, Landroidx/glance/appwidget/AppWidgetSession$UpdateAppWidgetOptions;

    .line 164
    .line 165
    iget-object p2, p2, Landroidx/glance/appwidget/AppWidgetSession$UpdateAppWidgetOptions;->newOptions:Landroid/os/Bundle;

    .line 166
    .line 167
    iget-object p0, p0, Landroidx/glance/appwidget/AppWidgetSession;->options$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 168
    .line 169
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 170
    .line 171
    .line 172
    :try_start_6
    invoke-static {p3}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->apply()Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->check()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->dispose()V

    .line 183
    .line 184
    .line 185
    return-object v3

    .line 186
    :catchall_2
    move-exception p0

    .line 187
    goto :goto_5

    .line 188
    :catchall_3
    move-exception p0

    .line 189
    :try_start_7
    invoke-static {p3}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 190
    .line 191
    .line 192
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 193
    :goto_5
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->dispose()V

    .line 194
    .line 195
    .line 196
    throw p0

    .line 197
    :cond_8
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return-object v6

    .line 201
    :cond_9
    instance-of p1, p2, Landroidx/glance/appwidget/AppWidgetSession$RunLambda;

    .line 202
    .line 203
    if-eqz p1, :cond_e

    .line 204
    .line 205
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    instance-of p3, p1, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 210
    .line 211
    if-eqz p3, :cond_a

    .line 212
    .line 213
    check-cast p1, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_a
    move-object p1, v6

    .line 217
    :goto_6
    if-eqz p1, :cond_d

    .line 218
    .line 219
    invoke-virtual {p1, v6, v6}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->takeNestedMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    if-eqz p1, :cond_d

    .line 224
    .line 225
    :try_start_8
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 226
    .line 227
    .line 228
    move-result-object p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 229
    :try_start_9
    iget-object p0, p0, Landroidx/glance/appwidget/AppWidgetSession;->lambdas:Ljava/util/Map;

    .line 230
    .line 231
    move-object v0, p2

    .line 232
    check-cast v0, Landroidx/glance/appwidget/AppWidgetSession$RunLambda;

    .line 233
    .line 234
    iget-object v0, v0, Landroidx/glance/appwidget/AppWidgetSession$RunLambda;->key:Ljava/lang/String;

    .line 235
    .line 236
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    check-cast p0, Ljava/util/List;

    .line 241
    .line 242
    if-eqz p0, :cond_c

    .line 243
    .line 244
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-nez v0, :cond_b

    .line 253
    .line 254
    move-object v6, v3

    .line 255
    goto :goto_7

    .line 256
    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    check-cast p0, Landroidx/glance/action/LambdaAction;

    .line 261
    .line 262
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 263
    :catchall_4
    move-exception p0

    .line 264
    goto :goto_8

    .line 265
    :cond_c
    :goto_7
    :try_start_a
    invoke-static {p3}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->apply()Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->check()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->dispose()V

    .line 276
    .line 277
    .line 278
    if-nez v6, :cond_f

    .line 279
    .line 280
    new-instance p0, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    const-string p1, "Triggering Action("

    .line 283
    .line 284
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    check-cast p2, Landroidx/glance/appwidget/AppWidgetSession$RunLambda;

    .line 288
    .line 289
    iget-object p1, p2, Landroidx/glance/appwidget/AppWidgetSession$RunLambda;->key:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string p1, ") for session("

    .line 295
    .line 296
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string p1, ") failed"

    .line 303
    .line 304
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    const-string p1, "AppWidgetSession"

    .line 312
    .line 313
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    move-result p0

    .line 317
    new-instance p1, Ljava/lang/Integer;

    .line 318
    .line 319
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 320
    .line 321
    .line 322
    return-object v3

    .line 323
    :catchall_5
    move-exception p0

    .line 324
    goto :goto_9

    .line 325
    :goto_8
    :try_start_b
    invoke-static {p3}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 326
    .line 327
    .line 328
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 329
    :goto_9
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->dispose()V

    .line 330
    .line 331
    .line 332
    throw p0

    .line 333
    :cond_d
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    return-object v6

    .line 337
    :cond_e
    instance-of p0, p2, Landroidx/glance/appwidget/AppWidgetSession$WaitForReady;

    .line 338
    .line 339
    if-eqz p0, :cond_10

    .line 340
    .line 341
    check-cast p2, Landroidx/glance/appwidget/AppWidgetSession$WaitForReady;

    .line 342
    .line 343
    iget-object p0, p2, Landroidx/glance/appwidget/AppWidgetSession$WaitForReady;->job:Lkotlinx/coroutines/JobImpl;

    .line 344
    .line 345
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->isActive()Z

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    if-eqz p1, :cond_f

    .line 350
    .line 351
    invoke-virtual {p0, v3}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    :cond_f
    return-object v3

    .line 355
    :cond_10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    move-result-object p0

    .line 359
    const-string p1, " to AppWidgetSession"

    .line 360
    .line 361
    const-string p2, "Sent unrecognized event type "

    .line 362
    .line 363
    invoke-static {p0, p1, p2}, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    return-object v6
.end method

.method public final receiveEvents(Landroid/content/Context;Landroidx/glance/session/SessionWorkerKt$runSession$6;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p3, Landroidx/glance/session/Session$receiveEvents$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/glance/session/Session$receiveEvents$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/glance/session/Session$receiveEvents$1;->label:I

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
    iput v1, v0, Landroidx/glance/session/Session$receiveEvents$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/glance/session/Session$receiveEvents$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Landroidx/glance/session/Session$receiveEvents$1;-><init>(Landroidx/glance/appwidget/AppWidgetSession;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/glance/session/Session$receiveEvents$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/glance/session/Session$receiveEvents$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_4

    .line 34
    .line 35
    if-eq v2, v4, :cond_3

    .line 36
    .line 37
    if-ne v2, v3, :cond_2

    .line 38
    .line 39
    iget-object p0, v0, Landroidx/glance/session/Session$receiveEvents$1;->L$3:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    .line 40
    .line 41
    iget-object p1, v0, Landroidx/glance/session/Session$receiveEvents$1;->L$2:Lkotlin/jvm/functions/Function1;

    .line 42
    .line 43
    iget-object p2, v0, Landroidx/glance/session/Session$receiveEvents$1;->L$1:Landroid/content/Context;

    .line 44
    .line 45
    iget-object v2, v0, Landroidx/glance/session/Session$receiveEvents$1;->L$0:Landroidx/glance/appwidget/AppWidgetSession;

    .line 46
    .line 47
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :cond_1
    move-object v5, v2

    .line 51
    move-object v2, p0

    .line 52
    move-object p0, v5

    .line 53
    move-object v5, p2

    .line 54
    move-object p2, p1

    .line 55
    move-object p1, v5

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    return-object p0

    .line 64
    :cond_3
    iget-object p0, v0, Landroidx/glance/session/Session$receiveEvents$1;->L$3:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    .line 65
    .line 66
    iget-object p1, v0, Landroidx/glance/session/Session$receiveEvents$1;->L$2:Lkotlin/jvm/functions/Function1;

    .line 67
    .line 68
    iget-object p2, v0, Landroidx/glance/session/Session$receiveEvents$1;->L$1:Landroid/content/Context;

    .line 69
    .line 70
    iget-object v2, v0, Landroidx/glance/session/Session$receiveEvents$1;->L$0:Landroidx/glance/appwidget/AppWidgetSession;

    .line 71
    .line 72
    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :try_start_2
    iget-object p3, p0, Landroidx/glance/appwidget/AppWidgetSession;->eventChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 80
    .line 81
    new-instance v2, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    .line 82
    .line 83
    invoke-direct {v2, p3}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;)V

    .line 84
    .line 85
    .line 86
    :goto_1
    iput-object p0, v0, Landroidx/glance/session/Session$receiveEvents$1;->L$0:Landroidx/glance/appwidget/AppWidgetSession;

    .line 87
    .line 88
    iput-object p1, v0, Landroidx/glance/session/Session$receiveEvents$1;->L$1:Landroid/content/Context;

    .line 89
    .line 90
    iput-object p2, v0, Landroidx/glance/session/Session$receiveEvents$1;->L$2:Lkotlin/jvm/functions/Function1;

    .line 91
    .line 92
    iput-object v2, v0, Landroidx/glance/session/Session$receiveEvents$1;->L$3:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    .line 93
    .line 94
    iput v4, v0, Landroidx/glance/session/Session$receiveEvents$1;->label:I

    .line 95
    .line 96
    invoke-virtual {v2, v0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->hasNext(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    if-ne p3, v1, :cond_5

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_5
    move-object v5, v2

    .line 104
    move-object v2, p0

    .line 105
    move-object p0, v5

    .line 106
    move-object v5, p2

    .line 107
    move-object p2, p1

    .line 108
    move-object p1, v5

    .line 109
    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    .line 110
    .line 111
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 112
    .line 113
    .line 114
    move-result p3

    .line 115
    if-eqz p3, :cond_6

    .line 116
    .line 117
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    iput-object v2, v0, Landroidx/glance/session/Session$receiveEvents$1;->L$0:Landroidx/glance/appwidget/AppWidgetSession;

    .line 125
    .line 126
    iput-object p2, v0, Landroidx/glance/session/Session$receiveEvents$1;->L$1:Landroid/content/Context;

    .line 127
    .line 128
    iput-object p1, v0, Landroidx/glance/session/Session$receiveEvents$1;->L$2:Lkotlin/jvm/functions/Function1;

    .line 129
    .line 130
    iput-object p0, v0, Landroidx/glance/session/Session$receiveEvents$1;->L$3:Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    .line 131
    .line 132
    iput v3, v0, Landroidx/glance/session/Session$receiveEvents$1;->label:I

    .line 133
    .line 134
    invoke-virtual {v2, p2, p3, v0}, Landroidx/glance/appwidget/AppWidgetSession;->processEvent(Landroid/content/Context;Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p3
    :try_end_2
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_2 .. :try_end_2} :catch_0

    .line 138
    if-ne p3, v1, :cond_1

    .line 139
    .line 140
    :goto_3
    return-object v1

    .line 141
    :catch_0
    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 142
    .line 143
    return-object p0
.end method

.method public final sendEvent(Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/AppWidgetSession;->eventChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public final waitForReady(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Landroidx/glance/appwidget/AppWidgetSession$waitForReady$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/glance/appwidget/AppWidgetSession$waitForReady$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/glance/appwidget/AppWidgetSession$waitForReady$1;->label:I

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
    iput v1, v0, Landroidx/glance/appwidget/AppWidgetSession$waitForReady$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/glance/appwidget/AppWidgetSession$waitForReady$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/glance/appwidget/AppWidgetSession$waitForReady$1;-><init>(Landroidx/glance/appwidget/AppWidgetSession;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/glance/appwidget/AppWidgetSession$waitForReady$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/glance/appwidget/AppWidgetSession$waitForReady$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-object p0, v0, Landroidx/glance/appwidget/AppWidgetSession$waitForReady$1;->L$0:Landroidx/glance/appwidget/AppWidgetSession$WaitForReady;

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Landroidx/glance/appwidget/AppWidgetSession$WaitForReady;

    .line 53
    .line 54
    new-instance v2, Lkotlinx/coroutines/JobImpl;

    .line 55
    .line 56
    iget-object v4, p0, Landroidx/glance/appwidget/AppWidgetSession;->parentJob:Lkotlinx/coroutines/JobImpl;

    .line 57
    .line 58
    invoke-direct {v2, v4}, Lkotlinx/coroutines/JobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, v2}, Landroidx/glance/appwidget/AppWidgetSession$WaitForReady;-><init>(Lkotlinx/coroutines/JobImpl;)V

    .line 62
    .line 63
    .line 64
    iput-object p1, v0, Landroidx/glance/appwidget/AppWidgetSession$waitForReady$1;->L$0:Landroidx/glance/appwidget/AppWidgetSession$WaitForReady;

    .line 65
    .line 66
    iput v3, v0, Landroidx/glance/appwidget/AppWidgetSession$waitForReady$1;->label:I

    .line 67
    .line 68
    invoke-virtual {p0, p1, v0}, Landroidx/glance/appwidget/AppWidgetSession;->sendEvent(Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    if-ne p0, v1, :cond_3

    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_3
    move-object p0, p1

    .line 76
    :goto_1
    iget-object p0, p0, Landroidx/glance/appwidget/AppWidgetSession$WaitForReady;->job:Lkotlinx/coroutines/JobImpl;

    .line 77
    .line 78
    return-object p0
.end method
