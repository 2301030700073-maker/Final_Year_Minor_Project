.class public final Landroidx/preference/PreferenceManager;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


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
    new-instance p1, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/16 v0, 0xc

    .line 17
    .line 18
    invoke-direct {p1, p0, v0}, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/preference/PreferenceManager;->mEditor:Ljava/lang/Object;

    .line 22
    .line 23
    new-instance p1, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    const/16 v0, 0x12

    .line 26
    .line 27
    invoke-direct {p1, p0, v0}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

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

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
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

.method public static setDefaultValues(Lorg/schabi/newpipe/App;I)V
    .locals 4

    .line 1
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "_has_set_default_values"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    new-instance v3, Landroidx/preference/PreferenceManager;

    .line 13
    .line 14
    invoke-direct {v3, p0}, Landroidx/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, v3, Landroidx/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, v3, Landroidx/preference/PreferenceManager;->mSharedPreferences:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v3, p0, p1, v0}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    .line 23
    .line 24
    .line 25
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public clear(Landroidx/compose/animation/core/SeekableTransitionState;)V
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
    invoke-static {}, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticBUOutline0;->m()V

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
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mEditor:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
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
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Landroid/content/SharedPreferences;

    .line 25
    .line 26
    return-object p0
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
    invoke-static {v7, v2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

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
    const-string v5, "Detected multithreaded access to SnapshotStateObserver: previousThreadId="

    .line 78
    .line 79
    const-string v6, "), currentThread={id="

    .line 80
    .line 81
    invoke-static {v13, v14, v5, v6}, Landroidx/compose/ui/Modifier$-CC;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v6, ", name="

    .line 89
    .line 90
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string/jumbo v6, "}. Note that observation on multiple threads in layout/draw is not supported. Make sure your measure/layout/draw for each Owner (AndroidComposeView) is executed on the same thread."

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-static {v5}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_4
    :goto_2
    :try_start_1
    iget-object v5, v1, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    .line 118
    .line 119
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    iput-object v12, v1, Landroidx/preference/PreferenceManager;->mOnNavigateToScreenListener:Ljava/lang/Object;

    .line 121
    .line 122
    iput-wide v3, v1, Landroidx/preference/PreferenceManager;->mNextId:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 123
    .line 124
    :try_start_3
    monitor-exit v5

    .line 125
    iget-object v3, v1, Landroidx/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v3, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 128
    .line 129
    iget-object v4, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    .line 130
    .line 131
    iget-object v5, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    .line 132
    .line 133
    iget v6, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    .line 134
    .line 135
    iput-object v0, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    .line 136
    .line 137
    iget-object v8, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    .line 138
    .line 139
    invoke-virtual {v8, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Landroidx/collection/MutableObjectIntMap;

    .line 144
    .line 145
    iput-object v0, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    .line 146
    .line 147
    iget v0, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    .line 148
    .line 149
    const/4 v8, -0x1

    .line 150
    if-ne v0, v8, :cond_5

    .line 151
    .line 152
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 157
    .line 158
    .line 159
    move-result-wide v15

    .line 160
    const/16 v0, 0x20

    .line 161
    .line 162
    ushr-long v17, v15, v0

    .line 163
    .line 164
    xor-long v9, v15, v17

    .line 165
    .line 166
    long-to-int v8, v9

    .line 167
    iput v8, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    move-object v3, v1

    .line 172
    goto/16 :goto_10

    .line 173
    .line 174
    :cond_5
    :goto_3
    iget-object v8, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->derivedStateObserver:Landroidx/compose/runtime/GapComposer$derivedStateObserver$1;

    .line 175
    .line 176
    invoke-static {}, Landroidx/compose/runtime/Updater;->derivedStateObservers()Landroidx/compose/runtime/collection/MutableVector;

    .line 177
    .line 178
    .line 179
    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    :try_start_4
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    if-nez v3, :cond_6

    .line 184
    .line 185
    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    goto/16 :goto_7

    .line 189
    .line 190
    :catchall_1
    move-exception v0

    .line 191
    move-object v3, v1

    .line 192
    :goto_4
    move/from16 p2, v7

    .line 193
    .line 194
    goto/16 :goto_f

    .line 195
    .line 196
    :cond_6
    sget-object v8, Landroidx/compose/runtime/snapshots/SnapshotKt;->threadSnapshot:Lorg/acra/util/ProcessFinisher;

    .line 197
    .line 198
    invoke-virtual {v8}, Lorg/acra/util/ProcessFinisher;->get()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    check-cast v8, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 203
    .line 204
    instance-of v10, v8, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 205
    .line 206
    if-eqz v10, :cond_7

    .line 207
    .line 208
    :try_start_5
    move-object v10, v8

    .line 209
    check-cast v10, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 210
    .line 211
    iget-wide v0, v10, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->threadId:J

    .line 212
    .line 213
    invoke-static {}, Landroidx/compose/runtime/internal/Expect_jvmKt;->currentThreadId()J

    .line 214
    .line 215
    .line 216
    move-result-wide v15

    .line 217
    cmp-long v0, v0, v15

    .line 218
    .line 219
    if-nez v0, :cond_7

    .line 220
    .line 221
    move-object v0, v8

    .line 222
    check-cast v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 223
    .line 224
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->readObserver:Lkotlin/jvm/functions/Function1;

    .line 225
    .line 226
    move-object v0, v8

    .line 227
    check-cast v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 228
    .line 229
    iget-object v10, v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->writeObserver:Lkotlin/jvm/functions/Function1;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 230
    .line 231
    :try_start_6
    move-object v0, v8

    .line 232
    check-cast v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 233
    .line 234
    invoke-static {v3, v1, v7}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedReadObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)Lkotlin/jvm/functions/Function1;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    iput-object v3, v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->readObserver:Lkotlin/jvm/functions/Function1;

    .line 239
    .line 240
    move-object v0, v8

    .line 241
    check-cast v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 242
    .line 243
    iput-object v10, v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->writeObserver:Lkotlin/jvm/functions/Function1;

    .line 244
    .line 245
    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 246
    .line 247
    .line 248
    :try_start_7
    move-object v0, v8

    .line 249
    check-cast v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 250
    .line 251
    iput-object v1, v0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->readObserver:Lkotlin/jvm/functions/Function1;

    .line 252
    .line 253
    check-cast v8, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 254
    .line 255
    iput-object v10, v8, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->writeObserver:Lkotlin/jvm/functions/Function1;

    .line 256
    .line 257
    goto :goto_7

    .line 258
    :catchall_2
    move-exception v0

    .line 259
    move-object/from16 v3, p0

    .line 260
    .line 261
    goto :goto_4

    .line 262
    :catchall_3
    move-exception v0

    .line 263
    move-object v3, v8

    .line 264
    check-cast v3, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 265
    .line 266
    iput-object v1, v3, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->readObserver:Lkotlin/jvm/functions/Function1;

    .line 267
    .line 268
    check-cast v8, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 269
    .line 270
    iput-object v10, v8, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->writeObserver:Lkotlin/jvm/functions/Function1;

    .line 271
    .line 272
    throw v0

    .line 273
    :cond_7
    if-eqz v8, :cond_9

    .line 274
    .line 275
    instance-of v0, v8, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 276
    .line 277
    if-eqz v0, :cond_8

    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_8
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/snapshots/Snapshot;->takeNestedSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    move-object v15, v0

    .line 285
    goto :goto_6

    .line 286
    :cond_9
    :goto_5
    new-instance v15, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 287
    .line 288
    instance-of v0, v8, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 289
    .line 290
    if-eqz v0, :cond_a

    .line 291
    .line 292
    move-object v11, v8

    .line 293
    check-cast v11, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 294
    .line 295
    :cond_a
    move-object/from16 v16, v11

    .line 296
    .line 297
    const/16 v19, 0x1

    .line 298
    .line 299
    const/16 v20, 0x0

    .line 300
    .line 301
    const/16 v18, 0x0

    .line 302
    .line 303
    move-object/from16 v17, v3

    .line 304
    .line 305
    invoke-direct/range {v15 .. v20}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;-><init>(Landroidx/compose/runtime/snapshots/MutableSnapshot;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 306
    .line 307
    .line 308
    :goto_6
    :try_start_8
    invoke-virtual {v15}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 309
    .line 310
    .line 311
    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 312
    :try_start_9
    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 313
    .line 314
    .line 315
    :try_start_a
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 316
    .line 317
    .line 318
    :try_start_b
    invoke-virtual {v15}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 319
    .line 320
    .line 321
    :goto_7
    :try_start_c
    iget v0, v9, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 322
    .line 323
    sub-int/2addr v0, v7

    .line 324
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    iget-object v0, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    iget v1, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    .line 333
    .line 334
    iget-object v3, v12, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    .line 335
    .line 336
    if-eqz v3, :cond_11

    .line 337
    .line 338
    iget-object v8, v3, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    .line 339
    .line 340
    array-length v9, v8

    .line 341
    add-int/lit8 v9, v9, -0x2

    .line 342
    .line 343
    if-ltz v9, :cond_11

    .line 344
    .line 345
    move v11, v7

    .line 346
    move-object v15, v8

    .line 347
    const/4 v10, 0x0

    .line 348
    :goto_8
    aget-wide v7, v15, v10

    .line 349
    .line 350
    move/from16 p2, v11

    .line 351
    .line 352
    move-object/from16 v16, v12

    .line 353
    .line 354
    not-long v11, v7

    .line 355
    const/16 v17, 0x7

    .line 356
    .line 357
    shl-long v11, v11, v17

    .line 358
    .line 359
    and-long/2addr v11, v7

    .line 360
    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    and-long v11, v11, v17

    .line 366
    .line 367
    cmp-long v11, v11, v17

    .line 368
    .line 369
    if-eqz v11, :cond_10

    .line 370
    .line 371
    sub-int v11, v10, v9

    .line 372
    .line 373
    not-int v11, v11

    .line 374
    ushr-int/lit8 v11, v11, 0x1f

    .line 375
    .line 376
    const/16 v12, 0x8

    .line 377
    .line 378
    rsub-int/lit8 v11, v11, 0x8

    .line 379
    .line 380
    move/from16 p3, v12

    .line 381
    .line 382
    const/4 v12, 0x0

    .line 383
    :goto_9
    if-ge v12, v11, :cond_f

    .line 384
    .line 385
    const-wide/16 v17, 0xff

    .line 386
    .line 387
    and-long v17, v7, v17

    .line 388
    .line 389
    const-wide/16 v19, 0x80

    .line 390
    .line 391
    cmp-long v17, v17, v19

    .line 392
    .line 393
    if-gez v17, :cond_d

    .line 394
    .line 395
    shl-int/lit8 v17, v10, 0x3

    .line 396
    .line 397
    move-wide/from16 v18, v7

    .line 398
    .line 399
    add-int v7, v17, v12

    .line 400
    .line 401
    iget-object v8, v3, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    .line 402
    .line 403
    aget-object v8, v8, v7

    .line 404
    .line 405
    move/from16 v17, v12

    .line 406
    .line 407
    iget-object v12, v3, Landroidx/collection/MutableObjectIntMap;->values:[I

    .line 408
    .line 409
    aget v12, v12, v7

    .line 410
    .line 411
    if-eq v12, v1, :cond_b

    .line 412
    .line 413
    move/from16 v12, p2

    .line 414
    .line 415
    goto :goto_a

    .line 416
    :cond_b
    const/4 v12, 0x0

    .line 417
    :goto_a
    if-eqz v12, :cond_c

    .line 418
    .line 419
    move/from16 v20, v1

    .line 420
    .line 421
    move-object/from16 v1, v16

    .line 422
    .line 423
    invoke-virtual {v1, v0, v8}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->removeObservation(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    goto :goto_b

    .line 427
    :cond_c
    move/from16 v20, v1

    .line 428
    .line 429
    move-object/from16 v1, v16

    .line 430
    .line 431
    :goto_b
    if-eqz v12, :cond_e

    .line 432
    .line 433
    invoke-virtual {v3, v7}, Landroidx/collection/MutableObjectIntMap;->removeValueAt(I)V

    .line 434
    .line 435
    .line 436
    goto :goto_c

    .line 437
    :cond_d
    move/from16 v20, v1

    .line 438
    .line 439
    move-wide/from16 v18, v7

    .line 440
    .line 441
    move/from16 v17, v12

    .line 442
    .line 443
    move-object/from16 v1, v16

    .line 444
    .line 445
    :cond_e
    :goto_c
    shr-long v7, v18, p3

    .line 446
    .line 447
    add-int/lit8 v12, v17, 0x1

    .line 448
    .line 449
    move-object/from16 v16, v1

    .line 450
    .line 451
    move/from16 v1, v20

    .line 452
    .line 453
    goto :goto_9

    .line 454
    :cond_f
    move/from16 v7, p3

    .line 455
    .line 456
    move/from16 v20, v1

    .line 457
    .line 458
    move-object/from16 v1, v16

    .line 459
    .line 460
    if-ne v11, v7, :cond_12

    .line 461
    .line 462
    goto :goto_d

    .line 463
    :cond_10
    move/from16 v20, v1

    .line 464
    .line 465
    move-object/from16 v1, v16

    .line 466
    .line 467
    :goto_d
    if-eq v10, v9, :cond_12

    .line 468
    .line 469
    add-int/lit8 v10, v10, 0x1

    .line 470
    .line 471
    move/from16 v11, p2

    .line 472
    .line 473
    move-object v12, v1

    .line 474
    move/from16 v1, v20

    .line 475
    .line 476
    goto/16 :goto_8

    .line 477
    .line 478
    :cond_11
    move-object v1, v12

    .line 479
    :cond_12
    iput-object v4, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    .line 480
    .line 481
    iput-object v5, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    .line 482
    .line 483
    iput v6, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 484
    .line 485
    move-object/from16 v3, p0

    .line 486
    .line 487
    iget-object v1, v3, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    .line 488
    .line 489
    monitor-enter v1

    .line 490
    :try_start_d
    iput-object v2, v3, Landroidx/preference/PreferenceManager;->mOnNavigateToScreenListener:Ljava/lang/Object;

    .line 491
    .line 492
    iput-wide v13, v3, Landroidx/preference/PreferenceManager;->mNextId:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 493
    .line 494
    monitor-exit v1

    .line 495
    return-void

    .line 496
    :catchall_4
    move-exception v0

    .line 497
    monitor-exit v1

    .line 498
    throw v0

    .line 499
    :catchall_5
    move-exception v0

    .line 500
    move-object/from16 v3, p0

    .line 501
    .line 502
    goto :goto_10

    .line 503
    :catchall_6
    move-exception v0

    .line 504
    move-object/from16 v3, p0

    .line 505
    .line 506
    move/from16 p2, v7

    .line 507
    .line 508
    goto :goto_e

    .line 509
    :catchall_7
    move-exception v0

    .line 510
    move-object/from16 v3, p0

    .line 511
    .line 512
    move/from16 p2, v7

    .line 513
    .line 514
    :try_start_e
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 515
    .line 516
    .line 517
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 518
    :catchall_8
    move-exception v0

    .line 519
    :goto_e
    :try_start_f
    invoke-virtual {v15}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 520
    .line 521
    .line 522
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 523
    :catchall_9
    move-exception v0

    .line 524
    :goto_f
    :try_start_10
    iget v1, v9, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 525
    .line 526
    add-int/lit8 v1, v1, -0x1

    .line 527
    .line 528
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    throw v0

    .line 532
    :catchall_a
    move-exception v0

    .line 533
    goto :goto_10

    .line 534
    :catchall_b
    move-exception v0

    .line 535
    move-object v3, v1

    .line 536
    monitor-exit v5

    .line 537
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 538
    :goto_10
    iget-object v1, v3, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    .line 539
    .line 540
    monitor-enter v1

    .line 541
    :try_start_11
    iput-object v2, v3, Landroidx/preference/PreferenceManager;->mOnNavigateToScreenListener:Ljava/lang/Object;

    .line 542
    .line 543
    iput-wide v13, v3, Landroidx/preference/PreferenceManager;->mNextId:J
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    .line 544
    .line 545
    monitor-exit v1

    .line 546
    throw v0

    .line 547
    :catchall_c
    move-exception v0

    .line 548
    monitor-exit v1

    .line 549
    throw v0

    .line 550
    :catchall_d
    move-exception v0

    .line 551
    monitor-exit v5

    .line 552
    throw v0
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceManager;->mEditor:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;

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
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/List;Ljava/lang/Object;)Ljava/util/ArrayList;

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
    new-instance v1, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;)V

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
