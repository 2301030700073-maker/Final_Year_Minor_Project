.class public final Landroidx/room/RoomConnectionManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/backend/api/SyncListener;


# instance fields
.field public final callbacks:Ljava/lang/Object;

.field public final configuration:Ljava/lang/Object;

.field public final connectionPool:Ljava/lang/Object;

.field public isConfigured:Z

.field public isInitializing:Z

.field public final openDelegate:Ljava/lang/Object;

.field public supportDatabase:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;)V
    .locals 3

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    .line 199
    new-instance p2, Landroidx/room/RoomConnectionManager$NoOpOpenDelegate;

    const/4 v0, -0x1

    .line 200
    const-string v1, ""

    invoke-direct {p2, v0, v1, v1}, Landroidx/room/RoomOpenDelegate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 201
    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    .line 202
    iget-object p2, p1, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    iput-object v1, p0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/lang/Object;

    .line 203
    new-instance v1, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    const/16 v2, 0x13

    invoke-direct {v1, v2, p0}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    if-nez p2, :cond_1

    move-object p2, v0

    .line 204
    :cond_1
    new-instance p0, Landroidx/work/impl/CleanupCallback;

    invoke-direct {p0, v1}, Landroidx/work/impl/CleanupCallback;-><init>(Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;)V

    .line 205
    invoke-static {p2, p0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 206
    iget-object p0, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    .line 207
    iget-object p2, p1, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/work/Data$Builder;

    .line 208
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 209
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 210
    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    .line 211
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    new-instance p0, Lkotlin/NotImplementedError;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/NotImplementedError;-><init>(I)V

    throw p0
.end method

.method public constructor <init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenDelegate;)V
    .locals 9

    .line 1
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    .line 4
    .line 5
    iget-object v4, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 19
    .line 20
    :cond_0
    iput-object v2, p0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->sqliteDriver:Landroidx/sqlite/SQLiteDriver;

    .line 23
    .line 24
    const/4 v8, 0x1

    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v3, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    new-instance v5, Lokio/PriorityQueue;

    .line 35
    .line 36
    iget p1, p2, Landroidx/room/RoomOpenDelegate;->version:I

    .line 37
    .line 38
    invoke-direct {v5, p0, p1}, Lokio/PriorityQueue;-><init>(Landroidx/room/RoomConnectionManager;I)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    invoke-direct/range {v2 .. v7}, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;-><init>(Landroid/content/Context;Ljava/lang/String;Lokio/PriorityQueue;ZZ)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Landroidx/room/driver/SupportSQLiteConnectionPool;

    .line 49
    .line 50
    new-instance p2, Landroidx/fragment/app/Fragment$7;

    .line 51
    .line 52
    invoke-interface {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v1, p2, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 63
    .line 64
    invoke-direct {p1, p2}, Landroidx/room/driver/SupportSQLiteConnectionPool;-><init>(Landroidx/fragment/app/Fragment$7;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Ljava/lang/Object;

    .line 68
    .line 69
    goto/16 :goto_3

    .line 70
    .line 71
    :cond_1
    const-string p0, "SQLiteManager was constructed with both null driver and open helper factory!"

    .line 72
    .line 73
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/4 p0, 0x0

    .line 77
    throw p0

    .line 78
    :cond_2
    if-nez v4, :cond_3

    .line 79
    .line 80
    new-instance p1, Landroidx/compose/ui/platform/WeakCache;

    .line 81
    .line 82
    invoke-direct {p1, p0, v2}, Landroidx/compose/ui/platform/WeakCache;-><init>(Landroidx/room/RoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V

    .line 83
    .line 84
    .line 85
    new-instance p2, Landroidx/room/coroutines/ConnectionPoolImpl;

    .line 86
    .line 87
    invoke-direct {p2, p1}, Landroidx/room/coroutines/ConnectionPoolImpl;-><init>(Landroidx/compose/ui/platform/WeakCache;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    new-instance p1, Landroidx/compose/ui/platform/WeakCache;

    .line 92
    .line 93
    invoke-direct {p1, p0, v2}, Landroidx/compose/ui/platform/WeakCache;-><init>(Landroidx/room/RoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    const/16 v1, 0x27

    .line 101
    .line 102
    const/4 v2, 0x2

    .line 103
    if-eq p2, v8, :cond_5

    .line 104
    .line 105
    if-ne p2, v2, :cond_4

    .line 106
    .line 107
    const/4 p2, 0x4

    .line 108
    goto :goto_0

    .line 109
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string p2, "Can\'t get max number of reader for journal mode \'"

    .line 114
    .line 115
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0

    .line 136
    :cond_5
    move p2, v8

    .line 137
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eq v3, v8, :cond_7

    .line 142
    .line 143
    if-ne v3, v2, :cond_6

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 147
    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string p2, "Can\'t get max number of writers for journal mode \'"

    .line 151
    .line 152
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p0

    .line 173
    :cond_7
    :goto_1
    new-instance v1, Landroidx/room/coroutines/ConnectionPoolImpl;

    .line 174
    .line 175
    invoke-direct {v1, p1, v4, p2}, Landroidx/room/coroutines/ConnectionPoolImpl;-><init>(Landroidx/compose/ui/platform/WeakCache;Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    move-object p2, v1

    .line 179
    :goto_2
    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Ljava/lang/Object;

    .line 180
    .line 181
    :goto_3
    sget-object p1, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    .line 182
    .line 183
    if-ne v0, p1, :cond_8

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_8
    const/4 v8, 0x0

    .line 187
    :goto_4
    invoke-virtual {p0}, Landroidx/room/RoomConnectionManager;->getSupportOpenHelper$room_runtime_release()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    if-eqz p0, :cond_9

    .line 192
    .line 193
    invoke-interface {p0, v8}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 194
    .line 195
    .line 196
    :cond_9
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;ZLcom/fsck/k9/helper/MutableBoolean;)V
    .locals 1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 215
    iput-boolean v0, p0, Landroidx/room/RoomConnectionManager;->isInitializing:Z

    .line 216
    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    .line 217
    iput-object p3, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    .line 218
    iput-boolean p4, p0, Landroidx/room/RoomConnectionManager;->isConfigured:Z

    .line 219
    iput-object p5, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Ljava/lang/Object;

    .line 220
    invoke-virtual {p1, p2}, Lcom/fsck/k9/controller/MessagingController;->getLocalStoreOrThrow(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/lang/Object;

    return-void
.end method

.method public static final access$configureDatabase(Landroidx/room/RoomConnectionManager;Landroidx/sqlite/SQLiteConnection;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/room/RoomOpenDelegate;

    .line 4
    .line 5
    const-string v1, "PRAGMA user_version = "

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Landroidx/room/DatabaseConfiguration;

    .line 10
    .line 11
    iget-object v3, v2, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 12
    .line 13
    sget-object v4, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    .line 14
    .line 15
    if-ne v3, v4, :cond_0

    .line 16
    .line 17
    const-string v3, "PRAGMA journal_mode = WAL"

    .line 18
    .line 19
    invoke-static {p1, v3}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v3, "PRAGMA journal_mode = TRUNCATE"

    .line 24
    .line 25
    invoke-static {p1, v3}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v2, v2, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 29
    .line 30
    if-ne v2, v4, :cond_1

    .line 31
    .line 32
    const-string v2, "PRAGMA synchronous = NORMAL"

    .line 33
    .line 34
    invoke-static {p1, v2}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const-string v2, "PRAGMA synchronous = FULL"

    .line 39
    .line 40
    invoke-static {p1, v2}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-static {p1}, Landroidx/room/RoomConnectionManager;->configureBusyTimeout(Landroidx/sqlite/SQLiteConnection;)V

    .line 44
    .line 45
    .line 46
    const-string v2, "PRAGMA user_version"

    .line 47
    .line 48
    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :try_start_0
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 53
    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 57
    .line 58
    .line 59
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    long-to-int v3, v3

    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-static {v2, v4}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    iget v0, v0, Landroidx/room/RoomOpenDelegate;->version:I

    .line 66
    .line 67
    if-eq v3, v0, :cond_5

    .line 68
    .line 69
    const-string v2, "BEGIN EXCLUSIVE TRANSACTION"

    .line 70
    .line 71
    invoke-static {p1, v2}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    if-nez v3, :cond_2

    .line 75
    .line 76
    :try_start_1
    invoke-virtual {p0, p1}, Landroidx/room/RoomConnectionManager;->onCreate(Landroidx/sqlite/SQLiteConnection;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    goto :goto_3

    .line 82
    :cond_2
    invoke-virtual {p0, p1, v3, v0}, Landroidx/room/RoomConnectionManager;->onMigrate(Landroidx/sqlite/SQLiteConnection;II)V

    .line 83
    .line 84
    .line 85
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :goto_3
    new-instance v1, Lkotlin/Result$Failure;

    .line 104
    .line 105
    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    move-object v0, v1

    .line 109
    :goto_4
    nop

    .line 110
    instance-of v1, v0, Lkotlin/Result$Failure;

    .line 111
    .line 112
    if-nez v1, :cond_3

    .line 113
    .line 114
    move-object v1, v0

    .line 115
    check-cast v1, Lkotlin/Unit;

    .line 116
    .line 117
    const-string v1, "END TRANSACTION"

    .line 118
    .line 119
    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-nez v0, :cond_4

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_4
    const-string p0, "ROLLBACK TRANSACTION"

    .line 130
    .line 131
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :cond_5
    :goto_5
    invoke-virtual {p0, p1}, Landroidx/room/RoomConnectionManager;->onOpen(Landroidx/sqlite/SQLiteConnection;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :catchall_1
    move-exception p0

    .line 140
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 141
    :catchall_2
    move-exception p1

    .line 142
    invoke-static {v2, p0}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    throw p1
.end method

.method public static configureBusyTimeout(Landroidx/sqlite/SQLiteConnection;)V
    .locals 5

    .line 1
    const-string v0, "PRAGMA busy_timeout"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v0, v3}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v3, 0xbb8

    .line 20
    .line 21
    cmp-long v0, v1, v3

    .line 22
    .line 23
    if-gez v0, :cond_0

    .line 24
    .line 25
    const-string v0, "PRAGMA busy_timeout = 3000"

    .line 26
    .line 27
    invoke-static {p0, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :catchall_1
    move-exception v1

    .line 34
    invoke-static {v0, p0}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw v1
.end method


# virtual methods
.method public folderStatusChanged(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/fsck/k9/controller/MessagingController;->getFolderId(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)Ljava/util/AbstractSet;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->folderStatusChanged(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public getSupportOpenHelper$room_runtime_release()Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/room/coroutines/ConnectionPool;

    .line 4
    .line 5
    instance-of v0, p0, Landroidx/room/driver/SupportSQLiteConnectionPool;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Landroidx/room/driver/SupportSQLiteConnectionPool;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v1

    .line 14
    :goto_0
    if-eqz p0, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteConnectionPool;->supportDriver:Landroidx/fragment/app/Fragment$7;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    return-object v1
.end method

.method public loadMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;
    .locals 3

    .line 1
    :try_start_0
    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/mailstore/LocalStore;

    .line 4
    .line 5
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore;->localMessageUidPrefixProvider:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;Lnet/thunderbird/core/preference/GeneralSettingsManager;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    const-string v0, ":"

    .line 24
    .line 25
    const-string v1, ")"

    .line 26
    .line 27
    const-string v2, "Couldn\'t load message ("

    .line 28
    .line 29
    invoke-static {v2, p1, v0, p2, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1, p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method

.method public onCreate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/room/RoomOpenDelegate;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    .line 9
    .line 10
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    const-wide/16 v6, 0x0

    .line 26
    .line 27
    cmp-long v2, v4, v6

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_3

    .line 35
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 36
    invoke-static {v1, v2}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->createAllTables(Landroidx/sqlite/SQLiteConnection;)V

    .line 40
    .line 41
    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onValidateSchema(Landroidx/sqlite/SQLiteConnection;)Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-boolean v2, v1, Lcom/fsck/k9/mailstore/LocalFolder$8;->val$includeDeleted:Z

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object p0, v1, Lcom/fsck/k9/mailstore/LocalFolder$8;->this$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p0, Ljava/lang/String;

    .line 56
    .line 57
    const-string p1, "Pre-packaged database has an invalid schema: "

    .line 58
    .line 59
    invoke-static {p0, p1}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/room/RoomConnectionManager;->updateIdentity(Landroidx/sqlite/SQLiteConnection;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onCreate(Landroidx/sqlite/SQLiteConnection;)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroidx/work/impl/CleanupCallback;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    instance-of v0, p1, Landroidx/room/driver/SupportSQLiteConnection;

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    move-object v0, p1

    .line 97
    check-cast v0, Landroidx/room/driver/SupportSQLiteConnection;

    .line 98
    .line 99
    iget-object v0, v0, Landroidx/room/driver/SupportSQLiteConnection;->db:Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    return-void

    .line 106
    :goto_3
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    :catchall_1
    move-exception p1

    .line 108
    invoke-static {v1, p0}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    throw p1
.end method

.method public onMigrate(Landroidx/sqlite/SQLiteConnection;II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v4, Landroidx/room/RoomOpenDelegate;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v5, v0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v5, Landroidx/room/DatabaseConfiguration;

    .line 19
    .line 20
    iget-object v6, v5, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/work/Data$Builder;

    .line 21
    .line 22
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x1

    .line 27
    if-ne v2, v3, :cond_0

    .line 28
    .line 29
    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 30
    .line 31
    goto/16 :goto_7

    .line 32
    .line 33
    :cond_0
    if-le v3, v2, :cond_1

    .line 34
    .line 35
    move v10, v9

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v10, v8

    .line 38
    :goto_0
    new-instance v11, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    move v12, v2

    .line 44
    :cond_2
    if-eqz v10, :cond_3

    .line 45
    .line 46
    if-ge v12, v3, :cond_b

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    if-le v12, v3, :cond_b

    .line 50
    .line 51
    :goto_1
    iget-object v13, v6, Landroidx/work/Data$Builder;->values:Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    if-eqz v10, :cond_5

    .line 54
    .line 55
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v14

    .line 59
    invoke-virtual {v13, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v13

    .line 63
    check-cast v13, Ljava/util/TreeMap;

    .line 64
    .line 65
    if-nez v13, :cond_4

    .line 66
    .line 67
    :goto_2
    const/4 v15, 0x0

    .line 68
    goto :goto_3

    .line 69
    :cond_4
    invoke-virtual {v13}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    .line 70
    .line 71
    .line 72
    move-result-object v14

    .line 73
    new-instance v15, Lkotlin/Pair;

    .line 74
    .line 75
    invoke-direct {v15, v13, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_5
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    invoke-virtual {v13, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    check-cast v13, Ljava/util/TreeMap;

    .line 88
    .line 89
    if-nez v13, :cond_6

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_6
    invoke-virtual {v13}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 93
    .line 94
    .line 95
    move-result-object v14

    .line 96
    new-instance v15, Lkotlin/Pair;

    .line 97
    .line 98
    invoke-direct {v15, v13, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :goto_3
    if-nez v15, :cond_7

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_7
    iget-object v13, v15, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v13, Ljava/util/Map;

    .line 107
    .line 108
    iget-object v14, v15, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v14, Ljava/lang/Iterable;

    .line 111
    .line 112
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v14

    .line 116
    :cond_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v15

    .line 120
    if-eqz v15, :cond_a

    .line 121
    .line 122
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v15

    .line 126
    check-cast v15, Ljava/lang/Number;

    .line 127
    .line 128
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result v15

    .line 132
    if-eqz v10, :cond_9

    .line 133
    .line 134
    add-int/lit8 v7, v12, 0x1

    .line 135
    .line 136
    if-gt v7, v15, :cond_8

    .line 137
    .line 138
    if-gt v15, v3, :cond_8

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_9
    if-gt v3, v15, :cond_8

    .line 142
    .line 143
    if-ge v15, v12, :cond_8

    .line 144
    .line 145
    :goto_4
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move v7, v9

    .line 160
    move v12, v15

    .line 161
    goto :goto_5

    .line 162
    :cond_a
    move v7, v8

    .line 163
    :goto_5
    if-nez v7, :cond_2

    .line 164
    .line 165
    :goto_6
    const/4 v6, 0x0

    .line 166
    goto :goto_7

    .line 167
    :cond_b
    move-object v6, v11

    .line 168
    :goto_7
    if-eqz v6, :cond_e

    .line 169
    .line 170
    invoke-virtual {v4, v1}, Landroidx/room/RoomOpenDelegate;->onPreMigrate(Landroidx/sqlite/SQLiteConnection;)V

    .line 171
    .line 172
    .line 173
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-eqz v3, :cond_c

    .line 182
    .line 183
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    check-cast v3, Landroidx/room/migration/Migration;

    .line 188
    .line 189
    invoke-virtual {v3, v1}, Landroidx/room/migration/Migration;->migrate(Landroidx/sqlite/SQLiteConnection;)V

    .line 190
    .line 191
    .line 192
    goto :goto_8

    .line 193
    :cond_c
    invoke-virtual {v4, v1}, Landroidx/room/RoomOpenDelegate;->onValidateSchema(Landroidx/sqlite/SQLiteConnection;)Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    iget-boolean v3, v2, Lcom/fsck/k9/mailstore/LocalFolder$8;->val$includeDeleted:Z

    .line 198
    .line 199
    if-eqz v3, :cond_d

    .line 200
    .line 201
    invoke-virtual {v4, v1}, Landroidx/room/RoomOpenDelegate;->onPostMigrate(Landroidx/sqlite/SQLiteConnection;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual/range {p0 .. p1}, Landroidx/room/RoomConnectionManager;->updateIdentity(Landroidx/sqlite/SQLiteConnection;)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_d
    iget-object v0, v2, Lcom/fsck/k9/mailstore/LocalFolder$8;->this$0:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v0, Ljava/lang/String;

    .line 211
    .line 212
    const-string v1, "Migration didn\'t properly handle: "

    .line 213
    .line 214
    invoke-static {v0, v1}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :cond_e
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    if-le v2, v3, :cond_10

    .line 222
    .line 223
    iget-boolean v6, v5, Landroidx/room/DatabaseConfiguration;->allowDestructiveMigrationOnDowngrade:Z

    .line 224
    .line 225
    if-eqz v6, :cond_10

    .line 226
    .line 227
    :cond_f
    move v6, v8

    .line 228
    goto :goto_9

    .line 229
    :cond_10
    iget-object v6, v5, Landroidx/room/DatabaseConfiguration;->migrationNotRequiredFrom:Ljava/util/Set;

    .line 230
    .line 231
    iget-boolean v7, v5, Landroidx/room/DatabaseConfiguration;->requireMigration:Z

    .line 232
    .line 233
    if-eqz v7, :cond_f

    .line 234
    .line 235
    if-eqz v6, :cond_11

    .line 236
    .line 237
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    if-nez v6, :cond_f

    .line 246
    .line 247
    :cond_11
    move v6, v9

    .line 248
    :goto_9
    if-nez v6, :cond_1a

    .line 249
    .line 250
    iget-boolean v2, v5, Landroidx/room/DatabaseConfiguration;->allowDestructiveMigrationForAllTables:Z

    .line 251
    .line 252
    if-eqz v2, :cond_16

    .line 253
    .line 254
    const-string v2, "SELECT name, type FROM sqlite_master WHERE type = \'table\' OR type = \'view\'"

    .line 255
    .line 256
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    :try_start_0
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    :cond_12
    :goto_a
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    if-eqz v5, :cond_14

    .line 269
    .line 270
    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    const-string v6, "sqlite_"

    .line 275
    .line 276
    invoke-static {v5, v6, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 277
    .line 278
    .line 279
    move-result v6

    .line 280
    if-nez v6, :cond_12

    .line 281
    .line 282
    const-string v6, "android_metadata"

    .line 283
    .line 284
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v6

    .line 288
    if-eqz v6, :cond_13

    .line 289
    .line 290
    goto :goto_a

    .line 291
    :cond_13
    invoke-interface {v2, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    const-string/jumbo v7, "view"

    .line 296
    .line 297
    .line 298
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v6

    .line 302
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    new-instance v7, Lkotlin/Pair;

    .line 307
    .line 308
    invoke-direct {v7, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v3, v7}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    goto :goto_a

    .line 315
    :catchall_0
    move-exception v0

    .line 316
    move-object v1, v0

    .line 317
    goto :goto_c

    .line 318
    :cond_14
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 319
    .line 320
    .line 321
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    const/4 v5, 0x0

    .line 323
    invoke-static {v2, v5}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v3, v8}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    :goto_b
    move-object v3, v2

    .line 331
    check-cast v3, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 332
    .line 333
    invoke-virtual {v3}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    if-eqz v5, :cond_17

    .line 338
    .line 339
    invoke-virtual {v3}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    check-cast v3, Lkotlin/Pair;

    .line 344
    .line 345
    iget-object v5, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v5, Ljava/lang/String;

    .line 348
    .line 349
    iget-object v3, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v3, Ljava/lang/Boolean;

    .line 352
    .line 353
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    if-eqz v3, :cond_15

    .line 358
    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    const-string v6, "DROP VIEW IF EXISTS "

    .line 362
    .line 363
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    invoke-static {v1, v3}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    goto :goto_b

    .line 377
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    const-string v6, "DROP TABLE IF EXISTS "

    .line 380
    .line 381
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    invoke-static {v1, v3}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    goto :goto_b

    .line 395
    :goto_c
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 396
    :catchall_1
    move-exception v0

    .line 397
    invoke-static {v2, v1}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 398
    .line 399
    .line 400
    throw v0

    .line 401
    :cond_16
    invoke-virtual {v4, v1}, Landroidx/room/RoomOpenDelegate;->dropAllTables(Landroidx/sqlite/SQLiteConnection;)V

    .line 402
    .line 403
    .line 404
    :cond_17
    iget-object v0, v0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/lang/Object;

    .line 405
    .line 406
    check-cast v0, Ljava/util/List;

    .line 407
    .line 408
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    :cond_18
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 413
    .line 414
    .line 415
    move-result v2

    .line 416
    if-eqz v2, :cond_19

    .line 417
    .line 418
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    check-cast v2, Landroidx/work/impl/CleanupCallback;

    .line 423
    .line 424
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    instance-of v2, v1, Landroidx/room/driver/SupportSQLiteConnection;

    .line 428
    .line 429
    if-eqz v2, :cond_18

    .line 430
    .line 431
    move-object v2, v1

    .line 432
    check-cast v2, Landroidx/room/driver/SupportSQLiteConnection;

    .line 433
    .line 434
    iget-object v2, v2, Landroidx/room/driver/SupportSQLiteConnection;->db:Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 435
    .line 436
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    goto :goto_d

    .line 440
    :cond_19
    invoke-virtual {v4, v1}, Landroidx/room/RoomOpenDelegate;->createAllTables(Landroidx/sqlite/SQLiteConnection;)V

    .line 441
    .line 442
    .line 443
    return-void

    .line 444
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 445
    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    const-string v4, "A migration from "

    .line 449
    .line 450
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    const-string v2, " to "

    .line 457
    .line 458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    const-string v2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* functions."

    .line 465
    .line 466
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    throw v0
.end method

.method public onOpen(Landroidx/sqlite/SQLiteConnection;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/room/RoomOpenDelegate;

    .line 7
    .line 8
    const-string v1, "Pre-packaged database has an invalid schema: "

    .line 9
    .line 10
    const-string v2, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name = \'room_master_table\'"

    .line 11
    .line 12
    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    :try_start_0
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v5, 0x0

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 25
    .line 26
    .line 27
    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    const-wide/16 v8, 0x0

    .line 29
    .line 30
    cmp-long v3, v6, v8

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    move v3, v4

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto/16 :goto_7

    .line 38
    .line 39
    :cond_0
    move v3, v5

    .line 40
    :goto_0
    const/4 v6, 0x0

    .line 41
    invoke-static {v2, v6}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    const-string v1, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    .line 47
    .line 48
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :try_start_1
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    goto :goto_1

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    move-object v2, v6

    .line 66
    :goto_1
    invoke-static {v1, v6}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Landroidx/room/RoomOpenDelegate;->identityHash:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v1, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_6

    .line 78
    .line 79
    iget-object v1, v0, Landroidx/room/RoomOpenDelegate;->legacyIdentityHash:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v1, Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_2
    iget-object p0, v0, Landroidx/room/RoomOpenDelegate;->identityHash:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p0, Ljava/lang/String;

    .line 93
    .line 94
    const-string p1, ", found: "

    .line 95
    .line 96
    const-string v0, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: "

    .line 97
    .line 98
    invoke-static {v0, p0, p1, v2}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :goto_2
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 103
    :catchall_2
    move-exception p1

    .line 104
    invoke-static {v1, p0}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_3
    const-string v2, "BEGIN EXCLUSIVE TRANSACTION"

    .line 109
    .line 110
    invoke-static {p1, v2}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :try_start_3
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onValidateSchema(Landroidx/sqlite/SQLiteConnection;)Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    iget-boolean v3, v2, Lcom/fsck/k9/mailstore/LocalFolder$8;->val$includeDeleted:Z

    .line 118
    .line 119
    if-eqz v3, :cond_4

    .line 120
    .line 121
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onPostMigrate(Landroidx/sqlite/SQLiteConnection;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p1}, Landroidx/room/RoomConnectionManager;->updateIdentity(Landroidx/sqlite/SQLiteConnection;)V

    .line 125
    .line 126
    .line 127
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :catchall_3
    move-exception v1

    .line 131
    goto :goto_3

    .line 132
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v2, Lcom/fsck/k9/mailstore/LocalFolder$8;->this$0:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v1, Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 158
    :goto_3
    new-instance v2, Lkotlin/Result$Failure;

    .line 159
    .line 160
    invoke-direct {v2, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    move-object v1, v2

    .line 164
    :goto_4
    nop

    .line 165
    instance-of v2, v1, Lkotlin/Result$Failure;

    .line 166
    .line 167
    if-nez v2, :cond_5

    .line 168
    .line 169
    move-object v2, v1

    .line 170
    check-cast v2, Lkotlin/Unit;

    .line 171
    .line 172
    const-string v2, "END TRANSACTION"

    .line 173
    .line 174
    invoke-static {p1, v2}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_5
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    if-nez v1, :cond_9

    .line 182
    .line 183
    :cond_6
    :goto_5
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onOpen(Landroidx/sqlite/SQLiteConnection;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v0, Ljava/util/List;

    .line 189
    .line 190
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    :cond_7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_8

    .line 199
    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    check-cast v1, Landroidx/work/impl/CleanupCallback;

    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    instance-of v2, p1, Landroidx/room/driver/SupportSQLiteConnection;

    .line 210
    .line 211
    if-eqz v2, :cond_7

    .line 212
    .line 213
    move-object v2, p1

    .line 214
    check-cast v2, Landroidx/room/driver/SupportSQLiteConnection;

    .line 215
    .line 216
    iget-object v2, v2, Landroidx/room/driver/SupportSQLiteConnection;->db:Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 217
    .line 218
    iget v3, v1, Landroidx/work/impl/CleanupCallback;->$r8$classId:I

    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    packed-switch v3, :pswitch_data_0

    .line 224
    .line 225
    .line 226
    iget-object v1, v1, Landroidx/work/impl/CleanupCallback;->clock:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v1, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 229
    .line 230
    invoke-virtual {v1, v2}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    goto :goto_6

    .line 234
    :pswitch_0
    invoke-virtual {v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->beginTransaction()V

    .line 235
    .line 236
    .line 237
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const-string v5, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < "

    .line 240
    .line 241
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-object v1, v1, Landroidx/work/impl/CleanupCallback;->clock:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v1, Landroidx/work/SystemClock;

    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 252
    .line 253
    .line 254
    move-result-wide v5

    .line 255
    const-wide/32 v7, 0x5265c00

    .line 256
    .line 257
    .line 258
    sub-long/2addr v5, v7

    .line 259
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v1, " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    .line 263
    .line 264
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v2, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->endTransaction()V

    .line 278
    .line 279
    .line 280
    goto :goto_6

    .line 281
    :catchall_4
    move-exception p0

    .line 282
    invoke-virtual {v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->endTransaction()V

    .line 283
    .line 284
    .line 285
    throw p0

    .line 286
    :cond_8
    iput-boolean v4, p0, Landroidx/room/RoomConnectionManager;->isConfigured:Z

    .line 287
    .line 288
    return-void

    .line 289
    :cond_9
    const-string p0, "ROLLBACK TRANSACTION"

    .line 290
    .line 291
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    throw v1

    .line 295
    :goto_7
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 296
    :catchall_5
    move-exception p1

    .line 297
    invoke-static {v2, p0}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 298
    .line 299
    .line 300
    throw p1

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public syncAuthenticationSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, p0, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->clearAuthenticationErrorNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;ZZ)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lcom/fsck/k9/notification/NotificationController;->authenticationErrorNotificationController:Lcom/fsck/k9/notification/AuthenticationErrorNotificationController;

    .line 23
    .line 24
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    mul-int/lit8 p0, p0, 0x10

    .line 29
    .line 30
    add-int/lit8 p0, p0, 0x6

    .line 31
    .line 32
    iget-object v0, v0, Lcom/fsck/k9/notification/AuthenticationErrorNotificationController;->notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/fsck/k9/notification/NotificationHelper;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public syncFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Landroidx/room/RoomConnectionManager;->isInitializing:Z

    .line 7
    .line 8
    instance-of v2, p3, Lcom/fsck/k9/mail/AuthenticationFailedException;

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v3, Lcom/fsck/k9/controller/MessagingController;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v3, v0, v1}, Lcom/fsck/k9/controller/MessagingController;->handleAuthenticationFailure(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v3, v0, p3, v1}, Lcom/fsck/k9/controller/MessagingController;->notifyUserIfCertificateProblem(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/Exception;Z)V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {v3, v0, p1}, Lcom/fsck/k9/controller/MessagingController;->getFolderId(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 30
    .line 31
    invoke-virtual {v3, p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)Ljava/util/AbstractSet;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1, v2, p2}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->synchronizeMailboxFailed(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    return-void
.end method

.method public syncFinished(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/fsck/k9/controller/MessagingController;->getFolderId(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)Ljava/util/AbstractSet;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 36
    .line 37
    invoke-virtual {p1, v1, v2, v3}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->synchronizeMailboxFinished(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public syncFlagChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/fsck/k9/controller/MessagingController;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroidx/room/RoomConnectionManager;->loadMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    sget-object v2, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 14
    .line 15
    iget-object v3, p2, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 16
    .line 17
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    iget-wide v2, p2, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 24
    .line 25
    iget-object v4, p2, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 26
    .line 27
    iget-wide v5, v4, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 28
    .line 29
    iget-object v4, v4, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 30
    .line 31
    iget-object v4, v4, Lcom/fsck/k9/mailstore/LocalStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 32
    .line 33
    iget-object v4, v4, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v4}, Lcom/fsck/k9/mailstore/MessageListCache;->getCache(Ljava/lang/String;)Lcom/fsck/k9/mailstore/MessageListCache;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/fsck/k9/mailstore/MessageListCache;->isMessageHidden(JJ)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object p0, p2, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 47
    .line 48
    iget-object p1, v1, Lcom/fsck/k9/controller/MessagingController;->notificationStrategy:Lcom/fsck/k9/notification/K9NotificationStrategy;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p1, v0, p0, p2, v2}, Lcom/fsck/k9/notification/K9NotificationStrategy;->shouldNotifyForMessage(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mailstore/LocalMessage;Z)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    :goto_0
    iget-object v2, p2, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p0, p1, v2}, Landroidx/room/RoomConnectionManager;->syncRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalMessage;->makeMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    iget-object p1, v1, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 68
    .line 69
    invoke-virtual {p1, v0, p0}, Lcom/fsck/k9/notification/NotificationController;->removeNewMailNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public syncHeadersFinished(ILjava/lang/String;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lcom/fsck/k9/controller/MessagingController;

    .line 4
    .line 5
    iget-object p3, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p3, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 8
    .line 9
    invoke-virtual {p1, p3}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)Ljava/util/AbstractSet;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    check-cast p3, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 32
    .line 33
    invoke-virtual {p3, v0, p2}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->synchronizeMailboxHeadersFinished(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public syncHeadersProgress(ILjava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)Ljava/util/AbstractSet;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 32
    .line 33
    invoke-virtual {v1, v2, p2, p1, p3}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->synchronizeMailboxHeadersProgress(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;II)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public syncHeadersStarted(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lcom/fsck/k9/controller/MessagingController;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)Ljava/util/AbstractSet;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public syncNewMessage(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/room/RoomConnectionManager;->loadMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p2, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 6
    .line 7
    iget-boolean v1, p0, Landroidx/room/RoomConnectionManager;->isConfigured:Z

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lcom/fsck/k9/controller/MessagingController;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/fsck/k9/controller/MessagingController;->notificationStrategy:Lcom/fsck/k9/notification/K9NotificationStrategy;

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/fsck/k9/notification/K9NotificationStrategy;->shouldNotifyForMessage(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalFolder;Lcom/fsck/k9/mailstore/LocalMessage;Z)Z

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    iget-object p3, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p3, Lcom/fsck/k9/helper/MutableBoolean;

    .line 30
    .line 31
    iget-boolean p3, p3, Lcom/fsck/k9/helper/MutableBoolean;->value:Z

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const-string v2, "Creating notification for message %s:%s:%s"

    .line 50
    .line 51
    iget-object v3, p2, Lcom/fsck/k9/mailstore/LocalMessage;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 52
    .line 53
    iget-object v3, v3, Lcom/fsck/k9/mailstore/LocalStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 54
    .line 55
    iget-object v3, v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v4, p2, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 58
    .line 59
    iget-wide v4, v4, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 60
    .line 61
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iget-object v5, p2, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 66
    .line 67
    const/4 v6, 0x3

    .line 68
    new-array v6, v6, [Ljava/lang/Object;

    .line 69
    .line 70
    const/4 v7, 0x0

    .line 71
    aput-object v3, v6, v7

    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    aput-object v4, v6, v3

    .line 75
    .line 76
    const/4 v4, 0x2

    .line 77
    aput-object v5, v6, v4

    .line 78
    .line 79
    invoke-static {v2, v6}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, v0, Lcom/fsck/k9/notification/NotificationController;->newMailNotificationController:Lcom/fsck/k9/notification/NewMailNotificationController;

    .line 83
    .line 84
    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v2, v0, Lcom/fsck/k9/notification/NewMailNotificationController;->newMailNotificationManager:Lcom/fsck/k9/notification/NewMailNotificationManager;

    .line 86
    .line 87
    invoke-virtual {v2, v1, p2, p3}, Lcom/fsck/k9/notification/NewMailNotificationManager;->addNewMailNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalMessage;Z)Lcom/fsck/k9/notification/NewMailNotificationData;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    if-eqz p3, :cond_0

    .line 92
    .line 93
    invoke-virtual {v0, p3}, Lcom/fsck/k9/notification/NewMailNotificationController;->processNewMailNotificationData(Lcom/fsck/k9/notification/NewMailNotificationData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    goto :goto_1

    .line 99
    :cond_0
    :goto_0
    monitor-exit v0

    .line 100
    iget-object p3, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p3, Lcom/fsck/k9/helper/MutableBoolean;

    .line 103
    .line 104
    iput-boolean v3, p3, Lcom/fsck/k9/helper/MutableBoolean;->value:Z

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    throw p0

    .line 109
    :cond_1
    :goto_2
    sget-object p3, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 110
    .line 111
    iget-object v0, p2, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 112
    .line 113
    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    if-nez p3, :cond_2

    .line 118
    .line 119
    iget-object p3, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast p3, Lcom/fsck/k9/controller/MessagingController;

    .line 122
    .line 123
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v0, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 126
    .line 127
    invoke-virtual {p3, v0}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)Ljava/util/AbstractSet;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_2

    .line 140
    .line 141
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 146
    .line 147
    iget-object v1, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 150
    .line 151
    invoke-virtual {v0, v1, p1, p2}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->synchronizeMailboxNewMessage(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalMessage;)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_2
    return-void
.end method

.method public syncProgress(ILjava/lang/String;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 9
    .line 10
    invoke-virtual {v0, v2, p2}, Lcom/fsck/k9/controller/MessagingController;->getFolderId(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v5

    .line 14
    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)Ljava/util/AbstractSet;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    move-object v3, p2

    .line 37
    check-cast v3, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 38
    .line 39
    move-object v4, v1

    .line 40
    check-cast v4, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 41
    .line 42
    move v7, p1

    .line 43
    move v8, p3

    .line 44
    invoke-virtual/range {v3 .. v8}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->synchronizeMailboxProgress(Lnet/thunderbird/core/android/account/LegacyAccountDto;JII)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method public syncRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/fsck/k9/controller/MessagingController;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)Ljava/util/AbstractSet;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 32
    .line 33
    invoke-virtual {v2, v0, p1, p2}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->synchronizeMailboxRemovedMessage(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p0, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v0, p1}, Lcom/fsck/k9/controller/MessagingController;->getFolderId(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    new-instance p1, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 44
    .line 45
    invoke-direct {p1, v2, v3, p0, p2}, Lapp/k9mail/legacy/message/controller/MessageReference;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, v1, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 49
    .line 50
    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/notification/NotificationController;->removeNewMailNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public syncStarted(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/room/RoomConnectionManager;->configuration:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/fsck/k9/controller/MessagingController;->getFolderId(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)Ljava/util/AbstractSet;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 36
    .line 37
    invoke-virtual {p1, v1, v2, v3}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->synchronizeMailboxStarted(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public updateIdentity(Landroidx/sqlite/SQLiteConnection;)V
    .locals 2

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroidx/room/RoomOpenDelegate;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/room/RoomOpenDelegate;->identityHash:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, "\')"

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
