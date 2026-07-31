.class public final Landroidx/room/RoomDatabase$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public allowDestructiveMigrationForAllTables:Z

.field public allowDestructiveMigrationOnDowngrade:Z

.field public allowMainThreadQueries:Z

.field public final autoCloseTimeout:J

.field public final autoMigrationSpecs:Ljava/util/ArrayList;

.field public final callbacks:Ljava/util/ArrayList;

.field public final context:Landroid/content/Context;

.field public final inMemoryTrackingTableMode:Z

.field public final journalMode:Landroidx/room/RoomDatabase$JournalMode;

.field public final klass:Lkotlin/jvm/internal/ClassReference;

.field public final migrationContainer:Landroidx/work/Data$Builder;

.field public final migrationStartAndEndVersions:Ljava/util/LinkedHashSet;

.field public final migrationsNotRequiredFrom:Ljava/util/LinkedHashSet;

.field public final name:Ljava/lang/String;

.field public queryExecutor:Ljava/util/concurrent/Executor;

.field public requireMigration:Z

.field public supportOpenHelperFactory:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

.field public transactionExecutor:Ljava/util/concurrent/Executor;

.field public final typeConverters:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->callbacks:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->typeConverters:Ljava/util/ArrayList;

    .line 17
    .line 18
    sget-object v0, Landroidx/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroidx/room/RoomDatabase$JournalMode;

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 21
    .line 22
    const-wide/16 v0, -0x1

    .line 23
    .line 24
    iput-wide v0, p0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeout:J

    .line 25
    .line 26
    new-instance v0, Landroidx/work/Data$Builder;

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    invoke-direct {v0, v1}, Landroidx/work/Data$Builder;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Landroidx/work/Data$Builder;

    .line 33
    .line 34
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->migrationsNotRequiredFrom:Ljava/util/LinkedHashSet;

    .line 40
    .line 41
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/LinkedHashSet;

    .line 47
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->autoMigrationSpecs:Ljava/util/ArrayList;

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    .line 57
    .line 58
    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->inMemoryTrackingTableMode:Z

    .line 59
    .line 60
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->klass:Lkotlin/jvm/internal/ClassReference;

    .line 65
    .line 66
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->context:Landroid/content/Context;

    .line 67
    .line 68
    iput-object p3, p0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public final varargs addMigrations([Landroidx/room/migration/Migration;)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    .line 6
    aget-object v3, p1, v2

    .line 7
    .line 8
    iget v4, v3, Landroidx/room/migration/Migration;->startVersion:I

    .line 9
    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    iget-object v5, p0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/LinkedHashSet;

    .line 15
    .line 16
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget v3, v3, Landroidx/room/migration/Migration;->endVersion:I

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    array-length v0, p1

    .line 32
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, [Landroidx/room/migration/Migration;

    .line 37
    .line 38
    iget-object p0, p0, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Landroidx/work/Data$Builder;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    array-length v0, p1

    .line 44
    :goto_1
    if-ge v1, v0, :cond_1

    .line 45
    .line 46
    aget-object v2, p1, v1

    .line 47
    .line 48
    invoke-virtual {p0, v2}, Landroidx/work/Data$Builder;->addMigration(Landroidx/room/migration/Migration;)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    return-void
.end method

.method public final build()Landroidx/room/RoomDatabase;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    sget-object v1, Landroidx/arch/core/executor/ArchTaskExecutor;->sIOThreadExecutor:Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    if-nez v1, :cond_2

    .line 28
    .line 29
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 30
    .line 31
    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 32
    .line 33
    :cond_2
    :goto_0
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/LinkedHashSet;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v15, v0, Landroidx/room/RoomDatabase$Builder;->migrationsNotRequiredFrom:Ljava/util/LinkedHashSet;

    .line 39
    .line 40
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x0

    .line 48
    if-nez v2, :cond_4

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Ljava/lang/Number;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-interface {v15, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const-string v0, "Inconsistency detected. A Migration was supplied to addMigration() that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(). Start version is: "

    .line 82
    .line 83
    invoke-static {v2, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-object v3

    .line 91
    :cond_4
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->supportOpenHelperFactory:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    if-nez v1, :cond_5

    .line 94
    .line 95
    new-instance v1, Lio/noties/markwon/BlockHandlerDef;

    .line 96
    .line 97
    const/16 v2, 0x16

    .line 98
    .line 99
    invoke-direct {v1, v2}, Lio/noties/markwon/BlockHandlerDef;-><init>(I)V

    .line 100
    .line 101
    .line 102
    :cond_5
    move-object v5, v1

    .line 103
    iget-wide v1, v0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeout:J

    .line 104
    .line 105
    const-wide/16 v6, 0x0

    .line 106
    .line 107
    cmp-long v1, v1, v6

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    const/4 v4, 0x1

    .line 111
    if-lez v1, :cond_6

    .line 112
    .line 113
    move v1, v4

    .line 114
    goto :goto_2

    .line 115
    :cond_6
    move v1, v2

    .line 116
    :goto_2
    const-string v6, "Required value was null."

    .line 117
    .line 118
    if-eqz v1, :cond_8

    .line 119
    .line 120
    iget-object v0, v0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    .line 121
    .line 122
    if-eqz v0, :cond_7

    .line 123
    .line 124
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-object v3

    .line 128
    :cond_7
    const-string v0, "Cannot create auto-closing database for an in-memory database."

    .line 129
    .line 130
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-object v3

    .line 134
    :cond_8
    move v1, v2

    .line 135
    new-instance v2, Landroidx/room/DatabaseConfiguration;

    .line 136
    .line 137
    iget-boolean v8, v0, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries:Z

    .line 138
    .line 139
    iget-object v7, v0, Landroidx/room/RoomDatabase$Builder;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 140
    .line 141
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    move-object v9, v3

    .line 145
    iget-object v3, v0, Landroidx/room/RoomDatabase$Builder;->context:Landroid/content/Context;

    .line 146
    .line 147
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    sget-object v10, Landroidx/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroidx/room/RoomDatabase$JournalMode;

    .line 151
    .line 152
    if-eq v7, v10, :cond_9

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_9
    const-string v7, "activity"

    .line 156
    .line 157
    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    instance-of v10, v7, Landroid/app/ActivityManager;

    .line 162
    .line 163
    if-eqz v10, :cond_a

    .line 164
    .line 165
    check-cast v7, Landroid/app/ActivityManager;

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_a
    move-object v7, v9

    .line 169
    :goto_3
    if-eqz v7, :cond_b

    .line 170
    .line 171
    invoke-virtual {v7}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-nez v7, :cond_b

    .line 176
    .line 177
    sget-object v7, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_b
    sget-object v7, Landroidx/room/RoomDatabase$JournalMode;->TRUNCATE:Landroidx/room/RoomDatabase$JournalMode;

    .line 181
    .line 182
    :goto_4
    iget-object v10, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 183
    .line 184
    if-eqz v10, :cond_31

    .line 185
    .line 186
    iget-object v11, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 187
    .line 188
    if-eqz v11, :cond_30

    .line 189
    .line 190
    iget-boolean v13, v0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    .line 191
    .line 192
    iget-boolean v14, v0, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    .line 193
    .line 194
    iget-boolean v6, v0, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationForAllTables:Z

    .line 195
    .line 196
    const/16 v22, 0x0

    .line 197
    .line 198
    const/16 v23, 0x0

    .line 199
    .line 200
    move v12, v4

    .line 201
    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    .line 202
    .line 203
    move/from16 v21, v6

    .line 204
    .line 205
    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Landroidx/work/Data$Builder;

    .line 206
    .line 207
    move-object/from16 v16, v9

    .line 208
    .line 209
    move-object v9, v7

    .line 210
    iget-object v7, v0, Landroidx/room/RoomDatabase$Builder;->callbacks:Ljava/util/ArrayList;

    .line 211
    .line 212
    move/from16 v17, v12

    .line 213
    .line 214
    move-object/from16 v18, v16

    .line 215
    .line 216
    const/16 v16, 0x0

    .line 217
    .line 218
    move/from16 v19, v17

    .line 219
    .line 220
    const/16 v17, 0x0

    .line 221
    .line 222
    move-object/from16 v20, v18

    .line 223
    .line 224
    const/16 v18, 0x0

    .line 225
    .line 226
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->typeConverters:Ljava/util/ArrayList;

    .line 227
    .line 228
    iget-object v12, v0, Landroidx/room/RoomDatabase$Builder;->autoMigrationSpecs:Ljava/util/ArrayList;

    .line 229
    .line 230
    move/from16 v20, v19

    .line 231
    .line 232
    move-object/from16 v19, v1

    .line 233
    .line 234
    move/from16 v1, v20

    .line 235
    .line 236
    move-object/from16 v20, v12

    .line 237
    .line 238
    const/4 v12, 0x0

    .line 239
    invoke-direct/range {v2 .. v23}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/work/Data$Builder;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Ljava/util/List;Ljava/util/List;ZLandroidx/sqlite/SQLiteDriver;Lkotlin/coroutines/CoroutineContext;)V

    .line 240
    .line 241
    .line 242
    iget-boolean v3, v0, Landroidx/room/RoomDatabase$Builder;->inMemoryTrackingTableMode:Z

    .line 243
    .line 244
    iput-boolean v3, v2, Landroidx/room/DatabaseConfiguration;->useTempTrackingTable:Z

    .line 245
    .line 246
    iget-object v0, v0, Landroidx/room/RoomDatabase$Builder;->klass:Lkotlin/jvm/internal/ClassReference;

    .line 247
    .line 248
    invoke-static {v0}, Landroidx/work/OperationKt;->getJavaClass(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    if-eqz v0, :cond_c

    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    if-nez v0, :cond_d

    .line 263
    .line 264
    :cond_c
    const-string v0, ""

    .line 265
    .line 266
    :cond_d
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    if-nez v5, :cond_e

    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    add-int/2addr v5, v1

    .line 285
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    :goto_5
    const/16 v5, 0x5f

    .line 290
    .line 291
    const/16 v6, 0x2e

    .line 292
    .line 293
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    const-string v5, "_Impl"

    .line 301
    .line 302
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 307
    .line 308
    .line 309
    move-result v5

    .line 310
    if-nez v5, :cond_f

    .line 311
    .line 312
    move-object v0, v4

    .line 313
    goto :goto_6

    .line 314
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    :goto_6
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 333
    .line 334
    .line 335
    move-result-object v5

    .line 336
    invoke-static {v0, v1, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    const/4 v9, 0x0

    .line 344
    invoke-virtual {v0, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 352
    move-object v12, v0

    .line 353
    check-cast v12, Landroidx/room/RoomDatabase;

    .line 354
    .line 355
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    iget-boolean v0, v2, Landroidx/room/DatabaseConfiguration;->useTempTrackingTable:Z

    .line 359
    .line 360
    iput-boolean v0, v12, Landroidx/room/RoomDatabase;->useTempTrackingTable:Z

    .line 361
    .line 362
    :try_start_1
    invoke-virtual {v12}, Landroidx/room/RoomDatabase;->createOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Lkotlin/NotImplementedError; {:try_start_1 .. :try_end_1} :catch_0

    .line 367
    .line 368
    .line 369
    goto :goto_7

    .line 370
    :catch_0
    const/4 v3, 0x0

    .line 371
    :goto_7
    if-eqz v3, :cond_2f

    .line 372
    .line 373
    new-instance v0, Lokio/FileMetadata;

    .line 374
    .line 375
    new-instance v10, Landroidx/room/RoomDatabase$createConnectionManager$2;

    .line 376
    .line 377
    const/16 v16, 0x1

    .line 378
    .line 379
    const/16 v17, 0x2

    .line 380
    .line 381
    const/4 v11, 0x2

    .line 382
    const-class v13, Lkotlin/text/UStringsKt;

    .line 383
    .line 384
    const-string v14, "compatTransactionCoroutineExecute"

    .line 385
    .line 386
    const-string v15, "compatTransactionCoroutineExecute(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    .line 387
    .line 388
    invoke-direct/range {v10 .. v17}, Landroidx/room/RoomDatabase$createConnectionManager$2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 389
    .line 390
    .line 391
    invoke-direct {v0, v2, v3, v10}, Lokio/FileMetadata;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenDelegate;Landroidx/room/RoomDatabase$createConnectionManager$2;)V

    .line 392
    .line 393
    .line 394
    iput-object v0, v12, Landroidx/room/RoomDatabase;->connectionManager:Lokio/FileMetadata;

    .line 395
    .line 396
    invoke-virtual {v12}, Landroidx/room/RoomDatabase;->createInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    iput-object v0, v12, Landroidx/room/RoomDatabase;->internalTracker:Landroidx/room/InvalidationTracker;

    .line 401
    .line 402
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 403
    .line 404
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v12}, Landroidx/room/RoomDatabase;->getRequiredAutoMigrationSpecClasses()Ljava/util/Set;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    iget-object v4, v2, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    .line 412
    .line 413
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 414
    .line 415
    .line 416
    move-result v5

    .line 417
    new-array v6, v5, [Z

    .line 418
    .line 419
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 424
    .line 425
    .line 426
    move-result v7

    .line 427
    const/4 v8, -0x1

    .line 428
    if-eqz v7, :cond_14

    .line 429
    .line 430
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v7

    .line 434
    check-cast v7, Lkotlin/jvm/internal/ClassReference;

    .line 435
    .line 436
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 437
    .line 438
    .line 439
    move-result v9

    .line 440
    add-int/2addr v9, v8

    .line 441
    if-ltz v9, :cond_12

    .line 442
    .line 443
    :goto_9
    add-int/lit8 v10, v9, -0x1

    .line 444
    .line 445
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v11

    .line 449
    invoke-virtual {v7, v11}, Lkotlin/jvm/internal/ClassReference;->isInstance(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-result v11

    .line 453
    if-eqz v11, :cond_10

    .line 454
    .line 455
    aput-boolean v1, v6, v9

    .line 456
    .line 457
    move v8, v9

    .line 458
    goto :goto_a

    .line 459
    :cond_10
    if-gez v10, :cond_11

    .line 460
    .line 461
    goto :goto_a

    .line 462
    :cond_11
    move v9, v10

    .line 463
    goto :goto_9

    .line 464
    :cond_12
    :goto_a
    if-ltz v8, :cond_13

    .line 465
    .line 466
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v8

    .line 470
    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    goto :goto_8

    .line 474
    :cond_13
    invoke-virtual {v7}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    const-string v1, ") is missing in the database configuration."

    .line 479
    .line 480
    const-string v2, "A required auto migration spec ("

    .line 481
    .line 482
    invoke-static {v0, v1, v2}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    const/16 v24, 0x0

    .line 486
    .line 487
    return-object v24

    .line 488
    :cond_14
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 489
    .line 490
    .line 491
    move-result v3

    .line 492
    add-int/2addr v3, v8

    .line 493
    if-ltz v3, :cond_17

    .line 494
    .line 495
    :goto_b
    add-int/lit8 v4, v3, -0x1

    .line 496
    .line 497
    if-ge v3, v5, :cond_16

    .line 498
    .line 499
    aget-boolean v3, v6, v3

    .line 500
    .line 501
    if-eqz v3, :cond_16

    .line 502
    .line 503
    if-gez v4, :cond_15

    .line 504
    .line 505
    goto :goto_c

    .line 506
    :cond_15
    move v3, v4

    .line 507
    goto :goto_b

    .line 508
    :cond_16
    const-string v0, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    .line 509
    .line 510
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    const/16 v24, 0x0

    .line 514
    .line 515
    return-object v24

    .line 516
    :cond_17
    :goto_c
    invoke-virtual {v12, v0}, Landroidx/room/RoomDatabase;->createAutoMigrations(Ljava/util/LinkedHashMap;)Ljava/util/List;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    :cond_18
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 525
    .line 526
    .line 527
    move-result v3

    .line 528
    if-eqz v3, :cond_1b

    .line 529
    .line 530
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    check-cast v3, Landroidx/room/migration/Migration;

    .line 535
    .line 536
    iget v4, v3, Landroidx/room/migration/Migration;->startVersion:I

    .line 537
    .line 538
    iget v5, v3, Landroidx/room/migration/Migration;->endVersion:I

    .line 539
    .line 540
    iget-object v6, v2, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/work/Data$Builder;

    .line 541
    .line 542
    iget-object v7, v6, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 543
    .line 544
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 545
    .line 546
    .line 547
    move-result-object v9

    .line 548
    invoke-interface {v7, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 549
    .line 550
    .line 551
    move-result v9

    .line 552
    if-eqz v9, :cond_1a

    .line 553
    .line 554
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 555
    .line 556
    .line 557
    move-result-object v4

    .line 558
    invoke-virtual {v7, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v4

    .line 562
    check-cast v4, Ljava/util/Map;

    .line 563
    .line 564
    if-nez v4, :cond_19

    .line 565
    .line 566
    sget-object v4, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 567
    .line 568
    :cond_19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 569
    .line 570
    .line 571
    move-result-object v5

    .line 572
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result v4

    .line 576
    goto :goto_e

    .line 577
    :cond_1a
    const/4 v4, 0x0

    .line 578
    :goto_e
    if-nez v4, :cond_18

    .line 579
    .line 580
    invoke-virtual {v6, v3}, Landroidx/work/Data$Builder;->addMigration(Landroidx/room/migration/Migration;)V

    .line 581
    .line 582
    .line 583
    goto :goto_d

    .line 584
    :cond_1b
    invoke-virtual {v12}, Landroidx/room/RoomDatabase;->getRequiredTypeConverterClasses()Ljava/util/LinkedHashMap;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    iget-object v3, v2, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    .line 589
    .line 590
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 591
    .line 592
    .line 593
    move-result v4

    .line 594
    new-array v4, v4, [Z

    .line 595
    .line 596
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 605
    .line 606
    .line 607
    move-result v5

    .line 608
    if-eqz v5, :cond_21

    .line 609
    .line 610
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v5

    .line 614
    check-cast v5, Ljava/util/Map$Entry;

    .line 615
    .line 616
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v6

    .line 620
    check-cast v6, Lkotlin/jvm/internal/ClassReference;

    .line 621
    .line 622
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v5

    .line 626
    check-cast v5, Ljava/util/List;

    .line 627
    .line 628
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 629
    .line 630
    .line 631
    move-result-object v5

    .line 632
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 633
    .line 634
    .line 635
    move-result v7

    .line 636
    if-eqz v7, :cond_1c

    .line 637
    .line 638
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v7

    .line 642
    check-cast v7, Lkotlin/jvm/internal/ClassReference;

    .line 643
    .line 644
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 645
    .line 646
    .line 647
    move-result v9

    .line 648
    add-int/2addr v9, v8

    .line 649
    if-ltz v9, :cond_1f

    .line 650
    .line 651
    :goto_10
    add-int/lit8 v10, v9, -0x1

    .line 652
    .line 653
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v11

    .line 657
    invoke-virtual {v7, v11}, Lkotlin/jvm/internal/ClassReference;->isInstance(Ljava/lang/Object;)Z

    .line 658
    .line 659
    .line 660
    move-result v11

    .line 661
    if-eqz v11, :cond_1d

    .line 662
    .line 663
    aput-boolean v1, v4, v9

    .line 664
    .line 665
    goto :goto_12

    .line 666
    :cond_1d
    if-gez v10, :cond_1e

    .line 667
    .line 668
    goto :goto_11

    .line 669
    :cond_1e
    move v9, v10

    .line 670
    goto :goto_10

    .line 671
    :cond_1f
    :goto_11
    move v9, v8

    .line 672
    :goto_12
    if-ltz v9, :cond_20

    .line 673
    .line 674
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v9

    .line 678
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 682
    .line 683
    .line 684
    iget-object v10, v12, Landroidx/room/RoomDatabase;->typeConverters:Ljava/util/LinkedHashMap;

    .line 685
    .line 686
    invoke-interface {v10, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    goto :goto_f

    .line 690
    :cond_20
    invoke-virtual {v7}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    invoke-virtual {v6}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    const-string v2, " is missing in the database configuration."

    .line 699
    .line 700
    const-string v3, "A required type converter ("

    .line 701
    .line 702
    const-string v4, ") for "

    .line 703
    .line 704
    invoke-static {v3, v0, v4, v1, v2}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 705
    .line 706
    .line 707
    const/16 v24, 0x0

    .line 708
    .line 709
    return-object v24

    .line 710
    :cond_21
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 711
    .line 712
    .line 713
    move-result v0

    .line 714
    add-int/2addr v0, v8

    .line 715
    if-ltz v0, :cond_24

    .line 716
    .line 717
    :goto_13
    add-int/lit8 v1, v0, -0x1

    .line 718
    .line 719
    aget-boolean v5, v4, v0

    .line 720
    .line 721
    if-eqz v5, :cond_23

    .line 722
    .line 723
    if-gez v1, :cond_22

    .line 724
    .line 725
    goto :goto_14

    .line 726
    :cond_22
    move v0, v1

    .line 727
    goto :goto_13

    .line 728
    :cond_23
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object v0

    .line 732
    const-string v1, "Unexpected type converter "

    .line 733
    .line 734
    const-string v2, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    .line 735
    .line 736
    invoke-static {v0, v2, v1}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    const/16 v24, 0x0

    .line 740
    .line 741
    return-object v24

    .line 742
    :cond_24
    :goto_14
    iget-object v0, v2, Landroidx/room/DatabaseConfiguration;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 743
    .line 744
    iput-object v0, v12, Landroidx/room/RoomDatabase;->internalQueryExecutor:Ljava/util/concurrent/Executor;

    .line 745
    .line 746
    new-instance v0, Landroidx/room/TransactionExecutor;

    .line 747
    .line 748
    iget-object v1, v2, Landroidx/room/DatabaseConfiguration;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 749
    .line 750
    const/4 v3, 0x0

    .line 751
    invoke-direct {v0, v1, v3}, Landroidx/room/TransactionExecutor;-><init>(Ljava/util/concurrent/Executor;I)V

    .line 752
    .line 753
    .line 754
    iput-object v0, v12, Landroidx/room/RoomDatabase;->internalTransactionExecutor:Landroidx/room/TransactionExecutor;

    .line 755
    .line 756
    iget-object v0, v12, Landroidx/room/RoomDatabase;->internalQueryExecutor:Ljava/util/concurrent/Executor;

    .line 757
    .line 758
    if-eqz v0, :cond_2e

    .line 759
    .line 760
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    .line 765
    .line 766
    .line 767
    move-result-object v1

    .line 768
    invoke-static {v0, v1}, Lnet/newpipe/app/AppKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 773
    .line 774
    .line 775
    move-result-object v0

    .line 776
    iput-object v0, v12, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 777
    .line 778
    iget-object v0, v0, Lkotlinx/coroutines/internal/ContextScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 779
    .line 780
    iget-object v1, v12, Landroidx/room/RoomDatabase;->internalTransactionExecutor:Landroidx/room/TransactionExecutor;

    .line 781
    .line 782
    if-eqz v1, :cond_2d

    .line 783
    .line 784
    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 785
    .line 786
    .line 787
    move-result-object v1

    .line 788
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    iput-object v0, v12, Landroidx/room/RoomDatabase;->transactionContext:Lkotlin/coroutines/CoroutineContext;

    .line 793
    .line 794
    iget-boolean v0, v2, Landroidx/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    .line 795
    .line 796
    iput-boolean v0, v12, Landroidx/room/RoomDatabase;->allowMainThreadQueries:Z

    .line 797
    .line 798
    iget-object v0, v12, Landroidx/room/RoomDatabase;->connectionManager:Lokio/FileMetadata;

    .line 799
    .line 800
    const-string v1, "connectionManager"

    .line 801
    .line 802
    if-eqz v0, :cond_2c

    .line 803
    .line 804
    iget-object v0, v0, Lokio/FileMetadata;->lastAccessedAtMillis:Ljava/lang/Object;

    .line 805
    .line 806
    check-cast v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 807
    .line 808
    if-nez v0, :cond_26

    .line 809
    .line 810
    :cond_25
    const/4 v3, 0x0

    .line 811
    goto :goto_16

    .line 812
    :cond_26
    move-object v3, v0

    .line 813
    :goto_15
    nop

    .line 814
    instance-of v0, v3, Landroidx/room/support/PrePackagedCopyOpenHelper;

    .line 815
    .line 816
    if-eqz v0, :cond_27

    .line 817
    .line 818
    goto :goto_16

    .line 819
    :cond_27
    instance-of v0, v3, Landroidx/room/DelegatingOpenHelper;

    .line 820
    .line 821
    if-eqz v0, :cond_25

    .line 822
    .line 823
    check-cast v3, Landroidx/room/DelegatingOpenHelper;

    .line 824
    .line 825
    invoke-interface {v3}, Landroidx/room/DelegatingOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 826
    .line 827
    .line 828
    move-result-object v3

    .line 829
    goto :goto_15

    .line 830
    :goto_16
    check-cast v3, Landroidx/room/support/PrePackagedCopyOpenHelper;

    .line 831
    .line 832
    iget-object v0, v12, Landroidx/room/RoomDatabase;->connectionManager:Lokio/FileMetadata;

    .line 833
    .line 834
    if-eqz v0, :cond_2b

    .line 835
    .line 836
    iget-object v0, v0, Lokio/FileMetadata;->lastAccessedAtMillis:Ljava/lang/Object;

    .line 837
    .line 838
    check-cast v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 839
    .line 840
    if-nez v0, :cond_29

    .line 841
    .line 842
    :cond_28
    const/4 v3, 0x0

    .line 843
    goto :goto_18

    .line 844
    :cond_29
    move-object v3, v0

    .line 845
    :goto_17
    nop

    .line 846
    instance-of v0, v3, Landroidx/room/support/AutoClosingRoomOpenHelper;

    .line 847
    .line 848
    if-eqz v0, :cond_2a

    .line 849
    .line 850
    goto :goto_18

    .line 851
    :cond_2a
    instance-of v0, v3, Landroidx/room/DelegatingOpenHelper;

    .line 852
    .line 853
    if-eqz v0, :cond_28

    .line 854
    .line 855
    check-cast v3, Landroidx/room/DelegatingOpenHelper;

    .line 856
    .line 857
    invoke-interface {v3}, Landroidx/room/DelegatingOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 858
    .line 859
    .line 860
    move-result-object v3

    .line 861
    goto :goto_17

    .line 862
    :goto_18
    check-cast v3, Landroidx/room/support/AutoClosingRoomOpenHelper;

    .line 863
    .line 864
    return-object v12

    .line 865
    :cond_2b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    const/16 v24, 0x0

    .line 869
    .line 870
    throw v24

    .line 871
    :cond_2c
    const/16 v24, 0x0

    .line 872
    .line 873
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    throw v24

    .line 877
    :cond_2d
    const/16 v24, 0x0

    .line 878
    .line 879
    const-string v0, "internalTransactionExecutor"

    .line 880
    .line 881
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 882
    .line 883
    .line 884
    throw v24

    .line 885
    :cond_2e
    const/16 v24, 0x0

    .line 886
    .line 887
    const-string v0, "internalQueryExecutor"

    .line 888
    .line 889
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 890
    .line 891
    .line 892
    throw v24

    .line 893
    :cond_2f
    new-instance v0, Lokio/FileMetadata;

    .line 894
    .line 895
    new-instance v1, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 896
    .line 897
    invoke-direct {v1, v12}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(Landroidx/room/RoomDatabase;)V

    .line 898
    .line 899
    .line 900
    new-instance v10, Landroidx/room/RoomDatabase$createConnectionManager$2;

    .line 901
    .line 902
    const/16 v16, 0x1

    .line 903
    .line 904
    const/16 v17, 0x0

    .line 905
    .line 906
    const/4 v11, 0x2

    .line 907
    const-class v13, Lkotlin/text/UStringsKt;

    .line 908
    .line 909
    const-string v14, "compatTransactionCoroutineExecute"

    .line 910
    .line 911
    const-string v15, "compatTransactionCoroutineExecute(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    .line 912
    .line 913
    invoke-direct/range {v10 .. v17}, Landroidx/room/RoomDatabase$createConnectionManager$2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 914
    .line 915
    .line 916
    invoke-direct {v0, v2, v1, v10}, Lokio/FileMetadata;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/work/Data$$ExternalSyntheticLambda0;Landroidx/room/RoomDatabase$createConnectionManager$2;)V

    .line 917
    .line 918
    .line 919
    const/16 v24, 0x0

    .line 920
    .line 921
    throw v24

    .line 922
    :catch_1
    move-exception v0

    .line 923
    goto :goto_19

    .line 924
    :catch_2
    move-exception v0

    .line 925
    goto :goto_1a

    .line 926
    :catch_3
    move-exception v0

    .line 927
    goto :goto_1b

    .line 928
    :goto_19
    new-instance v1, Ljava/lang/RuntimeException;

    .line 929
    .line 930
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object v2

    .line 934
    new-instance v3, Ljava/lang/StringBuilder;

    .line 935
    .line 936
    const-string v4, "Failed to create an instance of "

    .line 937
    .line 938
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 939
    .line 940
    .line 941
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    .line 943
    .line 944
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object v2

    .line 948
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 949
    .line 950
    .line 951
    throw v1

    .line 952
    :goto_1a
    new-instance v1, Ljava/lang/RuntimeException;

    .line 953
    .line 954
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v2

    .line 958
    new-instance v3, Ljava/lang/StringBuilder;

    .line 959
    .line 960
    const-string v4, "Cannot access the constructor "

    .line 961
    .line 962
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 963
    .line 964
    .line 965
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    .line 967
    .line 968
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 969
    .line 970
    .line 971
    move-result-object v2

    .line 972
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 973
    .line 974
    .line 975
    throw v1

    .line 976
    :goto_1b
    new-instance v1, Ljava/lang/RuntimeException;

    .line 977
    .line 978
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 979
    .line 980
    .line 981
    move-result-object v2

    .line 982
    new-instance v3, Ljava/lang/StringBuilder;

    .line 983
    .line 984
    const-string v5, "Cannot find implementation for "

    .line 985
    .line 986
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 987
    .line 988
    .line 989
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    .line 991
    .line 992
    const-string v2, ". "

    .line 993
    .line 994
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    const-string v2, " does not exist. Is Room annotation processor correctly configured?"

    .line 1001
    .line 1002
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v2

    .line 1009
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1010
    .line 1011
    .line 1012
    throw v1

    .line 1013
    :cond_30
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    const/16 v24, 0x0

    .line 1017
    .line 1018
    return-object v24

    .line 1019
    :cond_31
    move-object/from16 v24, v9

    .line 1020
    .line 1021
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    return-object v24
.end method
