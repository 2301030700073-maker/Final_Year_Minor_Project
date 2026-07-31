.class public final synthetic Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 13
    iput p1, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/platform/AndroidUriHandler;)V
    .locals 0

    .line 1
    const/16 p1, 0xc

    .line 2
    .line 3
    iput p1, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/navigation/NavController$NavControllerNavigatorState;Landroidx/navigation/NavBackStackEntry;Z)V
    .locals 0

    .line 14
    const/16 p3, 0x18

    iput p3, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    return-void
.end method

.method private final invoke$androidx$work$impl$constraints$SharedNetworkCallback$$ExternalSyntheticLambda0()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    sget-object v1, Landroidx/work/impl/constraints/SharedNetworkCallback;->requestsLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    sget-object v2, Landroidx/work/impl/constraints/SharedNetworkCallback;->requests:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v2, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    const-string v3, "NetworkRequestConstraintController unregister shared callback"

    .line 30
    .line 31
    invoke-virtual {v0, v2, v3}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Landroidx/work/impl/constraints/SharedNetworkCallback;->INSTANCE:Landroidx/work/impl/constraints/SharedNetworkCallback;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    sput-object p0, Landroidx/work/impl/constraints/SharedNetworkCallback;->isBlocked:Ljava/lang/Boolean;

    .line 41
    .line 42
    sput-object p0, Landroidx/work/impl/constraints/SharedNetworkCallback;->cachedCapabilities:Landroid/net/NetworkCapabilities;

    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    sput-boolean p0, Landroidx/work/impl/constraints/SharedNetworkCallback;->capabilitiesInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    monitor-exit v1

    .line 51
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0

    .line 54
    :goto_1
    monitor-exit v1

    .line 55
    throw p0
.end method

.method private final invoke$androidx$work$impl$constraints$controllers$BaseConstraintController$track$1$$ExternalSyntheticLambda0()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/work/impl/constraints/controllers/BaseConstraintController;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/work/impl/constraints/controllers/BaseConstraintController;->tracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v2, v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/util/LinkedHashSet;

    .line 18
    .line 19
    invoke-virtual {v2, p0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    iget-object p0, v0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/util/LinkedHashSet;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->stopTracking()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    monitor-exit v1

    .line 40
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0

    .line 43
    :goto_1
    monitor-exit v1

    .line 44
    throw p0
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    .line 1
    iget v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    const-wide v1, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const/4 v3, -0x1

    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x1

    .line 13
    const/4 v8, 0x0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Landroidx/work/impl/WorkDatabase;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_0
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Landroidx/work/impl/WorkManagerImpl;

    .line 33
    .line 34
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Ljava/util/UUID;

    .line 37
    .line 38
    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v2, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 44
    .line 45
    const/16 v3, 0x9

    .line 46
    .line 47
    invoke-direct {v2, v3, v0, p0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance p0, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    const/4 v3, 0x6

    .line 53
    invoke-direct {p0, v3, v2}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p0}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    iget-object p0, v0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    .line 60
    .line 61
    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 62
    .line 63
    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    .line 64
    .line 65
    invoke-static {p0, v1, v0}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p0

    .line 71
    :pswitch_1
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->invoke$androidx$work$impl$constraints$controllers$BaseConstraintController$track$1$$ExternalSyntheticLambda0()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :pswitch_2
    invoke-direct {p0}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->invoke$androidx$work$impl$constraints$SharedNetworkCallback$$ExternalSyntheticLambda0()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :pswitch_3
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Landroidx/navigation/compose/DialogNavigator;

    .line 84
    .line 85
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    .line 88
    .line 89
    invoke-virtual {v0, p0, v6}, Landroidx/navigation/compose/DialogNavigator;->popBackStack(Landroidx/navigation/NavBackStackEntry;Z)V

    .line 90
    .line 91
    .line 92
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 93
    .line 94
    return-object p0

    .line 95
    :pswitch_4
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v0, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 98
    .line 99
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Landroidx/navigation/NavController$NavControllerNavigatorState;->backStackLock:Landroidx/transition/Transition$1;

    .line 107
    .line 108
    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, v0, Landroidx/navigation/NavController$NavControllerNavigatorState;->_backStack:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 110
    .line 111
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Ljava/lang/Iterable;

    .line 116
    .line 117
    new-instance v3, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_1

    .line 131
    .line 132
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    move-object v5, v4

    .line 137
    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 138
    .line 139
    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-eqz v5, :cond_0

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :catchall_0
    move-exception p0

    .line 151
    goto :goto_2

    .line 152
    :cond_1
    :goto_1
    invoke-virtual {v0, v8, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    .line 154
    .line 155
    monitor-exit v1

    .line 156
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 157
    .line 158
    return-object p0

    .line 159
    :goto_2
    monitor-exit v1

    .line 160
    throw p0

    .line 161
    :pswitch_5
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v0, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 164
    .line 165
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 166
    .line 167
    iget-object v0, v0, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;->composer:Landroidx/compose/runtime/GapComposer;

    .line 168
    .line 169
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->slotTable:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 170
    .line 171
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    move v3, v6

    .line 176
    :goto_3
    :try_start_1
    iget v4, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->groupsSize:I

    .line 177
    .line 178
    if-ge v3, v4, :cond_b

    .line 179
    .line 180
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->isNode(I)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_5

    .line 185
    .line 186
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->node(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    if-eq v4, p0, :cond_4

    .line 191
    .line 192
    instance-of v5, v4, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 193
    .line 194
    if-eqz v5, :cond_2

    .line 195
    .line 196
    check-cast v4, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_2
    move-object v4, v8

    .line 200
    :goto_4
    if-eqz v4, :cond_3

    .line 201
    .line 202
    iget-object v4, v4, Landroidx/compose/runtime/GapRememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_3
    move-object v4, v8

    .line 206
    :goto_5
    if-ne v4, p0, :cond_5

    .line 207
    .line 208
    :cond_4
    new-instance p0, Landroidx/compose/runtime/tooling/ObjectLocation;

    .line 209
    .line 210
    invoke-direct {p0, v3, v8}, Landroidx/compose/runtime/tooling/ObjectLocation;-><init>(ILjava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 214
    .line 215
    .line 216
    move-object v8, p0

    .line 217
    goto :goto_b

    .line 218
    :catchall_1
    move-exception p0

    .line 219
    goto/16 :goto_d

    .line 220
    .line 221
    :cond_5
    :try_start_2
    iget-object v4, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 222
    .line 223
    invoke-static {v4, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->slotAnchor([II)I

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    add-int/lit8 v7, v3, 0x1

    .line 228
    .line 229
    iget v9, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 230
    .line 231
    if-ge v7, v9, :cond_6

    .line 232
    .line 233
    mul-int/lit8 v9, v7, 0x5

    .line 234
    .line 235
    add-int/lit8 v9, v9, 0x4

    .line 236
    .line 237
    aget v4, v4, v9

    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_6
    iget v4, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slotsSize:I

    .line 241
    .line 242
    :goto_6
    sub-int/2addr v4, v5

    .line 243
    move v5, v6

    .line 244
    :goto_7
    if-ge v5, v4, :cond_c

    .line 245
    .line 246
    invoke-virtual {v2, v3, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupGet(II)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v9

    .line 250
    if-eq v9, p0, :cond_a

    .line 251
    .line 252
    instance-of v10, v9, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 253
    .line 254
    if-eqz v10, :cond_7

    .line 255
    .line 256
    check-cast v9, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 257
    .line 258
    goto :goto_8

    .line 259
    :cond_7
    move-object v9, v8

    .line 260
    :goto_8
    if-eqz v9, :cond_8

    .line 261
    .line 262
    iget-object v9, v9, Landroidx/compose/runtime/GapRememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    .line 263
    .line 264
    goto :goto_9

    .line 265
    :cond_8
    move-object v9, v8

    .line 266
    :goto_9
    if-ne v9, p0, :cond_9

    .line 267
    .line 268
    goto :goto_a

    .line 269
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_a
    :goto_a
    new-instance v8, Landroidx/compose/runtime/tooling/ObjectLocation;

    .line 273
    .line 274
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    invoke-direct {v8, v3, p0}, Landroidx/compose/runtime/tooling/ObjectLocation;-><init>(ILjava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 279
    .line 280
    .line 281
    :cond_b
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 282
    .line 283
    .line 284
    goto :goto_b

    .line 285
    :cond_c
    move v3, v7

    .line 286
    goto :goto_3

    .line 287
    :goto_b
    if-eqz v8, :cond_d

    .line 288
    .line 289
    iget p0, v8, Landroidx/compose/runtime/tooling/ObjectLocation;->group:I

    .line 290
    .line 291
    iget-object v2, v8, Landroidx/compose/runtime/tooling/ObjectLocation;->dataOffset:Ljava/lang/Integer;

    .line 292
    .line 293
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    :try_start_3
    invoke-static {v1, p0, v2}, Lkotlin/uuid/UuidKt;->traceForGroup(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;ILjava/lang/Integer;)Ljava/util/ArrayList;

    .line 298
    .line 299
    .line 300
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 301
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->parentStackTrace$runtime()Ljava/util/List;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    goto :goto_c

    .line 313
    :catchall_2
    move-exception p0

    .line 314
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 315
    .line 316
    .line 317
    throw p0

    .line 318
    :cond_d
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 319
    .line 320
    :goto_c
    new-instance v1, Landroidx/compose/runtime/tooling/ComposeStackTrace;

    .line 321
    .line 322
    iget-boolean v0, v0, Landroidx/compose/runtime/GapComposer;->sourceMarkersEnabled:Z

    .line 323
    .line 324
    invoke-direct {v1, p0, v0}, Landroidx/compose/runtime/tooling/ComposeStackTrace;-><init>(Ljava/util/List;Z)V

    .line 325
    .line 326
    .line 327
    return-object v1

    .line 328
    :goto_d
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 329
    .line 330
    .line 331
    throw p0

    .line 332
    :pswitch_6
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast v0, Lcom/caverock/androidsvg/SVG;

    .line 335
    .line 336
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda1;

    .line 339
    .line 340
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v0, Landroidx/compose/runtime/internal/AtomicInt;

    .line 343
    .line 344
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-eqz v0, :cond_e

    .line 349
    .line 350
    goto :goto_e

    .line 351
    :cond_e
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    :goto_e
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 355
    .line 356
    return-object p0

    .line 357
    :pswitch_7
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast v0, Landroidx/compose/material3/internal/Listener;

    .line 360
    .line 361
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 364
    .line 365
    invoke-virtual {v0, p0}, Landroidx/compose/material3/internal/Listener;->unregister(Landroid/view/accessibility/AccessibilityManager;)V

    .line 366
    .line 367
    .line 368
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 369
    .line 370
    return-object p0

    .line 371
    :pswitch_8
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast v0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;

    .line 374
    .line 375
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast p0, Landroidx/compose/material3/FadeInFadeOutState;

    .line 378
    .line 379
    iget-object v1, p0, Landroidx/compose/material3/FadeInFadeOutState;->current:Ljava/lang/Object;

    .line 380
    .line 381
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    if-nez v1, :cond_f

    .line 386
    .line 387
    iget-object v1, p0, Landroidx/compose/material3/FadeInFadeOutState;->items:Ljava/util/ArrayList;

    .line 388
    .line 389
    new-instance v2, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 390
    .line 391
    invoke-direct {v2, v7, v0}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 395
    .line 396
    .line 397
    iget-object p0, p0, Landroidx/compose/material3/FadeInFadeOutState;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 398
    .line 399
    if-eqz p0, :cond_f

    .line 400
    .line 401
    iget-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/CompositionImpl;

    .line 402
    .line 403
    if-eqz v0, :cond_f

    .line 404
    .line 405
    invoke-virtual {v0, p0, v8}, Landroidx/compose/runtime/CompositionImpl;->invalidate(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 406
    .line 407
    .line 408
    :cond_f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 409
    .line 410
    return-object p0

    .line 411
    :pswitch_9
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 412
    .line 413
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 414
    .line 415
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 418
    .line 419
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object p0

    .line 423
    check-cast p0, Landroidx/compose/ui/unit/IntSize;

    .line 424
    .line 425
    iget-wide v9, p0, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 426
    .line 427
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getCurrentDragPosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;

    .line 428
    .line 429
    .line 430
    move-result-object p0

    .line 431
    if-eqz p0, :cond_17

    .line 432
    .line 433
    iget-wide v11, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 434
    .line 435
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getTransformedText$foundation()Landroidx/compose/ui/text/AnnotatedString;

    .line 436
    .line 437
    .line 438
    move-result-object p0

    .line 439
    if-eqz p0, :cond_17

    .line 440
    .line 441
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 442
    .line 443
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 444
    .line 445
    .line 446
    move-result p0

    .line 447
    if-nez p0, :cond_10

    .line 448
    .line 449
    goto/16 :goto_12

    .line 450
    .line 451
    :cond_10
    iget-object p0, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 452
    .line 453
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object p0

    .line 457
    check-cast p0, Landroidx/compose/foundation/text/Handle;

    .line 458
    .line 459
    if-nez p0, :cond_11

    .line 460
    .line 461
    move p0, v3

    .line 462
    goto :goto_f

    .line 463
    :cond_11
    sget-object v13, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 464
    .line 465
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 466
    .line 467
    .line 468
    move-result p0

    .line 469
    aget p0, v13, p0

    .line 470
    .line 471
    :goto_f
    if-eq p0, v3, :cond_17

    .line 472
    .line 473
    const-wide v13, 0xffffffffL

    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    const/16 v3, 0x20

    .line 479
    .line 480
    if-eq p0, v7, :cond_13

    .line 481
    .line 482
    if-eq p0, v5, :cond_13

    .line 483
    .line 484
    if-ne p0, v4, :cond_12

    .line 485
    .line 486
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 487
    .line 488
    .line 489
    move-result-object p0

    .line 490
    iget-wide v7, p0, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 491
    .line 492
    sget p0, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 493
    .line 494
    and-long/2addr v7, v13

    .line 495
    :goto_10
    long-to-int p0, v7

    .line 496
    goto :goto_11

    .line 497
    :cond_12
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 498
    .line 499
    .line 500
    goto/16 :goto_13

    .line 501
    .line 502
    :cond_13
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 503
    .line 504
    .line 505
    move-result-object p0

    .line 506
    iget-wide v7, p0, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 507
    .line 508
    sget p0, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 509
    .line 510
    shr-long/2addr v7, v3

    .line 511
    goto :goto_10

    .line 512
    :goto_11
    iget-object v4, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 513
    .line 514
    if-eqz v4, :cond_17

    .line 515
    .line 516
    invoke-virtual {v4}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 517
    .line 518
    .line 519
    move-result-object v4

    .line 520
    if-nez v4, :cond_14

    .line 521
    .line 522
    goto/16 :goto_12

    .line 523
    .line 524
    :cond_14
    iget-object v7, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 525
    .line 526
    if-eqz v7, :cond_17

    .line 527
    .line 528
    iget-object v7, v7, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    .line 529
    .line 530
    iget-object v7, v7, Landroidx/compose/foundation/text/TextDelegate;->text:Ljava/lang/Object;

    .line 531
    .line 532
    check-cast v7, Landroidx/compose/ui/text/AnnotatedString;

    .line 533
    .line 534
    if-nez v7, :cond_15

    .line 535
    .line 536
    goto :goto_12

    .line 537
    :cond_15
    iget-object v0, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 538
    .line 539
    invoke-interface {v0, p0}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 540
    .line 541
    .line 542
    move-result p0

    .line 543
    iget-object v0, v7, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 544
    .line 545
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    invoke-static {p0, v6, v0}, Lkotlin/text/RegexKt;->coerceIn(III)I

    .line 550
    .line 551
    .line 552
    move-result p0

    .line 553
    invoke-virtual {v4, v11, v12}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->translateDecorationToInnerCoordinates-MK-Hz9U$foundation(J)J

    .line 554
    .line 555
    .line 556
    move-result-wide v6

    .line 557
    shr-long/2addr v6, v3

    .line 558
    long-to-int v0, v6

    .line 559
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    iget-object v4, v4, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 564
    .line 565
    iget-object v6, v4, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 566
    .line 567
    invoke-virtual {v6, p0}, Landroidx/compose/ui/text/MultiParagraph;->getLineForOffset(I)I

    .line 568
    .line 569
    .line 570
    move-result p0

    .line 571
    invoke-virtual {v4, p0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineLeft(I)F

    .line 572
    .line 573
    .line 574
    move-result v7

    .line 575
    invoke-virtual {v4, p0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineRight(I)F

    .line 576
    .line 577
    .line 578
    move-result v4

    .line 579
    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    .line 580
    .line 581
    .line 582
    move-result v8

    .line 583
    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    .line 584
    .line 585
    .line 586
    move-result v4

    .line 587
    invoke-static {v0, v8, v4}, Lkotlin/text/RegexKt;->coerceIn(FFF)F

    .line 588
    .line 589
    .line 590
    move-result v4

    .line 591
    const-wide/16 v7, 0x0

    .line 592
    .line 593
    invoke-static {v9, v10, v7, v8}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 594
    .line 595
    .line 596
    move-result v7

    .line 597
    if-nez v7, :cond_16

    .line 598
    .line 599
    sub-float/2addr v0, v4

    .line 600
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    shr-long v7, v9, v3

    .line 605
    .line 606
    long-to-int v7, v7

    .line 607
    div-int/2addr v7, v5

    .line 608
    int-to-float v5, v7

    .line 609
    cmpl-float v0, v0, v5

    .line 610
    .line 611
    if-lez v0, :cond_16

    .line 612
    .line 613
    goto :goto_12

    .line 614
    :cond_16
    invoke-virtual {v6, p0}, Landroidx/compose/ui/text/MultiParagraph;->getLineTop(I)F

    .line 615
    .line 616
    .line 617
    move-result v0

    .line 618
    invoke-virtual {v6, p0}, Landroidx/compose/ui/text/MultiParagraph;->getLineBottom(I)F

    .line 619
    .line 620
    .line 621
    move-result p0

    .line 622
    sub-float/2addr p0, v0

    .line 623
    const/high16 v1, 0x40000000    # 2.0f

    .line 624
    .line 625
    div-float/2addr p0, v1

    .line 626
    add-float/2addr p0, v0

    .line 627
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 628
    .line 629
    .line 630
    move-result v0

    .line 631
    int-to-long v0, v0

    .line 632
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 633
    .line 634
    .line 635
    move-result p0

    .line 636
    int-to-long v4, p0

    .line 637
    shl-long/2addr v0, v3

    .line 638
    and-long v2, v4, v13

    .line 639
    .line 640
    or-long/2addr v0, v2

    .line 641
    move-wide v1, v0

    .line 642
    :cond_17
    :goto_12
    new-instance v8, Landroidx/compose/ui/geometry/Offset;

    .line 643
    .line 644
    invoke-direct {v8, v1, v2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 645
    .line 646
    .line 647
    :goto_13
    return-object v8

    .line 648
    :pswitch_a
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 649
    .line 650
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 651
    .line 652
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 653
    .line 654
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 655
    .line 656
    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 657
    .line 658
    new-instance v2, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 659
    .line 660
    const/16 v3, 0xc

    .line 661
    .line 662
    invoke-direct {v2, v3, p0, v8}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 663
    .line 664
    .line 665
    invoke-static {v0, v8, v1, v2, v7}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 666
    .line 667
    .line 668
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 669
    .line 670
    return-object p0

    .line 671
    :pswitch_b
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 672
    .line 673
    check-cast v0, Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 674
    .line 675
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 676
    .line 677
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 678
    .line 679
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object p0

    .line 683
    check-cast p0, Landroidx/compose/ui/unit/IntSize;

    .line 684
    .line 685
    iget-wide v9, p0, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 686
    .line 687
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    .line 688
    .line 689
    .line 690
    move-result-object p0

    .line 691
    if-nez p0, :cond_18

    .line 692
    .line 693
    goto :goto_15

    .line 694
    :cond_18
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    .line 695
    .line 696
    .line 697
    move-result-object v6

    .line 698
    if-nez v6, :cond_19

    .line 699
    .line 700
    move v6, v3

    .line 701
    goto :goto_14

    .line 702
    :cond_19
    sget-object v11, Landroidx/compose/foundation/text/selection/SelectionManagerKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 703
    .line 704
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 705
    .line 706
    .line 707
    move-result v6

    .line 708
    aget v6, v11, v6

    .line 709
    .line 710
    :goto_14
    if-eq v6, v3, :cond_1d

    .line 711
    .line 712
    if-eq v6, v7, :cond_1c

    .line 713
    .line 714
    if-eq v6, v5, :cond_1b

    .line 715
    .line 716
    if-eq v6, v4, :cond_1a

    .line 717
    .line 718
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 719
    .line 720
    .line 721
    goto :goto_16

    .line 722
    :cond_1a
    const-string p0, "SelectionContainer does not support cursor"

    .line 723
    .line 724
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    goto :goto_16

    .line 728
    :cond_1b
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 729
    .line 730
    invoke-static {v0, v9, v10, p0}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->getMagnifierCenter-JVtK1S4(Landroidx/compose/foundation/text/selection/SelectionManager;JLandroidx/compose/foundation/text/selection/Selection$AnchorInfo;)J

    .line 731
    .line 732
    .line 733
    move-result-wide v1

    .line 734
    goto :goto_15

    .line 735
    :cond_1c
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 736
    .line 737
    invoke-static {v0, v9, v10, p0}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->getMagnifierCenter-JVtK1S4(Landroidx/compose/foundation/text/selection/SelectionManager;JLandroidx/compose/foundation/text/selection/Selection$AnchorInfo;)J

    .line 738
    .line 739
    .line 740
    move-result-wide v1

    .line 741
    :cond_1d
    :goto_15
    new-instance v8, Landroidx/compose/ui/geometry/Offset;

    .line 742
    .line 743
    invoke-direct {v8, v1, v2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 744
    .line 745
    .line 746
    :goto_16
    return-object v8

    .line 747
    :pswitch_c
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 748
    .line 749
    check-cast v0, Landroid/content/Context;

    .line 750
    .line 751
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 752
    .line 753
    check-cast p0, Landroid/view/textclassifier/TextClassification;

    .line 754
    .line 755
    invoke-static {v0, p0}, Landroidx/compose/foundation/text/contextmenu/internal/TextClassificationHelperApi28;->sendLegacyIntent(Landroid/content/Context;Landroid/view/textclassifier/TextClassification;)V

    .line 756
    .line 757
    .line 758
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 759
    .line 760
    return-object p0

    .line 761
    :pswitch_d
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 762
    .line 763
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 764
    .line 765
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 766
    .line 767
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 768
    .line 769
    iget-object v0, v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;->onClick:Lkotlin/jvm/functions/Function1;

    .line 770
    .line 771
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 775
    .line 776
    return-object p0

    .line 777
    :pswitch_e
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 778
    .line 779
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 780
    .line 781
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 782
    .line 783
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 784
    .line 785
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object p0

    .line 789
    check-cast p0, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 790
    .line 791
    invoke-interface {v0, p0}, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;->position-tuRUvjQ(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    .line 792
    .line 793
    .line 794
    move-result-wide v0

    .line 795
    invoke-static {v0, v1}, Landroidx/work/Operation$State;->round-k-4lQ0M(J)J

    .line 796
    .line 797
    .line 798
    move-result-wide v0

    .line 799
    new-instance p0, Landroidx/compose/ui/unit/IntOffset;

    .line 800
    .line 801
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 802
    .line 803
    .line 804
    return-object p0

    .line 805
    :pswitch_f
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 806
    .line 807
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 808
    .line 809
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 810
    .line 811
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 812
    .line 813
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    move-result-object p0

    .line 817
    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 818
    .line 819
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 820
    .line 821
    return-object p0

    .line 822
    :pswitch_10
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 823
    .line 824
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 825
    .line 826
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 827
    .line 828
    check-cast p0, Landroidx/compose/ui/platform/AndroidUriHandler;

    .line 829
    .line 830
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 831
    .line 832
    check-cast v0, Landroidx/compose/ui/text/LinkAnnotation;

    .line 833
    .line 834
    instance-of v1, v0, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 835
    .line 836
    if-eqz v1, :cond_1f

    .line 837
    .line 838
    move-object v1, v0

    .line 839
    check-cast v1, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 840
    .line 841
    iget-object v1, v1, Landroidx/compose/ui/text/LinkAnnotation$Url;->linkInteractionListener:Landroidx/compose/ui/text/LinkInteractionListener;

    .line 842
    .line 843
    if-eqz v1, :cond_1e

    .line 844
    .line 845
    invoke-interface {v1, v0}, Landroidx/compose/ui/text/LinkInteractionListener;->onClick(Landroidx/compose/ui/text/LinkAnnotation;)V

    .line 846
    .line 847
    .line 848
    goto :goto_17

    .line 849
    :cond_1e
    :try_start_4
    check-cast v0, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 850
    .line 851
    iget-object v0, v0, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    .line 852
    .line 853
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/AndroidUriHandler;->openUri(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 854
    .line 855
    .line 856
    goto :goto_17

    .line 857
    :cond_1f
    instance-of p0, v0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 858
    .line 859
    if-eqz p0, :cond_20

    .line 860
    .line 861
    move-object p0, v0

    .line 862
    check-cast p0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 863
    .line 864
    iget-object p0, p0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;->linkInteractionListener:Landroidx/compose/ui/text/LinkInteractionListener;

    .line 865
    .line 866
    if-eqz p0, :cond_20

    .line 867
    .line 868
    invoke-interface {p0, v0}, Landroidx/compose/ui/text/LinkInteractionListener;->onClick(Landroidx/compose/ui/text/LinkAnnotation;)V

    .line 869
    .line 870
    .line 871
    :catch_0
    :cond_20
    :goto_17
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 872
    .line 873
    return-object p0

    .line 874
    :pswitch_11
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 875
    .line 876
    check-cast v0, Landroidx/compose/foundation/text/TextLinkScope;

    .line 877
    .line 878
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 879
    .line 880
    check-cast p0, Landroidx/compose/ui/text/AnnotatedString;

    .line 881
    .line 882
    if-eqz v0, :cond_24

    .line 883
    .line 884
    iget-object v1, v0, Landroidx/compose/foundation/text/TextLinkScope;->annotators:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 885
    .line 886
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->isEmpty()Z

    .line 887
    .line 888
    .line 889
    move-result v2

    .line 890
    iget-object v3, v0, Landroidx/compose/foundation/text/TextLinkScope;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 891
    .line 892
    if-eqz v2, :cond_21

    .line 893
    .line 894
    goto :goto_19

    .line 895
    :cond_21
    new-instance v2, Landroidx/compose/foundation/text/TextAnnotatorScope;

    .line 896
    .line 897
    invoke-direct {v2, v3}, Landroidx/compose/foundation/text/TextAnnotatorScope;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 898
    .line 899
    .line 900
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 901
    .line 902
    .line 903
    move-result v3

    .line 904
    :goto_18
    if-ge v6, v3, :cond_22

    .line 905
    .line 906
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 907
    .line 908
    .line 909
    move-result-object v4

    .line 910
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 911
    .line 912
    invoke-interface {v4, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    add-int/lit8 v6, v6, 0x1

    .line 916
    .line 917
    goto :goto_18

    .line 918
    :cond_22
    iget-object v3, v2, Landroidx/compose/foundation/text/TextAnnotatorScope;->styledText:Landroidx/compose/ui/text/AnnotatedString;

    .line 919
    .line 920
    :goto_19
    iput-object v3, v0, Landroidx/compose/foundation/text/TextLinkScope;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 921
    .line 922
    if-nez v3, :cond_23

    .line 923
    .line 924
    goto :goto_1a

    .line 925
    :cond_23
    move-object p0, v3

    .line 926
    :cond_24
    :goto_1a
    return-object p0

    .line 927
    :pswitch_12
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 928
    .line 929
    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 930
    .line 931
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 932
    .line 933
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 934
    .line 935
    iget-wide v1, v0, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 936
    .line 937
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v3

    .line 941
    check-cast v3, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 942
    .line 943
    iget-wide v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 944
    .line 945
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    .line 946
    .line 947
    .line 948
    move-result v1

    .line 949
    if-eqz v1, :cond_25

    .line 950
    .line 951
    iget-object v1, v0, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    .line 952
    .line 953
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 954
    .line 955
    .line 956
    move-result-object v2

    .line 957
    check-cast v2, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 958
    .line 959
    iget-object v2, v2, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    .line 960
    .line 961
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 962
    .line 963
    .line 964
    move-result v1

    .line 965
    if-nez v1, :cond_26

    .line 966
    .line 967
    :cond_25
    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 968
    .line 969
    .line 970
    :cond_26
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 971
    .line 972
    return-object p0

    .line 973
    :pswitch_13
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 974
    .line 975
    check-cast v0, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 976
    .line 977
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 978
    .line 979
    check-cast p0, Landroidx/compose/foundation/pager/PagerState;

    .line 980
    .line 981
    invoke-virtual {v0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    check-cast v0, Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;

    .line 986
    .line 987
    new-instance v1, Lokhttp3/internal/http/StatusLine;

    .line 988
    .line 989
    iget-object v2, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;

    .line 990
    .line 991
    iget-object v2, v2, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultInclusion:Ljava/lang/Object;

    .line 992
    .line 993
    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 994
    .line 995
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->getValue()Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object v2

    .line 999
    check-cast v2, Lkotlin/ranges/IntRange;

    .line 1000
    .line 1001
    invoke-direct {v1, v2, v0}, Lokhttp3/internal/http/StatusLine;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;)V

    .line 1002
    .line 1003
    .line 1004
    new-instance v2, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

    .line 1005
    .line 1006
    invoke-direct {v2, p0, v0, v1}, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;Lokhttp3/internal/http/StatusLine;)V

    .line 1007
    .line 1008
    .line 1009
    return-object v2

    .line 1010
    :pswitch_14
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 1011
    .line 1012
    check-cast v0, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 1013
    .line 1014
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 1015
    .line 1016
    check-cast p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 1017
    .line 1018
    invoke-virtual {v0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    check-cast v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridIntervalContent;

    .line 1023
    .line 1024
    new-instance v1, Lokhttp3/internal/http/StatusLine;

    .line 1025
    .line 1026
    iget-object v2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->scrollPosition:Landroidx/compose/foundation/text/TextDelegate;

    .line 1027
    .line 1028
    iget-object v2, v2, Landroidx/compose/foundation/text/TextDelegate;->intrinsicsLayoutDirection:Ljava/lang/Object;

    .line 1029
    .line 1030
    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 1031
    .line 1032
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->getValue()Ljava/lang/Object;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v2

    .line 1036
    check-cast v2, Lkotlin/ranges/IntRange;

    .line 1037
    .line 1038
    invoke-direct {v1, v2, v0}, Lokhttp3/internal/http/StatusLine;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;)V

    .line 1039
    .line 1040
    .line 1041
    new-instance v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;

    .line 1042
    .line 1043
    invoke-direct {v2, p0, v0, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderImpl;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridIntervalContent;Lokhttp3/internal/http/StatusLine;)V

    .line 1044
    .line 1045
    .line 1046
    return-object v2

    .line 1047
    :pswitch_15
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 1048
    .line 1049
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 1050
    .line 1051
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 1052
    .line 1053
    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 1054
    .line 1055
    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 1056
    .line 1057
    sget-object v2, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 1058
    .line 1059
    invoke-direct {v1, v0, v2, p0}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/util/Map;Landroidx/compose/runtime/saveable/SaveableStateHolder;)V

    .line 1060
    .line 1061
    .line 1062
    return-object v1

    .line 1063
    :pswitch_16
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 1064
    .line 1065
    check-cast v0, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 1066
    .line 1067
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 1068
    .line 1069
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 1070
    .line 1071
    invoke-virtual {v0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v0

    .line 1075
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 1076
    .line 1077
    new-instance v1, Lokhttp3/internal/http/StatusLine;

    .line 1078
    .line 1079
    iget-object v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 1080
    .line 1081
    iget-object v2, v2, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 1082
    .line 1083
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->getValue()Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v2

    .line 1087
    check-cast v2, Lkotlin/ranges/IntRange;

    .line 1088
    .line 1089
    invoke-direct {v1, v2, v0}, Lokhttp3/internal/http/StatusLine;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;)V

    .line 1090
    .line 1091
    .line 1092
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    .line 1093
    .line 1094
    invoke-direct {v2, p0, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;Lokhttp3/internal/http/StatusLine;)V

    .line 1095
    .line 1096
    .line 1097
    return-object v2

    .line 1098
    :pswitch_17
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 1099
    .line 1100
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1101
    .line 1102
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 1103
    .line 1104
    check-cast p0, Landroidx/compose/foundation/FocusableNode;

    .line 1105
    .line 1106
    sget-object v1, Landroidx/compose/ui/layout/PinnableContainerKt;->LocalPinnableContainer:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1107
    .line 1108
    invoke-static {p0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1109
    .line 1110
    .line 1111
    move-result-object p0

    .line 1112
    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1113
    .line 1114
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1115
    .line 1116
    return-object p0

    .line 1117
    :pswitch_18
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 1118
    .line 1119
    check-cast v0, Landroidx/compose/foundation/BackgroundNode;

    .line 1120
    .line 1121
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 1122
    .line 1123
    check-cast p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 1124
    .line 1125
    iget-object v1, v0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 1126
    .line 1127
    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 1128
    .line 1129
    iget-object v2, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 1130
    .line 1131
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 1132
    .line 1133
    .line 1134
    move-result-wide v2

    .line 1135
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v4

    .line 1139
    invoke-interface {v1, v2, v3, v4, p0}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/ColorKt;

    .line 1140
    .line 1141
    .line 1142
    move-result-object p0

    .line 1143
    iput-object p0, v0, Landroidx/compose/foundation/BackgroundNode;->tmpOutline:Landroidx/compose/ui/graphics/ColorKt;

    .line 1144
    .line 1145
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1146
    .line 1147
    return-object p0

    .line 1148
    :pswitch_19
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 1149
    .line 1150
    check-cast v0, Lkotlinx/coroutines/channels/Channel;

    .line 1151
    .line 1152
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 1153
    .line 1154
    invoke-interface {v0, p0}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    .line 1156
    .line 1157
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1158
    .line 1159
    return-object p0

    .line 1160
    :pswitch_1a
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 1161
    .line 1162
    check-cast v0, Landroidx/activity/compose/ComposePredictiveBackHandler;

    .line 1163
    .line 1164
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 1165
    .line 1166
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 1167
    .line 1168
    iput-object p0, v0, Landroidx/activity/compose/ComposePredictiveBackHandler;->currentOnBack:Lkotlin/jvm/functions/Function2;

    .line 1169
    .line 1170
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1171
    .line 1172
    return-object p0

    .line 1173
    :pswitch_1b
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 1174
    .line 1175
    check-cast v0, Landroidx/activity/compose/ComposeBackHandler;

    .line 1176
    .line 1177
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 1178
    .line 1179
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 1180
    .line 1181
    iput-object p0, v0, Landroidx/activity/compose/ComposeBackHandler;->currentOnBackCompleted:Lkotlin/jvm/functions/Function0;

    .line 1182
    .line 1183
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1184
    .line 1185
    return-object p0

    .line 1186
    :pswitch_1c
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 1187
    .line 1188
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 1189
    .line 1190
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 1191
    .line 1192
    check-cast p0, Landroidx/compose/runtime/CompositionImpl;

    .line 1193
    .line 1194
    iget-object v1, v0, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 1195
    .line 1196
    iget-object v0, v0, Landroidx/collection/MutableScatterSet;->metadata:[J

    .line 1197
    .line 1198
    array-length v2, v0

    .line 1199
    sub-int/2addr v2, v5

    .line 1200
    if-ltz v2, :cond_2a

    .line 1201
    .line 1202
    move v3, v6

    .line 1203
    :goto_1b
    aget-wide v4, v0, v3

    .line 1204
    .line 1205
    not-long v7, v4

    .line 1206
    const/4 v9, 0x7

    .line 1207
    shl-long/2addr v7, v9

    .line 1208
    and-long/2addr v7, v4

    .line 1209
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    and-long/2addr v7, v9

    .line 1215
    cmp-long v7, v7, v9

    .line 1216
    .line 1217
    if-eqz v7, :cond_29

    .line 1218
    .line 1219
    sub-int v7, v3, v2

    .line 1220
    .line 1221
    not-int v7, v7

    .line 1222
    ushr-int/lit8 v7, v7, 0x1f

    .line 1223
    .line 1224
    const/16 v8, 0x8

    .line 1225
    .line 1226
    rsub-int/lit8 v7, v7, 0x8

    .line 1227
    .line 1228
    move v9, v6

    .line 1229
    :goto_1c
    if-ge v9, v7, :cond_28

    .line 1230
    .line 1231
    const-wide/16 v10, 0xff

    .line 1232
    .line 1233
    and-long/2addr v10, v4

    .line 1234
    const-wide/16 v12, 0x80

    .line 1235
    .line 1236
    cmp-long v10, v10, v12

    .line 1237
    .line 1238
    if-gez v10, :cond_27

    .line 1239
    .line 1240
    shl-int/lit8 v10, v3, 0x3

    .line 1241
    .line 1242
    add-int/2addr v10, v9

    .line 1243
    aget-object v10, v1, v10

    .line 1244
    .line 1245
    invoke-virtual {p0, v10}, Landroidx/compose/runtime/CompositionImpl;->recordWriteOf(Ljava/lang/Object;)V

    .line 1246
    .line 1247
    .line 1248
    :cond_27
    shr-long/2addr v4, v8

    .line 1249
    add-int/lit8 v9, v9, 0x1

    .line 1250
    .line 1251
    goto :goto_1c

    .line 1252
    :cond_28
    if-ne v7, v8, :cond_2a

    .line 1253
    .line 1254
    :cond_29
    if-eq v3, v2, :cond_2a

    .line 1255
    .line 1256
    add-int/lit8 v3, v3, 0x1

    .line 1257
    .line 1258
    goto :goto_1b

    .line 1259
    :cond_2a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1260
    .line 1261
    return-object p0

    .line 1262
    nop

    .line 1263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
