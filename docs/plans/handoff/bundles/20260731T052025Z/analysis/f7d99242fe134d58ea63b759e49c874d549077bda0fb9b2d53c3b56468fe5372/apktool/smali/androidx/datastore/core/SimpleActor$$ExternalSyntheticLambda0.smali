.class public final synthetic Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lkotlinx/coroutines/Deferred;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 0

    .line 1
    const/4 p3, 0x2

    .line 2
    iput p3, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/foundation/gestures/UpdatableAnimationState;Lkotlinx/coroutines/Job;Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;)V
    .locals 0

    .line 14
    const/4 p2, 0x4

    iput p2, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 15
    iput p4, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final invoke$androidx$lifecycle$compose$LifecycleEffectKt$$ExternalSyntheticLambda4(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/lifecycle/Lifecycle$Event;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 14
    .line 15
    new-instance p1, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-direct {p1, v2, v1, p0}, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 26
    .line 27
    .line 28
    new-instance p0, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 29
    .line 30
    const/16 v1, 0xa

    .line 31
    .line 32
    invoke-direct {p0, v1, v0, p1}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method

.method private final invoke$androidx$navigation$compose$DialogHostKt$DialogHost$1$2$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroidx/navigation/compose/DialogNavigator;

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    new-instance p1, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;

    .line 19
    .line 20
    invoke-direct {p1, p0, v1, v0}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;-><init>(Landroidx/navigation/compose/DialogNavigator;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/snapshots/SnapshotStateList;)V

    .line 21
    .line 22
    .line 23
    return-object p1
.end method

.method private final invoke$androidx$navigation$fragment$FragmentNavigator$$ExternalSyntheticLambda4(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/navigation/fragment/FragmentNavigator;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    .line 12
    .line 13
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    .line 14
    .line 15
    iget-object v2, v0, Landroidx/navigation/fragment/FragmentNavigator;->pendingOps:Ljava/util/ArrayList;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lkotlin/Pair;

    .line 42
    .line 43
    iget-object v4, v4, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 44
    .line 45
    iget-object v5, v1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 55
    .line 56
    if-nez v3, :cond_3

    .line 57
    .line 58
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->initialize()V

    .line 63
    .line 64
    .line 65
    iget-object p1, p1, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 66
    .line 67
    iget-object v1, p1, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 68
    .line 69
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-ltz v1, :cond_3

    .line 76
    .line 77
    iget-object v0, v0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentViewObserver:Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    invoke-virtual {v0, p0}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    check-cast p0, Landroidx/lifecycle/LifecycleObserver;

    .line 84
    .line 85
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 89
    .line 90
    return-object p0
.end method

.method private final invoke$androidx$work$impl$model$WorkSpecDao_Impl$$ExternalSyntheticLambda28(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/util/List;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 14
    .line 15
    move-object/from16 v3, p1

    .line 16
    .line 17
    check-cast v3, Landroidx/sqlite/SQLiteConnection;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-interface {v3, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v4, 0x1

    .line 31
    move v5, v4

    .line 32
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {v1, v6, v5}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v5, v5, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto/16 :goto_7

    .line 52
    .line 53
    :cond_0
    new-instance v2, Landroidx/collection/ArrayMap;

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    invoke-direct {v2, v5}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 57
    .line 58
    .line 59
    new-instance v6, Landroidx/collection/ArrayMap;

    .line 60
    .line 61
    invoke-direct {v6, v5}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_3

    .line 69
    .line 70
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-virtual {v2, v7}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-nez v8, :cond_2

    .line 79
    .line 80
    new-instance v8, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v7, v8}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v6, v7}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-nez v8, :cond_1

    .line 97
    .line 98
    new-instance v8, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6, v7, v8}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->reset()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v3, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v3, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    :goto_2
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_8

    .line 126
    .line 127
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 132
    .line 133
    .line 134
    move-result-wide v9

    .line 135
    long-to-int v3, v9

    .line 136
    invoke-static {v3}, Landroidx/sqlite/SQLite;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    const/4 v3, 0x2

    .line 141
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    sget-object v7, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 146
    .line 147
    invoke-static {v3}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    const/4 v3, 0x3

    .line 152
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 153
    .line 154
    .line 155
    move-result-wide v11

    .line 156
    long-to-int v3, v11

    .line 157
    const/4 v7, 0x4

    .line 158
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 159
    .line 160
    .line 161
    move-result-wide v11

    .line 162
    long-to-int v7, v11

    .line 163
    const/16 v11, 0xe

    .line 164
    .line 165
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 166
    .line 167
    .line 168
    move-result-wide v11

    .line 169
    const/16 v13, 0xf

    .line 170
    .line 171
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 172
    .line 173
    .line 174
    move-result-wide v13

    .line 175
    const/16 v15, 0x10

    .line 176
    .line 177
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 178
    .line 179
    .line 180
    move-result-wide v15

    .line 181
    const/16 v4, 0x11

    .line 182
    .line 183
    move-object/from16 v31, v6

    .line 184
    .line 185
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 186
    .line 187
    .line 188
    move-result-wide v5

    .line 189
    long-to-int v4, v5

    .line 190
    invoke-static {v4}, Landroidx/sqlite/SQLite;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 191
    .line 192
    .line 193
    move-result-object v19

    .line 194
    const/16 v4, 0x12

    .line 195
    .line 196
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 197
    .line 198
    .line 199
    move-result-wide v20

    .line 200
    const/16 v4, 0x13

    .line 201
    .line 202
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 203
    .line 204
    .line 205
    move-result-wide v22

    .line 206
    const/16 v4, 0x14

    .line 207
    .line 208
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 209
    .line 210
    .line 211
    move-result-wide v4

    .line 212
    long-to-int v4, v4

    .line 213
    const/16 v5, 0x15

    .line 214
    .line 215
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 216
    .line 217
    .line 218
    move-result-wide v26

    .line 219
    const/16 v5, 0x16

    .line 220
    .line 221
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 222
    .line 223
    .line 224
    move-result-wide v5

    .line 225
    long-to-int v5, v5

    .line 226
    const/4 v6, 0x5

    .line 227
    move/from16 v18, v3

    .line 228
    .line 229
    move/from16 v24, v4

    .line 230
    .line 231
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 232
    .line 233
    .line 234
    move-result-wide v3

    .line 235
    long-to-int v3, v3

    .line 236
    invoke-static {v3}, Landroidx/sqlite/SQLite;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 237
    .line 238
    .line 239
    move-result-object v34

    .line 240
    const/4 v3, 0x6

    .line 241
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-static {v3}, Landroidx/sqlite/SQLite;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 246
    .line 247
    .line 248
    move-result-object v33

    .line 249
    const/4 v3, 0x7

    .line 250
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 251
    .line 252
    .line 253
    move-result-wide v3

    .line 254
    long-to-int v3, v3

    .line 255
    if-eqz v3, :cond_4

    .line 256
    .line 257
    const/16 v35, 0x1

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_4
    const/16 v35, 0x0

    .line 261
    .line 262
    :goto_3
    const/16 v3, 0x8

    .line 263
    .line 264
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 265
    .line 266
    .line 267
    move-result-wide v3

    .line 268
    long-to-int v3, v3

    .line 269
    if-eqz v3, :cond_5

    .line 270
    .line 271
    const/16 v36, 0x1

    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_5
    const/16 v36, 0x0

    .line 275
    .line 276
    :goto_4
    const/16 v3, 0x9

    .line 277
    .line 278
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 279
    .line 280
    .line 281
    move-result-wide v3

    .line 282
    long-to-int v3, v3

    .line 283
    if-eqz v3, :cond_6

    .line 284
    .line 285
    const/16 v37, 0x1

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_6
    const/16 v37, 0x0

    .line 289
    .line 290
    :goto_5
    const/16 v3, 0xa

    .line 291
    .line 292
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 293
    .line 294
    .line 295
    move-result-wide v3

    .line 296
    long-to-int v3, v3

    .line 297
    if-eqz v3, :cond_7

    .line 298
    .line 299
    const/16 v38, 0x1

    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_7
    const/16 v38, 0x0

    .line 303
    .line 304
    :goto_6
    const/16 v3, 0xb

    .line 305
    .line 306
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 307
    .line 308
    .line 309
    move-result-wide v39

    .line 310
    const/16 v3, 0xc

    .line 311
    .line 312
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 313
    .line 314
    .line 315
    move-result-wide v41

    .line 316
    const/16 v3, 0xd

    .line 317
    .line 318
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    invoke-static {v3}, Landroidx/sqlite/SQLite;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 323
    .line 324
    .line 325
    move-result-object v43

    .line 326
    new-instance v32, Landroidx/work/Constraints;

    .line 327
    .line 328
    invoke-direct/range {v32 .. v43}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 329
    .line 330
    .line 331
    const/4 v3, 0x0

    .line 332
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    invoke-static {v2, v4}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    move-object/from16 v29, v4

    .line 344
    .line 345
    check-cast v29, Ljava/util/List;

    .line 346
    .line 347
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    move-object/from16 v6, v31

    .line 352
    .line 353
    invoke-static {v6, v4}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    move-object/from16 v30, v4

    .line 361
    .line 362
    check-cast v30, Ljava/util/List;

    .line 363
    .line 364
    move/from16 v25, v7

    .line 365
    .line 366
    new-instance v7, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    .line 367
    .line 368
    move/from16 v28, v5

    .line 369
    .line 370
    move-object/from16 v17, v32

    .line 371
    .line 372
    invoke-direct/range {v7 .. v30}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    .line 377
    .line 378
    move v5, v3

    .line 379
    const/4 v4, 0x1

    .line 380
    goto/16 :goto_2

    .line 381
    .line 382
    :cond_8
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 383
    .line 384
    .line 385
    return-object v0

    .line 386
    :goto_7
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 387
    .line 388
    .line 389
    throw v0
.end method

.method private final invoke$app$k9mail$core$ui$compose$designsystem$template$LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v2, Lapp/k9mail/core/ui/compose/designsystem/template/LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda2;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, v1, v3}, Lapp/k9mail/core/ui/compose/designsystem/template/LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 25
    .line 26
    const v3, -0x35768b3f    # -4504160.5f

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-direct {v1, v3, v2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x3

    .line 35
    invoke-static {p1, v2, v1, v3}, Landroidx/camera/core/impl/Config$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/template/LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda2;

    .line 42
    .line 43
    invoke-direct {v0, p0, v4}, Lapp/k9mail/core/ui/compose/designsystem/template/LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 44
    .line 45
    .line 46
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 47
    .line 48
    const v1, -0x104bc396

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v1, v0, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v2, p0, v3}, Landroidx/camera/core/impl/Config$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    .line 55
    .line 56
    .line 57
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 58
    .line 59
    return-object p0
.end method

.method private final invoke$app$k9mail$feature$account$setup$navigation$AccountSetupNavHostKt$$ExternalSyntheticLambda16(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$AutoDiscoveryUiResult;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-boolean v2, p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$AutoDiscoveryUiResult;->isAutomaticConfig:Z

    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v1, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object p1, p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$AutoDiscoveryUiResult;->incomingProtocolType:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 40
    .line 41
    sget-object v1, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;->IMAP:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 42
    .line 43
    if-ne p1, v1, :cond_0

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const-string p0, "incoming-server/validation"

    .line 56
    .line 57
    invoke-static {v0, p0}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const-string p0, "incoming-server/config"

    .line 62
    .line 63
    invoke-static {v0, p0}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p0
.end method

.method private final invoke$app$k9mail$feature$account$setup$ui$autodiscovery$AccountAutoDiscoveryViewModel$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lnet/thunderbird/core/outcome/Outcome;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lnet/thunderbird/core/outcome/Outcome;

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    check-cast v2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object p1, v2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->emailAddress:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lnet/thunderbird/core/validation/input/StringInputField;->updateFromValidationOutcome(Lnet/thunderbird/core/outcome/Outcome;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object p1, v2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Lnet/thunderbird/core/validation/input/StringInputField;->updateFromValidationOutcome(Lnet/thunderbird/core/outcome/Outcome;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-object p1, v2, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->configurationApproved:Lnet/thunderbird/core/validation/input/BooleanInputField;

    .line 32
    .line 33
    iget-object p1, p1, Lnet/thunderbird/core/validation/input/BooleanInputField;->value:Ljava/lang/Boolean;

    .line 34
    .line 35
    instance-of v0, p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    new-instance p0, Lnet/thunderbird/core/validation/input/BooleanInputField;

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, p1, v1, v0}, Lnet/thunderbird/core/validation/input/BooleanInputField;-><init>(Ljava/lang/Boolean;Lnet/thunderbird/core/validation/ValidationError;Z)V

    .line 44
    .line 45
    .line 46
    move-object v7, p0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    instance-of v0, p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    new-instance v0, Lnet/thunderbird/core/validation/input/BooleanInputField;

    .line 53
    .line 54
    check-cast p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 55
    .line 56
    iget-object p0, p0, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, Lnet/thunderbird/core/validation/ValidationError;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-direct {v0, p1, p0, v1}, Lnet/thunderbird/core/validation/input/BooleanInputField;-><init>(Ljava/lang/Boolean;Lnet/thunderbird/core/validation/ValidationError;Z)V

    .line 62
    .line 63
    .line 64
    move-object v7, v0

    .line 65
    :goto_0
    const/4 v11, 0x0

    .line 66
    const/16 v12, 0x3e9

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    const/4 v6, 0x0

    .line 70
    const/4 v8, 0x0

    .line 71
    const/4 v9, 0x0

    .line 72
    const/4 v10, 0x0

    .line 73
    invoke-static/range {v2 .. v12}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lnet/thunderbird/core/validation/input/BooleanInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;ZZI)Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_1
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 79
    .line 80
    .line 81
    return-object v1
.end method

.method private final invoke$app$k9mail$feature$account$setup$ui$specialfolders$SpecialFoldersFormContentKt$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroid/content/res/Resources;

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object v2, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersScreenKt;->lambda$446464532:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x3

    .line 22
    invoke-static {p1, v3, v2, v4}, Landroidx/camera/core/impl/Config$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersScreenKt;->lambda$1100856701:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 26
    .line 27
    invoke-static {p1, v3, v2, v4}, Landroidx/camera/core/impl/Config$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormContentKt$$ExternalSyntheticLambda2;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-direct {v2, v0, v1, p0, v5}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormContentKt$$ExternalSyntheticLambda2;-><init>(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;Lkotlin/jvm/functions/Function1;Landroid/content/res/Resources;I)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 37
    .line 38
    const v6, 0x39982bdc

    .line 39
    .line 40
    .line 41
    const/4 v7, 0x1

    .line 42
    invoke-direct {v5, v6, v2, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v3, v5, v4}, Landroidx/camera/core/impl/Config$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormContentKt$$ExternalSyntheticLambda2;

    .line 49
    .line 50
    invoke-direct {v2, v0, v1, p0, v7}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormContentKt$$ExternalSyntheticLambda2;-><init>(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;Lkotlin/jvm/functions/Function1;Landroid/content/res/Resources;I)V

    .line 51
    .line 52
    .line 53
    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 54
    .line 55
    const v6, 0x31929a3b

    .line 56
    .line 57
    .line 58
    invoke-direct {v5, v6, v2, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v3, v5, v4}, Landroidx/camera/core/impl/Config$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    .line 62
    .line 63
    .line 64
    new-instance v2, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormContentKt$$ExternalSyntheticLambda2;

    .line 65
    .line 66
    const/4 v5, 0x2

    .line 67
    invoke-direct {v2, v0, v1, p0, v5}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormContentKt$$ExternalSyntheticLambda2;-><init>(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;Lkotlin/jvm/functions/Function1;Landroid/content/res/Resources;I)V

    .line 68
    .line 69
    .line 70
    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 71
    .line 72
    const v6, 0x298d089a    # 6.26315E-14f

    .line 73
    .line 74
    .line 75
    invoke-direct {v5, v6, v2, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1, v3, v5, v4}, Landroidx/camera/core/impl/Config$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    .line 79
    .line 80
    .line 81
    new-instance v2, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormContentKt$$ExternalSyntheticLambda2;

    .line 82
    .line 83
    invoke-direct {v2, v0, v1, p0, v4}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormContentKt$$ExternalSyntheticLambda2;-><init>(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;Lkotlin/jvm/functions/Function1;Landroid/content/res/Resources;I)V

    .line 84
    .line 85
    .line 86
    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 87
    .line 88
    const v6, 0x218776f9

    .line 89
    .line 90
    .line 91
    invoke-direct {v5, v6, v2, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 92
    .line 93
    .line 94
    invoke-static {p1, v3, v5, v4}, Landroidx/camera/core/impl/Config$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    .line 95
    .line 96
    .line 97
    new-instance v2, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormContentKt$$ExternalSyntheticLambda2;

    .line 98
    .line 99
    const/4 v5, 0x4

    .line 100
    invoke-direct {v2, v0, v1, p0, v5}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormContentKt$$ExternalSyntheticLambda2;-><init>(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;Lkotlin/jvm/functions/Function1;Landroid/content/res/Resources;I)V

    .line 101
    .line 102
    .line 103
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 104
    .line 105
    const v0, 0x1981e558

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, v0, v2, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 109
    .line 110
    .line 111
    invoke-static {p1, v3, p0, v4}, Landroidx/camera/core/impl/Config$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    .line 112
    .line 113
    .line 114
    sget-object p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersScreenKt;->lambda$293360567:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 115
    .line 116
    invoke-static {p1, v3, p0, v4}, Landroidx/camera/core/impl/Config$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    .line 117
    .line 118
    .line 119
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 120
    .line 121
    return-object p0
.end method

.method private final invoke$com$fsck$k9$preferences$XmlSettingsParser$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lokhttp3/ConnectionPool;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 12
    .line 13
    check-cast p1, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v2, 0x2

    .line 20
    if-ne p1, v2, :cond_4

    .line 21
    .line 22
    iget-object p1, v0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Lorg/xmlpull/v1/XmlPullParser;

    .line 25
    .line 26
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v2, "global"

    .line 31
    .line 32
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x0

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 40
    .line 41
    if-nez p0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->readSettingsContainer()Ljava/util/LinkedHashMap;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    iput-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string p0, "More than one \'global\' element!"

    .line 51
    .line 52
    new-array p1, v3, [Ljava/lang/Object;

    .line 53
    .line 54
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->skipElement()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const-string v1, "accounts"

    .line 62
    .line 63
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    iget-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 70
    .line 71
    if-nez p1, :cond_2

    .line 72
    .line 73
    new-instance p1, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v1, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda2;

    .line 79
    .line 80
    invoke-direct {v1, v0, p1, v3}, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda2;-><init>(Lokhttp3/ConnectionPool;Ljava/util/ArrayList;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->readElement(Lkotlin/jvm/functions/Function1;)V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    const-string p0, "More than one \'accounts\' element!"

    .line 90
    .line 91
    new-array p1, v3, [Ljava/lang/Object;

    .line 92
    .line 93
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->skipElement()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->skipElement()V

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 104
    .line 105
    return-object p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    const-wide v5, 0xffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v7, 0x2

    .line 12
    const/16 v8, 0x17

    .line 13
    .line 14
    const/16 v9, 0x14

    .line 15
    .line 16
    const/4 v10, 0x3

    .line 17
    const/4 v11, 0x0

    .line 18
    const/4 v12, 0x0

    .line 19
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    .line 21
    const/4 v14, 0x1

    .line 22
    iget-object v15, v0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v2, v0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 25
    .line 26
    const/16 v17, 0x20

    .line 27
    .line 28
    iget-object v3, v0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 29
    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    check-cast v3, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 34
    .line 35
    check-cast v15, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 36
    .line 37
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 38
    .line 39
    move-object/from16 v0, p1

    .line 40
    .line 41
    check-cast v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-object v1, v3, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->accessibilityState:Lokhttp3/ConnectionPool;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iget-object v1, v1, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getBehaviour(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;)Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const/4 v5, 0x1

    .line 60
    invoke-virtual {v1, v5, v0, v4}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->calculateFinalOffset(ZLnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;)F

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-virtual {v1, v0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getBehaviour(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;)Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 65
    .line 66
    .line 67
    move-result-object v19

    .line 68
    iget-object v6, v1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->pendingOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 69
    .line 70
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 71
    .line 72
    .line 73
    iget-object v6, v1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 74
    .line 75
    new-instance v16, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;

    .line 76
    .line 77
    const/16 v21, 0x0

    .line 78
    .line 79
    move-object/from16 v17, v1

    .line 80
    .line 81
    move/from16 v18, v4

    .line 82
    .line 83
    move/from16 v20, v5

    .line 84
    .line 85
    invoke-direct/range {v16 .. v21}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$updateOffset$1;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;FLnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;ZLkotlin/coroutines/Continuation;)V

    .line 86
    .line 87
    .line 88
    move-object/from16 v1, v16

    .line 89
    .line 90
    invoke-static {v6, v11, v11, v1, v10}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getActiveBehaviour$tfa_core_ui_compose_designsystem()Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;->getEnableHapticFeedback()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_0

    .line 102
    .line 103
    check-cast v15, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;

    .line 104
    .line 105
    invoke-virtual {v15, v8}, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;->performHapticFeedback-CdsT49E(I)V

    .line 106
    .line 107
    .line 108
    :cond_0
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    return-object v13

    .line 112
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->invoke$com$fsck$k9$preferences$XmlSettingsParser$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    return-object v0

    .line 117
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->invoke$app$k9mail$feature$account$setup$ui$specialfolders$SpecialFoldersFormContentKt$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0

    .line 122
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->invoke$app$k9mail$feature$account$setup$ui$autodiscovery$AccountAutoDiscoveryViewModel$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    return-object v0

    .line 127
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->invoke$app$k9mail$feature$account$setup$navigation$AccountSetupNavHostKt$$ExternalSyntheticLambda16(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    return-object v0

    .line 132
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->invoke$app$k9mail$core$ui$compose$designsystem$template$LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    return-object v0

    .line 137
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->invoke$androidx$work$impl$model$WorkSpecDao_Impl$$ExternalSyntheticLambda28(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    return-object v0

    .line 142
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->invoke$androidx$navigation$fragment$FragmentNavigator$$ExternalSyntheticLambda4(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    return-object v0

    .line 147
    :pswitch_7
    invoke-direct/range {p0 .. p1}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->invoke$androidx$navigation$compose$DialogHostKt$DialogHost$1$2$$ExternalSyntheticLambda0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    return-object v0

    .line 152
    :pswitch_8
    invoke-direct/range {p0 .. p1}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->invoke$androidx$lifecycle$compose$LifecycleEffectKt$$ExternalSyntheticLambda4(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    return-object v0

    .line 157
    :pswitch_9
    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    .line 158
    .line 159
    check-cast v15, Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    .line 160
    .line 161
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 162
    .line 163
    move-object/from16 v0, p1

    .line 164
    .line 165
    check-cast v0, Landroidx/compose/runtime/DisposableEffectScope;

    .line 166
    .line 167
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 168
    .line 169
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 170
    .line 171
    .line 172
    new-instance v1, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda3;

    .line 173
    .line 174
    invoke-direct {v1, v15, v0, v2}, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda3;-><init>(Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v3}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v2, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 182
    .line 183
    .line 184
    new-instance v2, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;

    .line 185
    .line 186
    invoke-direct {v2, v3, v1, v0, v7}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 187
    .line 188
    .line 189
    return-object v2

    .line 190
    :pswitch_a
    check-cast v3, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 191
    .line 192
    check-cast v2, Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;

    .line 193
    .line 194
    move-object/from16 v0, p1

    .line 195
    .line 196
    check-cast v0, Landroidx/compose/runtime/DisposableEffectScope;

    .line 197
    .line 198
    iget-object v0, v3, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->registries:Landroidx/collection/MutableScatterMap;

    .line 199
    .line 200
    invoke-virtual {v0, v15}, Landroidx/collection/MutableScatterMap;->contains(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-nez v1, :cond_1

    .line 205
    .line 206
    iget-object v1, v3, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->savedStates:Ljava/util/Map;

    .line 207
    .line 208
    invoke-interface {v1, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v15, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    new-instance v11, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;

    .line 215
    .line 216
    invoke-direct {v11, v3, v15, v2, v14}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 217
    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_1
    const-string v0, "Key "

    .line 221
    .line 222
    const-string v1, " was used multiple times "

    .line 223
    .line 224
    invoke-static {v15, v1, v0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :goto_0
    return-object v11

    .line 228
    :pswitch_b
    check-cast v3, Landroidx/compose/ui/layout/MeasureScope;

    .line 229
    .line 230
    check-cast v15, Landroidx/compose/material3/internal/DraggableAnchorsNode;

    .line 231
    .line 232
    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    .line 233
    .line 234
    move-object/from16 v0, p1

    .line 235
    .line 236
    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 237
    .line 238
    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    iget-object v3, v15, Landroidx/compose/material3/internal/DraggableAnchorsNode;->state:Landroidx/compose/material3/internal/AnchoredDraggableState;

    .line 243
    .line 244
    if-eqz v1, :cond_2

    .line 245
    .line 246
    invoke-virtual {v3}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getAnchors()Landroidx/compose/material3/internal/MapDraggableAnchors;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    iget-object v3, v15, Landroidx/compose/material3/internal/DraggableAnchorsNode;->state:Landroidx/compose/material3/internal/AnchoredDraggableState;

    .line 251
    .line 252
    iget-object v3, v3, Landroidx/compose/material3/internal/AnchoredDraggableState;->targetValue$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 253
    .line 254
    invoke-virtual {v3}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-virtual {v1, v3}, Landroidx/compose/material3/internal/MapDraggableAnchors;->positionOf(Ljava/lang/Object;)F

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    goto :goto_1

    .line 263
    :cond_2
    invoke-virtual {v3}, Landroidx/compose/material3/internal/AnchoredDraggableState;->requireOffset()F

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    :goto_1
    iget-object v3, v15, Landroidx/compose/material3/internal/DraggableAnchorsNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 268
    .line 269
    sget-object v5, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 270
    .line 271
    if-ne v3, v5, :cond_3

    .line 272
    .line 273
    move v5, v1

    .line 274
    goto :goto_2

    .line 275
    :cond_3
    move v5, v4

    .line 276
    :goto_2
    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 277
    .line 278
    if-ne v3, v6, :cond_4

    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_4
    move v1, v4

    .line 282
    :goto_3
    iput-boolean v14, v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    .line 283
    .line 284
    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    invoke-virtual {v0, v2, v3, v1, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place(Landroidx/compose/ui/layout/Placeable;IIF)V

    .line 293
    .line 294
    .line 295
    iput-boolean v12, v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    .line 296
    .line 297
    return-object v13

    .line 298
    :pswitch_c
    check-cast v3, Ljava/lang/String;

    .line 299
    .line 300
    check-cast v15, Lkotlinx/coroutines/CoroutineScope;

    .line 301
    .line 302
    check-cast v2, Landroidx/compose/material3/TooltipStateImpl;

    .line 303
    .line 304
    move-object/from16 v0, p1

    .line 305
    .line 306
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 307
    .line 308
    new-instance v1, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 309
    .line 310
    invoke-direct {v1, v8, v15, v2}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 314
    .line 315
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->OnLongClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 316
    .line 317
    new-instance v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 318
    .line 319
    invoke-direct {v4, v3, v1}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 320
    .line 321
    .line 322
    invoke-interface {v0, v2, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    return-object v13

    .line 326
    :pswitch_d
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 327
    .line 328
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 329
    .line 330
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 331
    .line 332
    move-object/from16 v0, p1

    .line 333
    .line 334
    check-cast v0, Landroidx/compose/material3/SheetValue;

    .line 335
    .line 336
    new-instance v1, Landroidx/compose/material3/SheetState;

    .line 337
    .line 338
    invoke-direct {v1, v3, v15, v0, v2}, Landroidx/compose/material3/SheetState;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;)V

    .line 339
    .line 340
    .line 341
    return-object v1

    .line 342
    :pswitch_e
    check-cast v3, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1$1;

    .line 343
    .line 344
    check-cast v15, Landroidx/compose/foundation/layout/PaddingValues;

    .line 345
    .line 346
    check-cast v2, Landroidx/compose/ui/Alignment$Horizontal;

    .line 347
    .line 348
    move-object/from16 v0, p1

    .line 349
    .line 350
    check-cast v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 351
    .line 352
    invoke-virtual {v3}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1$1;->get()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    check-cast v1, Landroidx/compose/ui/geometry/Size;

    .line 357
    .line 358
    iget-wide v7, v1, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 359
    .line 360
    shr-long v9, v7, v17

    .line 361
    .line 362
    long-to-int v1, v9

    .line 363
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    cmpl-float v3, v1, v4

    .line 368
    .line 369
    if-lez v3, :cond_7

    .line 370
    .line 371
    const/high16 v3, 0x40800000    # 4.0f

    .line 372
    .line 373
    invoke-virtual {v0, v3}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->toPx-0680j_4(F)F

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    iget-object v9, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 378
    .line 379
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 380
    .line 381
    .line 382
    move-result-object v10

    .line 383
    invoke-interface {v15, v10}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 384
    .line 385
    .line 386
    move-result v10

    .line 387
    invoke-virtual {v0, v10}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->toPx-0680j_4(F)F

    .line 388
    .line 389
    .line 390
    move-result v10

    .line 391
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 392
    .line 393
    .line 394
    move-result-object v11

    .line 395
    invoke-interface {v15, v11}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 396
    .line 397
    .line 398
    move-result v11

    .line 399
    invoke-virtual {v0, v11}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->toPx-0680j_4(F)F

    .line 400
    .line 401
    .line 402
    move-result v11

    .line 403
    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 404
    .line 405
    .line 406
    move-result v12

    .line 407
    iget-object v14, v9, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 408
    .line 409
    invoke-virtual {v14}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 410
    .line 411
    .line 412
    move-result-wide v14

    .line 413
    shr-long v14, v14, v17

    .line 414
    .line 415
    long-to-int v14, v14

    .line 416
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 417
    .line 418
    .line 419
    move-result v14

    .line 420
    sub-float/2addr v14, v10

    .line 421
    sub-float/2addr v14, v11

    .line 422
    invoke-static {v14}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 423
    .line 424
    .line 425
    move-result v11

    .line 426
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 427
    .line 428
    .line 429
    move-result-object v14

    .line 430
    invoke-interface {v2, v12, v11, v14}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    int-to-float v2, v2

    .line 435
    add-float/2addr v2, v10

    .line 436
    const/high16 v10, 0x40000000    # 2.0f

    .line 437
    .line 438
    div-float/2addr v1, v10

    .line 439
    add-float/2addr v2, v1

    .line 440
    sub-float v11, v2, v1

    .line 441
    .line 442
    sub-float/2addr v11, v3

    .line 443
    cmpg-float v12, v11, v4

    .line 444
    .line 445
    if-gez v12, :cond_5

    .line 446
    .line 447
    move/from16 v19, v4

    .line 448
    .line 449
    goto :goto_4

    .line 450
    :cond_5
    move/from16 v19, v11

    .line 451
    .line 452
    :goto_4
    add-float/2addr v2, v1

    .line 453
    add-float/2addr v2, v3

    .line 454
    iget-object v1, v9, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 455
    .line 456
    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 457
    .line 458
    .line 459
    move-result-wide v3

    .line 460
    shr-long v3, v3, v17

    .line 461
    .line 462
    long-to-int v1, v3

    .line 463
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    cmpl-float v3, v2, v1

    .line 468
    .line 469
    if-lez v3, :cond_6

    .line 470
    .line 471
    move/from16 v21, v1

    .line 472
    .line 473
    goto :goto_5

    .line 474
    :cond_6
    move/from16 v21, v2

    .line 475
    .line 476
    :goto_5
    and-long v1, v7, v5

    .line 477
    .line 478
    long-to-int v1, v1

    .line 479
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    neg-float v2, v1

    .line 484
    div-float v20, v2, v10

    .line 485
    .line 486
    div-float v22, v1, v10

    .line 487
    .line 488
    iget-object v1, v9, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 489
    .line 490
    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 491
    .line 492
    .line 493
    move-result-wide v2

    .line 494
    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    invoke-interface {v4}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 499
    .line 500
    .line 501
    :try_start_0
    iget-object v4, v1, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 502
    .line 503
    check-cast v4, Landroidx/camera/view/PreviewView$1;

    .line 504
    .line 505
    iget-object v4, v4, Landroidx/camera/view/PreviewView$1;->this$0:Ljava/lang/Object;

    .line 506
    .line 507
    check-cast v4, Landroidx/core/view/MenuHostHelper;

    .line 508
    .line 509
    invoke-virtual {v4}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 510
    .line 511
    .line 512
    move-result-object v18

    .line 513
    const/16 v23, 0x0

    .line 514
    .line 515
    invoke-interface/range {v18 .. v23}, Landroidx/compose/ui/graphics/Canvas;->clipRect-N_I0leg(FFFFI)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    .line 520
    .line 521
    invoke-static {v1, v2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/core/view/MenuHostHelper;J)V

    .line 522
    .line 523
    .line 524
    goto :goto_6

    .line 525
    :catchall_0
    move-exception v0

    .line 526
    invoke-static {v1, v2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(Landroidx/core/view/MenuHostHelper;J)V

    .line 527
    .line 528
    .line 529
    throw v0

    .line 530
    :cond_7
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 531
    .line 532
    .line 533
    :goto_6
    return-object v13

    .line 534
    :pswitch_f
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 535
    .line 536
    check-cast v15, Landroidx/compose/material3/SheetState;

    .line 537
    .line 538
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 539
    .line 540
    move-object/from16 v0, p1

    .line 541
    .line 542
    check-cast v0, Ljava/lang/Float;

    .line 543
    .line 544
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 545
    .line 546
    .line 547
    move-result v0

    .line 548
    new-instance v1, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$scrollTracker$1;

    .line 549
    .line 550
    invoke-direct {v1, v15, v0, v11}, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$scrollTracker$1;-><init>(Landroidx/compose/material3/SheetState;FLkotlin/coroutines/Continuation;)V

    .line 551
    .line 552
    .line 553
    invoke-static {v3, v11, v11, v1, v10}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    new-instance v1, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda7;

    .line 558
    .line 559
    invoke-direct {v1, v15, v2, v14}, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function0;I)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 563
    .line 564
    .line 565
    return-object v13

    .line 566
    :pswitch_10
    check-cast v3, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 567
    .line 568
    check-cast v15, Lkotlinx/coroutines/CoroutineScope;

    .line 569
    .line 570
    check-cast v2, Landroid/content/Context;

    .line 571
    .line 572
    move-object/from16 v0, p1

    .line 573
    .line 574
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    .line 575
    .line 576
    iget-object v1, v0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->components:Landroidx/collection/MutableObjectList;

    .line 577
    .line 578
    iget-object v0, v0, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->components:Landroidx/collection/MutableObjectList;

    .line 579
    .line 580
    sget-object v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;->INSTANCE:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;

    .line 581
    .line 582
    invoke-virtual {v1, v4}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 583
    .line 584
    .line 585
    sget-object v1, Landroidx/compose/foundation/text/TextContextMenuItems;->Autofill:Landroidx/compose/foundation/text/TextContextMenuItems;

    .line 586
    .line 587
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    iget-wide v5, v1, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 592
    .line 593
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 594
    .line 595
    .line 596
    move-result v1

    .line 597
    if-nez v1, :cond_8

    .line 598
    .line 599
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getEditable()Z

    .line 600
    .line 601
    .line 602
    move-result v1

    .line 603
    if-eqz v1, :cond_8

    .line 604
    .line 605
    iget-object v1, v3, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 606
    .line 607
    instance-of v1, v1, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    .line 608
    .line 609
    if-nez v1, :cond_8

    .line 610
    .line 611
    iget-object v1, v3, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    .line 612
    .line 613
    if-eqz v1, :cond_8

    .line 614
    .line 615
    move v1, v14

    .line 616
    goto :goto_7

    .line 617
    :cond_8
    move v1, v12

    .line 618
    :goto_7
    new-instance v5, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;

    .line 619
    .line 620
    invoke-direct {v5, v3, v11, v14}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;I)V

    .line 621
    .line 622
    .line 623
    new-instance v6, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 624
    .line 625
    invoke-direct {v6, v9, v15, v5}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 629
    .line 630
    .line 631
    move-result-object v5

    .line 632
    new-instance v8, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    .line 633
    .line 634
    const/16 v14, 0xc

    .line 635
    .line 636
    invoke-direct {v8, v14, v6, v11}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 637
    .line 638
    .line 639
    if-eqz v1, :cond_9

    .line 640
    .line 641
    const v1, 0x1040003

    .line 642
    .line 643
    .line 644
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    new-instance v5, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 649
    .line 650
    sget-object v6, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuKeys;->CutKey:Ljava/lang/Object;

    .line 651
    .line 652
    const v12, 0x1010311

    .line 653
    .line 654
    .line 655
    invoke-direct {v5, v6, v1, v12, v8}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v0, v5}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 659
    .line 660
    .line 661
    :cond_9
    sget-object v1, Landroidx/compose/foundation/text/TextContextMenuItems;->Autofill:Landroidx/compose/foundation/text/TextContextMenuItems;

    .line 662
    .line 663
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    iget-wide v5, v1, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 668
    .line 669
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    if-nez v1, :cond_a

    .line 674
    .line 675
    iget-object v1, v3, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 676
    .line 677
    instance-of v1, v1, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    .line 678
    .line 679
    if-nez v1, :cond_a

    .line 680
    .line 681
    iget-object v1, v3, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    .line 682
    .line 683
    if-eqz v1, :cond_a

    .line 684
    .line 685
    const/4 v1, 0x1

    .line 686
    goto :goto_8

    .line 687
    :cond_a
    const/4 v1, 0x0

    .line 688
    :goto_8
    new-instance v5, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;

    .line 689
    .line 690
    invoke-direct {v5, v3, v11, v7}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;I)V

    .line 691
    .line 692
    .line 693
    new-instance v6, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 694
    .line 695
    invoke-direct {v6, v9, v15, v5}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 699
    .line 700
    .line 701
    move-result-object v5

    .line 702
    new-instance v8, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    .line 703
    .line 704
    invoke-direct {v8, v14, v6, v11}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 705
    .line 706
    .line 707
    if-eqz v1, :cond_b

    .line 708
    .line 709
    const v1, 0x1040001

    .line 710
    .line 711
    .line 712
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    new-instance v5, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 717
    .line 718
    sget-object v6, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuKeys;->CopyKey:Ljava/lang/Object;

    .line 719
    .line 720
    const v12, 0x1010312

    .line 721
    .line 722
    .line 723
    invoke-direct {v5, v6, v1, v12, v8}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v0, v5}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 727
    .line 728
    .line 729
    :cond_b
    sget-object v1, Landroidx/compose/foundation/text/TextContextMenuItems;->Autofill:Landroidx/compose/foundation/text/TextContextMenuItems;

    .line 730
    .line 731
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getEditable()Z

    .line 732
    .line 733
    .line 734
    move-result v1

    .line 735
    if-eqz v1, :cond_c

    .line 736
    .line 737
    iget-object v1, v3, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hasAvailableTextToPaste$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 738
    .line 739
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    check-cast v1, Ljava/lang/Boolean;

    .line 744
    .line 745
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 746
    .line 747
    .line 748
    move-result v1

    .line 749
    if-eqz v1, :cond_c

    .line 750
    .line 751
    iget-object v1, v3, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    .line 752
    .line 753
    if-eqz v1, :cond_c

    .line 754
    .line 755
    const/4 v1, 0x1

    .line 756
    goto :goto_9

    .line 757
    :cond_c
    const/4 v1, 0x0

    .line 758
    :goto_9
    new-instance v5, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;

    .line 759
    .line 760
    invoke-direct {v5, v3, v11, v10}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;I)V

    .line 761
    .line 762
    .line 763
    new-instance v6, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 764
    .line 765
    invoke-direct {v6, v9, v15, v5}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 769
    .line 770
    .line 771
    move-result-object v5

    .line 772
    new-instance v8, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    .line 773
    .line 774
    invoke-direct {v8, v14, v6, v11}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 775
    .line 776
    .line 777
    if-eqz v1, :cond_d

    .line 778
    .line 779
    const v1, 0x104000b

    .line 780
    .line 781
    .line 782
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v1

    .line 786
    new-instance v5, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 787
    .line 788
    sget-object v6, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuKeys;->PasteKey:Ljava/lang/Object;

    .line 789
    .line 790
    const v9, 0x1010313

    .line 791
    .line 792
    .line 793
    invoke-direct {v5, v6, v1, v9, v8}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 794
    .line 795
    .line 796
    invoke-virtual {v0, v5}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 797
    .line 798
    .line 799
    :cond_d
    sget-object v1, Landroidx/compose/foundation/text/TextContextMenuItems;->Autofill:Landroidx/compose/foundation/text/TextContextMenuItems;

    .line 800
    .line 801
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 802
    .line 803
    .line 804
    move-result-object v1

    .line 805
    iget-wide v5, v1, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 806
    .line 807
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    .line 808
    .line 809
    .line 810
    move-result v1

    .line 811
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 812
    .line 813
    .line 814
    move-result-object v5

    .line 815
    iget-object v5, v5, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 816
    .line 817
    iget-object v5, v5, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 818
    .line 819
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 820
    .line 821
    .line 822
    move-result v5

    .line 823
    if-eq v1, v5, :cond_e

    .line 824
    .line 825
    const/4 v1, 0x1

    .line 826
    goto :goto_a

    .line 827
    :cond_e
    const/4 v1, 0x0

    .line 828
    :goto_a
    new-instance v5, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda5;

    .line 829
    .line 830
    const/4 v6, 0x0

    .line 831
    invoke-direct {v5, v3, v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    .line 832
    .line 833
    .line 834
    new-instance v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda5;

    .line 835
    .line 836
    const/4 v8, 0x1

    .line 837
    invoke-direct {v6, v3, v8}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 841
    .line 842
    .line 843
    move-result-object v8

    .line 844
    new-instance v9, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    .line 845
    .line 846
    invoke-direct {v9, v14, v6, v5}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 847
    .line 848
    .line 849
    if-eqz v1, :cond_f

    .line 850
    .line 851
    const v1, 0x104000d

    .line 852
    .line 853
    .line 854
    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v1

    .line 858
    new-instance v5, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 859
    .line 860
    sget-object v6, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuKeys;->SelectAllKey:Ljava/lang/Object;

    .line 861
    .line 862
    const v8, 0x101037e

    .line 863
    .line 864
    .line 865
    invoke-direct {v5, v6, v1, v8, v9}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v0, v5}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 869
    .line 870
    .line 871
    :cond_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 872
    .line 873
    const/16 v5, 0x1a

    .line 874
    .line 875
    if-lt v1, v5, :cond_11

    .line 876
    .line 877
    sget-object v1, Landroidx/compose/foundation/text/TextContextMenuItems;->Autofill:Landroidx/compose/foundation/text/TextContextMenuItems;

    .line 878
    .line 879
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getEditable()Z

    .line 880
    .line 881
    .line 882
    move-result v5

    .line 883
    if-eqz v5, :cond_10

    .line 884
    .line 885
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 886
    .line 887
    .line 888
    move-result-object v5

    .line 889
    iget-wide v5, v5, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 890
    .line 891
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 892
    .line 893
    .line 894
    move-result v5

    .line 895
    if-eqz v5, :cond_10

    .line 896
    .line 897
    const/4 v12, 0x1

    .line 898
    goto :goto_b

    .line 899
    :cond_10
    const/4 v12, 0x0

    .line 900
    :goto_b
    new-instance v5, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda5;

    .line 901
    .line 902
    invoke-direct {v5, v3, v7}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    .line 903
    .line 904
    .line 905
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 906
    .line 907
    .line 908
    move-result-object v2

    .line 909
    new-instance v3, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    .line 910
    .line 911
    invoke-direct {v3, v14, v5, v11}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 912
    .line 913
    .line 914
    if-eqz v12, :cond_11

    .line 915
    .line 916
    iget-object v5, v1, Landroidx/compose/foundation/text/TextContextMenuItems;->key:Ljava/lang/Object;

    .line 917
    .line 918
    iget v6, v1, Landroidx/compose/foundation/text/TextContextMenuItems;->stringId:I

    .line 919
    .line 920
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 921
    .line 922
    .line 923
    move-result-object v2

    .line 924
    iget v1, v1, Landroidx/compose/foundation/text/TextContextMenuItems;->drawableId:I

    .line 925
    .line 926
    new-instance v6, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 927
    .line 928
    invoke-direct {v6, v5, v2, v1, v3}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v0, v6}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 932
    .line 933
    .line 934
    :cond_11
    invoke-virtual {v0, v4}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 935
    .line 936
    .line 937
    return-object v13

    .line 938
    :pswitch_11
    move-object v7, v3

    .line 939
    check-cast v7, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 940
    .line 941
    move-object v12, v15

    .line 942
    check-cast v12, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 943
    .line 944
    check-cast v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 945
    .line 946
    move-object/from16 v0, p1

    .line 947
    .line 948
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 949
    .line 950
    iget-wide v9, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 951
    .line 952
    iget-object v1, v7, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$flags:Ljava/lang/Object;

    .line 953
    .line 954
    check-cast v1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 955
    .line 956
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getEnabled()Z

    .line 957
    .line 958
    .line 959
    move-result v3

    .line 960
    if-eqz v3, :cond_14

    .line 961
    .line 962
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 963
    .line 964
    .line 965
    move-result-object v3

    .line 966
    iget-object v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 967
    .line 968
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 969
    .line 970
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 971
    .line 972
    .line 973
    move-result v3

    .line 974
    if-nez v3, :cond_12

    .line 975
    .line 976
    goto :goto_c

    .line 977
    :cond_12
    iget-object v3, v1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 978
    .line 979
    if-eqz v3, :cond_14

    .line 980
    .line 981
    invoke-virtual {v3}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 982
    .line 983
    .line 984
    move-result-object v3

    .line 985
    if-nez v3, :cond_13

    .line 986
    .line 987
    goto :goto_c

    .line 988
    :cond_13
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 989
    .line 990
    .line 991
    move-result-object v8

    .line 992
    const/4 v11, 0x0

    .line 993
    invoke-virtual/range {v7 .. v12}, Lcom/fsck/k9/mailstore/LocalFolder$12;->updateMouseSelection(Landroidx/compose/ui/text/input/TextFieldValue;JZLandroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;)J

    .line 994
    .line 995
    .line 996
    const/4 v12, 0x1

    .line 997
    goto :goto_d

    .line 998
    :cond_14
    :goto_c
    const/4 v12, 0x0

    .line 999
    :goto_d
    if-eqz v12, :cond_15

    .line 1000
    .line 1001
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 1002
    .line 1003
    .line 1004
    const/4 v8, 0x1

    .line 1005
    iput-boolean v8, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1006
    .line 1007
    :cond_15
    return-object v13

    .line 1008
    :pswitch_12
    check-cast v3, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 1009
    .line 1010
    check-cast v15, Landroid/content/Context;

    .line 1011
    .line 1012
    check-cast v2, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 1013
    .line 1014
    move-object/from16 v0, p1

    .line 1015
    .line 1016
    check-cast v0, Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    .line 1017
    .line 1018
    iget-object v1, v3, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;->components:Ljava/util/List;

    .line 1019
    .line 1020
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 1021
    .line 1022
    .line 1023
    move-result v3

    .line 1024
    const/4 v12, 0x0

    .line 1025
    :goto_e
    if-ge v12, v3, :cond_1a

    .line 1026
    .line 1027
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v4

    .line 1031
    check-cast v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;

    .line 1032
    .line 1033
    instance-of v5, v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 1034
    .line 1035
    if-eqz v5, :cond_17

    .line 1036
    .line 1037
    new-instance v5, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;

    .line 1038
    .line 1039
    check-cast v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 1040
    .line 1041
    const/16 v6, 0x8

    .line 1042
    .line 1043
    invoke-direct {v5, v6, v4}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 1044
    .line 1045
    .line 1046
    iget v6, v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;->leadingIcon:I

    .line 1047
    .line 1048
    if-nez v6, :cond_16

    .line 1049
    .line 1050
    move-object v7, v11

    .line 1051
    goto :goto_f

    .line 1052
    :cond_16
    new-instance v6, Landroidx/compose/material3/TooltipKt$animateTooltip$2;

    .line 1053
    .line 1054
    const/4 v8, 0x1

    .line 1055
    invoke-direct {v6, v8, v4}, Landroidx/compose/material3/TooltipKt$animateTooltip$2;-><init>(ILjava/lang/Object;)V

    .line 1056
    .line 1057
    .line 1058
    new-instance v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1059
    .line 1060
    const v9, -0x731428a5

    .line 1061
    .line 1062
    .line 1063
    invoke-direct {v7, v9, v6, v8}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 1064
    .line 1065
    .line 1066
    :goto_f
    new-instance v6, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 1067
    .line 1068
    const/16 v8, 0x12

    .line 1069
    .line 1070
    invoke-direct {v6, v8, v4, v2}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1071
    .line 1072
    .line 1073
    const/4 v4, 0x6

    .line 1074
    invoke-static {v0, v5, v7, v6, v4}, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->item$default(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;I)V

    .line 1075
    .line 1076
    .line 1077
    goto :goto_10

    .line 1078
    :cond_17
    instance-of v5, v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;

    .line 1079
    .line 1080
    if-eqz v5, :cond_18

    .line 1081
    .line 1082
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1083
    .line 1084
    const/16 v6, 0x1c

    .line 1085
    .line 1086
    if-lt v5, v6, :cond_19

    .line 1087
    .line 1088
    check-cast v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;

    .line 1089
    .line 1090
    invoke-static {v0, v15, v4}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->textClassificationItem(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Landroid/content/Context;Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuTextClassificationItem;)V

    .line 1091
    .line 1092
    .line 1093
    goto :goto_10

    .line 1094
    :cond_18
    instance-of v4, v4, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;

    .line 1095
    .line 1096
    if-eqz v4, :cond_19

    .line 1097
    .line 1098
    iget-object v4, v0, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->composables:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 1099
    .line 1100
    sget-object v5, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProviderKt;->lambda$-1455401925:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1101
    .line 1102
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 1103
    .line 1104
    .line 1105
    :cond_19
    :goto_10
    add-int/lit8 v12, v12, 0x1

    .line 1106
    .line 1107
    goto :goto_e

    .line 1108
    :cond_1a
    return-object v13

    .line 1109
    :pswitch_13
    check-cast v3, Landroidx/compose/foundation/text/KeyCommand;

    .line 1110
    .line 1111
    check-cast v15, Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 1112
    .line 1113
    check-cast v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 1114
    .line 1115
    move-object/from16 v0, p1

    .line 1116
    .line 1117
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 1118
    .line 1119
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 1120
    .line 1121
    .line 1122
    move-result v1

    .line 1123
    const/16 v3, 0x18

    .line 1124
    .line 1125
    const/4 v4, -0x1

    .line 1126
    packed-switch v1, :pswitch_data_1

    .line 1127
    .line 1128
    .line 1129
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1130
    .line 1131
    .line 1132
    goto/16 :goto_16

    .line 1133
    .line 1134
    :pswitch_14
    iget-object v0, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->undoManager:Landroidx/compose/foundation/text/UndoManager;

    .line 1135
    .line 1136
    if-eqz v0, :cond_1c

    .line 1137
    .line 1138
    iget-object v1, v0, Landroidx/compose/foundation/text/UndoManager;->redoStack:Landroidx/cardview/widget/CardView$1;

    .line 1139
    .line 1140
    if-eqz v1, :cond_1b

    .line 1141
    .line 1142
    iget-object v2, v1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 1143
    .line 1144
    check-cast v2, Landroidx/cardview/widget/CardView$1;

    .line 1145
    .line 1146
    iput-object v2, v0, Landroidx/compose/foundation/text/UndoManager;->redoStack:Landroidx/cardview/widget/CardView$1;

    .line 1147
    .line 1148
    iget-object v2, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1149
    .line 1150
    check-cast v2, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1151
    .line 1152
    iget-object v4, v0, Landroidx/compose/foundation/text/UndoManager;->undoStack:Landroidx/cardview/widget/CardView$1;

    .line 1153
    .line 1154
    new-instance v5, Landroidx/cardview/widget/CardView$1;

    .line 1155
    .line 1156
    const/4 v6, 0x0

    .line 1157
    invoke-direct {v5, v3, v4, v2, v6}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 1158
    .line 1159
    .line 1160
    iput-object v5, v0, Landroidx/compose/foundation/text/UndoManager;->undoStack:Landroidx/cardview/widget/CardView$1;

    .line 1161
    .line 1162
    iget v3, v0, Landroidx/compose/foundation/text/UndoManager;->storedCharacters:I

    .line 1163
    .line 1164
    iget-object v2, v2, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1165
    .line 1166
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1167
    .line 1168
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1169
    .line 1170
    .line 1171
    move-result v2

    .line 1172
    add-int/2addr v2, v3

    .line 1173
    iput v2, v0, Landroidx/compose/foundation/text/UndoManager;->storedCharacters:I

    .line 1174
    .line 1175
    iget-object v0, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1176
    .line 1177
    move-object v11, v0

    .line 1178
    check-cast v11, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1179
    .line 1180
    :cond_1b
    if-eqz v11, :cond_1c

    .line 1181
    .line 1182
    iget-object v0, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->onValueChange:Lkotlin/jvm/functions/Function1;

    .line 1183
    .line 1184
    invoke-interface {v0, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    .line 1186
    .line 1187
    :cond_1c
    :goto_11
    :pswitch_15
    move-object v11, v13

    .line 1188
    goto/16 :goto_16

    .line 1189
    .line 1190
    :pswitch_16
    iget-object v1, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->undoManager:Landroidx/compose/foundation/text/UndoManager;

    .line 1191
    .line 1192
    if-eqz v1, :cond_1d

    .line 1193
    .line 1194
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->currentValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1195
    .line 1196
    iget-object v4, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1197
    .line 1198
    iget-wide v5, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 1199
    .line 1200
    const/4 v0, 0x4

    .line 1201
    invoke-static {v2, v4, v5, v6, v0}, Landroidx/compose/ui/text/input/TextFieldValue;->copy-3r_uNRQ$default(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JI)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v0

    .line 1205
    invoke-virtual {v1, v0}, Landroidx/compose/foundation/text/UndoManager;->makeSnapshot(Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 1206
    .line 1207
    .line 1208
    :cond_1d
    iget-object v0, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->undoManager:Landroidx/compose/foundation/text/UndoManager;

    .line 1209
    .line 1210
    if-eqz v0, :cond_1c

    .line 1211
    .line 1212
    iget-object v1, v0, Landroidx/compose/foundation/text/UndoManager;->undoStack:Landroidx/cardview/widget/CardView$1;

    .line 1213
    .line 1214
    if-eqz v1, :cond_1e

    .line 1215
    .line 1216
    iget-object v2, v1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 1217
    .line 1218
    check-cast v2, Landroidx/cardview/widget/CardView$1;

    .line 1219
    .line 1220
    if-eqz v2, :cond_1e

    .line 1221
    .line 1222
    iput-object v2, v0, Landroidx/compose/foundation/text/UndoManager;->undoStack:Landroidx/cardview/widget/CardView$1;

    .line 1223
    .line 1224
    iget v4, v0, Landroidx/compose/foundation/text/UndoManager;->storedCharacters:I

    .line 1225
    .line 1226
    iget-object v5, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1227
    .line 1228
    check-cast v5, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1229
    .line 1230
    iget-object v5, v5, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1231
    .line 1232
    iget-object v5, v5, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1233
    .line 1234
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1235
    .line 1236
    .line 1237
    move-result v5

    .line 1238
    sub-int/2addr v4, v5

    .line 1239
    iput v4, v0, Landroidx/compose/foundation/text/UndoManager;->storedCharacters:I

    .line 1240
    .line 1241
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1242
    .line 1243
    check-cast v1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1244
    .line 1245
    iget-object v4, v0, Landroidx/compose/foundation/text/UndoManager;->redoStack:Landroidx/cardview/widget/CardView$1;

    .line 1246
    .line 1247
    new-instance v5, Landroidx/cardview/widget/CardView$1;

    .line 1248
    .line 1249
    const/4 v6, 0x0

    .line 1250
    invoke-direct {v5, v3, v4, v1, v6}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 1251
    .line 1252
    .line 1253
    iput-object v5, v0, Landroidx/compose/foundation/text/UndoManager;->redoStack:Landroidx/cardview/widget/CardView$1;

    .line 1254
    .line 1255
    iget-object v0, v2, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1256
    .line 1257
    move-object v11, v0

    .line 1258
    check-cast v11, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1259
    .line 1260
    :cond_1e
    if-eqz v11, :cond_1c

    .line 1261
    .line 1262
    iget-object v0, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->onValueChange:Lkotlin/jvm/functions/Function1;

    .line 1263
    .line 1264
    invoke-interface {v0, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    .line 1266
    .line 1267
    goto :goto_11

    .line 1268
    :pswitch_17
    iget-boolean v0, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->singleLine:Z

    .line 1269
    .line 1270
    if-nez v0, :cond_1f

    .line 1271
    .line 1272
    new-instance v0, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 1273
    .line 1274
    const-string v1, "\t"

    .line 1275
    .line 1276
    const/4 v8, 0x1

    .line 1277
    invoke-direct {v0, v1, v8}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    .line 1278
    .line 1279
    .line 1280
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v0

    .line 1284
    invoke-virtual {v15, v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->apply(Ljava/util/List;)V

    .line 1285
    .line 1286
    .line 1287
    goto :goto_11

    .line 1288
    :cond_1f
    const/4 v6, 0x0

    .line 1289
    iput-boolean v6, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1290
    .line 1291
    goto :goto_11

    .line 1292
    :pswitch_18
    const/4 v8, 0x1

    .line 1293
    iget-boolean v0, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->singleLine:Z

    .line 1294
    .line 1295
    if-nez v0, :cond_20

    .line 1296
    .line 1297
    new-instance v0, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 1298
    .line 1299
    const-string v1, "\n"

    .line 1300
    .line 1301
    invoke-direct {v0, v1, v8}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    .line 1302
    .line 1303
    .line 1304
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v0

    .line 1308
    invoke-virtual {v15, v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->apply(Ljava/util/List;)V

    .line 1309
    .line 1310
    .line 1311
    goto :goto_11

    .line 1312
    :cond_20
    iget-object v0, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 1313
    .line 1314
    iget-object v0, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->onImeActionPerformedWithResult:Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;

    .line 1315
    .line 1316
    iget v1, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->imeAction:I

    .line 1317
    .line 1318
    iget-object v0, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 1319
    .line 1320
    iget-object v0, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->keyboardActionRunner:Landroidx/core/view/MenuHostHelper;

    .line 1321
    .line 1322
    invoke-virtual {v0, v1}, Landroidx/core/view/MenuHostHelper;->runAction-KlQnJC8(I)Z

    .line 1323
    .line 1324
    .line 1325
    move-result v0

    .line 1326
    iput-boolean v0, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1327
    .line 1328
    goto/16 :goto_11

    .line 1329
    .line 1330
    :pswitch_19
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1331
    .line 1332
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1333
    .line 1334
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1335
    .line 1336
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1337
    .line 1338
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1339
    .line 1340
    .line 1341
    move-result v1

    .line 1342
    if-lez v1, :cond_1c

    .line 1343
    .line 1344
    iget-wide v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 1345
    .line 1346
    sget v3, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 1347
    .line 1348
    and-long/2addr v1, v5

    .line 1349
    long-to-int v1, v1

    .line 1350
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1351
    .line 1352
    .line 1353
    goto/16 :goto_11

    .line 1354
    .line 1355
    :pswitch_1a
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1356
    .line 1357
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1358
    .line 1359
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1360
    .line 1361
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1362
    .line 1363
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1364
    .line 1365
    .line 1366
    move-result v1

    .line 1367
    if-lez v1, :cond_22

    .line 1368
    .line 1369
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    .line 1370
    .line 1371
    .line 1372
    move-result v1

    .line 1373
    if-eqz v1, :cond_21

    .line 1374
    .line 1375
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineEnd()V

    .line 1376
    .line 1377
    .line 1378
    goto :goto_12

    .line 1379
    :cond_21
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineStart()V

    .line 1380
    .line 1381
    .line 1382
    :cond_22
    :goto_12
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1383
    .line 1384
    .line 1385
    goto/16 :goto_11

    .line 1386
    .line 1387
    :pswitch_1b
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1388
    .line 1389
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1390
    .line 1391
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1392
    .line 1393
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1394
    .line 1395
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1396
    .line 1397
    .line 1398
    move-result v1

    .line 1399
    if-lez v1, :cond_24

    .line 1400
    .line 1401
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    .line 1402
    .line 1403
    .line 1404
    move-result v1

    .line 1405
    if-eqz v1, :cond_23

    .line 1406
    .line 1407
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineStart()V

    .line 1408
    .line 1409
    .line 1410
    goto :goto_13

    .line 1411
    :cond_23
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineEnd()V

    .line 1412
    .line 1413
    .line 1414
    :cond_24
    :goto_13
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1415
    .line 1416
    .line 1417
    goto/16 :goto_11

    .line 1418
    .line 1419
    :pswitch_1c
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineEnd()V

    .line 1420
    .line 1421
    .line 1422
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1423
    .line 1424
    .line 1425
    goto/16 :goto_11

    .line 1426
    .line 1427
    :pswitch_1d
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineStart()V

    .line 1428
    .line 1429
    .line 1430
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1431
    .line 1432
    .line 1433
    goto/16 :goto_11

    .line 1434
    .line 1435
    :pswitch_1e
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorPrevByParagraph()V

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1439
    .line 1440
    .line 1441
    goto/16 :goto_11

    .line 1442
    .line 1443
    :pswitch_1f
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorNextByParagraph()V

    .line 1444
    .line 1445
    .line 1446
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1447
    .line 1448
    .line 1449
    goto/16 :goto_11

    .line 1450
    .line 1451
    :pswitch_20
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1452
    .line 1453
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1454
    .line 1455
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1456
    .line 1457
    iget-object v3, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1458
    .line 1459
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1460
    .line 1461
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1462
    .line 1463
    .line 1464
    move-result v3

    .line 1465
    if-lez v3, :cond_26

    .line 1466
    .line 1467
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    .line 1468
    .line 1469
    .line 1470
    move-result v3

    .line 1471
    if-eqz v3, :cond_25

    .line 1472
    .line 1473
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1474
    .line 1475
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1476
    .line 1477
    .line 1478
    move-result v1

    .line 1479
    if-lez v1, :cond_26

    .line 1480
    .line 1481
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getNextWordOffset()Ljava/lang/Integer;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v1

    .line 1485
    if-eqz v1, :cond_26

    .line 1486
    .line 1487
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1488
    .line 1489
    .line 1490
    move-result v1

    .line 1491
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1492
    .line 1493
    .line 1494
    goto :goto_14

    .line 1495
    :cond_25
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1496
    .line 1497
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1498
    .line 1499
    .line 1500
    move-result v1

    .line 1501
    if-lez v1, :cond_26

    .line 1502
    .line 1503
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getPreviousWordOffset()Ljava/lang/Integer;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v1

    .line 1507
    if-eqz v1, :cond_26

    .line 1508
    .line 1509
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1510
    .line 1511
    .line 1512
    move-result v1

    .line 1513
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1514
    .line 1515
    .line 1516
    :cond_26
    :goto_14
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1517
    .line 1518
    .line 1519
    goto/16 :goto_11

    .line 1520
    .line 1521
    :pswitch_21
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1522
    .line 1523
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1524
    .line 1525
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1526
    .line 1527
    iget-object v3, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1528
    .line 1529
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1530
    .line 1531
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1532
    .line 1533
    .line 1534
    move-result v3

    .line 1535
    if-lez v3, :cond_28

    .line 1536
    .line 1537
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    .line 1538
    .line 1539
    .line 1540
    move-result v3

    .line 1541
    if-eqz v3, :cond_27

    .line 1542
    .line 1543
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1544
    .line 1545
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1546
    .line 1547
    .line 1548
    move-result v1

    .line 1549
    if-lez v1, :cond_28

    .line 1550
    .line 1551
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getPreviousWordOffset()Ljava/lang/Integer;

    .line 1552
    .line 1553
    .line 1554
    move-result-object v1

    .line 1555
    if-eqz v1, :cond_28

    .line 1556
    .line 1557
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1558
    .line 1559
    .line 1560
    move-result v1

    .line 1561
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1562
    .line 1563
    .line 1564
    goto :goto_15

    .line 1565
    :cond_27
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1566
    .line 1567
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1568
    .line 1569
    .line 1570
    move-result v1

    .line 1571
    if-lez v1, :cond_28

    .line 1572
    .line 1573
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getNextWordOffset()Ljava/lang/Integer;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v1

    .line 1577
    if-eqz v1, :cond_28

    .line 1578
    .line 1579
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 1580
    .line 1581
    .line 1582
    move-result v1

    .line 1583
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1584
    .line 1585
    .line 1586
    :cond_28
    :goto_15
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1587
    .line 1588
    .line 1589
    goto/16 :goto_11

    .line 1590
    .line 1591
    :pswitch_22
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1592
    .line 1593
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1594
    .line 1595
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1596
    .line 1597
    iget-object v2, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1598
    .line 1599
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1600
    .line 1601
    .line 1602
    move-result v2

    .line 1603
    if-lez v2, :cond_29

    .line 1604
    .line 1605
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1606
    .line 1607
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1608
    .line 1609
    .line 1610
    move-result v1

    .line 1611
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1612
    .line 1613
    .line 1614
    :cond_29
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1615
    .line 1616
    .line 1617
    goto/16 :goto_11

    .line 1618
    .line 1619
    :pswitch_23
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1620
    .line 1621
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1622
    .line 1623
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1624
    .line 1625
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1626
    .line 1627
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1628
    .line 1629
    .line 1630
    move-result v1

    .line 1631
    if-lez v1, :cond_2a

    .line 1632
    .line 1633
    const/4 v6, 0x0

    .line 1634
    invoke-virtual {v0, v6, v6}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1635
    .line 1636
    .line 1637
    :cond_2a
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1638
    .line 1639
    .line 1640
    goto/16 :goto_11

    .line 1641
    .line 1642
    :pswitch_24
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1643
    .line 1644
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1645
    .line 1646
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1647
    .line 1648
    .line 1649
    move-result v1

    .line 1650
    if-lez v1, :cond_2b

    .line 1651
    .line 1652
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResultProxy:Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 1653
    .line 1654
    if-eqz v1, :cond_2b

    .line 1655
    .line 1656
    const/4 v8, 0x1

    .line 1657
    invoke-virtual {v0, v1, v8}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->jumpByPagesOffset(Landroidx/compose/foundation/text/TextLayoutResultProxy;I)I

    .line 1658
    .line 1659
    .line 1660
    move-result v1

    .line 1661
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1662
    .line 1663
    .line 1664
    :cond_2b
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1665
    .line 1666
    .line 1667
    goto/16 :goto_11

    .line 1668
    .line 1669
    :pswitch_25
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1670
    .line 1671
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1672
    .line 1673
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1674
    .line 1675
    .line 1676
    move-result v1

    .line 1677
    if-lez v1, :cond_2c

    .line 1678
    .line 1679
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResultProxy:Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 1680
    .line 1681
    if-eqz v1, :cond_2c

    .line 1682
    .line 1683
    invoke-virtual {v0, v1, v4}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->jumpByPagesOffset(Landroidx/compose/foundation/text/TextLayoutResultProxy;I)I

    .line 1684
    .line 1685
    .line 1686
    move-result v1

    .line 1687
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1688
    .line 1689
    .line 1690
    :cond_2c
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1691
    .line 1692
    .line 1693
    goto/16 :goto_11

    .line 1694
    .line 1695
    :pswitch_26
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1696
    .line 1697
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1698
    .line 1699
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1700
    .line 1701
    .line 1702
    move-result v1

    .line 1703
    if-lez v1, :cond_2d

    .line 1704
    .line 1705
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 1706
    .line 1707
    if-eqz v1, :cond_2d

    .line 1708
    .line 1709
    const/4 v8, 0x1

    .line 1710
    invoke-virtual {v0, v1, v8}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    .line 1711
    .line 1712
    .line 1713
    move-result v1

    .line 1714
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1715
    .line 1716
    .line 1717
    :cond_2d
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1718
    .line 1719
    .line 1720
    goto/16 :goto_11

    .line 1721
    .line 1722
    :pswitch_27
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1723
    .line 1724
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1725
    .line 1726
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1727
    .line 1728
    .line 1729
    move-result v1

    .line 1730
    if-lez v1, :cond_2e

    .line 1731
    .line 1732
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 1733
    .line 1734
    if-eqz v1, :cond_2e

    .line 1735
    .line 1736
    invoke-virtual {v0, v1, v4}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    .line 1737
    .line 1738
    .line 1739
    move-result v1

    .line 1740
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1741
    .line 1742
    .line 1743
    :cond_2e
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1744
    .line 1745
    .line 1746
    goto/16 :goto_11

    .line 1747
    .line 1748
    :pswitch_28
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorRight()V

    .line 1749
    .line 1750
    .line 1751
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1752
    .line 1753
    .line 1754
    goto/16 :goto_11

    .line 1755
    .line 1756
    :pswitch_29
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorLeft()V

    .line 1757
    .line 1758
    .line 1759
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()V

    .line 1760
    .line 1761
    .line 1762
    goto/16 :goto_11

    .line 1763
    .line 1764
    :pswitch_2a
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1765
    .line 1766
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1767
    .line 1768
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1769
    .line 1770
    iget-object v2, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1771
    .line 1772
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1773
    .line 1774
    .line 1775
    move-result v2

    .line 1776
    if-lez v2, :cond_1c

    .line 1777
    .line 1778
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1779
    .line 1780
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1781
    .line 1782
    .line 1783
    move-result v1

    .line 1784
    const/4 v6, 0x0

    .line 1785
    invoke-virtual {v0, v6, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1786
    .line 1787
    .line 1788
    goto/16 :goto_11

    .line 1789
    .line 1790
    :pswitch_2b
    new-instance v1, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 1791
    .line 1792
    invoke-direct {v1, v3}, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 1793
    .line 1794
    .line 1795
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->deleteIfSelectedOr(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 1796
    .line 1797
    .line 1798
    move-result-object v0

    .line 1799
    if-eqz v0, :cond_1c

    .line 1800
    .line 1801
    invoke-virtual {v15, v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->apply(Ljava/util/List;)V

    .line 1802
    .line 1803
    .line 1804
    goto/16 :goto_11

    .line 1805
    .line 1806
    :pswitch_2c
    new-instance v1, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 1807
    .line 1808
    invoke-direct {v1, v8}, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 1809
    .line 1810
    .line 1811
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->deleteIfSelectedOr(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v0

    .line 1815
    if-eqz v0, :cond_1c

    .line 1816
    .line 1817
    invoke-virtual {v15, v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->apply(Ljava/util/List;)V

    .line 1818
    .line 1819
    .line 1820
    goto/16 :goto_11

    .line 1821
    .line 1822
    :pswitch_2d
    new-instance v1, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 1823
    .line 1824
    const/16 v2, 0x16

    .line 1825
    .line 1826
    invoke-direct {v1, v2}, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 1827
    .line 1828
    .line 1829
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->deleteIfSelectedOr(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 1830
    .line 1831
    .line 1832
    move-result-object v0

    .line 1833
    if-eqz v0, :cond_1c

    .line 1834
    .line 1835
    invoke-virtual {v15, v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->apply(Ljava/util/List;)V

    .line 1836
    .line 1837
    .line 1838
    goto/16 :goto_11

    .line 1839
    .line 1840
    :pswitch_2e
    new-instance v1, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 1841
    .line 1842
    const/16 v2, 0x15

    .line 1843
    .line 1844
    invoke-direct {v1, v2}, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 1845
    .line 1846
    .line 1847
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->deleteIfSelectedOr(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 1848
    .line 1849
    .line 1850
    move-result-object v0

    .line 1851
    if-eqz v0, :cond_1c

    .line 1852
    .line 1853
    invoke-virtual {v15, v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->apply(Ljava/util/List;)V

    .line 1854
    .line 1855
    .line 1856
    goto/16 :goto_11

    .line 1857
    .line 1858
    :pswitch_2f
    new-instance v1, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 1859
    .line 1860
    invoke-direct {v1, v9}, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 1861
    .line 1862
    .line 1863
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->deleteIfSelectedOr(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 1864
    .line 1865
    .line 1866
    move-result-object v0

    .line 1867
    if-eqz v0, :cond_1c

    .line 1868
    .line 1869
    invoke-virtual {v15, v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->apply(Ljava/util/List;)V

    .line 1870
    .line 1871
    .line 1872
    goto/16 :goto_11

    .line 1873
    .line 1874
    :pswitch_30
    new-instance v1, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 1875
    .line 1876
    const/16 v2, 0x13

    .line 1877
    .line 1878
    invoke-direct {v1, v2}, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 1879
    .line 1880
    .line 1881
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->deleteIfSelectedOr(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    .line 1882
    .line 1883
    .line 1884
    move-result-object v0

    .line 1885
    if-eqz v0, :cond_1c

    .line 1886
    .line 1887
    invoke-virtual {v15, v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->apply(Ljava/util/List;)V

    .line 1888
    .line 1889
    .line 1890
    goto/16 :goto_11

    .line 1891
    .line 1892
    :pswitch_31
    iget-object v0, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->selectionManager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1893
    .line 1894
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->cut$foundation()V

    .line 1895
    .line 1896
    .line 1897
    goto/16 :goto_11

    .line 1898
    .line 1899
    :pswitch_32
    iget-object v0, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->selectionManager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1900
    .line 1901
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->paste$foundation()V

    .line 1902
    .line 1903
    .line 1904
    goto/16 :goto_11

    .line 1905
    .line 1906
    :pswitch_33
    iget-object v0, v15, Landroidx/compose/foundation/text/TextFieldKeyInput;->selectionManager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1907
    .line 1908
    const/4 v6, 0x0

    .line 1909
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->copy$foundation(Z)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1910
    .line 1911
    .line 1912
    goto/16 :goto_11

    .line 1913
    .line 1914
    :pswitch_34
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1915
    .line 1916
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1917
    .line 1918
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1919
    .line 1920
    iget-object v2, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1921
    .line 1922
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1923
    .line 1924
    .line 1925
    move-result v2

    .line 1926
    if-lez v2, :cond_1c

    .line 1927
    .line 1928
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1929
    .line 1930
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1931
    .line 1932
    .line 1933
    move-result v1

    .line 1934
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1935
    .line 1936
    .line 1937
    goto/16 :goto_11

    .line 1938
    .line 1939
    :pswitch_35
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 1940
    .line 1941
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 1942
    .line 1943
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1944
    .line 1945
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1946
    .line 1947
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1948
    .line 1949
    .line 1950
    move-result v1

    .line 1951
    if-lez v1, :cond_1c

    .line 1952
    .line 1953
    const/4 v6, 0x0

    .line 1954
    invoke-virtual {v0, v6, v6}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1955
    .line 1956
    .line 1957
    goto/16 :goto_11

    .line 1958
    .line 1959
    :pswitch_36
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1960
    .line 1961
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1962
    .line 1963
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1964
    .line 1965
    .line 1966
    move-result v1

    .line 1967
    if-lez v1, :cond_1c

    .line 1968
    .line 1969
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResultProxy:Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 1970
    .line 1971
    if-eqz v1, :cond_1c

    .line 1972
    .line 1973
    const/4 v8, 0x1

    .line 1974
    invoke-virtual {v0, v1, v8}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->jumpByPagesOffset(Landroidx/compose/foundation/text/TextLayoutResultProxy;I)I

    .line 1975
    .line 1976
    .line 1977
    move-result v1

    .line 1978
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 1979
    .line 1980
    .line 1981
    goto/16 :goto_11

    .line 1982
    .line 1983
    :pswitch_37
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1984
    .line 1985
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1986
    .line 1987
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1988
    .line 1989
    .line 1990
    move-result v1

    .line 1991
    if-lez v1, :cond_1c

    .line 1992
    .line 1993
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResultProxy:Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 1994
    .line 1995
    if-eqz v1, :cond_1c

    .line 1996
    .line 1997
    invoke-virtual {v0, v1, v4}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->jumpByPagesOffset(Landroidx/compose/foundation/text/TextLayoutResultProxy;I)I

    .line 1998
    .line 1999
    .line 2000
    move-result v1

    .line 2001
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2002
    .line 2003
    .line 2004
    goto/16 :goto_11

    .line 2005
    .line 2006
    :pswitch_38
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2007
    .line 2008
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2009
    .line 2010
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2011
    .line 2012
    .line 2013
    move-result v1

    .line 2014
    if-lez v1, :cond_1c

    .line 2015
    .line 2016
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 2017
    .line 2018
    if-eqz v1, :cond_1c

    .line 2019
    .line 2020
    const/4 v8, 0x1

    .line 2021
    invoke-virtual {v0, v1, v8}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    .line 2022
    .line 2023
    .line 2024
    move-result v1

    .line 2025
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2026
    .line 2027
    .line 2028
    goto/16 :goto_11

    .line 2029
    .line 2030
    :pswitch_39
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2031
    .line 2032
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2033
    .line 2034
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2035
    .line 2036
    .line 2037
    move-result v1

    .line 2038
    if-lez v1, :cond_1c

    .line 2039
    .line 2040
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->layoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 2041
    .line 2042
    if-eqz v1, :cond_1c

    .line 2043
    .line 2044
    invoke-virtual {v0, v1, v4}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->jumpByLinesOffset(Landroidx/compose/ui/text/TextLayoutResult;I)I

    .line 2045
    .line 2046
    .line 2047
    move-result v1

    .line 2048
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2049
    .line 2050
    .line 2051
    goto/16 :goto_11

    .line 2052
    .line 2053
    :pswitch_3a
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 2054
    .line 2055
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 2056
    .line 2057
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2058
    .line 2059
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2060
    .line 2061
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2062
    .line 2063
    .line 2064
    move-result v1

    .line 2065
    if-lez v1, :cond_1c

    .line 2066
    .line 2067
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    .line 2068
    .line 2069
    .line 2070
    move-result v1

    .line 2071
    if-eqz v1, :cond_2f

    .line 2072
    .line 2073
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineEnd()V

    .line 2074
    .line 2075
    .line 2076
    goto/16 :goto_11

    .line 2077
    .line 2078
    :cond_2f
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineStart()V

    .line 2079
    .line 2080
    .line 2081
    goto/16 :goto_11

    .line 2082
    .line 2083
    :pswitch_3b
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 2084
    .line 2085
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 2086
    .line 2087
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2088
    .line 2089
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2090
    .line 2091
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2092
    .line 2093
    .line 2094
    move-result v1

    .line 2095
    if-lez v1, :cond_1c

    .line 2096
    .line 2097
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    .line 2098
    .line 2099
    .line 2100
    move-result v1

    .line 2101
    if-eqz v1, :cond_30

    .line 2102
    .line 2103
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineStart()V

    .line 2104
    .line 2105
    .line 2106
    goto/16 :goto_11

    .line 2107
    .line 2108
    :cond_30
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineEnd()V

    .line 2109
    .line 2110
    .line 2111
    goto/16 :goto_11

    .line 2112
    .line 2113
    :pswitch_3c
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineEnd()V

    .line 2114
    .line 2115
    .line 2116
    goto/16 :goto_11

    .line 2117
    .line 2118
    :pswitch_3d
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineStart()V

    .line 2119
    .line 2120
    .line 2121
    goto/16 :goto_11

    .line 2122
    .line 2123
    :pswitch_3e
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorPrevByParagraph()V

    .line 2124
    .line 2125
    .line 2126
    goto/16 :goto_11

    .line 2127
    .line 2128
    :pswitch_3f
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorNextByParagraph()V

    .line 2129
    .line 2130
    .line 2131
    goto/16 :goto_11

    .line 2132
    .line 2133
    :pswitch_40
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 2134
    .line 2135
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 2136
    .line 2137
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2138
    .line 2139
    iget-object v3, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2140
    .line 2141
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2142
    .line 2143
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 2144
    .line 2145
    .line 2146
    move-result v3

    .line 2147
    if-lez v3, :cond_1c

    .line 2148
    .line 2149
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    .line 2150
    .line 2151
    .line 2152
    move-result v3

    .line 2153
    if-eqz v3, :cond_31

    .line 2154
    .line 2155
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 2156
    .line 2157
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 2158
    .line 2159
    .line 2160
    move-result v1

    .line 2161
    if-lez v1, :cond_1c

    .line 2162
    .line 2163
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getPreviousWordOffset()Ljava/lang/Integer;

    .line 2164
    .line 2165
    .line 2166
    move-result-object v1

    .line 2167
    if-eqz v1, :cond_1c

    .line 2168
    .line 2169
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 2170
    .line 2171
    .line 2172
    move-result v1

    .line 2173
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2174
    .line 2175
    .line 2176
    goto/16 :goto_11

    .line 2177
    .line 2178
    :cond_31
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 2179
    .line 2180
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 2181
    .line 2182
    .line 2183
    move-result v1

    .line 2184
    if-lez v1, :cond_1c

    .line 2185
    .line 2186
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getNextWordOffset()Ljava/lang/Integer;

    .line 2187
    .line 2188
    .line 2189
    move-result-object v1

    .line 2190
    if-eqz v1, :cond_1c

    .line 2191
    .line 2192
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 2193
    .line 2194
    .line 2195
    move-result v1

    .line 2196
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2197
    .line 2198
    .line 2199
    goto/16 :goto_11

    .line 2200
    .line 2201
    :pswitch_41
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 2202
    .line 2203
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 2204
    .line 2205
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2206
    .line 2207
    iget-object v3, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2208
    .line 2209
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2210
    .line 2211
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 2212
    .line 2213
    .line 2214
    move-result v3

    .line 2215
    if-lez v3, :cond_1c

    .line 2216
    .line 2217
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    .line 2218
    .line 2219
    .line 2220
    move-result v3

    .line 2221
    if-eqz v3, :cond_32

    .line 2222
    .line 2223
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 2224
    .line 2225
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 2226
    .line 2227
    .line 2228
    move-result v1

    .line 2229
    if-lez v1, :cond_1c

    .line 2230
    .line 2231
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getNextWordOffset()Ljava/lang/Integer;

    .line 2232
    .line 2233
    .line 2234
    move-result-object v1

    .line 2235
    if-eqz v1, :cond_1c

    .line 2236
    .line 2237
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 2238
    .line 2239
    .line 2240
    move-result v1

    .line 2241
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2242
    .line 2243
    .line 2244
    goto/16 :goto_11

    .line 2245
    .line 2246
    :cond_32
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 2247
    .line 2248
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 2249
    .line 2250
    .line 2251
    move-result v1

    .line 2252
    if-lez v1, :cond_1c

    .line 2253
    .line 2254
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getPreviousWordOffset()Ljava/lang/Integer;

    .line 2255
    .line 2256
    .line 2257
    move-result-object v1

    .line 2258
    if-eqz v1, :cond_1c

    .line 2259
    .line 2260
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 2261
    .line 2262
    .line 2263
    move-result v1

    .line 2264
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2265
    .line 2266
    .line 2267
    goto/16 :goto_11

    .line 2268
    .line 2269
    :pswitch_42
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 2270
    .line 2271
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 2272
    .line 2273
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2274
    .line 2275
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2276
    .line 2277
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2278
    .line 2279
    .line 2280
    move-result v1

    .line 2281
    if-lez v1, :cond_1c

    .line 2282
    .line 2283
    iget-wide v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 2284
    .line 2285
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 2286
    .line 2287
    .line 2288
    move-result v1

    .line 2289
    if-eqz v1, :cond_33

    .line 2290
    .line 2291
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorRight()V

    .line 2292
    .line 2293
    .line 2294
    goto/16 :goto_11

    .line 2295
    .line 2296
    :cond_33
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    .line 2297
    .line 2298
    .line 2299
    move-result v1

    .line 2300
    iget-wide v2, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 2301
    .line 2302
    if-eqz v1, :cond_34

    .line 2303
    .line 2304
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 2305
    .line 2306
    .line 2307
    move-result v1

    .line 2308
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2309
    .line 2310
    .line 2311
    goto/16 :goto_11

    .line 2312
    .line 2313
    :cond_34
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 2314
    .line 2315
    .line 2316
    move-result v1

    .line 2317
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2318
    .line 2319
    .line 2320
    goto/16 :goto_11

    .line 2321
    .line 2322
    :pswitch_43
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->state:Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;

    .line 2323
    .line 2324
    iput-object v11, v1, Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;->cachedX:Ljava/lang/Float;

    .line 2325
    .line 2326
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2327
    .line 2328
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2329
    .line 2330
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2331
    .line 2332
    .line 2333
    move-result v1

    .line 2334
    if-lez v1, :cond_1c

    .line 2335
    .line 2336
    iget-wide v1, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 2337
    .line 2338
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 2339
    .line 2340
    .line 2341
    move-result v1

    .line 2342
    if-eqz v1, :cond_35

    .line 2343
    .line 2344
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorLeft()V

    .line 2345
    .line 2346
    .line 2347
    goto/16 :goto_11

    .line 2348
    .line 2349
    :cond_35
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->isLtr()Z

    .line 2350
    .line 2351
    .line 2352
    move-result v1

    .line 2353
    iget-wide v2, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 2354
    .line 2355
    if-eqz v1, :cond_36

    .line 2356
    .line 2357
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 2358
    .line 2359
    .line 2360
    move-result v1

    .line 2361
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2362
    .line 2363
    .line 2364
    goto/16 :goto_11

    .line 2365
    .line 2366
    :cond_36
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 2367
    .line 2368
    .line 2369
    move-result v1

    .line 2370
    invoke-virtual {v0, v1, v1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->setSelection(II)V

    .line 2371
    .line 2372
    .line 2373
    goto/16 :goto_11

    .line 2374
    .line 2375
    :goto_16
    return-object v11

    .line 2376
    :pswitch_44
    check-cast v3, Landroidx/compose/ui/platform/WeakCache;

    .line 2377
    .line 2378
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 2379
    .line 2380
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2381
    .line 2382
    move-object/from16 v0, p1

    .line 2383
    .line 2384
    check-cast v0, Ljava/util/List;

    .line 2385
    .line 2386
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2387
    .line 2388
    check-cast v1, Landroidx/compose/ui/text/input/TextInputSession;

    .line 2389
    .line 2390
    invoke-virtual {v3, v0}, Landroidx/compose/ui/platform/WeakCache;->apply(Ljava/util/List;)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 2391
    .line 2392
    .line 2393
    move-result-object v0

    .line 2394
    if-eqz v1, :cond_37

    .line 2395
    .line 2396
    invoke-virtual {v1, v11, v0}, Landroidx/compose/ui/text/input/TextInputSession;->updateState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 2397
    .line 2398
    .line 2399
    :cond_37
    invoke-interface {v15, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2400
    .line 2401
    .line 2402
    return-object v13

    .line 2403
    :pswitch_45
    check-cast v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2404
    .line 2405
    check-cast v15, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 2406
    .line 2407
    check-cast v2, Landroidx/compose/ui/text/SpanStyle;

    .line 2408
    .line 2409
    move-object/from16 v0, p1

    .line 2410
    .line 2411
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 2412
    .line 2413
    iget-boolean v1, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2414
    .line 2415
    if-eqz v1, :cond_39

    .line 2416
    .line 2417
    iget-object v1, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 2418
    .line 2419
    iget v4, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 2420
    .line 2421
    iget v5, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 2422
    .line 2423
    instance-of v1, v1, Landroidx/compose/ui/text/SpanStyle;

    .line 2424
    .line 2425
    if-eqz v1, :cond_39

    .line 2426
    .line 2427
    iget v1, v15, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 2428
    .line 2429
    if-ne v5, v1, :cond_39

    .line 2430
    .line 2431
    iget v1, v15, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 2432
    .line 2433
    if-ne v4, v1, :cond_39

    .line 2434
    .line 2435
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 2436
    .line 2437
    if-nez v2, :cond_38

    .line 2438
    .line 2439
    new-instance v16, Landroidx/compose/ui/text/SpanStyle;

    .line 2440
    .line 2441
    const/16 v34, 0x0

    .line 2442
    .line 2443
    const v35, 0xffff

    .line 2444
    .line 2445
    .line 2446
    const-wide/16 v17, 0x0

    .line 2447
    .line 2448
    const-wide/16 v19, 0x0

    .line 2449
    .line 2450
    const/16 v21, 0x0

    .line 2451
    .line 2452
    const/16 v22, 0x0

    .line 2453
    .line 2454
    const/16 v23, 0x0

    .line 2455
    .line 2456
    const/16 v24, 0x0

    .line 2457
    .line 2458
    const/16 v25, 0x0

    .line 2459
    .line 2460
    const-wide/16 v26, 0x0

    .line 2461
    .line 2462
    const/16 v28, 0x0

    .line 2463
    .line 2464
    const/16 v29, 0x0

    .line 2465
    .line 2466
    const/16 v30, 0x0

    .line 2467
    .line 2468
    const-wide/16 v31, 0x0

    .line 2469
    .line 2470
    const/16 v33, 0x0

    .line 2471
    .line 2472
    invoke-direct/range {v16 .. v35}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 2473
    .line 2474
    .line 2475
    move-object/from16 v2, v16

    .line 2476
    .line 2477
    :cond_38
    invoke-direct {v1, v5, v4, v2}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 2478
    .line 2479
    .line 2480
    goto :goto_17

    .line 2481
    :cond_39
    move-object v1, v0

    .line 2482
    :goto_17
    invoke-virtual {v15, v0}, Landroidx/compose/ui/text/AnnotatedString$Range;->equals(Ljava/lang/Object;)Z

    .line 2483
    .line 2484
    .line 2485
    move-result v0

    .line 2486
    iput-boolean v0, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2487
    .line 2488
    return-object v1

    .line 2489
    :pswitch_46
    check-cast v3, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 2490
    .line 2491
    check-cast v15, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 2492
    .line 2493
    check-cast v2, Landroidx/compose/ui/text/input/OffsetMapping;

    .line 2494
    .line 2495
    move-object/from16 v0, p1

    .line 2496
    .line 2497
    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 2498
    .line 2499
    invoke-virtual {v3}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 2500
    .line 2501
    .line 2502
    move-result-object v1

    .line 2503
    if-eqz v1, :cond_49

    .line 2504
    .line 2505
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    .line 2506
    .line 2507
    .line 2508
    move-result-object v0

    .line 2509
    invoke-virtual {v0}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 2510
    .line 2511
    .line 2512
    move-result-object v4

    .line 2513
    iget-object v0, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->selectionPreviewHighlightRange$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2514
    .line 2515
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 2516
    .line 2517
    .line 2518
    move-result-object v0

    .line 2519
    check-cast v0, Landroidx/compose/ui/text/TextRange;

    .line 2520
    .line 2521
    iget-wide v7, v0, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 2522
    .line 2523
    iget-object v0, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->deletionPreviewHighlightRange$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2524
    .line 2525
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 2526
    .line 2527
    .line 2528
    move-result-object v0

    .line 2529
    check-cast v0, Landroidx/compose/ui/text/TextRange;

    .line 2530
    .line 2531
    move-wide/from16 v20, v5

    .line 2532
    .line 2533
    iget-wide v5, v0, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 2534
    .line 2535
    iget-object v0, v1, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 2536
    .line 2537
    iget-object v1, v0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 2538
    .line 2539
    iget-object v9, v0, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 2540
    .line 2541
    iget-object v12, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->highlightPaint:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 2542
    .line 2543
    iget-wide v10, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->selectionBackgroundColor:J

    .line 2544
    .line 2545
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 2546
    .line 2547
    .line 2548
    move-result v3

    .line 2549
    if-nez v3, :cond_3a

    .line 2550
    .line 2551
    invoke-virtual {v12, v10, v11}, Landroidx/compose/ui/graphics/AndroidPaint;->setColor-8_81llA(J)V

    .line 2552
    .line 2553
    .line 2554
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 2555
    .line 2556
    .line 2557
    move-result v3

    .line 2558
    invoke-interface {v2, v3}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 2559
    .line 2560
    .line 2561
    move-result v3

    .line 2562
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 2563
    .line 2564
    .line 2565
    move-result v5

    .line 2566
    invoke-interface {v2, v5}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 2567
    .line 2568
    .line 2569
    move-result v2

    .line 2570
    if-eq v3, v2, :cond_3e

    .line 2571
    .line 2572
    invoke-virtual {v0, v3, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getPathForRange(II)Landroidx/compose/ui/graphics/AndroidPath;

    .line 2573
    .line 2574
    .line 2575
    move-result-object v2

    .line 2576
    invoke-interface {v4, v2, v12}, Landroidx/compose/ui/graphics/Canvas;->drawPath(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/AndroidPaint;)V

    .line 2577
    .line 2578
    .line 2579
    goto/16 :goto_1a

    .line 2580
    .line 2581
    :cond_3a
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 2582
    .line 2583
    .line 2584
    move-result v3

    .line 2585
    if-nez v3, :cond_3d

    .line 2586
    .line 2587
    iget-object v3, v9, Landroidx/compose/ui/text/TextLayoutInput;->style:Landroidx/compose/ui/text/TextStyle;

    .line 2588
    .line 2589
    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    .line 2590
    .line 2591
    .line 2592
    move-result-wide v7

    .line 2593
    new-instance v3, Landroidx/compose/ui/graphics/Color;

    .line 2594
    .line 2595
    invoke-direct {v3, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 2596
    .line 2597
    .line 2598
    const-wide/16 v10, 0x10

    .line 2599
    .line 2600
    cmp-long v7, v7, v10

    .line 2601
    .line 2602
    if-nez v7, :cond_3b

    .line 2603
    .line 2604
    const/4 v11, 0x0

    .line 2605
    goto :goto_18

    .line 2606
    :cond_3b
    move-object v11, v3

    .line 2607
    :goto_18
    if-eqz v11, :cond_3c

    .line 2608
    .line 2609
    iget-wide v7, v11, Landroidx/compose/ui/graphics/Color;->value:J

    .line 2610
    .line 2611
    goto :goto_19

    .line 2612
    :cond_3c
    sget-wide v7, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 2613
    .line 2614
    :goto_19
    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 2615
    .line 2616
    .line 2617
    move-result v3

    .line 2618
    const v10, 0x3e4ccccd    # 0.2f

    .line 2619
    .line 2620
    .line 2621
    mul-float/2addr v3, v10

    .line 2622
    invoke-static {v3, v7, v8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 2623
    .line 2624
    .line 2625
    move-result-wide v7

    .line 2626
    invoke-virtual {v12, v7, v8}, Landroidx/compose/ui/graphics/AndroidPaint;->setColor-8_81llA(J)V

    .line 2627
    .line 2628
    .line 2629
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 2630
    .line 2631
    .line 2632
    move-result v3

    .line 2633
    invoke-interface {v2, v3}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 2634
    .line 2635
    .line 2636
    move-result v3

    .line 2637
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 2638
    .line 2639
    .line 2640
    move-result v5

    .line 2641
    invoke-interface {v2, v5}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 2642
    .line 2643
    .line 2644
    move-result v2

    .line 2645
    if-eq v3, v2, :cond_3e

    .line 2646
    .line 2647
    invoke-virtual {v0, v3, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getPathForRange(II)Landroidx/compose/ui/graphics/AndroidPath;

    .line 2648
    .line 2649
    .line 2650
    move-result-object v2

    .line 2651
    invoke-interface {v4, v2, v12}, Landroidx/compose/ui/graphics/Canvas;->drawPath(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/AndroidPaint;)V

    .line 2652
    .line 2653
    .line 2654
    goto :goto_1a

    .line 2655
    :cond_3d
    iget-wide v5, v15, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 2656
    .line 2657
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 2658
    .line 2659
    .line 2660
    move-result v3

    .line 2661
    if-nez v3, :cond_3e

    .line 2662
    .line 2663
    invoke-virtual {v12, v10, v11}, Landroidx/compose/ui/graphics/AndroidPaint;->setColor-8_81llA(J)V

    .line 2664
    .line 2665
    .line 2666
    iget-wide v5, v15, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 2667
    .line 2668
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 2669
    .line 2670
    .line 2671
    move-result v3

    .line 2672
    invoke-interface {v2, v3}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 2673
    .line 2674
    .line 2675
    move-result v3

    .line 2676
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 2677
    .line 2678
    .line 2679
    move-result v5

    .line 2680
    invoke-interface {v2, v5}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 2681
    .line 2682
    .line 2683
    move-result v2

    .line 2684
    if-eq v3, v2, :cond_3e

    .line 2685
    .line 2686
    invoke-virtual {v0, v3, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getPathForRange(II)Landroidx/compose/ui/graphics/AndroidPath;

    .line 2687
    .line 2688
    .line 2689
    move-result-object v2

    .line 2690
    invoke-interface {v4, v2, v12}, Landroidx/compose/ui/graphics/Canvas;->drawPath(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/AndroidPaint;)V

    .line 2691
    .line 2692
    .line 2693
    :cond_3e
    :goto_1a
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutResult;->getHasVisualOverflow()Z

    .line 2694
    .line 2695
    .line 2696
    move-result v2

    .line 2697
    if-eqz v2, :cond_40

    .line 2698
    .line 2699
    iget v2, v9, Landroidx/compose/ui/text/TextLayoutInput;->overflow:I

    .line 2700
    .line 2701
    const/4 v14, 0x3

    .line 2702
    if-ne v2, v14, :cond_3f

    .line 2703
    .line 2704
    goto :goto_1b

    .line 2705
    :cond_3f
    const/4 v12, 0x1

    .line 2706
    goto :goto_1c

    .line 2707
    :cond_40
    :goto_1b
    const/4 v12, 0x0

    .line 2708
    :goto_1c
    if-eqz v12, :cond_41

    .line 2709
    .line 2710
    iget-wide v2, v0, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    .line 2711
    .line 2712
    shr-long v5, v2, v17

    .line 2713
    .line 2714
    long-to-int v0, v5

    .line 2715
    int-to-float v0, v0

    .line 2716
    and-long v2, v2, v20

    .line 2717
    .line 2718
    long-to-int v2, v2

    .line 2719
    int-to-float v2, v2

    .line 2720
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2721
    .line 2722
    .line 2723
    move-result v0

    .line 2724
    int-to-long v5, v0

    .line 2725
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2726
    .line 2727
    .line 2728
    move-result v0

    .line 2729
    int-to-long v2, v0

    .line 2730
    shl-long v5, v5, v17

    .line 2731
    .line 2732
    and-long v2, v2, v20

    .line 2733
    .line 2734
    or-long/2addr v2, v5

    .line 2735
    const-wide/16 v5, 0x0

    .line 2736
    .line 2737
    invoke-static {v5, v6, v2, v3}, Lorg/slf4j/helpers/Util;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 2738
    .line 2739
    .line 2740
    move-result-object v0

    .line 2741
    invoke-interface {v4}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 2742
    .line 2743
    .line 2744
    invoke-interface {v4, v0}, Landroidx/compose/ui/graphics/Canvas;->clipRect-mtrdD-E(Landroidx/compose/ui/geometry/Rect;)V

    .line 2745
    .line 2746
    .line 2747
    :cond_41
    iget-object v0, v9, Landroidx/compose/ui/text/TextLayoutInput;->style:Landroidx/compose/ui/text/TextStyle;

    .line 2748
    .line 2749
    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 2750
    .line 2751
    iget-object v2, v0, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 2752
    .line 2753
    iget-object v3, v0, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 2754
    .line 2755
    if-nez v2, :cond_42

    .line 2756
    .line 2757
    sget-object v2, Landroidx/compose/ui/text/style/TextDecoration;->None:Landroidx/compose/ui/text/style/TextDecoration;

    .line 2758
    .line 2759
    :cond_42
    move-object/from16 v25, v2

    .line 2760
    .line 2761
    iget-object v2, v0, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 2762
    .line 2763
    if-nez v2, :cond_43

    .line 2764
    .line 2765
    sget-object v2, Landroidx/compose/ui/graphics/Shadow;->None:Landroidx/compose/ui/graphics/Shadow;

    .line 2766
    .line 2767
    :cond_43
    move-object/from16 v24, v2

    .line 2768
    .line 2769
    iget-object v0, v0, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 2770
    .line 2771
    if-nez v0, :cond_44

    .line 2772
    .line 2773
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 2774
    .line 2775
    :cond_44
    move-object/from16 v26, v0

    .line 2776
    .line 2777
    :try_start_1
    invoke-interface {v3}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    .line 2778
    .line 2779
    .line 2780
    move-result-object v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2781
    sget-object v0, Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;->INSTANCE:Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;

    .line 2782
    .line 2783
    if-eqz v22, :cond_46

    .line 2784
    .line 2785
    if-eq v3, v0, :cond_45

    .line 2786
    .line 2787
    :try_start_2
    invoke-interface {v3}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    .line 2788
    .line 2789
    .line 2790
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2791
    move/from16 v23, v2

    .line 2792
    .line 2793
    :goto_1d
    move-object/from16 v20, v1

    .line 2794
    .line 2795
    move-object/from16 v21, v4

    .line 2796
    .line 2797
    goto :goto_1e

    .line 2798
    :catchall_1
    move-exception v0

    .line 2799
    move-object/from16 v21, v4

    .line 2800
    .line 2801
    goto :goto_22

    .line 2802
    :cond_45
    const/high16 v23, 0x3f800000    # 1.0f

    .line 2803
    .line 2804
    goto :goto_1d

    .line 2805
    :goto_1e
    :try_start_3
    invoke-static/range {v20 .. v26}, Landroidx/compose/ui/text/MultiParagraph;->paint-hn5TExg$default(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 2806
    .line 2807
    .line 2808
    goto :goto_21

    .line 2809
    :catchall_2
    move-exception v0

    .line 2810
    goto :goto_22

    .line 2811
    :cond_46
    move-object/from16 v20, v1

    .line 2812
    .line 2813
    move-object/from16 v21, v4

    .line 2814
    .line 2815
    if-eq v3, v0, :cond_47

    .line 2816
    .line 2817
    invoke-interface {v3}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    .line 2818
    .line 2819
    .line 2820
    move-result-wide v0

    .line 2821
    :goto_1f
    move-wide/from16 v22, v0

    .line 2822
    .line 2823
    goto :goto_20

    .line 2824
    :cond_47
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 2825
    .line 2826
    goto :goto_1f

    .line 2827
    :goto_20
    invoke-static/range {v20 .. v26}, Landroidx/compose/ui/text/MultiParagraph;->paint-LG529CI$default(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2828
    .line 2829
    .line 2830
    :goto_21
    if-eqz v12, :cond_49

    .line 2831
    .line 2832
    invoke-interface/range {v21 .. v21}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 2833
    .line 2834
    .line 2835
    goto :goto_23

    .line 2836
    :goto_22
    if-eqz v12, :cond_48

    .line 2837
    .line 2838
    invoke-interface/range {v21 .. v21}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 2839
    .line 2840
    .line 2841
    :cond_48
    throw v0

    .line 2842
    :cond_49
    :goto_23
    return-object v13

    .line 2843
    :pswitch_47
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 2844
    .line 2845
    check-cast v15, Landroidx/compose/runtime/MutableState;

    .line 2846
    .line 2847
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 2848
    .line 2849
    move-object/from16 v0, p1

    .line 2850
    .line 2851
    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 2852
    .line 2853
    invoke-interface {v15, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 2854
    .line 2855
    .line 2856
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2857
    .line 2858
    .line 2859
    move-result-object v1

    .line 2860
    check-cast v1, Ljava/lang/String;

    .line 2861
    .line 2862
    iget-object v4, v0, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2863
    .line 2864
    iget-object v4, v4, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2865
    .line 2866
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2867
    .line 2868
    .line 2869
    move-result v1

    .line 2870
    iget-object v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 2871
    .line 2872
    iget-object v4, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2873
    .line 2874
    invoke-interface {v2, v4}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 2875
    .line 2876
    .line 2877
    if-nez v1, :cond_4a

    .line 2878
    .line 2879
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 2880
    .line 2881
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2882
    .line 2883
    .line 2884
    :cond_4a
    return-object v13

    .line 2885
    :pswitch_48
    check-cast v3, Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 2886
    .line 2887
    check-cast v15, Lkotlinx/coroutines/Job;

    .line 2888
    .line 2889
    check-cast v2, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 2890
    .line 2891
    move-object/from16 v0, p1

    .line 2892
    .line 2893
    check-cast v0, Ljava/lang/Float;

    .line 2894
    .line 2895
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 2896
    .line 2897
    .line 2898
    move-result v0

    .line 2899
    iget-boolean v1, v3, Landroidx/compose/foundation/gestures/ContentInViewNode;->reverseDirection:Z

    .line 2900
    .line 2901
    if-eqz v1, :cond_4b

    .line 2902
    .line 2903
    const/high16 v16, 0x3f800000    # 1.0f

    .line 2904
    .line 2905
    goto :goto_24

    .line 2906
    :cond_4b
    const/high16 v1, -0x40800000    # -1.0f

    .line 2907
    .line 2908
    move/from16 v16, v1

    .line 2909
    .line 2910
    :goto_24
    mul-float v1, v16, v0

    .line 2911
    .line 2912
    iget-object v3, v3, Landroidx/compose/foundation/gestures/ContentInViewNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 2913
    .line 2914
    invoke-virtual {v3, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toOffset-tuRUvjQ(F)J

    .line 2915
    .line 2916
    .line 2917
    move-result-wide v4

    .line 2918
    invoke-virtual {v3, v4, v5}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    .line 2919
    .line 2920
    .line 2921
    move-result-wide v4

    .line 2922
    iget-object v1, v2, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 2923
    .line 2924
    iget-object v2, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->outerStateScope:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 2925
    .line 2926
    const/4 v8, 0x1

    .line 2927
    invoke-virtual {v1, v2, v4, v5, v8}, Landroidx/compose/foundation/gestures/ScrollingLogic;->performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/ScrollScope;JI)J

    .line 2928
    .line 2929
    .line 2930
    move-result-wide v1

    .line 2931
    invoke-virtual {v3, v1, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    .line 2932
    .line 2933
    .line 2934
    move-result-wide v1

    .line 2935
    invoke-virtual {v3, v1, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    .line 2936
    .line 2937
    .line 2938
    move-result v1

    .line 2939
    mul-float v1, v1, v16

    .line 2940
    .line 2941
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 2942
    .line 2943
    .line 2944
    move-result v2

    .line 2945
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 2946
    .line 2947
    .line 2948
    move-result v3

    .line 2949
    cmpg-float v2, v2, v3

    .line 2950
    .line 2951
    if-gez v2, :cond_4c

    .line 2952
    .line 2953
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2954
    .line 2955
    const-string v3, "Scroll animation cancelled because scroll was not consumed ("

    .line 2956
    .line 2957
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2958
    .line 2959
    .line 2960
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2961
    .line 2962
    .line 2963
    const-string v1, " < "

    .line 2964
    .line 2965
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2966
    .line 2967
    .line 2968
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2969
    .line 2970
    .line 2971
    const/16 v0, 0x29

    .line 2972
    .line 2973
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2974
    .line 2975
    .line 2976
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2977
    .line 2978
    .line 2979
    move-result-object v0

    .line 2980
    const/4 v1, 0x0

    .line 2981
    invoke-static {v0, v1}, Lkotlinx/coroutines/JobKt;->CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    .line 2982
    .line 2983
    .line 2984
    move-result-object v0

    .line 2985
    invoke-interface {v15, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 2986
    .line 2987
    .line 2988
    :cond_4c
    return-object v13

    .line 2989
    :pswitch_49
    check-cast v3, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 2990
    .line 2991
    check-cast v15, Landroidx/camera/core/CameraX;

    .line 2992
    .line 2993
    check-cast v2, Landroid/content/Context;

    .line 2994
    .line 2995
    move-object/from16 v0, p1

    .line 2996
    .line 2997
    check-cast v0, Ljava/lang/Void;

    .line 2998
    .line 2999
    invoke-static {v2}, Landroidx/camera/core/impl/utils/ContextUtil;->getPersistentApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    .line 3000
    .line 3001
    .line 3002
    move-result-object v1

    .line 3003
    invoke-virtual {v3, v15, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->initInternal(Landroidx/camera/core/CameraX;Landroid/content/Context;)V

    .line 3004
    .line 3005
    .line 3006
    return-object v0

    .line 3007
    :pswitch_4a
    check-cast v3, Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    .line 3008
    .line 3009
    check-cast v2, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 3010
    .line 3011
    move-object/from16 v0, p1

    .line 3012
    .line 3013
    check-cast v0, Ljava/lang/Throwable;

    .line 3014
    .line 3015
    instance-of v1, v0, Landroidx/camera/core/ImageCaptureException;

    .line 3016
    .line 3017
    if-eqz v1, :cond_4d

    .line 3018
    .line 3019
    check-cast v0, Landroidx/camera/core/ImageCaptureException;

    .line 3020
    .line 3021
    iget v0, v0, Landroidx/camera/core/ImageCaptureException;->mImageCaptureError:I

    .line 3022
    .line 3023
    const/4 v14, 0x3

    .line 3024
    if-ne v0, v14, :cond_4d

    .line 3025
    .line 3026
    iget-object v0, v3, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 3027
    .line 3028
    iget-object v0, v0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 3029
    .line 3030
    new-instance v1, Landroidx/compose/animation/core/MutatorMutex$mutate$2;

    .line 3031
    .line 3032
    const/4 v4, 0x0

    .line 3033
    invoke-direct {v1, v3, v2, v4, v4}, Landroidx/compose/animation/core/MutatorMutex$mutate$2;-><init>(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Lkotlin/coroutines/Continuation;)V

    .line 3034
    .line 3035
    .line 3036
    invoke-static {v0, v4, v4, v1, v14}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 3037
    .line 3038
    .line 3039
    return-object v13

    .line 3040
    :cond_4d
    const/4 v4, 0x0

    .line 3041
    throw v4

    .line 3042
    :pswitch_4b
    check-cast v3, Lkotlinx/coroutines/Deferred;

    .line 3043
    .line 3044
    check-cast v15, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 3045
    .line 3046
    check-cast v2, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 3047
    .line 3048
    move-object/from16 v0, p1

    .line 3049
    .line 3050
    check-cast v0, Ljava/lang/Throwable;

    .line 3051
    .line 3052
    if-eqz v0, :cond_4f

    .line 3053
    .line 3054
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    .line 3055
    .line 3056
    if-eqz v1, :cond_4e

    .line 3057
    .line 3058
    check-cast v0, Ljava/util/concurrent/CancellationException;

    .line 3059
    .line 3060
    invoke-virtual {v15, v0}, Lkotlinx/coroutines/JobSupport;->cancelInternal(Ljava/lang/Throwable;)V

    .line 3061
    .line 3062
    .line 3063
    goto :goto_25

    .line 3064
    :cond_4e
    invoke-virtual {v15, v0}, Lkotlinx/coroutines/CompletableDeferredImpl;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 3065
    .line 3066
    .line 3067
    goto :goto_25

    .line 3068
    :cond_4f
    invoke-interface {v3}, Lkotlinx/coroutines/Deferred;->getCompleted()Ljava/lang/Object;

    .line 3069
    .line 3070
    .line 3071
    move-result-object v0

    .line 3072
    invoke-virtual {v2, v0}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3073
    .line 3074
    .line 3075
    invoke-virtual {v15, v13}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 3076
    .line 3077
    .line 3078
    :goto_25
    return-object v13

    .line 3079
    :pswitch_4c
    check-cast v3, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 3080
    .line 3081
    check-cast v15, Lokhttp3/Dispatcher;

    .line 3082
    .line 3083
    check-cast v2, Lapp/k9mail/K9KoinModuleKt$$ExternalSyntheticLambda2;

    .line 3084
    .line 3085
    move-object/from16 v0, p1

    .line 3086
    .line 3087
    check-cast v0, Ljava/lang/Throwable;

    .line 3088
    .line 3089
    invoke-virtual {v3, v0}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3090
    .line 3091
    .line 3092
    iget-object v1, v15, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 3093
    .line 3094
    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 3095
    .line 3096
    const/4 v6, 0x0

    .line 3097
    invoke-virtual {v1, v0, v6}, Lkotlinx/coroutines/channels/BufferedChannel;->closeOrCancelImpl(Ljava/lang/Throwable;Z)Z

    .line 3098
    .line 3099
    .line 3100
    :goto_26
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    .line 3101
    .line 3102
    .line 3103
    move-result-object v3

    .line 3104
    invoke-static {v3}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3105
    .line 3106
    .line 3107
    move-result-object v3

    .line 3108
    if-eqz v3, :cond_50

    .line 3109
    .line 3110
    invoke-virtual {v2, v3, v0}, Lapp/k9mail/K9KoinModuleKt$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3111
    .line 3112
    .line 3113
    goto :goto_26

    .line 3114
    :cond_50
    return-object v13

    .line 3115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
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

    .line 3116
    .line 3117
    .line 3118
    .line 3119
    .line 3120
    .line 3121
    .line 3122
    .line 3123
    .line 3124
    .line 3125
    .line 3126
    .line 3127
    .line 3128
    .line 3129
    .line 3130
    .line 3131
    .line 3132
    .line 3133
    .line 3134
    .line 3135
    .line 3136
    .line 3137
    .line 3138
    .line 3139
    .line 3140
    .line 3141
    .line 3142
    .line 3143
    .line 3144
    .line 3145
    .line 3146
    .line 3147
    .line 3148
    .line 3149
    .line 3150
    .line 3151
    .line 3152
    .line 3153
    .line 3154
    .line 3155
    .line 3156
    .line 3157
    .line 3158
    .line 3159
    .line 3160
    .line 3161
    .line 3162
    .line 3163
    .line 3164
    .line 3165
    .line 3166
    .line 3167
    .line 3168
    .line 3169
    .line 3170
    .line 3171
    .line 3172
    .line 3173
    .line 3174
    .line 3175
    .line 3176
    .line 3177
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_15
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
