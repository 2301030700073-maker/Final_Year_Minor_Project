package androidx.work.impl;

import androidx.compose.runtime.Latch;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.room.InvalidationTracker;
import androidx.room.RoomOpenDelegate;
import androidx.room.TriggerBasedInvalidationTracker;
import androidx.room.util.TableInfo;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.Data;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.PreferenceDao_Impl;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import androidx.work.impl.model.WorkNameDao_Impl;
import androidx.work.impl.model.WorkProgressDao_Impl;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTagDao_Impl;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import com.fsck.k9.mailstore.LocalFolder;
import com.mikepenz.fastadapter.VerboseLogger;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Cookie;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WorkDatabase_Impl extends WorkDatabase {
    public final SynchronizedLazyImpl _dependencyDao;
    public final SynchronizedLazyImpl _preferenceDao;
    public final SynchronizedLazyImpl _systemIdInfoDao;
    public final SynchronizedLazyImpl _workNameDao;
    public final SynchronizedLazyImpl _workProgressDao;
    public final SynchronizedLazyImpl _workSpecDao;
    public final SynchronizedLazyImpl _workTagDao;

    public WorkDatabase_Impl() {
        final int i = 0;
        this._workSpecDao = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ WorkDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                WorkDatabase_Impl workDatabase_Impl = this.f$0;
                switch (i2) {
                    case 0:
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    default:
                        return new PreferenceDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i2 = 1;
        this._dependencyDao = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ WorkDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                WorkDatabase_Impl workDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    default:
                        return new PreferenceDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i3 = 2;
        this._workTagDao = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ WorkDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                WorkDatabase_Impl workDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    default:
                        return new PreferenceDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i4 = 3;
        this._systemIdInfoDao = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ WorkDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i4;
                WorkDatabase_Impl workDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    default:
                        return new PreferenceDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i5 = 4;
        this._workNameDao = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ WorkDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i5;
                WorkDatabase_Impl workDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    default:
                        return new PreferenceDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i6 = 5;
        this._workProgressDao = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ WorkDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i6;
                WorkDatabase_Impl workDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    default:
                        return new PreferenceDao_Impl(workDatabase_Impl);
                }
            }
        });
        final int i7 = 6;
        this._preferenceDao = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.work.impl.WorkDatabase_Impl$$ExternalSyntheticLambda0
            public final /* synthetic */ WorkDatabase_Impl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i7;
                WorkDatabase_Impl workDatabase_Impl = this.f$0;
                switch (i22) {
                    case 0:
                        return new WorkSpecDao_Impl(workDatabase_Impl);
                    case 1:
                        return new DependencyDao_Impl(workDatabase_Impl);
                    case 2:
                        return new WorkTagDao_Impl(workDatabase_Impl);
                    case 3:
                        return new SystemIdInfoDao_Impl(workDatabase_Impl);
                    case 4:
                        return new WorkNameDao_Impl(workDatabase_Impl);
                    case 5:
                        return new WorkProgressDao_Impl(workDatabase_Impl);
                    default:
                        return new PreferenceDao_Impl(workDatabase_Impl);
                }
            }
        });
        new SynchronizedLazyImpl(new UtilsKt$$ExternalSyntheticLambda0(this));
    }

    @Override // androidx.room.RoomDatabase
    public final List createAutoMigrations(LinkedHashMap linkedHashMap) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Migration_1_2(13, 14, 10));
        arrayList.add(new WorkDatabase_AutoMigration_14_15_Impl(0));
        int i = 17;
        arrayList.add(new Migration_1_2(16, i, 11));
        int i2 = 18;
        arrayList.add(new Migration_1_2(i, i2, 12));
        arrayList.add(new Migration_1_2(i2, 19, 13));
        arrayList.add(new WorkDatabase_AutoMigration_14_15_Impl(1));
        arrayList.add(new Migration_1_2(20, 21, 14));
        int i3 = 23;
        arrayList.add(new Migration_1_2(22, i3, 15));
        arrayList.add(new Migration_1_2(i3, 24, 16));
        return arrayList;
    }

    @Override // androidx.room.RoomDatabase
    public final InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new LinkedHashMap(), new LinkedHashMap(), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // androidx.room.RoomDatabase
    public final RoomOpenDelegate createOpenDelegate() {
        return new RoomOpenDelegate() { // from class: androidx.work.impl.WorkDatabase_Impl$createOpenDelegate$_openDelegate$1
            {
                super(24, "08b926448d86528e697981ddd30459f7", "149fd8ad55885d3fe3549a37a0163243");
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void createAllTables(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
                SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.execSQL(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
                SQLite.execSQL(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
                SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT NOT NULL, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL DEFAULT -1, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807, `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0, `stop_reason` INTEGER NOT NULL DEFAULT -256, `trace_tag` TEXT, `backoff_on_system_interruptions` INTEGER, `required_network_type` INTEGER NOT NULL, `required_network_request` BLOB NOT NULL DEFAULT x'', `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))");
                SQLite.execSQL(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
                SQLite.execSQL(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)");
                SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.execSQL(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
                SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.execSQL(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
                SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
                SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                SQLite.execSQL(sQLiteConnection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '08b926448d86528e697981ddd30459f7')");
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void dropAllTables(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `Dependency`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `WorkSpec`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `WorkTag`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `SystemIdInfo`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `WorkName`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `WorkProgress`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `Preference`");
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void onCreate(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void onOpen(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
                SQLite.execSQL(sQLiteConnection, "PRAGMA foreign_keys = ON");
                InvalidationTracker invalidationTracker = WorkDatabase_Impl.this.getInvalidationTracker();
                TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = invalidationTracker.implementation;
                triggerBasedInvalidationTracker.getClass();
                SQLiteStatement prepare = sQLiteConnection.prepare("PRAGMA query_only");
                try {
                    prepare.step();
                    boolean z = prepare.getBoolean();
                    Cookie.Companion.closeFinally(prepare, null);
                    if (!z) {
                        SQLite.execSQL(sQLiteConnection, "PRAGMA temp_store = MEMORY");
                        SQLite.execSQL(sQLiteConnection, "PRAGMA recursive_triggers = 1");
                        SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS room_table_modification_log");
                        if (triggerBasedInvalidationTracker.useTempTable) {
                            SQLite.execSQL(sQLiteConnection, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
                        } else {
                            SQLite.execSQL(sQLiteConnection, StringsKt__StringsJVMKt.replace$default("CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)", "TEMP", ""));
                        }
                        Latch latch = triggerBasedInvalidationTracker.observedTableStates;
                        ReentrantLock reentrantLock = (ReentrantLock) latch.lock;
                        reentrantLock.lock();
                        try {
                            latch._isOpen = true;
                        } finally {
                            reentrantLock.unlock();
                        }
                    }
                    synchronized (invalidationTracker.trackerLock) {
                    }
                } finally {
                }
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void onPostMigrate(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
            }

            @Override // androidx.room.RoomOpenDelegate
            public final void onPreMigrate(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
                ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
                SQLiteStatement prepare = sQLiteConnection.prepare("SELECT name FROM sqlite_master WHERE type = 'trigger'");
                while (prepare.step()) {
                    try {
                        createListBuilder.add(prepare.getText(0));
                    } finally {
                    }
                }
                Cookie.Companion.closeFinally(prepare, null);
                ListIterator listIterator = IntOffsetKt.build(createListBuilder).listIterator(0);
                while (true) {
                    ListBuilder.Itr itr = (ListBuilder.Itr) listIterator;
                    if (!itr.hasNext()) {
                        return;
                    }
                    String str = (String) itr.next();
                    if (StringsKt__StringsJVMKt.startsWith(str, "room_fts_content_sync_", false)) {
                        SQLite.execSQL(sQLiteConnection, "DROP TRIGGER IF EXISTS ".concat(str));
                    }
                }
            }

            @Override // androidx.room.RoomOpenDelegate
            public final LocalFolder.AnonymousClass8 onValidateSchema(SQLiteConnection sQLiteConnection) {
                sQLiteConnection.getClass();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("work_spec_id", new TableInfo.Column(1, 1, "work_spec_id", "TEXT", null, true));
                linkedHashMap.put("prerequisite_id", new TableInfo.Column(2, 1, "prerequisite_id", "TEXT", null, true));
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                linkedHashSet.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", IntOffsetKt.listOf("work_spec_id"), IntOffsetKt.listOf("id")));
                linkedHashSet.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", IntOffsetKt.listOf("prerequisite_id"), IntOffsetKt.listOf("id")));
                LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                linkedHashSet2.add(new TableInfo.Index("index_Dependency_work_spec_id", false, IntOffsetKt.listOf("work_spec_id"), IntOffsetKt.listOf("ASC")));
                linkedHashSet2.add(new TableInfo.Index("index_Dependency_prerequisite_id", false, IntOffsetKt.listOf("prerequisite_id"), IntOffsetKt.listOf("ASC")));
                TableInfo tableInfo = new TableInfo("Dependency", linkedHashMap, linkedHashSet, linkedHashSet2);
                TableInfo read = Data.Companion.read(sQLiteConnection, "Dependency");
                if (!tableInfo.equals(read)) {
                    return new LocalFolder.AnonymousClass8("Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + tableInfo + "\n Found:\n" + read, false);
                }
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                linkedHashMap2.put("id", new TableInfo.Column(1, 1, "id", "TEXT", null, true));
                linkedHashMap2.put("state", new TableInfo.Column(0, 1, "state", "INTEGER", null, true));
                linkedHashMap2.put("worker_class_name", new TableInfo.Column(0, 1, "worker_class_name", "TEXT", null, true));
                linkedHashMap2.put("input_merger_class_name", new TableInfo.Column(0, 1, "input_merger_class_name", "TEXT", null, true));
                linkedHashMap2.put("input", new TableInfo.Column(0, 1, "input", "BLOB", null, true));
                linkedHashMap2.put("output", new TableInfo.Column(0, 1, "output", "BLOB", null, true));
                linkedHashMap2.put("initial_delay", new TableInfo.Column(0, 1, "initial_delay", "INTEGER", null, true));
                linkedHashMap2.put("interval_duration", new TableInfo.Column(0, 1, "interval_duration", "INTEGER", null, true));
                linkedHashMap2.put("flex_duration", new TableInfo.Column(0, 1, "flex_duration", "INTEGER", null, true));
                linkedHashMap2.put("run_attempt_count", new TableInfo.Column(0, 1, "run_attempt_count", "INTEGER", null, true));
                linkedHashMap2.put("backoff_policy", new TableInfo.Column(0, 1, "backoff_policy", "INTEGER", null, true));
                linkedHashMap2.put("backoff_delay_duration", new TableInfo.Column(0, 1, "backoff_delay_duration", "INTEGER", null, true));
                linkedHashMap2.put("last_enqueue_time", new TableInfo.Column(0, 1, "last_enqueue_time", "INTEGER", "-1", true));
                linkedHashMap2.put("minimum_retention_duration", new TableInfo.Column(0, 1, "minimum_retention_duration", "INTEGER", null, true));
                linkedHashMap2.put("schedule_requested_at", new TableInfo.Column(0, 1, "schedule_requested_at", "INTEGER", null, true));
                linkedHashMap2.put("run_in_foreground", new TableInfo.Column(0, 1, "run_in_foreground", "INTEGER", null, true));
                linkedHashMap2.put("out_of_quota_policy", new TableInfo.Column(0, 1, "out_of_quota_policy", "INTEGER", null, true));
                linkedHashMap2.put("period_count", new TableInfo.Column(0, 1, "period_count", "INTEGER", "0", true));
                linkedHashMap2.put("generation", new TableInfo.Column(0, 1, "generation", "INTEGER", "0", true));
                linkedHashMap2.put("next_schedule_time_override", new TableInfo.Column(0, 1, "next_schedule_time_override", "INTEGER", "9223372036854775807", true));
                linkedHashMap2.put("next_schedule_time_override_generation", new TableInfo.Column(0, 1, "next_schedule_time_override_generation", "INTEGER", "0", true));
                linkedHashMap2.put("stop_reason", new TableInfo.Column(0, 1, "stop_reason", "INTEGER", "-256", true));
                linkedHashMap2.put("trace_tag", new TableInfo.Column(0, 1, "trace_tag", "TEXT", null, false));
                linkedHashMap2.put("backoff_on_system_interruptions", new TableInfo.Column(0, 1, "backoff_on_system_interruptions", "INTEGER", null, false));
                linkedHashMap2.put("required_network_type", new TableInfo.Column(0, 1, "required_network_type", "INTEGER", null, true));
                linkedHashMap2.put("required_network_request", new TableInfo.Column(0, 1, "required_network_request", "BLOB", "x''", true));
                linkedHashMap2.put("requires_charging", new TableInfo.Column(0, 1, "requires_charging", "INTEGER", null, true));
                linkedHashMap2.put("requires_device_idle", new TableInfo.Column(0, 1, "requires_device_idle", "INTEGER", null, true));
                linkedHashMap2.put("requires_battery_not_low", new TableInfo.Column(0, 1, "requires_battery_not_low", "INTEGER", null, true));
                linkedHashMap2.put("requires_storage_not_low", new TableInfo.Column(0, 1, "requires_storage_not_low", "INTEGER", null, true));
                linkedHashMap2.put("trigger_content_update_delay", new TableInfo.Column(0, 1, "trigger_content_update_delay", "INTEGER", null, true));
                linkedHashMap2.put("trigger_max_content_delay", new TableInfo.Column(0, 1, "trigger_max_content_delay", "INTEGER", null, true));
                linkedHashMap2.put("content_uri_triggers", new TableInfo.Column(0, 1, "content_uri_triggers", "BLOB", null, true));
                LinkedHashSet linkedHashSet3 = new LinkedHashSet();
                LinkedHashSet linkedHashSet4 = new LinkedHashSet();
                linkedHashSet4.add(new TableInfo.Index("index_WorkSpec_schedule_requested_at", false, IntOffsetKt.listOf("schedule_requested_at"), IntOffsetKt.listOf("ASC")));
                linkedHashSet4.add(new TableInfo.Index("index_WorkSpec_last_enqueue_time", false, IntOffsetKt.listOf("last_enqueue_time"), IntOffsetKt.listOf("ASC")));
                TableInfo tableInfo2 = new TableInfo("WorkSpec", linkedHashMap2, linkedHashSet3, linkedHashSet4);
                TableInfo read2 = Data.Companion.read(sQLiteConnection, "WorkSpec");
                if (!tableInfo2.equals(read2)) {
                    return new LocalFolder.AnonymousClass8("WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + tableInfo2 + "\n Found:\n" + read2, false);
                }
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                linkedHashMap3.put("tag", new TableInfo.Column(1, 1, "tag", "TEXT", null, true));
                linkedHashMap3.put("work_spec_id", new TableInfo.Column(2, 1, "work_spec_id", "TEXT", null, true));
                LinkedHashSet linkedHashSet5 = new LinkedHashSet();
                linkedHashSet5.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", IntOffsetKt.listOf("work_spec_id"), IntOffsetKt.listOf("id")));
                LinkedHashSet linkedHashSet6 = new LinkedHashSet();
                linkedHashSet6.add(new TableInfo.Index("index_WorkTag_work_spec_id", false, IntOffsetKt.listOf("work_spec_id"), IntOffsetKt.listOf("ASC")));
                TableInfo tableInfo3 = new TableInfo("WorkTag", linkedHashMap3, linkedHashSet5, linkedHashSet6);
                TableInfo read3 = Data.Companion.read(sQLiteConnection, "WorkTag");
                if (!tableInfo3.equals(read3)) {
                    return new LocalFolder.AnonymousClass8("WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + tableInfo3 + "\n Found:\n" + read3, false);
                }
                LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                linkedHashMap4.put("work_spec_id", new TableInfo.Column(1, 1, "work_spec_id", "TEXT", null, true));
                linkedHashMap4.put("generation", new TableInfo.Column(2, 1, "generation", "INTEGER", "0", true));
                linkedHashMap4.put("system_id", new TableInfo.Column(0, 1, "system_id", "INTEGER", null, true));
                LinkedHashSet linkedHashSet7 = new LinkedHashSet();
                linkedHashSet7.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", IntOffsetKt.listOf("work_spec_id"), IntOffsetKt.listOf("id")));
                TableInfo tableInfo4 = new TableInfo("SystemIdInfo", linkedHashMap4, linkedHashSet7, new LinkedHashSet());
                TableInfo read4 = Data.Companion.read(sQLiteConnection, "SystemIdInfo");
                if (!tableInfo4.equals(read4)) {
                    return new LocalFolder.AnonymousClass8("SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + tableInfo4 + "\n Found:\n" + read4, false);
                }
                LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                linkedHashMap5.put("name", new TableInfo.Column(1, 1, "name", "TEXT", null, true));
                linkedHashMap5.put("work_spec_id", new TableInfo.Column(2, 1, "work_spec_id", "TEXT", null, true));
                LinkedHashSet linkedHashSet8 = new LinkedHashSet();
                linkedHashSet8.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", IntOffsetKt.listOf("work_spec_id"), IntOffsetKt.listOf("id")));
                LinkedHashSet linkedHashSet9 = new LinkedHashSet();
                linkedHashSet9.add(new TableInfo.Index("index_WorkName_work_spec_id", false, IntOffsetKt.listOf("work_spec_id"), IntOffsetKt.listOf("ASC")));
                TableInfo tableInfo5 = new TableInfo("WorkName", linkedHashMap5, linkedHashSet8, linkedHashSet9);
                TableInfo read5 = Data.Companion.read(sQLiteConnection, "WorkName");
                if (!tableInfo5.equals(read5)) {
                    return new LocalFolder.AnonymousClass8("WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + tableInfo5 + "\n Found:\n" + read5, false);
                }
                LinkedHashMap linkedHashMap6 = new LinkedHashMap();
                linkedHashMap6.put("work_spec_id", new TableInfo.Column(1, 1, "work_spec_id", "TEXT", null, true));
                linkedHashMap6.put("progress", new TableInfo.Column(0, 1, "progress", "BLOB", null, true));
                LinkedHashSet linkedHashSet10 = new LinkedHashSet();
                linkedHashSet10.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", IntOffsetKt.listOf("work_spec_id"), IntOffsetKt.listOf("id")));
                TableInfo tableInfo6 = new TableInfo("WorkProgress", linkedHashMap6, linkedHashSet10, new LinkedHashSet());
                TableInfo read6 = Data.Companion.read(sQLiteConnection, "WorkProgress");
                if (!tableInfo6.equals(read6)) {
                    return new LocalFolder.AnonymousClass8("WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + tableInfo6 + "\n Found:\n" + read6, false);
                }
                LinkedHashMap linkedHashMap7 = new LinkedHashMap();
                linkedHashMap7.put("key", new TableInfo.Column(1, 1, "key", "TEXT", null, true));
                linkedHashMap7.put("long_value", new TableInfo.Column(0, 1, "long_value", "INTEGER", null, false));
                TableInfo tableInfo7 = new TableInfo("Preference", linkedHashMap7, new LinkedHashSet(), new LinkedHashSet());
                TableInfo read7 = Data.Companion.read(sQLiteConnection, "Preference");
                if (tableInfo7.equals(read7)) {
                    return new LocalFolder.AnonymousClass8((String) null, true);
                }
                return new LocalFolder.AnonymousClass8("Preference(androidx.work.impl.model.Preference).\n Expected:\n" + tableInfo7 + "\n Found:\n" + read7, false);
            }
        };
    }

    @Override // androidx.work.impl.WorkDatabase
    public final DependencyDao_Impl dependencyDao() {
        return (DependencyDao_Impl) this._dependencyDao.getValue();
    }

    @Override // androidx.room.RoomDatabase
    public final Set getRequiredAutoMigrationSpecClasses() {
        return new LinkedHashSet();
    }

    @Override // androidx.room.RoomDatabase
    public final LinkedHashMap getRequiredTypeConverterClasses() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(WorkSpecDao_Impl.class);
        EmptyList emptyList = EmptyList.INSTANCE;
        linkedHashMap.put(orCreateKotlinClass, emptyList);
        linkedHashMap.put(Reflection.getOrCreateKotlinClass(DependencyDao_Impl.class), emptyList);
        linkedHashMap.put(Reflection.getOrCreateKotlinClass(WorkTagDao_Impl.class), emptyList);
        linkedHashMap.put(Reflection.getOrCreateKotlinClass(SystemIdInfoDao_Impl.class), emptyList);
        linkedHashMap.put(Reflection.getOrCreateKotlinClass(WorkNameDao_Impl.class), emptyList);
        linkedHashMap.put(Reflection.getOrCreateKotlinClass(WorkProgressDao_Impl.class), emptyList);
        linkedHashMap.put(Reflection.getOrCreateKotlinClass(PreferenceDao_Impl.class), emptyList);
        linkedHashMap.put(Reflection.getOrCreateKotlinClass(VerboseLogger.class), emptyList);
        return linkedHashMap;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final PreferenceDao_Impl preferenceDao() {
        return (PreferenceDao_Impl) this._preferenceDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public final SystemIdInfoDao_Impl systemIdInfoDao() {
        return (SystemIdInfoDao_Impl) this._systemIdInfoDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkNameDao_Impl workNameDao() {
        return (WorkNameDao_Impl) this._workNameDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkProgressDao_Impl workProgressDao() {
        return (WorkProgressDao_Impl) this._workProgressDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkSpecDao_Impl workSpecDao() {
        return (WorkSpecDao_Impl) this._workSpecDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public final WorkTagDao_Impl workTagDao() {
        return (WorkTagDao_Impl) this._workTagDao.getValue();
    }
}
