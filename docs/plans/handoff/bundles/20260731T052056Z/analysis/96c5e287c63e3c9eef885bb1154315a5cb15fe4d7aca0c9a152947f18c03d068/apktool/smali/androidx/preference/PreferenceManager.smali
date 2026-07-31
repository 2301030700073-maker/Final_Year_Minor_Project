.class public final Landroidx/preference/PreferenceManager;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final mContext:Ljava/lang/Object;

.field public mEditor:Ljava/lang/Object;

.field public mNextId:J

.field public mNoCommit:Z

.field public mOnDisplayPreferenceDialogListener:Ljava/lang/Object;

.field public mOnNavigateToScreenListener:Ljava/lang/Object;

.field public mOnPreferenceTreeClickListener:Ljava/lang/Object;

.field public mPreferenceScreen:Ljava/lang/Object;

.field public mSharedPreferences:Ljava/lang/Object;

.field public mSharedPreferencesName:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Landroidx/preference/PreferenceManager;->mNextId:J

    .line 57
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mContext:Ljava/lang/Object;

    .line 58
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 59
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mContext:Ljava/lang/Object;

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance p1, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/16 v0, 0x17

    .line 17
    .line 18
    invoke-direct {p1, v0, p0}, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mEditor:Ljava/lang/Object;

    .line 22
    .line 23
    new-instance p1, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    const/16 v0, 0x9

    .line 26
    .line 27
    invoke-direct {p1, v0, p0}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/Object;

    .line 31
    .line 32
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    .line 33
    .line 34
    const/16 v0, 0x10

    .line 35
    .line 36
    new-array v0, v0, [Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 37
    .line 38
    invoke-direct {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    .line 42
    .line 43
    new-instance p1, Ljava/lang/Object;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    .line 49
    .line 50
    const-wide/16 v0, -0x1

    .line 51
    .line 52
    iput-wide v0, p0, Landroidx/preference/PreferenceManager;->mNextId:J

    .line 53
    .line 54
    return-void
.end method

.method public static getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, "_preferences"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 5

    .line 163
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    .line 164
    monitor-enter v0

    .line 165
    :try_start_0
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/collection/MutableVector;

    .line 166
    iget-object v1, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 167
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 168
    aget-object v3, v1, v2

    check-cast v3, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 169
    iget-object v4, v3, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/collection/MutableScatterMap;

    .line 170
    invoke-virtual {v4}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 171
    iget-object v4, v3, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v4}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 172
    iget-object v4, v3, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/collection/MutableScatterMap;

    .line 173
    invoke-virtual {v4}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 174
    iget-object v3, v3, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 175
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public clear(Ljava/lang/Object;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v0, v0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 11
    .line 12
    iget v3, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    :goto_0
    iget-object v7, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 17
    .line 18
    if-ge v5, v3, :cond_8

    .line 19
    .line 20
    :try_start_1
    aget-object v7, v7, v5

    .line 21
    .line 22
    check-cast v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 23
    .line 24
    iget-object v8, v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    .line 25
    .line 26
    invoke-virtual {v8, v1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    check-cast v8, Landroidx/collection/MutableObjectIntMap;

    .line 31
    .line 32
    if-nez v8, :cond_1

    .line 33
    .line 34
    :cond_0
    move v15, v5

    .line 35
    goto :goto_4

    .line 36
    :cond_1
    iget-object v9, v8, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    .line 37
    .line 38
    iget-object v10, v8, Landroidx/collection/MutableObjectIntMap;->values:[I

    .line 39
    .line 40
    iget-object v8, v8, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    .line 41
    .line 42
    array-length v11, v8

    .line 43
    add-int/lit8 v11, v11, -0x2

    .line 44
    .line 45
    if-ltz v11, :cond_0

    .line 46
    .line 47
    const/4 v12, 0x0

    .line 48
    :goto_1
    aget-wide v13, v8, v12

    .line 49
    .line 50
    move v15, v5

    .line 51
    not-long v4, v13

    .line 52
    const/16 v16, 0x7

    .line 53
    .line 54
    shl-long v4, v4, v16

    .line 55
    .line 56
    and-long/2addr v4, v13

    .line 57
    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    and-long v4, v4, v16

    .line 63
    .line 64
    cmp-long v4, v4, v16

    .line 65
    .line 66
    if-eqz v4, :cond_4

    .line 67
    .line 68
    sub-int v4, v12, v11

    .line 69
    .line 70
    not-int v4, v4

    .line 71
    ushr-int/lit8 v4, v4, 0x1f

    .line 72
    .line 73
    const/16 v5, 0x8

    .line 74
    .line 75
    rsub-int/lit8 v4, v4, 0x8

    .line 76
    .line 77
    move/from16 v16, v5

    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    :goto_2
    if-ge v5, v4, :cond_3

    .line 81
    .line 82
    const-wide/16 v17, 0xff

    .line 83
    .line 84
    and-long v17, v13, v17

    .line 85
    .line 86
    const-wide/16 v19, 0x80

    .line 87
    .line 88
    cmp-long v17, v17, v19

    .line 89
    .line 90
    if-gez v17, :cond_2

    .line 91
    .line 92
    shl-int/lit8 v17, v12, 0x3

    .line 93
    .line 94
    add-int v17, v17, v5

    .line 95
    .line 96
    move/from16 v18, v5

    .line 97
    .line 98
    aget-object v5, v9, v17

    .line 99
    .line 100
    aget v17, v10, v17

    .line 101
    .line 102
    invoke-virtual {v7, v1, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->removeObservation(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_2
    move/from16 v18, v5

    .line 107
    .line 108
    :goto_3
    shr-long v13, v13, v16

    .line 109
    .line 110
    add-int/lit8 v5, v18, 0x1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    move/from16 v5, v16

    .line 114
    .line 115
    if-ne v4, v5, :cond_5

    .line 116
    .line 117
    :cond_4
    if-eq v12, v11, :cond_5

    .line 118
    .line 119
    add-int/lit8 v12, v12, 0x1

    .line 120
    .line 121
    move v5, v15

    .line 122
    goto :goto_1

    .line 123
    :cond_5
    :goto_4
    iget-object v4, v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    .line 124
    .line 125
    invoke-virtual {v4}, Landroidx/collection/MutableScatterMap;->isNotEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-nez v4, :cond_6

    .line 130
    .line 131
    add-int/lit8 v6, v6, 0x1

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_6
    if-lez v6, :cond_7

    .line 135
    .line 136
    iget-object v4, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 137
    .line 138
    sub-int v5, v15, v6

    .line 139
    .line 140
    aget-object v7, v4, v15

    .line 141
    .line 142
    aput-object v7, v4, v5

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    goto :goto_6

    .line 147
    :cond_7
    :goto_5
    add-int/lit8 v5, v15, 0x1

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_8
    sub-int v1, v3, v6

    .line 152
    .line 153
    const/4 v4, 0x0

    .line 154
    invoke-static {v7, v1, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    iput v1, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .line 159
    monitor-exit v2

    .line 160
    return-void

    .line 161
    :goto_6
    monitor-exit v2

    .line 162
    throw v0
.end method

.method public drainChanges()Z
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroidx/preference/PreferenceManager;->mNoCommit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    move v1, v0

    .line 12
    :goto_0
    iget-object v2, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x1

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    goto :goto_4

    .line 25
    :cond_1
    instance-of v6, v3, Ljava/util/Set;

    .line 26
    .line 27
    if-eqz v6, :cond_2

    .line 28
    .line 29
    move-object v6, v3

    .line 30
    check-cast v6, Ljava/util/Set;

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_2
    instance-of v6, v3, Ljava/util/List;

    .line 34
    .line 35
    if-eqz v6, :cond_b

    .line 36
    .line 37
    move-object v6, v3

    .line 38
    check-cast v6, Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    check-cast v7, Ljava/util/Set;

    .line 45
    .line 46
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    const/4 v9, 0x2

    .line 51
    if-ne v8, v9, :cond_3

    .line 52
    .line 53
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-le v8, v9, :cond_4

    .line 63
    .line 64
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-interface {v6, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    :cond_4
    :goto_2
    move-object v6, v7

    .line 73
    :cond_5
    :goto_3
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_a

    .line 78
    .line 79
    move-object v4, v6

    .line 80
    :goto_4
    if-nez v4, :cond_6

    .line 81
    .line 82
    return v1

    .line 83
    :cond_6
    iget-object v2, p0, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    .line 84
    .line 85
    monitor-enter v2

    .line 86
    :try_start_1
    iget-object v3, p0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    .line 89
    .line 90
    iget-object v6, v3, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 91
    .line 92
    iget v3, v3, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 93
    .line 94
    move v7, v0

    .line 95
    :goto_5
    if-ge v7, v3, :cond_9

    .line 96
    .line 97
    aget-object v8, v6, v7

    .line 98
    .line 99
    check-cast v8, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 100
    .line 101
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordInvalidation(Ljava/util/Set;)Z

    .line 102
    .line 103
    .line 104
    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    if-nez v8, :cond_8

    .line 106
    .line 107
    if-eqz v1, :cond_7

    .line 108
    .line 109
    goto :goto_6

    .line 110
    :cond_7
    move v1, v0

    .line 111
    goto :goto_7

    .line 112
    :cond_8
    :goto_6
    move v1, v5

    .line 113
    :goto_7
    add-int/lit8 v7, v7, 0x1

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    goto :goto_8

    .line 118
    :cond_9
    monitor-exit v2

    .line 119
    goto :goto_0

    .line 120
    :goto_8
    monitor-exit v2

    .line 121
    throw p0

    .line 122
    :cond_a
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    if-eq v7, v3, :cond_5

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_b
    const-string p0, "Unexpected notification"

    .line 130
    .line 131
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 135
    .line 136
    .line 137
    return v0

    .line 138
    :catchall_1
    move-exception p0

    .line 139
    monitor-exit v0

    .line 140
    throw p0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mEditor:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroid/content/SharedPreferences$Editor;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Landroidx/preference/PreferenceManager;->mEditor:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    return-object v0

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public getNextId()J
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Landroidx/preference/PreferenceManager;->mNextId:J

    .line 3
    .line 4
    const-wide/16 v2, 0x1

    .line 5
    .line 6
    add-long/2addr v2, v0

    .line 7
    iput-wide v2, p0, Landroidx/preference/PreferenceManager;->mNextId:J

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-wide v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/SharedPreferences;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mContext:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/content/Context;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Ljava/lang/String;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Ljava/lang/Object;

    .line 21
    .line 22
    :cond_0
    return-object v0
.end method

.method public inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    .line 3
    .line 4
    new-instance v0, Landroidx/preference/PreferenceInflater;

    .line 5
    .line 6
    invoke-direct {v0, p1, p0}, Landroidx/preference/PreferenceInflater;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceManager;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :try_start_0
    invoke-virtual {v0, p1, p3}, Landroidx/preference/PreferenceInflater;->inflate(Landroid/content/res/XmlResourceParser;Landroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceGroup;

    .line 18
    .line 19
    .line 20
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 22
    .line 23
    .line 24
    check-cast p2, Landroidx/preference/PreferenceScreen;

    .line 25
    .line 26
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroidx/preference/PreferenceManager;->mEditor:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    .line 40
    .line 41
    return-object p2

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public observeReads(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/runtime/internal/Expect_jvmKt;->currentThreadId()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    iget-object v5, v1, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v5

    .line 14
    :try_start_0
    iget-object v6, v1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v6, Landroidx/compose/runtime/collection/MutableVector;

    .line 17
    .line 18
    iget-object v7, v6, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 19
    .line 20
    iget v8, v6, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 21
    .line 22
    const/4 v10, 0x0

    .line 23
    :goto_0
    const/4 v11, 0x0

    .line 24
    if-ge v10, v8, :cond_1

    .line 25
    .line 26
    aget-object v12, v7, v10

    .line 27
    .line 28
    move-object v13, v12

    .line 29
    check-cast v13, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 30
    .line 31
    iget-object v13, v13, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->onChanged:Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    if-ne v13, v2, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object v12, v11

    .line 40
    :goto_1
    check-cast v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 41
    .line 42
    const/4 v7, 0x1

    .line 43
    if-nez v12, :cond_2

    .line 44
    .line 45
    new-instance v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {v7, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-direct {v12, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v2, v1, Landroidx/preference/PreferenceManager;->mOnNavigateToScreenListener:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 62
    .line 63
    iget-wide v13, v1, Landroidx/preference/PreferenceManager;->mNextId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    .line 64
    .line 65
    monitor-exit v5

    .line 66
    const-wide/16 v5, -0x1

    .line 67
    .line 68
    cmp-long v5, v13, v5

    .line 69
    .line 70
    if-eqz v5, :cond_4

    .line 71
    .line 72
    cmp-long v5, v13, v3

    .line 73
    .line 74
    if-nez v5, :cond_3

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v6, "Detected multithreaded access to SnapshotStateObserver: previousThreadId="

    .line 80
    .line 81
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v6, "), currentThread={id="

    .line 88
    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v6, ", name="

    .line 96
    .line 97
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string/jumbo v6, "}. Note that observation on multiple threads in layout/draw is not supported. Make sure your measure/layout/draw for each Owner (AndroidComposeView) is executed on the same thread."

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-static {v5}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    :goto_2
    :try_start_1
    iget-object v5, v1, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    .line 125
    .line 126
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    iput-object v12, v1, Landroidx/preference/PreferenceManager;->mOnNavigateToScreenListener:Ljava/lang/Object;

    .line 128
    .line 129
    iput-wide v3, v1, Landroidx/preference/PreferenceManager;->mNextId:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 130
    .line 131
    :try_start_3
    monitor-exit v5

    .line 132
    iget-object v3, v1, Landroidx/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v3, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 135
    .line 136
    iget-object v4, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    .line 137
    .line 138
    iget-object v5, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    .line 139
    .line 140
    iget v6, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    .line 141
    .line 142
    iput-object v0, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    .line 143
    .line 144
    iget-object v8, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    .line 145
    .line 146
    invoke-virtual {v8, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Landroidx/collection/MutableObjectIntMap;

    .line 151
    .line 152
    iput-object v0, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    .line 153
    .line 154
    iget v0, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    .line 155
    .line 156
    const/4 v8, -0x1

    .line 157
    if-ne v0, v8, :cond_5

    .line 158
    .line 159
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 164
    .line 165
    .line 166
    move-result-wide v15

    .line 167
    const/16 v0, 0x20

    .line 168
    .line 169
    ushr-long v17, v15, v0

    .line 170
    .line 171
    xor-long v9, v15, v17

    .line 172
    .line 173
    long-to-int v8, v9

    .line 174
    iput v8, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :catchall_0
    move-exception v0

    .line 178
    move-object v3, v1

    .line 179
    goto/16 :goto_10

    .line 180
    .line 181
    :cond_5
    :goto_3
    iget-object v8, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->derivedStateObserver:Landroidx/compose/runtime/GapComposer$derivedStateObserver$1;

    .line 182
    .line 183
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->derivedStateObservers()Landroidx/compose/runtime/collection/MutableVector;

    .line 184
    .line 185
    .line 186
    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    :try_start_4
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    if-nez v3, :cond_6

    .line 191
    .line 192
    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    goto/16 :goto_7

    .line 196
    .line 197
    :catchall_1
    move-exception v0

    .line 198
    move-object v3, v1

    .line 199
    :goto_4
    move/from16 p2, v7

    .line 200
    .line 201
    goto/16 :goto_f

    .line 202
    .line 203
    :cond_6
    sget-object v8, Landroidx/compose/runtime/snapshots/SnapshotKt;->threadSnapshot:Lcom/caverock/androidsvg/SVG;

    .line 204
    .line 205
    invoke-virtual {v8}, Lcom/caverock/androidsvg/SVG;->get()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    check-cast v8, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 210
    .line 211
    instance-of v10, v8, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 212
    .line 213
    if-eqz v10, :cond_7

    .line 214
    .line 215
    :try_start_5
    move-object v10, v8

    .line 216
    check-cast v10, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 217
    .line 218
    iget-wide v0, v10, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->threadId:J

    .line 219
    .line 220
    invoke-static {}, Landroidx/compose/runtime/internal/Expect_jvmKt;->currentThreadId()J

    .line 221
    .line 222
    .line 223
    move-result-wide v15

    .line 224
    cmp-long v0, v0, v15

    .line 225
    .line 226
    if-nez v0, :cond_7

    .line 227
    .line 228
    move-object v0, v8

    .line 229
    check-cast v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 230
    .line 231
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->readObserver:Lkotlin/jvm/functions/Function1;

    .line 232
    .line 233
    move-object v0, v8

    .line 234
    check-cast v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 235
    .line 236
    iget-object v10, v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->writeObserver:Lkotlin/jvm/functions/Function1;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 237
    .line 238
    :try_start_6
    move-object v0, v8

    .line 239
    check-cast v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 240
    .line 241
    invoke-static {v3, v1, v7}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedReadObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)Lkotlin/jvm/functions/Function1;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    iput-object v3, v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->readObserver:Lkotlin/jvm/functions/Function1;

    .line 246
    .line 247
    move-object v0, v8

    .line 248
    check-cast v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 249
    .line 250
    iput-object v10, v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->writeObserver:Lkotlin/jvm/functions/Function1;

    .line 251
    .line 252
    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 253
    .line 254
    .line 255
    :try_start_7
    move-object v0, v8

    .line 256
    check-cast v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 257
    .line 258
    iput-object v1, v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->readObserver:Lkotlin/jvm/functions/Function1;

    .line 259
    .line 260
    check-cast v8, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 261
    .line 262
    iput-object v10, v8, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->writeObserver:Lkotlin/jvm/functions/Function1;

    .line 263
    .line 264
    goto :goto_7

    .line 265
    :catchall_2
    move-exception v0

    .line 266
    move-object/from16 v3, p0

    .line 267
    .line 268
    goto :goto_4

    .line 269
    :catchall_3
    move-exception v0

    .line 270
    move-object v3, v8

    .line 271
    check-cast v3, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 272
    .line 273
    iput-object v1, v3, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->readObserver:Lkotlin/jvm/functions/Function1;

    .line 274
    .line 275
    check-cast v8, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 276
    .line 277
    iput-object v10, v8, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->writeObserver:Lkotlin/jvm/functions/Function1;

    .line 278
    .line 279
    throw v0

    .line 280
    :cond_7
    if-eqz v8, :cond_9

    .line 281
    .line 282
    instance-of v0, v8, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 283
    .line 284
    if-eqz v0, :cond_8

    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_8
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/snapshots/Snapshot;->takeNestedSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    move-object v15, v0

    .line 292
    goto :goto_6

    .line 293
    :cond_9
    :goto_5
    new-instance v15, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 294
    .line 295
    instance-of v0, v8, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 296
    .line 297
    if-eqz v0, :cond_a

    .line 298
    .line 299
    move-object v11, v8

    .line 300
    check-cast v11, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 301
    .line 302
    :cond_a
    move-object/from16 v16, v11

    .line 303
    .line 304
    const/16 v19, 0x1

    .line 305
    .line 306
    const/16 v20, 0x0

    .line 307
    .line 308
    const/16 v18, 0x0

    .line 309
    .line 310
    move-object/from16 v17, v3

    .line 311
    .line 312
    invoke-direct/range {v15 .. v20}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;-><init>(Landroidx/compose/runtime/snapshots/MutableSnapshot;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 313
    .line 314
    .line 315
    :goto_6
    :try_start_8
    invoke-virtual {v15}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 316
    .line 317
    .line 318
    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 319
    :try_start_9
    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 320
    .line 321
    .line 322
    :try_start_a
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 323
    .line 324
    .line 325
    :try_start_b
    invoke-virtual {v15}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 326
    .line 327
    .line 328
    :goto_7
    :try_start_c
    iget v0, v9, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 329
    .line 330
    sub-int/2addr v0, v7

    .line 331
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    iget-object v0, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    .line 335
    .line 336
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    .line 338
    .line 339
    iget v1, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    .line 340
    .line 341
    iget-object v3, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    .line 342
    .line 343
    if-eqz v3, :cond_11

    .line 344
    .line 345
    iget-object v8, v3, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    .line 346
    .line 347
    array-length v9, v8

    .line 348
    add-int/lit8 v9, v9, -0x2

    .line 349
    .line 350
    if-ltz v9, :cond_11

    .line 351
    .line 352
    move v11, v7

    .line 353
    move-object v15, v8

    .line 354
    const/4 v10, 0x0

    .line 355
    :goto_8
    aget-wide v7, v15, v10

    .line 356
    .line 357
    move/from16 p2, v11

    .line 358
    .line 359
    move-object/from16 v16, v12

    .line 360
    .line 361
    not-long v11, v7

    .line 362
    const/16 v17, 0x7

    .line 363
    .line 364
    shl-long v11, v11, v17

    .line 365
    .line 366
    and-long/2addr v11, v7

    .line 367
    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    and-long v11, v11, v17

    .line 373
    .line 374
    cmp-long v11, v11, v17

    .line 375
    .line 376
    if-eqz v11, :cond_10

    .line 377
    .line 378
    sub-int v11, v10, v9

    .line 379
    .line 380
    not-int v11, v11

    .line 381
    ushr-int/lit8 v11, v11, 0x1f

    .line 382
    .line 383
    const/16 v12, 0x8

    .line 384
    .line 385
    rsub-int/lit8 v11, v11, 0x8

    .line 386
    .line 387
    move/from16 p3, v12

    .line 388
    .line 389
    const/4 v12, 0x0

    .line 390
    :goto_9
    if-ge v12, v11, :cond_f

    .line 391
    .line 392
    const-wide/16 v17, 0xff

    .line 393
    .line 394
    and-long v17, v7, v17

    .line 395
    .line 396
    const-wide/16 v19, 0x80

    .line 397
    .line 398
    cmp-long v17, v17, v19

    .line 399
    .line 400
    if-gez v17, :cond_d

    .line 401
    .line 402
    shl-int/lit8 v17, v10, 0x3

    .line 403
    .line 404
    move-wide/from16 v18, v7

    .line 405
    .line 406
    add-int v7, v17, v12

    .line 407
    .line 408
    iget-object v8, v3, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    .line 409
    .line 410
    aget-object v8, v8, v7

    .line 411
    .line 412
    move/from16 v17, v12

    .line 413
    .line 414
    iget-object v12, v3, Landroidx/collection/MutableObjectIntMap;->values:[I

    .line 415
    .line 416
    aget v12, v12, v7

    .line 417
    .line 418
    if-eq v12, v1, :cond_b

    .line 419
    .line 420
    move/from16 v12, p2

    .line 421
    .line 422
    goto :goto_a

    .line 423
    :cond_b
    const/4 v12, 0x0

    .line 424
    :goto_a
    if-eqz v12, :cond_c

    .line 425
    .line 426
    move/from16 v20, v1

    .line 427
    .line 428
    move-object/from16 v1, v16

    .line 429
    .line 430
    invoke-virtual {v1, v0, v8}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->removeObservation(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    goto :goto_b

    .line 434
    :cond_c
    move/from16 v20, v1

    .line 435
    .line 436
    move-object/from16 v1, v16

    .line 437
    .line 438
    :goto_b
    if-eqz v12, :cond_e

    .line 439
    .line 440
    invoke-virtual {v3, v7}, Landroidx/collection/MutableObjectIntMap;->removeValueAt(I)V

    .line 441
    .line 442
    .line 443
    goto :goto_c

    .line 444
    :cond_d
    move/from16 v20, v1

    .line 445
    .line 446
    move-wide/from16 v18, v7

    .line 447
    .line 448
    move/from16 v17, v12

    .line 449
    .line 450
    move-object/from16 v1, v16

    .line 451
    .line 452
    :cond_e
    :goto_c
    shr-long v7, v18, p3

    .line 453
    .line 454
    add-int/lit8 v12, v17, 0x1

    .line 455
    .line 456
    move-object/from16 v16, v1

    .line 457
    .line 458
    move/from16 v1, v20

    .line 459
    .line 460
    goto :goto_9

    .line 461
    :cond_f
    move/from16 v7, p3

    .line 462
    .line 463
    move/from16 v20, v1

    .line 464
    .line 465
    move-object/from16 v1, v16

    .line 466
    .line 467
    if-ne v11, v7, :cond_12

    .line 468
    .line 469
    goto :goto_d

    .line 470
    :cond_10
    move/from16 v20, v1

    .line 471
    .line 472
    move-object/from16 v1, v16

    .line 473
    .line 474
    :goto_d
    if-eq v10, v9, :cond_12

    .line 475
    .line 476
    add-int/lit8 v10, v10, 0x1

    .line 477
    .line 478
    move/from16 v11, p2

    .line 479
    .line 480
    move-object v12, v1

    .line 481
    move/from16 v1, v20

    .line 482
    .line 483
    goto/16 :goto_8

    .line 484
    .line 485
    :cond_11
    move-object v1, v12

    .line 486
    :cond_12
    iput-object v4, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    .line 487
    .line 488
    iput-object v5, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    .line 489
    .line 490
    iput v6, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 491
    .line 492
    move-object/from16 v3, p0

    .line 493
    .line 494
    iget-object v1, v3, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    .line 495
    .line 496
    monitor-enter v1

    .line 497
    :try_start_d
    iput-object v2, v3, Landroidx/preference/PreferenceManager;->mOnNavigateToScreenListener:Ljava/lang/Object;

    .line 498
    .line 499
    iput-wide v13, v3, Landroidx/preference/PreferenceManager;->mNextId:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 500
    .line 501
    monitor-exit v1

    .line 502
    return-void

    .line 503
    :catchall_4
    move-exception v0

    .line 504
    monitor-exit v1

    .line 505
    throw v0

    .line 506
    :catchall_5
    move-exception v0

    .line 507
    move-object/from16 v3, p0

    .line 508
    .line 509
    goto :goto_10

    .line 510
    :catchall_6
    move-exception v0

    .line 511
    move-object/from16 v3, p0

    .line 512
    .line 513
    move/from16 p2, v7

    .line 514
    .line 515
    goto :goto_e

    .line 516
    :catchall_7
    move-exception v0

    .line 517
    move-object/from16 v3, p0

    .line 518
    .line 519
    move/from16 p2, v7

    .line 520
    .line 521
    :try_start_e
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 522
    .line 523
    .line 524
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 525
    :catchall_8
    move-exception v0

    .line 526
    :goto_e
    :try_start_f
    invoke-virtual {v15}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 527
    .line 528
    .line 529
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 530
    :catchall_9
    move-exception v0

    .line 531
    :goto_f
    :try_start_10
    iget v1, v9, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 532
    .line 533
    add-int/lit8 v1, v1, -0x1

    .line 534
    .line 535
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    throw v0

    .line 539
    :catchall_a
    move-exception v0

    .line 540
    goto :goto_10

    .line 541
    :catchall_b
    move-exception v0

    .line 542
    move-object v3, v1

    .line 543
    monitor-exit v5

    .line 544
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 545
    :goto_10
    iget-object v1, v3, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    .line 546
    .line 547
    monitor-enter v1

    .line 548
    :try_start_11
    iput-object v2, v3, Landroidx/preference/PreferenceManager;->mOnNavigateToScreenListener:Ljava/lang/Object;

    .line 549
    .line 550
    iput-wide v13, v3, Landroidx/preference/PreferenceManager;->mNextId:J
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    .line 551
    .line 552
    monitor-exit v1

    .line 553
    throw v0

    .line 554
    :catchall_c
    move-exception v0

    .line 555
    monitor-exit v1

    .line 556
    throw v0

    .line 557
    :catchall_d
    move-exception v0

    .line 558
    monitor-exit v5

    .line 559
    throw v0
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mEditor:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->emptyLambda:Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda2;

    .line 6
    .line 7
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->advanceGlobalSnapshot(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->applyObservers:Ljava/util/List;

    .line 14
    .line 15
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sput-object v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->applyObservers:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit v1

    .line 22
    new-instance v1, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda5;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Landroidx/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Ljava/lang/Object;

    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v1

    .line 32
    throw p0
.end method
