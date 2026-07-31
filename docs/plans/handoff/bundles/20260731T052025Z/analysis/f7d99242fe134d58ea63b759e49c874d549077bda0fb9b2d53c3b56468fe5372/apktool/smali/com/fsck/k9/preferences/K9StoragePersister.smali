.class public final Lcom/fsck/k9/preferences/K9StoragePersister;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final context:Landroid/content/Context;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final migrationHelper:Lcom/jcraft/jzlib/Adler32;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/thunderbird/core/logging/Logger;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/jcraft/jzlib/Adler32;

    .line 5
    .line 6
    const/16 v1, 0x13

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/jcraft/jzlib/Adler32;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/fsck/k9/preferences/K9StoragePersister;->migrationHelper:Lcom/jcraft/jzlib/Adler32;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/fsck/k9/preferences/K9StoragePersister;->context:Landroid/content/Context;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/fsck/k9/preferences/K9StoragePersister;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final loadValues()Lnet/thunderbird/core/preference/storage/InMemoryStorage;
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v4

    .line 5
    new-instance v0, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/16 v1, 0x15

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iget-object v6, p0, Lcom/fsck/k9/preferences/K9StoragePersister;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    invoke-interface {v6, v7, v7, v0}, Lnet/thunderbird/core/logging/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/K9StoragePersister;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    .line 20
    .line 21
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    new-instance v8, Lnet/thunderbird/core/preference/storage/InMemoryStorage;

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/fsck/k9/preferences/K9StoragePersister;->readAllValues(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v8, p0, v6}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;-><init>(Ljava/util/HashMap;Lnet/thunderbird/core/logging/Logger;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    .line 30
    .line 31
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    new-instance v0, Lcom/fsck/k9/preferences/K9StorageEditor$$ExternalSyntheticLambda3;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/preferences/K9StorageEditor$$ExternalSyntheticLambda3;-><init>(IJJ)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v6, v7, v7, v0}, Lnet/thunderbird/core/logging/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 45
    .line 46
    .line 47
    return-object v8

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    move-object p0, v0

    .line 50
    goto :goto_1

    .line 51
    :catchall_1
    move-exception v0

    .line 52
    move-object p0, v0

    .line 53
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_2
    move-exception v0

    .line 58
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    new-instance v0, Lcom/fsck/k9/preferences/K9StorageEditor$$ExternalSyntheticLambda3;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/preferences/K9StorageEditor$$ExternalSyntheticLambda3;-><init>(IJJ)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v6, v7, v7, v0}, Lnet/thunderbird/core/logging/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 73
    .line 74
    .line 75
    throw p0
.end method

.method public final openDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/preferences/K9StoragePersister;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "preferences_storage"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/16 v2, 0x1e

    .line 19
    .line 20
    if-gt v1, v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v4, 0x1

    .line 27
    if-ge v1, v4, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Lcom/fsck/k9/preferences/K9StoragePersister;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 30
    .line 31
    new-instance v1, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    const/16 v4, 0x16

    .line 34
    .line 35
    invoke-direct {v1, v4}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, v3, v3, v1}, Lnet/thunderbird/core/logging/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 39
    .line 40
    .line 41
    const-string p0, "DROP TABLE IF EXISTS preferences_storage"

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string p0, "CREATE TABLE preferences_storage (primkey TEXT PRIMARY KEY ON CONFLICT REPLACE, value TEXT)"

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/preferences/K9StoragePersister;->migrationHelper:Lcom/jcraft/jzlib/Adler32;

    .line 56
    .line 57
    invoke-static {v0, p0}, Landroidx/room/util/DBUtil;->upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/jcraft/jzlib/Adler32;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-ne p0, v2, :cond_1

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_1
    const-string p0, "Storage database upgrade failed!"

    .line 77
    .line 78
    invoke-static {p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object v3

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/AssertionError;

    .line 85
    .line 86
    const-string v1, "Database downgrades are not supported. Please fix the database \'preferences_storage\' manually or clear app data."

    .line 87
    .line 88
    invoke-direct {p0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method public final readAllValues(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    const-string v2, "SELECT primkey, value FROM preferences_storage"

    .line 8
    .line 9
    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v4, p0, Lcom/fsck/k9/preferences/K9StoragePersister;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 30
    .line 31
    new-instance v5, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 32
    .line 33
    const/16 v6, 0x18

    .line 34
    .line 35
    invoke-direct {v5, v6, v2, v3}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v4, v1, v1, v5}, Lnet/thunderbird/core/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    move-object v1, p1

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    sget-object p0, Lcom/fsck/k9/helper/Utility;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    .line 49
    .line 50
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    :goto_1
    invoke-static {v1}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method
