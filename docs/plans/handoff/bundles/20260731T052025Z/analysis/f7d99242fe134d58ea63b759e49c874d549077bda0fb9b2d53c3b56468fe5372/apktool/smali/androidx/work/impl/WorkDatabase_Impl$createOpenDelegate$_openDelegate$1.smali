.class public final Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;
.super Landroidx/room/RoomOpenDelegate;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic this$0:Landroidx/work/impl/WorkDatabase_Impl;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 2
    .line 3
    const-string p1, "08b926448d86528e697981ddd30459f7"

    .line 4
    .line 5
    const-string v0, "149fd8ad55885d3fe3549a37a0163243"

    .line 6
    .line 7
    const/16 v1, 0x18

    .line 8
    .line 9
    invoke-direct {p0, v1, p1, v0}, Landroidx/room/RoomOpenDelegate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final createAllTables(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 5
    .line 6
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)"

    .line 10
    .line 11
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)"

    .line 15
    .line 16
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p0, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT NOT NULL, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL DEFAULT -1, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807, `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0, `stop_reason` INTEGER NOT NULL DEFAULT -256, `trace_tag` TEXT, `backoff_on_system_interruptions` INTEGER, `required_network_type` INTEGER NOT NULL, `required_network_request` BLOB NOT NULL DEFAULT x\'\', `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))"

    .line 20
    .line 21
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)"

    .line 30
    .line 31
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p0, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 35
    .line 36
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)"

    .line 40
    .line 41
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p0, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 45
    .line 46
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string p0, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 50
    .line 51
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)"

    .line 55
    .line 56
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string p0, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 60
    .line 61
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    .line 65
    .line 66
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 70
    .line 71
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'08b926448d86528e697981ddd30459f7\')"

    .line 75
    .line 76
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final dropAllTables(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "DROP TABLE IF EXISTS `Dependency`"

    .line 5
    .line 6
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string p0, "DROP TABLE IF EXISTS `WorkSpec`"

    .line 10
    .line 11
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p0, "DROP TABLE IF EXISTS `WorkTag`"

    .line 15
    .line 16
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p0, "DROP TABLE IF EXISTS `SystemIdInfo`"

    .line 20
    .line 21
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p0, "DROP TABLE IF EXISTS `WorkName`"

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p0, "DROP TABLE IF EXISTS `WorkProgress`"

    .line 30
    .line 31
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p0, "DROP TABLE IF EXISTS `Preference`"

    .line 35
    .line 36
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onCreate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onOpen(Landroidx/sqlite/SQLiteConnection;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "PRAGMA foreign_keys = ON"

    .line 5
    .line 6
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string v1, "PRAGMA query_only"

    .line 21
    .line 22
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->getBoolean()Z

    .line 30
    .line 31
    .line 32
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static {v1, v3}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    const-string v1, "PRAGMA temp_store = MEMORY"

    .line 40
    .line 41
    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v1, "PRAGMA recursive_triggers = 1"

    .line 45
    .line 46
    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v1, "DROP TABLE IF EXISTS room_table_modification_log"

    .line 50
    .line 51
    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-boolean v1, v0, Landroidx/room/TriggerBasedInvalidationTracker;->useTempTable:Z

    .line 55
    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    const-string v1, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    .line 59
    .line 60
    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const-string v1, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    .line 65
    .line 66
    const-string v2, "TEMP"

    .line 67
    .line 68
    const-string v3, ""

    .line 69
    .line 70
    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    iget-object p1, v0, Landroidx/room/TriggerBasedInvalidationTracker;->observedTableStates:Landroidx/compose/runtime/Latch;

    .line 78
    .line 79
    iget-object v0, p1, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 84
    .line 85
    .line 86
    const/4 v1, 0x1

    .line 87
    :try_start_1
    iput-boolean v1, p1, Landroidx/compose/runtime/Latch;->_isOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :cond_1
    :goto_1
    iget-object p0, p0, Landroidx/room/InvalidationTracker;->trackerLock:Ljava/lang/Object;

    .line 99
    .line 100
    monitor-enter p0

    .line 101
    monitor-exit p0

    .line 102
    return-void

    .line 103
    :catchall_1
    move-exception p0

    .line 104
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 105
    :catchall_2
    move-exception p1

    .line 106
    invoke-static {v1, p0}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    throw p1
.end method

.method public final onPostMigrate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onPreMigrate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v0, "SELECT name FROM sqlite_master WHERE type = \'trigger\'"

    .line 9
    .line 10
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    invoke-static {v0, v1}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0, v2}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_1
    :goto_1
    move-object v0, p0

    .line 44
    check-cast v0, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 45
    .line 46
    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, "room_fts_content_sync_"

    .line 59
    .line 60
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    const-string v1, "DROP TRIGGER IF EXISTS "

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    return-void

    .line 77
    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    :catchall_1
    move-exception p1

    .line 79
    invoke-static {v0, p0}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method

.method public final onValidateSchema(Landroidx/sqlite/SQLiteConnection;)Lcom/fsck/k9/mailstore/LocalFolder$8;
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v3, 0x1

    .line 16
    const-string/jumbo v5, "work_spec_id"

    .line 17
    .line 18
    .line 19
    const-string v6, "TEXT"

    .line 20
    .line 21
    const/4 v8, 0x1

    .line 22
    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v3, "work_spec_id"

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 32
    .line 33
    const/4 v9, 0x0

    .line 34
    const/4 v6, 0x1

    .line 35
    const/4 v5, 0x2

    .line 36
    const-string v7, "prerequisite_id"

    .line 37
    .line 38
    const-string v8, "TEXT"

    .line 39
    .line 40
    const/4 v10, 0x1

    .line 41
    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    const-string v2, "prerequisite_id"

    .line 45
    .line 46
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v5, Landroidx/room/util/TableInfo$ForeignKey;

    .line 55
    .line 56
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    const-string v11, "id"

    .line 61
    .line 62
    invoke-static {v11}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    const-string v6, "WorkSpec"

    .line 67
    .line 68
    const-string v7, "CASCADE"

    .line 69
    .line 70
    const-string v8, "CASCADE"

    .line 71
    .line 72
    invoke-direct/range {v5 .. v10}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    new-instance v12, Landroidx/room/util/TableInfo$ForeignKey;

    .line 79
    .line 80
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v16

    .line 84
    invoke-static {v11}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v17

    .line 88
    const-string v13, "WorkSpec"

    .line 89
    .line 90
    const-string v14, "CASCADE"

    .line 91
    .line 92
    const-string v15, "CASCADE"

    .line 93
    .line 94
    invoke-direct/range {v12 .. v17}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 101
    .line 102
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 103
    .line 104
    .line 105
    new-instance v6, Landroidx/room/util/TableInfo$Index;

    .line 106
    .line 107
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    const-string v8, "ASC"

    .line 112
    .line 113
    invoke-static {v8}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    const-string v10, "index_Dependency_work_spec_id"

    .line 118
    .line 119
    const/4 v12, 0x0

    .line 120
    invoke-direct {v6, v10, v12, v7, v9}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    new-instance v6, Landroidx/room/util/TableInfo$Index;

    .line 127
    .line 128
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {v8}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    const-string v9, "index_Dependency_prerequisite_id"

    .line 137
    .line 138
    invoke-direct {v6, v9, v12, v2, v7}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    new-instance v2, Landroidx/room/util/TableInfo;

    .line 145
    .line 146
    const-string v6, "Dependency"

    .line 147
    .line 148
    invoke-direct {v2, v6, v1, v4, v5}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v0, v6}, Landroidx/work/Data$Companion;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v2, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    const-string v5, "\n Found:\n"

    .line 160
    .line 161
    if-nez v4, :cond_0

    .line 162
    .line 163
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 164
    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v4, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n"

    .line 168
    .line 169
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-direct {v0, v1, v12}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(Ljava/lang/String;Z)V

    .line 186
    .line 187
    .line 188
    return-object v0

    .line 189
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 190
    .line 191
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 192
    .line 193
    .line 194
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 195
    .line 196
    const/16 v18, 0x0

    .line 197
    .line 198
    const/4 v15, 0x1

    .line 199
    const/16 v19, 0x1

    .line 200
    .line 201
    const/4 v14, 0x1

    .line 202
    const-string v16, "id"

    .line 203
    .line 204
    const-string v17, "TEXT"

    .line 205
    .line 206
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 207
    .line 208
    .line 209
    invoke-interface {v1, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 213
    .line 214
    const/16 v19, 0x0

    .line 215
    .line 216
    const/16 v16, 0x1

    .line 217
    .line 218
    const/16 v20, 0x1

    .line 219
    .line 220
    const/4 v15, 0x0

    .line 221
    const-string v17, "state"

    .line 222
    .line 223
    const-string v18, "INTEGER"

    .line 224
    .line 225
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 226
    .line 227
    .line 228
    const-string v2, "state"

    .line 229
    .line 230
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 234
    .line 235
    const/16 v20, 0x0

    .line 236
    .line 237
    const/16 v17, 0x1

    .line 238
    .line 239
    const/16 v21, 0x1

    .line 240
    .line 241
    const/16 v16, 0x0

    .line 242
    .line 243
    const-string/jumbo v18, "worker_class_name"

    .line 244
    .line 245
    .line 246
    const-string v19, "TEXT"

    .line 247
    .line 248
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 249
    .line 250
    .line 251
    const-string/jumbo v2, "worker_class_name"

    .line 252
    .line 253
    .line 254
    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 258
    .line 259
    const/16 v21, 0x0

    .line 260
    .line 261
    const/16 v18, 0x1

    .line 262
    .line 263
    const/16 v22, 0x1

    .line 264
    .line 265
    const/16 v17, 0x0

    .line 266
    .line 267
    const-string v19, "input_merger_class_name"

    .line 268
    .line 269
    const-string v20, "TEXT"

    .line 270
    .line 271
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 272
    .line 273
    .line 274
    move-object/from16 v2, v16

    .line 275
    .line 276
    const-string v4, "input_merger_class_name"

    .line 277
    .line 278
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 282
    .line 283
    const/16 v18, 0x0

    .line 284
    .line 285
    const/4 v15, 0x1

    .line 286
    const/16 v19, 0x1

    .line 287
    .line 288
    const/4 v14, 0x0

    .line 289
    const-string v16, "input"

    .line 290
    .line 291
    const-string v17, "BLOB"

    .line 292
    .line 293
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 294
    .line 295
    .line 296
    const-string v2, "input"

    .line 297
    .line 298
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 302
    .line 303
    const/16 v19, 0x0

    .line 304
    .line 305
    const/16 v16, 0x1

    .line 306
    .line 307
    const/16 v20, 0x1

    .line 308
    .line 309
    const/4 v15, 0x0

    .line 310
    const-string v17, "output"

    .line 311
    .line 312
    const-string v18, "BLOB"

    .line 313
    .line 314
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 315
    .line 316
    .line 317
    const-string v2, "output"

    .line 318
    .line 319
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 323
    .line 324
    const/16 v20, 0x0

    .line 325
    .line 326
    const/16 v17, 0x1

    .line 327
    .line 328
    const/16 v21, 0x1

    .line 329
    .line 330
    const/16 v16, 0x0

    .line 331
    .line 332
    const-string v18, "initial_delay"

    .line 333
    .line 334
    const-string v19, "INTEGER"

    .line 335
    .line 336
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 337
    .line 338
    .line 339
    const-string v2, "initial_delay"

    .line 340
    .line 341
    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 345
    .line 346
    const/16 v21, 0x0

    .line 347
    .line 348
    const/16 v18, 0x1

    .line 349
    .line 350
    const/16 v17, 0x0

    .line 351
    .line 352
    const-string v19, "interval_duration"

    .line 353
    .line 354
    const-string v20, "INTEGER"

    .line 355
    .line 356
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 357
    .line 358
    .line 359
    move-object/from16 v2, v16

    .line 360
    .line 361
    const-string v4, "interval_duration"

    .line 362
    .line 363
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 367
    .line 368
    const/16 v18, 0x0

    .line 369
    .line 370
    const/4 v15, 0x1

    .line 371
    const/16 v19, 0x1

    .line 372
    .line 373
    const/4 v14, 0x0

    .line 374
    const-string v16, "flex_duration"

    .line 375
    .line 376
    const-string v17, "INTEGER"

    .line 377
    .line 378
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 379
    .line 380
    .line 381
    const-string v2, "flex_duration"

    .line 382
    .line 383
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 387
    .line 388
    const/16 v19, 0x0

    .line 389
    .line 390
    const/16 v16, 0x1

    .line 391
    .line 392
    const/16 v20, 0x1

    .line 393
    .line 394
    const/4 v15, 0x0

    .line 395
    const-string v17, "run_attempt_count"

    .line 396
    .line 397
    const-string v18, "INTEGER"

    .line 398
    .line 399
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 400
    .line 401
    .line 402
    const-string v2, "run_attempt_count"

    .line 403
    .line 404
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 408
    .line 409
    const/16 v20, 0x0

    .line 410
    .line 411
    const/16 v17, 0x1

    .line 412
    .line 413
    const/16 v21, 0x1

    .line 414
    .line 415
    const/16 v16, 0x0

    .line 416
    .line 417
    const-string v18, "backoff_policy"

    .line 418
    .line 419
    const-string v19, "INTEGER"

    .line 420
    .line 421
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 422
    .line 423
    .line 424
    const-string v2, "backoff_policy"

    .line 425
    .line 426
    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 430
    .line 431
    const/16 v21, 0x0

    .line 432
    .line 433
    const/16 v18, 0x1

    .line 434
    .line 435
    const/16 v17, 0x0

    .line 436
    .line 437
    const-string v19, "backoff_delay_duration"

    .line 438
    .line 439
    const-string v20, "INTEGER"

    .line 440
    .line 441
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 442
    .line 443
    .line 444
    move-object/from16 v2, v16

    .line 445
    .line 446
    const-string v4, "backoff_delay_duration"

    .line 447
    .line 448
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 452
    .line 453
    const-string v18, "-1"

    .line 454
    .line 455
    const/4 v15, 0x1

    .line 456
    const/16 v19, 0x1

    .line 457
    .line 458
    const/4 v14, 0x0

    .line 459
    const-string v16, "last_enqueue_time"

    .line 460
    .line 461
    const-string v17, "INTEGER"

    .line 462
    .line 463
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 464
    .line 465
    .line 466
    const-string v2, "last_enqueue_time"

    .line 467
    .line 468
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 472
    .line 473
    const/16 v19, 0x0

    .line 474
    .line 475
    const/16 v16, 0x1

    .line 476
    .line 477
    const/16 v20, 0x1

    .line 478
    .line 479
    const/4 v15, 0x0

    .line 480
    const-string v17, "minimum_retention_duration"

    .line 481
    .line 482
    const-string v18, "INTEGER"

    .line 483
    .line 484
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 485
    .line 486
    .line 487
    const-string v4, "minimum_retention_duration"

    .line 488
    .line 489
    invoke-interface {v1, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 493
    .line 494
    const/16 v20, 0x0

    .line 495
    .line 496
    const/16 v17, 0x1

    .line 497
    .line 498
    const/16 v21, 0x1

    .line 499
    .line 500
    const/16 v16, 0x0

    .line 501
    .line 502
    const-string v18, "schedule_requested_at"

    .line 503
    .line 504
    const-string v19, "INTEGER"

    .line 505
    .line 506
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 507
    .line 508
    .line 509
    const-string v4, "schedule_requested_at"

    .line 510
    .line 511
    invoke-interface {v1, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 515
    .line 516
    const/16 v21, 0x0

    .line 517
    .line 518
    const/16 v18, 0x1

    .line 519
    .line 520
    const/16 v17, 0x0

    .line 521
    .line 522
    const-string v19, "run_in_foreground"

    .line 523
    .line 524
    const-string v20, "INTEGER"

    .line 525
    .line 526
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 527
    .line 528
    .line 529
    move-object/from16 v6, v16

    .line 530
    .line 531
    const-string v7, "run_in_foreground"

    .line 532
    .line 533
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 537
    .line 538
    const/16 v18, 0x0

    .line 539
    .line 540
    const/4 v15, 0x1

    .line 541
    const/16 v19, 0x1

    .line 542
    .line 543
    const/4 v14, 0x0

    .line 544
    const-string v16, "out_of_quota_policy"

    .line 545
    .line 546
    const-string v17, "INTEGER"

    .line 547
    .line 548
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 549
    .line 550
    .line 551
    const-string v6, "out_of_quota_policy"

    .line 552
    .line 553
    invoke-interface {v1, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 557
    .line 558
    const-string v19, "0"

    .line 559
    .line 560
    const/16 v16, 0x1

    .line 561
    .line 562
    const/16 v20, 0x1

    .line 563
    .line 564
    const/4 v15, 0x0

    .line 565
    const-string v17, "period_count"

    .line 566
    .line 567
    const-string v18, "INTEGER"

    .line 568
    .line 569
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 570
    .line 571
    .line 572
    const-string v6, "period_count"

    .line 573
    .line 574
    invoke-interface {v1, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 578
    .line 579
    const-string v20, "0"

    .line 580
    .line 581
    const/16 v17, 0x1

    .line 582
    .line 583
    const/16 v21, 0x1

    .line 584
    .line 585
    const/16 v16, 0x0

    .line 586
    .line 587
    const-string v18, "generation"

    .line 588
    .line 589
    const-string v19, "INTEGER"

    .line 590
    .line 591
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 592
    .line 593
    .line 594
    const-string v6, "generation"

    .line 595
    .line 596
    invoke-interface {v1, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 600
    .line 601
    const-string v21, "9223372036854775807"

    .line 602
    .line 603
    const/16 v18, 0x1

    .line 604
    .line 605
    const/16 v17, 0x0

    .line 606
    .line 607
    const-string v19, "next_schedule_time_override"

    .line 608
    .line 609
    const-string v20, "INTEGER"

    .line 610
    .line 611
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 612
    .line 613
    .line 614
    move-object/from16 v7, v16

    .line 615
    .line 616
    const-string v9, "next_schedule_time_override"

    .line 617
    .line 618
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 622
    .line 623
    const-string v18, "0"

    .line 624
    .line 625
    const/4 v15, 0x1

    .line 626
    const/16 v19, 0x1

    .line 627
    .line 628
    const/4 v14, 0x0

    .line 629
    const-string v16, "next_schedule_time_override_generation"

    .line 630
    .line 631
    const-string v17, "INTEGER"

    .line 632
    .line 633
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 634
    .line 635
    .line 636
    const-string v7, "next_schedule_time_override_generation"

    .line 637
    .line 638
    invoke-interface {v1, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 642
    .line 643
    const-string v19, "-256"

    .line 644
    .line 645
    const/16 v16, 0x1

    .line 646
    .line 647
    const/16 v20, 0x1

    .line 648
    .line 649
    const/4 v15, 0x0

    .line 650
    const-string v17, "stop_reason"

    .line 651
    .line 652
    const-string v18, "INTEGER"

    .line 653
    .line 654
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 655
    .line 656
    .line 657
    const-string v7, "stop_reason"

    .line 658
    .line 659
    invoke-interface {v1, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 663
    .line 664
    const/16 v20, 0x0

    .line 665
    .line 666
    const/16 v17, 0x1

    .line 667
    .line 668
    const/16 v21, 0x0

    .line 669
    .line 670
    const/16 v16, 0x0

    .line 671
    .line 672
    const-string v18, "trace_tag"

    .line 673
    .line 674
    const-string v19, "TEXT"

    .line 675
    .line 676
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 677
    .line 678
    .line 679
    const-string v7, "trace_tag"

    .line 680
    .line 681
    invoke-interface {v1, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 685
    .line 686
    const/16 v21, 0x0

    .line 687
    .line 688
    const/16 v18, 0x1

    .line 689
    .line 690
    const/16 v22, 0x0

    .line 691
    .line 692
    const/16 v17, 0x0

    .line 693
    .line 694
    const-string v19, "backoff_on_system_interruptions"

    .line 695
    .line 696
    const-string v20, "INTEGER"

    .line 697
    .line 698
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 699
    .line 700
    .line 701
    move-object/from16 v7, v16

    .line 702
    .line 703
    const-string v9, "backoff_on_system_interruptions"

    .line 704
    .line 705
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 709
    .line 710
    const/16 v18, 0x0

    .line 711
    .line 712
    const/4 v15, 0x1

    .line 713
    const/16 v19, 0x1

    .line 714
    .line 715
    const/4 v14, 0x0

    .line 716
    const-string v16, "required_network_type"

    .line 717
    .line 718
    const-string v17, "INTEGER"

    .line 719
    .line 720
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 721
    .line 722
    .line 723
    const-string v7, "required_network_type"

    .line 724
    .line 725
    invoke-interface {v1, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 729
    .line 730
    const-string/jumbo v19, "x\'\'"

    .line 731
    .line 732
    .line 733
    const/16 v16, 0x1

    .line 734
    .line 735
    const/16 v20, 0x1

    .line 736
    .line 737
    const/4 v15, 0x0

    .line 738
    const-string v17, "required_network_request"

    .line 739
    .line 740
    const-string v18, "BLOB"

    .line 741
    .line 742
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 743
    .line 744
    .line 745
    const-string v7, "required_network_request"

    .line 746
    .line 747
    invoke-interface {v1, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 751
    .line 752
    const/16 v20, 0x0

    .line 753
    .line 754
    const/16 v17, 0x1

    .line 755
    .line 756
    const/16 v21, 0x1

    .line 757
    .line 758
    const/16 v16, 0x0

    .line 759
    .line 760
    const-string v18, "requires_charging"

    .line 761
    .line 762
    const-string v19, "INTEGER"

    .line 763
    .line 764
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 765
    .line 766
    .line 767
    const-string v7, "requires_charging"

    .line 768
    .line 769
    invoke-interface {v1, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 773
    .line 774
    const/16 v21, 0x0

    .line 775
    .line 776
    const/16 v18, 0x1

    .line 777
    .line 778
    const/16 v22, 0x1

    .line 779
    .line 780
    const/16 v17, 0x0

    .line 781
    .line 782
    const-string v19, "requires_device_idle"

    .line 783
    .line 784
    const-string v20, "INTEGER"

    .line 785
    .line 786
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 787
    .line 788
    .line 789
    move-object/from16 v7, v16

    .line 790
    .line 791
    const-string v9, "requires_device_idle"

    .line 792
    .line 793
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 797
    .line 798
    const/16 v18, 0x0

    .line 799
    .line 800
    const/4 v15, 0x1

    .line 801
    const/16 v19, 0x1

    .line 802
    .line 803
    const/4 v14, 0x0

    .line 804
    const-string v16, "requires_battery_not_low"

    .line 805
    .line 806
    const-string v17, "INTEGER"

    .line 807
    .line 808
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 809
    .line 810
    .line 811
    const-string v7, "requires_battery_not_low"

    .line 812
    .line 813
    invoke-interface {v1, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 817
    .line 818
    const/16 v19, 0x0

    .line 819
    .line 820
    const/16 v16, 0x1

    .line 821
    .line 822
    const/16 v20, 0x1

    .line 823
    .line 824
    const/4 v15, 0x0

    .line 825
    const-string v17, "requires_storage_not_low"

    .line 826
    .line 827
    const-string v18, "INTEGER"

    .line 828
    .line 829
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 830
    .line 831
    .line 832
    const-string v7, "requires_storage_not_low"

    .line 833
    .line 834
    invoke-interface {v1, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 838
    .line 839
    const/16 v20, 0x0

    .line 840
    .line 841
    const/16 v17, 0x1

    .line 842
    .line 843
    const/16 v21, 0x1

    .line 844
    .line 845
    const/16 v16, 0x0

    .line 846
    .line 847
    const-string v18, "trigger_content_update_delay"

    .line 848
    .line 849
    const-string v19, "INTEGER"

    .line 850
    .line 851
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 852
    .line 853
    .line 854
    const-string v7, "trigger_content_update_delay"

    .line 855
    .line 856
    invoke-interface {v1, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 860
    .line 861
    const/16 v21, 0x0

    .line 862
    .line 863
    const/16 v18, 0x1

    .line 864
    .line 865
    const/16 v17, 0x0

    .line 866
    .line 867
    const-string v19, "trigger_max_content_delay"

    .line 868
    .line 869
    const-string v20, "INTEGER"

    .line 870
    .line 871
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 872
    .line 873
    .line 874
    move-object/from16 v7, v16

    .line 875
    .line 876
    const-string v9, "trigger_max_content_delay"

    .line 877
    .line 878
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 882
    .line 883
    const/16 v18, 0x0

    .line 884
    .line 885
    const/4 v15, 0x1

    .line 886
    const/16 v19, 0x1

    .line 887
    .line 888
    const/4 v14, 0x0

    .line 889
    const-string v16, "content_uri_triggers"

    .line 890
    .line 891
    const-string v17, "BLOB"

    .line 892
    .line 893
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 894
    .line 895
    .line 896
    const-string v7, "content_uri_triggers"

    .line 897
    .line 898
    invoke-interface {v1, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    new-instance v7, Ljava/util/LinkedHashSet;

    .line 902
    .line 903
    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 904
    .line 905
    .line 906
    new-instance v9, Ljava/util/LinkedHashSet;

    .line 907
    .line 908
    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 909
    .line 910
    .line 911
    new-instance v10, Landroidx/room/util/TableInfo$Index;

    .line 912
    .line 913
    invoke-static {v4}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 914
    .line 915
    .line 916
    move-result-object v4

    .line 917
    invoke-static {v8}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 918
    .line 919
    .line 920
    move-result-object v13

    .line 921
    const-string v14, "index_WorkSpec_schedule_requested_at"

    .line 922
    .line 923
    invoke-direct {v10, v14, v12, v4, v13}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 924
    .line 925
    .line 926
    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 927
    .line 928
    .line 929
    new-instance v4, Landroidx/room/util/TableInfo$Index;

    .line 930
    .line 931
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 932
    .line 933
    .line 934
    move-result-object v2

    .line 935
    invoke-static {v8}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 936
    .line 937
    .line 938
    move-result-object v10

    .line 939
    const-string v13, "index_WorkSpec_last_enqueue_time"

    .line 940
    .line 941
    invoke-direct {v4, v13, v12, v2, v10}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 942
    .line 943
    .line 944
    invoke-interface {v9, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 945
    .line 946
    .line 947
    new-instance v2, Landroidx/room/util/TableInfo;

    .line 948
    .line 949
    const-string v4, "WorkSpec"

    .line 950
    .line 951
    invoke-direct {v2, v4, v1, v7, v9}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 952
    .line 953
    .line 954
    invoke-static {v0, v4}, Landroidx/work/Data$Companion;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 955
    .line 956
    .line 957
    move-result-object v1

    .line 958
    invoke-virtual {v2, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 959
    .line 960
    .line 961
    move-result v4

    .line 962
    if-nez v4, :cond_1

    .line 963
    .line 964
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 965
    .line 966
    new-instance v3, Ljava/lang/StringBuilder;

    .line 967
    .line 968
    const-string v4, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n"

    .line 969
    .line 970
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 971
    .line 972
    .line 973
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 974
    .line 975
    .line 976
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    .line 978
    .line 979
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 980
    .line 981
    .line 982
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 983
    .line 984
    .line 985
    move-result-object v1

    .line 986
    invoke-direct {v0, v1, v12}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(Ljava/lang/String;Z)V

    .line 987
    .line 988
    .line 989
    return-object v0

    .line 990
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 991
    .line 992
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 993
    .line 994
    .line 995
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 996
    .line 997
    const/16 v18, 0x0

    .line 998
    .line 999
    const/4 v15, 0x1

    .line 1000
    const/4 v14, 0x1

    .line 1001
    const-string v16, "tag"

    .line 1002
    .line 1003
    const-string v17, "TEXT"

    .line 1004
    .line 1005
    const/16 v19, 0x1

    .line 1006
    .line 1007
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1008
    .line 1009
    .line 1010
    const-string v2, "tag"

    .line 1011
    .line 1012
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    .line 1014
    .line 1015
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 1016
    .line 1017
    const/16 v19, 0x0

    .line 1018
    .line 1019
    const/16 v16, 0x1

    .line 1020
    .line 1021
    const/4 v15, 0x2

    .line 1022
    const-string/jumbo v17, "work_spec_id"

    .line 1023
    .line 1024
    .line 1025
    const-string v18, "TEXT"

    .line 1026
    .line 1027
    const/16 v20, 0x1

    .line 1028
    .line 1029
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1030
    .line 1031
    .line 1032
    invoke-interface {v1, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    .line 1034
    .line 1035
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 1036
    .line 1037
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1038
    .line 1039
    .line 1040
    new-instance v13, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1041
    .line 1042
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v17

    .line 1046
    invoke-static {v11}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v18

    .line 1050
    const-string v14, "WorkSpec"

    .line 1051
    .line 1052
    const-string v15, "CASCADE"

    .line 1053
    .line 1054
    const-string v16, "CASCADE"

    .line 1055
    .line 1056
    invoke-direct/range {v13 .. v18}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1057
    .line 1058
    .line 1059
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1060
    .line 1061
    .line 1062
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 1063
    .line 1064
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1065
    .line 1066
    .line 1067
    new-instance v7, Landroidx/room/util/TableInfo$Index;

    .line 1068
    .line 1069
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v9

    .line 1073
    invoke-static {v8}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v10

    .line 1077
    const-string v13, "index_WorkTag_work_spec_id"

    .line 1078
    .line 1079
    invoke-direct {v7, v13, v12, v9, v10}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 1080
    .line 1081
    .line 1082
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1083
    .line 1084
    .line 1085
    new-instance v7, Landroidx/room/util/TableInfo;

    .line 1086
    .line 1087
    const-string v9, "WorkTag"

    .line 1088
    .line 1089
    invoke-direct {v7, v9, v1, v2, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1090
    .line 1091
    .line 1092
    invoke-static {v0, v9}, Landroidx/work/Data$Companion;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v1

    .line 1096
    invoke-virtual {v7, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1097
    .line 1098
    .line 1099
    move-result v2

    .line 1100
    if-nez v2, :cond_2

    .line 1101
    .line 1102
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 1103
    .line 1104
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1105
    .line 1106
    const-string v3, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n"

    .line 1107
    .line 1108
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1109
    .line 1110
    .line 1111
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v1

    .line 1124
    invoke-direct {v0, v1, v12}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(Ljava/lang/String;Z)V

    .line 1125
    .line 1126
    .line 1127
    return-object v0

    .line 1128
    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 1129
    .line 1130
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1131
    .line 1132
    .line 1133
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 1134
    .line 1135
    const/16 v18, 0x0

    .line 1136
    .line 1137
    const/4 v15, 0x1

    .line 1138
    const/4 v14, 0x1

    .line 1139
    const-string/jumbo v16, "work_spec_id"

    .line 1140
    .line 1141
    .line 1142
    const-string v17, "TEXT"

    .line 1143
    .line 1144
    const/16 v19, 0x1

    .line 1145
    .line 1146
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1147
    .line 1148
    .line 1149
    invoke-interface {v1, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    .line 1151
    .line 1152
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 1153
    .line 1154
    const-string v19, "0"

    .line 1155
    .line 1156
    const/16 v16, 0x1

    .line 1157
    .line 1158
    const/4 v15, 0x2

    .line 1159
    const-string v17, "generation"

    .line 1160
    .line 1161
    const-string v18, "INTEGER"

    .line 1162
    .line 1163
    const/16 v20, 0x1

    .line 1164
    .line 1165
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1166
    .line 1167
    .line 1168
    invoke-interface {v1, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    .line 1170
    .line 1171
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 1172
    .line 1173
    const/16 v20, 0x0

    .line 1174
    .line 1175
    const/16 v17, 0x1

    .line 1176
    .line 1177
    const/16 v16, 0x0

    .line 1178
    .line 1179
    const-string v18, "system_id"

    .line 1180
    .line 1181
    const-string v19, "INTEGER"

    .line 1182
    .line 1183
    const/16 v21, 0x1

    .line 1184
    .line 1185
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1186
    .line 1187
    .line 1188
    const-string v2, "system_id"

    .line 1189
    .line 1190
    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    .line 1192
    .line 1193
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 1194
    .line 1195
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1196
    .line 1197
    .line 1198
    new-instance v13, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1199
    .line 1200
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v17

    .line 1204
    invoke-static {v11}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v18

    .line 1208
    const-string v14, "WorkSpec"

    .line 1209
    .line 1210
    const-string v15, "CASCADE"

    .line 1211
    .line 1212
    const-string v16, "CASCADE"

    .line 1213
    .line 1214
    invoke-direct/range {v13 .. v18}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1215
    .line 1216
    .line 1217
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1218
    .line 1219
    .line 1220
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 1221
    .line 1222
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1223
    .line 1224
    .line 1225
    new-instance v6, Landroidx/room/util/TableInfo;

    .line 1226
    .line 1227
    const-string v7, "SystemIdInfo"

    .line 1228
    .line 1229
    invoke-direct {v6, v7, v1, v2, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1230
    .line 1231
    .line 1232
    invoke-static {v0, v7}, Landroidx/work/Data$Companion;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v1

    .line 1236
    invoke-virtual {v6, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1237
    .line 1238
    .line 1239
    move-result v2

    .line 1240
    if-nez v2, :cond_3

    .line 1241
    .line 1242
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 1243
    .line 1244
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1245
    .line 1246
    const-string v3, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n"

    .line 1247
    .line 1248
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    .line 1256
    .line 1257
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v1

    .line 1264
    invoke-direct {v0, v1, v12}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(Ljava/lang/String;Z)V

    .line 1265
    .line 1266
    .line 1267
    return-object v0

    .line 1268
    :cond_3
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 1269
    .line 1270
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1271
    .line 1272
    .line 1273
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 1274
    .line 1275
    const/16 v18, 0x0

    .line 1276
    .line 1277
    const/4 v15, 0x1

    .line 1278
    const/4 v14, 0x1

    .line 1279
    const-string v16, "name"

    .line 1280
    .line 1281
    const-string v17, "TEXT"

    .line 1282
    .line 1283
    const/16 v19, 0x1

    .line 1284
    .line 1285
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1286
    .line 1287
    .line 1288
    const-string v2, "name"

    .line 1289
    .line 1290
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    .line 1292
    .line 1293
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 1294
    .line 1295
    const/16 v19, 0x0

    .line 1296
    .line 1297
    const/16 v16, 0x1

    .line 1298
    .line 1299
    const/4 v15, 0x2

    .line 1300
    const-string/jumbo v17, "work_spec_id"

    .line 1301
    .line 1302
    .line 1303
    const-string v18, "TEXT"

    .line 1304
    .line 1305
    const/16 v20, 0x1

    .line 1306
    .line 1307
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1308
    .line 1309
    .line 1310
    invoke-interface {v1, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    .line 1312
    .line 1313
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 1314
    .line 1315
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1316
    .line 1317
    .line 1318
    new-instance v13, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1319
    .line 1320
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v17

    .line 1324
    invoke-static {v11}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v18

    .line 1328
    const-string v14, "WorkSpec"

    .line 1329
    .line 1330
    const-string v15, "CASCADE"

    .line 1331
    .line 1332
    const-string v16, "CASCADE"

    .line 1333
    .line 1334
    invoke-direct/range {v13 .. v18}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1335
    .line 1336
    .line 1337
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1338
    .line 1339
    .line 1340
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 1341
    .line 1342
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1343
    .line 1344
    .line 1345
    new-instance v6, Landroidx/room/util/TableInfo$Index;

    .line 1346
    .line 1347
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v7

    .line 1351
    invoke-static {v8}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v8

    .line 1355
    const-string v9, "index_WorkName_work_spec_id"

    .line 1356
    .line 1357
    invoke-direct {v6, v9, v12, v7, v8}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 1358
    .line 1359
    .line 1360
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1361
    .line 1362
    .line 1363
    new-instance v6, Landroidx/room/util/TableInfo;

    .line 1364
    .line 1365
    const-string v7, "WorkName"

    .line 1366
    .line 1367
    invoke-direct {v6, v7, v1, v2, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1368
    .line 1369
    .line 1370
    invoke-static {v0, v7}, Landroidx/work/Data$Companion;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v1

    .line 1374
    invoke-virtual {v6, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1375
    .line 1376
    .line 1377
    move-result v2

    .line 1378
    if-nez v2, :cond_4

    .line 1379
    .line 1380
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 1381
    .line 1382
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1383
    .line 1384
    const-string v3, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n"

    .line 1385
    .line 1386
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1387
    .line 1388
    .line 1389
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1393
    .line 1394
    .line 1395
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1396
    .line 1397
    .line 1398
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v1

    .line 1402
    invoke-direct {v0, v1, v12}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(Ljava/lang/String;Z)V

    .line 1403
    .line 1404
    .line 1405
    return-object v0

    .line 1406
    :cond_4
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 1407
    .line 1408
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1409
    .line 1410
    .line 1411
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 1412
    .line 1413
    const/16 v18, 0x0

    .line 1414
    .line 1415
    const/4 v15, 0x1

    .line 1416
    const/4 v14, 0x1

    .line 1417
    const-string/jumbo v16, "work_spec_id"

    .line 1418
    .line 1419
    .line 1420
    const-string v17, "TEXT"

    .line 1421
    .line 1422
    const/16 v19, 0x1

    .line 1423
    .line 1424
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1425
    .line 1426
    .line 1427
    invoke-interface {v1, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    .line 1429
    .line 1430
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 1431
    .line 1432
    const/16 v19, 0x0

    .line 1433
    .line 1434
    const/16 v16, 0x1

    .line 1435
    .line 1436
    const/4 v15, 0x0

    .line 1437
    const-string v17, "progress"

    .line 1438
    .line 1439
    const-string v18, "BLOB"

    .line 1440
    .line 1441
    const/16 v20, 0x1

    .line 1442
    .line 1443
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1444
    .line 1445
    .line 1446
    const-string v2, "progress"

    .line 1447
    .line 1448
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    .line 1450
    .line 1451
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 1452
    .line 1453
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1454
    .line 1455
    .line 1456
    new-instance v13, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1457
    .line 1458
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v17

    .line 1462
    invoke-static {v11}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v18

    .line 1466
    const-string v14, "WorkSpec"

    .line 1467
    .line 1468
    const-string v15, "CASCADE"

    .line 1469
    .line 1470
    const-string v16, "CASCADE"

    .line 1471
    .line 1472
    invoke-direct/range {v13 .. v18}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1473
    .line 1474
    .line 1475
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1476
    .line 1477
    .line 1478
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 1479
    .line 1480
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1481
    .line 1482
    .line 1483
    new-instance v4, Landroidx/room/util/TableInfo;

    .line 1484
    .line 1485
    const-string v6, "WorkProgress"

    .line 1486
    .line 1487
    invoke-direct {v4, v6, v1, v2, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1488
    .line 1489
    .line 1490
    invoke-static {v0, v6}, Landroidx/work/Data$Companion;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v1

    .line 1494
    invoke-virtual {v4, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1495
    .line 1496
    .line 1497
    move-result v2

    .line 1498
    if-nez v2, :cond_5

    .line 1499
    .line 1500
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 1501
    .line 1502
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1503
    .line 1504
    const-string v3, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n"

    .line 1505
    .line 1506
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1507
    .line 1508
    .line 1509
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1510
    .line 1511
    .line 1512
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    .line 1514
    .line 1515
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1516
    .line 1517
    .line 1518
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v1

    .line 1522
    invoke-direct {v0, v1, v12}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(Ljava/lang/String;Z)V

    .line 1523
    .line 1524
    .line 1525
    return-object v0

    .line 1526
    :cond_5
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 1527
    .line 1528
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1529
    .line 1530
    .line 1531
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 1532
    .line 1533
    const/16 v18, 0x0

    .line 1534
    .line 1535
    const/4 v15, 0x1

    .line 1536
    const/4 v14, 0x1

    .line 1537
    const-string v16, "key"

    .line 1538
    .line 1539
    const-string v17, "TEXT"

    .line 1540
    .line 1541
    const/16 v19, 0x1

    .line 1542
    .line 1543
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1544
    .line 1545
    .line 1546
    const-string v2, "key"

    .line 1547
    .line 1548
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    .line 1550
    .line 1551
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 1552
    .line 1553
    const/16 v19, 0x0

    .line 1554
    .line 1555
    const/16 v16, 0x1

    .line 1556
    .line 1557
    const/4 v15, 0x0

    .line 1558
    const-string v17, "long_value"

    .line 1559
    .line 1560
    const-string v18, "INTEGER"

    .line 1561
    .line 1562
    const/16 v20, 0x0

    .line 1563
    .line 1564
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1565
    .line 1566
    .line 1567
    const-string v2, "long_value"

    .line 1568
    .line 1569
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    .line 1571
    .line 1572
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 1573
    .line 1574
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1575
    .line 1576
    .line 1577
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 1578
    .line 1579
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1580
    .line 1581
    .line 1582
    new-instance v4, Landroidx/room/util/TableInfo;

    .line 1583
    .line 1584
    const-string v6, "Preference"

    .line 1585
    .line 1586
    invoke-direct {v4, v6, v1, v2, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1587
    .line 1588
    .line 1589
    invoke-static {v0, v6}, Landroidx/work/Data$Companion;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v0

    .line 1593
    invoke-virtual {v4, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1594
    .line 1595
    .line 1596
    move-result v1

    .line 1597
    if-nez v1, :cond_6

    .line 1598
    .line 1599
    new-instance v1, Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 1600
    .line 1601
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1602
    .line 1603
    const-string v3, "Preference(androidx.work.impl.model.Preference).\n Expected:\n"

    .line 1604
    .line 1605
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1606
    .line 1607
    .line 1608
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1609
    .line 1610
    .line 1611
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    .line 1613
    .line 1614
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1615
    .line 1616
    .line 1617
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1618
    .line 1619
    .line 1620
    move-result-object v0

    .line 1621
    invoke-direct {v1, v0, v12}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(Ljava/lang/String;Z)V

    .line 1622
    .line 1623
    .line 1624
    return-object v1

    .line 1625
    :cond_6
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 1626
    .line 1627
    const/4 v1, 0x1

    .line 1628
    const/4 v2, 0x0

    .line 1629
    invoke-direct {v0, v2, v1}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(Ljava/lang/String;Z)V

    .line 1630
    .line 1631
    .line 1632
    return-object v0
.end method
