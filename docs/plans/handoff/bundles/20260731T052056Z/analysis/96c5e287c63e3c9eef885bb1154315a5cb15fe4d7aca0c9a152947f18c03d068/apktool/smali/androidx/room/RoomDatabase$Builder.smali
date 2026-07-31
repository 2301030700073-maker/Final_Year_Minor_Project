.class public final Landroidx/room/RoomDatabase$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public allowDestructiveMigrationForAllTables:Z

.field public allowDestructiveMigrationOnDowngrade:Z

.field public allowMainThreadQueries:Z

.field public final autoMigrationSpecs:Ljava/util/ArrayList;

.field public final callbacks:Ljava/util/ArrayList;

.field public final context:Landroid/content/Context;

.field public final journalMode:Landroidx/room/RoomDatabase$JournalMode;

.field public final klass:Lkotlin/reflect/KClass;

.field public final migrationContainer:Lcoil3/network/NetworkHeaders$Builder;

.field public final migrationStartAndEndVersions:Ljava/util/LinkedHashSet;

.field public final migrationsNotRequiredFrom:Ljava/util/LinkedHashSet;

.field public final name:Ljava/lang/String;

.field public queryExecutor:Ljava/util/concurrent/Executor;

.field public requireMigration:Z

.field public supportOpenHelperFactory:Lorg/wikipedia/commons/FilePageView$$ExternalSyntheticLambda1;

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
    new-instance v0, Lcoil3/network/NetworkHeaders$Builder;

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    invoke-direct {v0, v1}, Lcoil3/network/NetworkHeaders$Builder;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Lcoil3/network/NetworkHeaders$Builder;

    .line 29
    .line 30
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->migrationsNotRequiredFrom:Ljava/util/LinkedHashSet;

    .line 36
    .line 37
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/LinkedHashSet;

    .line 43
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->autoMigrationSpecs:Ljava/util/ArrayList;

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    .line 53
    .line 54
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 55
    .line 56
    invoke-virtual {v0, p2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->klass:Lkotlin/reflect/KClass;

    .line 61
    .line 62
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->context:Landroid/content/Context;

    .line 63
    .line 64
    iput-object p3, p0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    .line 65
    .line 66
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
    array-length v0, p1

    .line 39
    :goto_1
    if-ge v1, v0, :cond_1

    .line 40
    .line 41
    aget-object v2, p1, v1

    .line 42
    .line 43
    iget-object v3, p0, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Lcoil3/network/NetworkHeaders$Builder;

    .line 44
    .line 45
    invoke-virtual {v3, v2}, Lcoil3/network/NetworkHeaders$Builder;->addMigration(Landroidx/room/migration/Migration;)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
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
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iget-object v3, v0, Landroidx/room/RoomDatabase$Builder;->migrationsNotRequiredFrom:Ljava/util/LinkedHashSet;

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    if-nez v2, :cond_4

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/Number;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    const-string v0, "Inconsistency detected. A Migration was supplied to addMigration() that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(). Start version is: "

    .line 76
    .line 77
    invoke-static {v2, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-object v4

    .line 85
    :cond_4
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->supportOpenHelperFactory:Lorg/wikipedia/commons/FilePageView$$ExternalSyntheticLambda1;

    .line 86
    .line 87
    if-nez v1, :cond_5

    .line 88
    .line 89
    new-instance v1, Landroidx/collection/internal/Lock;

    .line 90
    .line 91
    const/16 v2, 0x13

    .line 92
    .line 93
    invoke-direct {v1, v2}, Landroidx/collection/internal/Lock;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :cond_5
    move-object v6, v1

    .line 97
    move-object/from16 v16, v3

    .line 98
    .line 99
    new-instance v3, Landroidx/room/DatabaseConfiguration;

    .line 100
    .line 101
    iget-boolean v9, v0, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries:Z

    .line 102
    .line 103
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    sget-object v2, Landroidx/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroidx/room/RoomDatabase$JournalMode;

    .line 109
    .line 110
    move-object v5, v4

    .line 111
    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->context:Landroid/content/Context;

    .line 112
    .line 113
    if-eq v1, v2, :cond_6

    .line 114
    .line 115
    :goto_2
    move-object v10, v1

    .line 116
    goto :goto_4

    .line 117
    :cond_6
    const-string v1, "activity"

    .line 118
    .line 119
    invoke-virtual {v4, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    instance-of v2, v1, Landroid/app/ActivityManager;

    .line 124
    .line 125
    if-eqz v2, :cond_7

    .line 126
    .line 127
    check-cast v1, Landroid/app/ActivityManager;

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_7
    move-object v1, v5

    .line 131
    :goto_3
    if-eqz v1, :cond_8

    .line 132
    .line 133
    invoke-virtual {v1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_8

    .line 138
    .line 139
    sget-object v1, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_8
    sget-object v1, Landroidx/room/RoomDatabase$JournalMode;->TRUNCATE:Landroidx/room/RoomDatabase$JournalMode;

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :goto_4
    iget-object v11, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 146
    .line 147
    const-string v1, "Required value was null."

    .line 148
    .line 149
    if-eqz v11, :cond_2e

    .line 150
    .line 151
    iget-object v12, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 152
    .line 153
    if-eqz v12, :cond_2d

    .line 154
    .line 155
    iget-boolean v14, v0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    .line 156
    .line 157
    iget-boolean v15, v0, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    .line 158
    .line 159
    iget-boolean v1, v0, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationForAllTables:Z

    .line 160
    .line 161
    const/16 v23, 0x0

    .line 162
    .line 163
    const/16 v24, 0x0

    .line 164
    .line 165
    move-object v2, v5

    .line 166
    iget-object v5, v0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    .line 167
    .line 168
    iget-object v7, v0, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Lcoil3/network/NetworkHeaders$Builder;

    .line 169
    .line 170
    iget-object v8, v0, Landroidx/room/RoomDatabase$Builder;->callbacks:Ljava/util/ArrayList;

    .line 171
    .line 172
    const/16 v17, 0x0

    .line 173
    .line 174
    const/16 v18, 0x0

    .line 175
    .line 176
    const/16 v19, 0x0

    .line 177
    .line 178
    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->typeConverters:Ljava/util/ArrayList;

    .line 179
    .line 180
    iget-object v13, v0, Landroidx/room/RoomDatabase$Builder;->autoMigrationSpecs:Ljava/util/ArrayList;

    .line 181
    .line 182
    move/from16 v22, v1

    .line 183
    .line 184
    move-object/from16 v20, v2

    .line 185
    .line 186
    move-object/from16 v21, v13

    .line 187
    .line 188
    const/4 v2, 0x0

    .line 189
    const/4 v13, 0x0

    .line 190
    invoke-direct/range {v3 .. v24}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Lcoil3/network/NetworkHeaders$Builder;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Ljava/util/List;Ljava/util/List;ZLandroidx/sqlite/SQLiteDriver;Lkotlin/coroutines/CoroutineContext;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, v0, Landroidx/room/RoomDatabase$Builder;->klass:Lkotlin/reflect/KClass;

    .line 194
    .line 195
    invoke-static {v0}, Lkotlin/UnsignedKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    if-eqz v0, :cond_9

    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    if-nez v0, :cond_a

    .line 210
    .line 211
    :cond_9
    const-string v0, ""

    .line 212
    .line 213
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    const/4 v6, 0x1

    .line 225
    if-nez v5, :cond_b

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    add-int/2addr v5, v6

    .line 233
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    :goto_5
    const/16 v5, 0x5f

    .line 238
    .line 239
    const/16 v7, 0x2e

    .line 240
    .line 241
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    const-string v5, "_Impl"

    .line 249
    .line 250
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-nez v5, :cond_c

    .line 259
    .line 260
    move-object v0, v4

    .line 261
    goto :goto_6

    .line 262
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    invoke-static {v0, v6, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 299
    move-object v9, v0

    .line 300
    check-cast v9, Landroidx/room/RoomDatabase;

    .line 301
    .line 302
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    iput-boolean v6, v9, Landroidx/room/RoomDatabase;->useTempTrackingTable:Z

    .line 306
    .line 307
    :try_start_1
    invoke-virtual {v9}, Landroidx/room/RoomDatabase;->createOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Lkotlin/NotImplementedError; {:try_start_1 .. :try_end_1} :catch_0

    .line 312
    .line 313
    .line 314
    goto :goto_7

    .line 315
    :catch_0
    move-object v4, v2

    .line 316
    :goto_7
    if-eqz v4, :cond_2c

    .line 317
    .line 318
    new-instance v0, Lokio/FileMetadata;

    .line 319
    .line 320
    new-instance v7, Landroidx/room/RoomDatabase$createConnectionManager$2;

    .line 321
    .line 322
    const/4 v13, 0x1

    .line 323
    const/4 v14, 0x4

    .line 324
    const/4 v8, 0x2

    .line 325
    const-class v10, Landroidx/compose/ui/unit/DpKt;

    .line 326
    .line 327
    const-string v11, "compatTransactionCoroutineExecute"

    .line 328
    .line 329
    const-string v12, "compatTransactionCoroutineExecute(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    .line 330
    .line 331
    invoke-direct/range {v7 .. v14}, Landroidx/room/RoomDatabase$createConnectionManager$2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 332
    .line 333
    .line 334
    invoke-direct {v0, v3, v4, v7}, Lokio/FileMetadata;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenDelegate;Landroidx/room/RoomDatabase$createConnectionManager$2;)V

    .line 335
    .line 336
    .line 337
    iput-object v0, v9, Landroidx/room/RoomDatabase;->connectionManager:Lokio/FileMetadata;

    .line 338
    .line 339
    invoke-virtual {v9}, Landroidx/room/RoomDatabase;->createInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    iput-object v0, v9, Landroidx/room/RoomDatabase;->internalTracker:Landroidx/room/InvalidationTracker;

    .line 344
    .line 345
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 346
    .line 347
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v9}, Landroidx/room/RoomDatabase;->getRequiredAutoMigrationSpecClasses()Ljava/util/Set;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    iget-object v4, v3, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    .line 355
    .line 356
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    new-array v7, v5, [Z

    .line 361
    .line 362
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 367
    .line 368
    .line 369
    move-result v8

    .line 370
    const/4 v10, -0x1

    .line 371
    if-eqz v8, :cond_11

    .line 372
    .line 373
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v8

    .line 377
    check-cast v8, Lkotlin/reflect/KClass;

    .line 378
    .line 379
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 380
    .line 381
    .line 382
    move-result v11

    .line 383
    add-int/2addr v11, v10

    .line 384
    if-ltz v11, :cond_f

    .line 385
    .line 386
    :goto_9
    add-int/lit8 v12, v11, -0x1

    .line 387
    .line 388
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v13

    .line 392
    invoke-interface {v8, v13}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v13

    .line 396
    if-eqz v13, :cond_d

    .line 397
    .line 398
    aput-boolean v6, v7, v11

    .line 399
    .line 400
    move v10, v11

    .line 401
    goto :goto_a

    .line 402
    :cond_d
    if-gez v12, :cond_e

    .line 403
    .line 404
    goto :goto_a

    .line 405
    :cond_e
    move v11, v12

    .line 406
    goto :goto_9

    .line 407
    :cond_f
    :goto_a
    if-ltz v10, :cond_10

    .line 408
    .line 409
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v10

    .line 413
    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    goto :goto_8

    .line 417
    :cond_10
    invoke-interface {v8}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    const-string v1, ") is missing in the database configuration."

    .line 422
    .line 423
    const-string v3, "A required auto migration spec ("

    .line 424
    .line 425
    invoke-static {v0, v1, v3}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    return-object v2

    .line 429
    :cond_11
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    add-int/2addr v1, v10

    .line 434
    if-ltz v1, :cond_14

    .line 435
    .line 436
    :goto_b
    add-int/lit8 v4, v1, -0x1

    .line 437
    .line 438
    if-ge v1, v5, :cond_13

    .line 439
    .line 440
    aget-boolean v1, v7, v1

    .line 441
    .line 442
    if-eqz v1, :cond_13

    .line 443
    .line 444
    if-gez v4, :cond_12

    .line 445
    .line 446
    goto :goto_c

    .line 447
    :cond_12
    move v1, v4

    .line 448
    goto :goto_b

    .line 449
    :cond_13
    const-string v0, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    .line 450
    .line 451
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    return-object v2

    .line 455
    :cond_14
    :goto_c
    invoke-virtual {v9, v0}, Landroidx/room/RoomDatabase;->createAutoMigrations(Ljava/util/LinkedHashMap;)Ljava/util/List;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    :cond_15
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    if-eqz v1, :cond_18

    .line 468
    .line 469
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    check-cast v1, Landroidx/room/migration/Migration;

    .line 474
    .line 475
    iget v4, v1, Landroidx/room/migration/Migration;->startVersion:I

    .line 476
    .line 477
    iget v5, v1, Landroidx/room/migration/Migration;->endVersion:I

    .line 478
    .line 479
    iget-object v7, v3, Landroidx/room/DatabaseConfiguration;->migrationContainer:Lcoil3/network/NetworkHeaders$Builder;

    .line 480
    .line 481
    iget-object v8, v7, Lcoil3/network/NetworkHeaders$Builder;->data:Ljava/util/LinkedHashMap;

    .line 482
    .line 483
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 484
    .line 485
    .line 486
    move-result-object v11

    .line 487
    invoke-interface {v8, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v11

    .line 491
    if-eqz v11, :cond_17

    .line 492
    .line 493
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 494
    .line 495
    .line 496
    move-result-object v4

    .line 497
    invoke-virtual {v8, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    check-cast v4, Ljava/util/Map;

    .line 502
    .line 503
    if-nez v4, :cond_16

    .line 504
    .line 505
    sget-object v4, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 506
    .line 507
    :cond_16
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 508
    .line 509
    .line 510
    move-result-object v5

    .line 511
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v4

    .line 515
    goto :goto_e

    .line 516
    :cond_17
    const/4 v4, 0x0

    .line 517
    :goto_e
    if-nez v4, :cond_15

    .line 518
    .line 519
    invoke-virtual {v7, v1}, Lcoil3/network/NetworkHeaders$Builder;->addMigration(Landroidx/room/migration/Migration;)V

    .line 520
    .line 521
    .line 522
    goto :goto_d

    .line 523
    :cond_18
    invoke-virtual {v9}, Landroidx/room/RoomDatabase;->getRequiredTypeConverterClasses()Ljava/util/LinkedHashMap;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    iget-object v1, v3, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    .line 528
    .line 529
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 530
    .line 531
    .line 532
    move-result v4

    .line 533
    new-array v4, v4, [Z

    .line 534
    .line 535
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 544
    .line 545
    .line 546
    move-result v5

    .line 547
    if-eqz v5, :cond_1e

    .line 548
    .line 549
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v5

    .line 553
    check-cast v5, Ljava/util/Map$Entry;

    .line 554
    .line 555
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v7

    .line 559
    check-cast v7, Lkotlin/reflect/KClass;

    .line 560
    .line 561
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v5

    .line 565
    check-cast v5, Ljava/util/List;

    .line 566
    .line 567
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 568
    .line 569
    .line 570
    move-result-object v5

    .line 571
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 572
    .line 573
    .line 574
    move-result v8

    .line 575
    if-eqz v8, :cond_19

    .line 576
    .line 577
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v8

    .line 581
    check-cast v8, Lkotlin/reflect/KClass;

    .line 582
    .line 583
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 584
    .line 585
    .line 586
    move-result v11

    .line 587
    add-int/2addr v11, v10

    .line 588
    if-ltz v11, :cond_1c

    .line 589
    .line 590
    :goto_10
    add-int/lit8 v12, v11, -0x1

    .line 591
    .line 592
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v13

    .line 596
    invoke-interface {v8, v13}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    move-result v13

    .line 600
    if-eqz v13, :cond_1a

    .line 601
    .line 602
    aput-boolean v6, v4, v11

    .line 603
    .line 604
    goto :goto_12

    .line 605
    :cond_1a
    if-gez v12, :cond_1b

    .line 606
    .line 607
    goto :goto_11

    .line 608
    :cond_1b
    move v11, v12

    .line 609
    goto :goto_10

    .line 610
    :cond_1c
    :goto_11
    move v11, v10

    .line 611
    :goto_12
    if-ltz v11, :cond_1d

    .line 612
    .line 613
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v11

    .line 617
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 621
    .line 622
    .line 623
    iget-object v12, v9, Landroidx/room/RoomDatabase;->typeConverters:Ljava/util/LinkedHashMap;

    .line 624
    .line 625
    invoke-interface {v12, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    goto :goto_f

    .line 629
    :cond_1d
    invoke-interface {v8}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    invoke-interface {v7}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    const-string v3, " is missing in the database configuration."

    .line 638
    .line 639
    const-string v4, "A required type converter ("

    .line 640
    .line 641
    const-string v5, ") for "

    .line 642
    .line 643
    invoke-static {v4, v0, v5, v1, v3}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 644
    .line 645
    .line 646
    return-object v2

    .line 647
    :cond_1e
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 648
    .line 649
    .line 650
    move-result v0

    .line 651
    add-int/2addr v0, v10

    .line 652
    if-ltz v0, :cond_21

    .line 653
    .line 654
    :goto_13
    add-int/lit8 v5, v0, -0x1

    .line 655
    .line 656
    aget-boolean v6, v4, v0

    .line 657
    .line 658
    if-eqz v6, :cond_20

    .line 659
    .line 660
    if-gez v5, :cond_1f

    .line 661
    .line 662
    goto :goto_14

    .line 663
    :cond_1f
    move v0, v5

    .line 664
    goto :goto_13

    .line 665
    :cond_20
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    const-string v1, "Unexpected type converter "

    .line 670
    .line 671
    const-string v3, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    .line 672
    .line 673
    invoke-static {v0, v3, v1}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    return-object v2

    .line 677
    :cond_21
    :goto_14
    iget-object v0, v3, Landroidx/room/DatabaseConfiguration;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 678
    .line 679
    iput-object v0, v9, Landroidx/room/RoomDatabase;->internalQueryExecutor:Ljava/util/concurrent/Executor;

    .line 680
    .line 681
    new-instance v0, Landroidx/room/TransactionExecutor;

    .line 682
    .line 683
    iget-object v1, v3, Landroidx/room/DatabaseConfiguration;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 684
    .line 685
    invoke-direct {v0, v1}, Landroidx/room/TransactionExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    .line 686
    .line 687
    .line 688
    iput-object v0, v9, Landroidx/room/RoomDatabase;->internalTransactionExecutor:Landroidx/room/TransactionExecutor;

    .line 689
    .line 690
    iget-object v0, v9, Landroidx/room/RoomDatabase;->internalQueryExecutor:Ljava/util/concurrent/Executor;

    .line 691
    .line 692
    if-eqz v0, :cond_2b

    .line 693
    .line 694
    invoke-static {v0}, Lkotlinx/coroutines/AwaitKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    invoke-static {v0, v1}, Landroidx/work/OperationKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    invoke-static {v0}, Lkotlinx/coroutines/AwaitKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    iput-object v0, v9, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 711
    .line 712
    iget-object v0, v0, Lkotlinx/coroutines/internal/ContextScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 713
    .line 714
    iget-object v1, v9, Landroidx/room/RoomDatabase;->internalTransactionExecutor:Landroidx/room/TransactionExecutor;

    .line 715
    .line 716
    if-eqz v1, :cond_2a

    .line 717
    .line 718
    invoke-static {v1}, Lkotlinx/coroutines/AwaitKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    iput-object v0, v9, Landroidx/room/RoomDatabase;->transactionContext:Lkotlin/coroutines/CoroutineContext;

    .line 727
    .line 728
    iget-boolean v0, v3, Landroidx/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    .line 729
    .line 730
    iput-boolean v0, v9, Landroidx/room/RoomDatabase;->allowMainThreadQueries:Z

    .line 731
    .line 732
    iget-object v0, v9, Landroidx/room/RoomDatabase;->connectionManager:Lokio/FileMetadata;

    .line 733
    .line 734
    const-string v1, "connectionManager"

    .line 735
    .line 736
    if-eqz v0, :cond_29

    .line 737
    .line 738
    iget-object v0, v0, Lokio/FileMetadata;->lastAccessedAtMillis:Ljava/lang/Object;

    .line 739
    .line 740
    check-cast v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 741
    .line 742
    if-nez v0, :cond_23

    .line 743
    .line 744
    :cond_22
    move-object v4, v2

    .line 745
    goto :goto_16

    .line 746
    :cond_23
    move-object v4, v0

    .line 747
    :goto_15
    nop

    .line 748
    instance-of v0, v4, Landroidx/room/support/PrePackagedCopyOpenHelper;

    .line 749
    .line 750
    if-eqz v0, :cond_24

    .line 751
    .line 752
    goto :goto_16

    .line 753
    :cond_24
    instance-of v0, v4, Landroidx/room/DelegatingOpenHelper;

    .line 754
    .line 755
    if-eqz v0, :cond_22

    .line 756
    .line 757
    check-cast v4, Landroidx/room/DelegatingOpenHelper;

    .line 758
    .line 759
    invoke-interface {v4}, Landroidx/room/DelegatingOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 760
    .line 761
    .line 762
    move-result-object v4

    .line 763
    goto :goto_15

    .line 764
    :goto_16
    check-cast v4, Landroidx/room/support/PrePackagedCopyOpenHelper;

    .line 765
    .line 766
    iget-object v0, v9, Landroidx/room/RoomDatabase;->connectionManager:Lokio/FileMetadata;

    .line 767
    .line 768
    if-eqz v0, :cond_28

    .line 769
    .line 770
    iget-object v0, v0, Lokio/FileMetadata;->lastAccessedAtMillis:Ljava/lang/Object;

    .line 771
    .line 772
    check-cast v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 773
    .line 774
    if-nez v0, :cond_26

    .line 775
    .line 776
    :cond_25
    move-object v4, v2

    .line 777
    goto :goto_18

    .line 778
    :cond_26
    move-object v4, v0

    .line 779
    :goto_17
    nop

    .line 780
    instance-of v0, v4, Landroidx/room/support/AutoClosingRoomOpenHelper;

    .line 781
    .line 782
    if-eqz v0, :cond_27

    .line 783
    .line 784
    goto :goto_18

    .line 785
    :cond_27
    instance-of v0, v4, Landroidx/room/DelegatingOpenHelper;

    .line 786
    .line 787
    if-eqz v0, :cond_25

    .line 788
    .line 789
    check-cast v4, Landroidx/room/DelegatingOpenHelper;

    .line 790
    .line 791
    invoke-interface {v4}, Landroidx/room/DelegatingOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 792
    .line 793
    .line 794
    move-result-object v4

    .line 795
    goto :goto_17

    .line 796
    :goto_18
    check-cast v4, Landroidx/room/support/AutoClosingRoomOpenHelper;

    .line 797
    .line 798
    return-object v9

    .line 799
    :cond_28
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    throw v2

    .line 803
    :cond_29
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    throw v2

    .line 807
    :cond_2a
    const-string v0, "internalTransactionExecutor"

    .line 808
    .line 809
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    throw v2

    .line 813
    :cond_2b
    const-string v0, "internalQueryExecutor"

    .line 814
    .line 815
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    throw v2

    .line 819
    :cond_2c
    new-instance v0, Lokio/FileMetadata;

    .line 820
    .line 821
    new-instance v1, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 822
    .line 823
    invoke-direct {v1, v9}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(Landroidx/room/RoomDatabase;)V

    .line 824
    .line 825
    .line 826
    new-instance v7, Landroidx/room/RoomDatabase$createConnectionManager$2;

    .line 827
    .line 828
    const/4 v13, 0x1

    .line 829
    const/4 v14, 0x0

    .line 830
    const/4 v8, 0x2

    .line 831
    const-class v10, Landroidx/compose/ui/unit/DpKt;

    .line 832
    .line 833
    const-string v11, "compatTransactionCoroutineExecute"

    .line 834
    .line 835
    const-string v12, "compatTransactionCoroutineExecute(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    .line 836
    .line 837
    invoke-direct/range {v7 .. v14}, Landroidx/room/RoomDatabase$createConnectionManager$2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 838
    .line 839
    .line 840
    invoke-direct {v0, v3, v1, v7}, Lokio/FileMetadata;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/work/Data$$ExternalSyntheticLambda0;Landroidx/room/RoomDatabase$createConnectionManager$2;)V

    .line 841
    .line 842
    .line 843
    throw v2

    .line 844
    :catch_1
    move-exception v0

    .line 845
    goto :goto_19

    .line 846
    :catch_2
    move-exception v0

    .line 847
    goto :goto_1a

    .line 848
    :catch_3
    move-exception v0

    .line 849
    goto :goto_1b

    .line 850
    :goto_19
    new-instance v2, Ljava/lang/RuntimeException;

    .line 851
    .line 852
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v1

    .line 856
    new-instance v3, Ljava/lang/StringBuilder;

    .line 857
    .line 858
    const-string v4, "Failed to create an instance of "

    .line 859
    .line 860
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    .line 865
    .line 866
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v1

    .line 870
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 871
    .line 872
    .line 873
    throw v2

    .line 874
    :goto_1a
    new-instance v2, Ljava/lang/RuntimeException;

    .line 875
    .line 876
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v1

    .line 880
    new-instance v3, Ljava/lang/StringBuilder;

    .line 881
    .line 882
    const-string v4, "Cannot access the constructor "

    .line 883
    .line 884
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 895
    .line 896
    .line 897
    throw v2

    .line 898
    :goto_1b
    new-instance v2, Ljava/lang/RuntimeException;

    .line 899
    .line 900
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v1

    .line 904
    new-instance v3, Ljava/lang/StringBuilder;

    .line 905
    .line 906
    const-string v5, "Cannot find implementation for "

    .line 907
    .line 908
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    .line 913
    .line 914
    const-string v1, ". "

    .line 915
    .line 916
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    .line 918
    .line 919
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    .line 921
    .line 922
    const-string v1, " does not exist. Is Room annotation processor correctly configured?"

    .line 923
    .line 924
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    .line 926
    .line 927
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v1

    .line 931
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 932
    .line 933
    .line 934
    throw v2

    .line 935
    :cond_2d
    move-object v2, v5

    .line 936
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    return-object v2

    .line 940
    :cond_2e
    move-object v2, v5

    .line 941
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 942
    .line 943
    .line 944
    return-object v2
.end method
