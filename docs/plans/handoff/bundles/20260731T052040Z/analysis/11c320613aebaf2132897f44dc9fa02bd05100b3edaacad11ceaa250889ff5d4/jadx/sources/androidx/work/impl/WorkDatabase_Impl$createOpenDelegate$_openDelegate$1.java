package androidx.work.impl;

import androidx.room.RoomDatabase;
import androidx.room.RoomOpenDelegate;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import com.google.android.exoplayer2.offline.DownloadService;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import kotlinx.serialization.json.internal.Composer;
import org.jsoup.Jsoup;
import org.schabi.newpipe.database.AppDatabase_Impl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class WorkDatabase_Impl$createOpenDelegate$_openDelegate$1 extends RoomOpenDelegate {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ RoomDatabase this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkDatabase_Impl$createOpenDelegate$_openDelegate$1(WorkDatabase_Impl workDatabase_Impl) {
        super("08b926448d86528e697981ddd30459f7", 24, "149fd8ad55885d3fe3549a37a0163243");
        this.this$0 = workDatabase_Impl;
    }

    private final Composer onValidateSchema$androidx$work$impl$WorkDatabase_Impl$createOpenDelegate$_openDelegate$1(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("work_spec_id", new TableInfo.Column(1, "work_spec_id", "TEXT", null, true, 1));
        linkedHashMap.put("prerequisite_id", new TableInfo.Column(2, "prerequisite_id", "TEXT", null, true, 1));
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", Jsoup.listOf("work_spec_id"), Jsoup.listOf(TtmlNode.ATTR_ID)));
        linkedHashSet.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", Jsoup.listOf("prerequisite_id"), Jsoup.listOf(TtmlNode.ATTR_ID)));
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        linkedHashSet2.add(new TableInfo.Index("index_Dependency_work_spec_id", false, Jsoup.listOf("work_spec_id"), Jsoup.listOf("ASC")));
        linkedHashSet2.add(new TableInfo.Index("index_Dependency_prerequisite_id", false, Jsoup.listOf("prerequisite_id"), Jsoup.listOf("ASC")));
        TableInfo tableInfo = new TableInfo("Dependency", linkedHashMap, linkedHashSet, linkedHashSet2);
        TableInfo read = DBUtil.read(sQLiteConnection, "Dependency");
        if (!tableInfo.equals(read)) {
            return new Composer(false, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + tableInfo + "\n Found:\n" + read);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put(TtmlNode.ATTR_ID, new TableInfo.Column(1, TtmlNode.ATTR_ID, "TEXT", null, true, 1));
        linkedHashMap2.put("state", new TableInfo.Column(0, "state", "INTEGER", null, true, 1));
        linkedHashMap2.put("worker_class_name", new TableInfo.Column(0, "worker_class_name", "TEXT", null, true, 1));
        linkedHashMap2.put("input_merger_class_name", new TableInfo.Column(0, "input_merger_class_name", "TEXT", null, true, 1));
        linkedHashMap2.put("input", new TableInfo.Column(0, "input", "BLOB", null, true, 1));
        linkedHashMap2.put("output", new TableInfo.Column(0, "output", "BLOB", null, true, 1));
        linkedHashMap2.put("initial_delay", new TableInfo.Column(0, "initial_delay", "INTEGER", null, true, 1));
        linkedHashMap2.put("interval_duration", new TableInfo.Column(0, "interval_duration", "INTEGER", null, true, 1));
        linkedHashMap2.put("flex_duration", new TableInfo.Column(0, "flex_duration", "INTEGER", null, true, 1));
        linkedHashMap2.put("run_attempt_count", new TableInfo.Column(0, "run_attempt_count", "INTEGER", null, true, 1));
        linkedHashMap2.put("backoff_policy", new TableInfo.Column(0, "backoff_policy", "INTEGER", null, true, 1));
        linkedHashMap2.put("backoff_delay_duration", new TableInfo.Column(0, "backoff_delay_duration", "INTEGER", null, true, 1));
        linkedHashMap2.put("last_enqueue_time", new TableInfo.Column(0, "last_enqueue_time", "INTEGER", "-1", true, 1));
        linkedHashMap2.put("minimum_retention_duration", new TableInfo.Column(0, "minimum_retention_duration", "INTEGER", null, true, 1));
        linkedHashMap2.put("schedule_requested_at", new TableInfo.Column(0, "schedule_requested_at", "INTEGER", null, true, 1));
        linkedHashMap2.put("run_in_foreground", new TableInfo.Column(0, "run_in_foreground", "INTEGER", null, true, 1));
        linkedHashMap2.put("out_of_quota_policy", new TableInfo.Column(0, "out_of_quota_policy", "INTEGER", null, true, 1));
        linkedHashMap2.put("period_count", new TableInfo.Column(0, "period_count", "INTEGER", "0", true, 1));
        linkedHashMap2.put("generation", new TableInfo.Column(0, "generation", "INTEGER", "0", true, 1));
        linkedHashMap2.put("next_schedule_time_override", new TableInfo.Column(0, "next_schedule_time_override", "INTEGER", "9223372036854775807", true, 1));
        linkedHashMap2.put("next_schedule_time_override_generation", new TableInfo.Column(0, "next_schedule_time_override_generation", "INTEGER", "0", true, 1));
        linkedHashMap2.put(DownloadService.KEY_STOP_REASON, new TableInfo.Column(0, DownloadService.KEY_STOP_REASON, "INTEGER", "-256", true, 1));
        linkedHashMap2.put("trace_tag", new TableInfo.Column(0, "trace_tag", "TEXT", null, false, 1));
        linkedHashMap2.put("backoff_on_system_interruptions", new TableInfo.Column(0, "backoff_on_system_interruptions", "INTEGER", null, false, 1));
        linkedHashMap2.put("required_network_type", new TableInfo.Column(0, "required_network_type", "INTEGER", null, true, 1));
        linkedHashMap2.put("required_network_request", new TableInfo.Column(0, "required_network_request", "BLOB", "x''", true, 1));
        linkedHashMap2.put("requires_charging", new TableInfo.Column(0, "requires_charging", "INTEGER", null, true, 1));
        linkedHashMap2.put("requires_device_idle", new TableInfo.Column(0, "requires_device_idle", "INTEGER", null, true, 1));
        linkedHashMap2.put("requires_battery_not_low", new TableInfo.Column(0, "requires_battery_not_low", "INTEGER", null, true, 1));
        linkedHashMap2.put("requires_storage_not_low", new TableInfo.Column(0, "requires_storage_not_low", "INTEGER", null, true, 1));
        linkedHashMap2.put("trigger_content_update_delay", new TableInfo.Column(0, "trigger_content_update_delay", "INTEGER", null, true, 1));
        linkedHashMap2.put("trigger_max_content_delay", new TableInfo.Column(0, "trigger_max_content_delay", "INTEGER", null, true, 1));
        linkedHashMap2.put("content_uri_triggers", new TableInfo.Column(0, "content_uri_triggers", "BLOB", null, true, 1));
        LinkedHashSet linkedHashSet3 = new LinkedHashSet();
        LinkedHashSet linkedHashSet4 = new LinkedHashSet();
        linkedHashSet4.add(new TableInfo.Index("index_WorkSpec_schedule_requested_at", false, Jsoup.listOf("schedule_requested_at"), Jsoup.listOf("ASC")));
        linkedHashSet4.add(new TableInfo.Index("index_WorkSpec_last_enqueue_time", false, Jsoup.listOf("last_enqueue_time"), Jsoup.listOf("ASC")));
        TableInfo tableInfo2 = new TableInfo("WorkSpec", linkedHashMap2, linkedHashSet3, linkedHashSet4);
        TableInfo read2 = DBUtil.read(sQLiteConnection, "WorkSpec");
        if (!tableInfo2.equals(read2)) {
            return new Composer(false, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + tableInfo2 + "\n Found:\n" + read2);
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        linkedHashMap3.put("tag", new TableInfo.Column(1, "tag", "TEXT", null, true, 1));
        linkedHashMap3.put("work_spec_id", new TableInfo.Column(2, "work_spec_id", "TEXT", null, true, 1));
        LinkedHashSet linkedHashSet5 = new LinkedHashSet();
        linkedHashSet5.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", Jsoup.listOf("work_spec_id"), Jsoup.listOf(TtmlNode.ATTR_ID)));
        LinkedHashSet linkedHashSet6 = new LinkedHashSet();
        linkedHashSet6.add(new TableInfo.Index("index_WorkTag_work_spec_id", false, Jsoup.listOf("work_spec_id"), Jsoup.listOf("ASC")));
        TableInfo tableInfo3 = new TableInfo("WorkTag", linkedHashMap3, linkedHashSet5, linkedHashSet6);
        TableInfo read3 = DBUtil.read(sQLiteConnection, "WorkTag");
        if (!tableInfo3.equals(read3)) {
            return new Composer(false, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + tableInfo3 + "\n Found:\n" + read3);
        }
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        linkedHashMap4.put("work_spec_id", new TableInfo.Column(1, "work_spec_id", "TEXT", null, true, 1));
        linkedHashMap4.put("generation", new TableInfo.Column(2, "generation", "INTEGER", "0", true, 1));
        linkedHashMap4.put("system_id", new TableInfo.Column(0, "system_id", "INTEGER", null, true, 1));
        LinkedHashSet linkedHashSet7 = new LinkedHashSet();
        linkedHashSet7.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", Jsoup.listOf("work_spec_id"), Jsoup.listOf(TtmlNode.ATTR_ID)));
        TableInfo tableInfo4 = new TableInfo("SystemIdInfo", linkedHashMap4, linkedHashSet7, new LinkedHashSet());
        TableInfo read4 = DBUtil.read(sQLiteConnection, "SystemIdInfo");
        if (!tableInfo4.equals(read4)) {
            return new Composer(false, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + tableInfo4 + "\n Found:\n" + read4);
        }
        LinkedHashMap linkedHashMap5 = new LinkedHashMap();
        linkedHashMap5.put("name", new TableInfo.Column(1, "name", "TEXT", null, true, 1));
        linkedHashMap5.put("work_spec_id", new TableInfo.Column(2, "work_spec_id", "TEXT", null, true, 1));
        LinkedHashSet linkedHashSet8 = new LinkedHashSet();
        linkedHashSet8.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", Jsoup.listOf("work_spec_id"), Jsoup.listOf(TtmlNode.ATTR_ID)));
        LinkedHashSet linkedHashSet9 = new LinkedHashSet();
        linkedHashSet9.add(new TableInfo.Index("index_WorkName_work_spec_id", false, Jsoup.listOf("work_spec_id"), Jsoup.listOf("ASC")));
        TableInfo tableInfo5 = new TableInfo("WorkName", linkedHashMap5, linkedHashSet8, linkedHashSet9);
        TableInfo read5 = DBUtil.read(sQLiteConnection, "WorkName");
        if (!tableInfo5.equals(read5)) {
            return new Composer(false, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + tableInfo5 + "\n Found:\n" + read5);
        }
        LinkedHashMap linkedHashMap6 = new LinkedHashMap();
        linkedHashMap6.put("work_spec_id", new TableInfo.Column(1, "work_spec_id", "TEXT", null, true, 1));
        linkedHashMap6.put("progress", new TableInfo.Column(0, "progress", "BLOB", null, true, 1));
        LinkedHashSet linkedHashSet10 = new LinkedHashSet();
        linkedHashSet10.add(new TableInfo.ForeignKey("WorkSpec", "CASCADE", "CASCADE", Jsoup.listOf("work_spec_id"), Jsoup.listOf(TtmlNode.ATTR_ID)));
        TableInfo tableInfo6 = new TableInfo("WorkProgress", linkedHashMap6, linkedHashSet10, new LinkedHashSet());
        TableInfo read6 = DBUtil.read(sQLiteConnection, "WorkProgress");
        if (!tableInfo6.equals(read6)) {
            return new Composer(false, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + tableInfo6 + "\n Found:\n" + read6);
        }
        LinkedHashMap linkedHashMap7 = new LinkedHashMap();
        linkedHashMap7.put("key", new TableInfo.Column(1, "key", "TEXT", null, true, 1));
        linkedHashMap7.put("long_value", new TableInfo.Column(0, "long_value", "INTEGER", null, false, 1));
        TableInfo tableInfo7 = new TableInfo("Preference", linkedHashMap7, new LinkedHashSet(), new LinkedHashSet());
        TableInfo read7 = DBUtil.read(sQLiteConnection, "Preference");
        if (tableInfo7.equals(read7)) {
            return new Composer(true, (String) null);
        }
        return new Composer(false, "Preference(androidx.work.impl.model.Preference).\n Expected:\n" + tableInfo7 + "\n Found:\n" + read7);
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void createAllTables(SQLiteConnection sQLiteConnection) {
        int i = this.$r8$classId;
        sQLiteConnection.getClass();
        switch (i) {
            case 0:
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
                break;
            default:
                SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `subscriptions` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `service_id` INTEGER NOT NULL, `url` TEXT, `name` TEXT, `avatar_url` TEXT, `subscriber_count` INTEGER, `description` TEXT, `notification_mode` INTEGER NOT NULL)");
                SQLite.execSQL(sQLiteConnection, "CREATE UNIQUE INDEX IF NOT EXISTS `index_subscriptions_service_id_url` ON `subscriptions` (`service_id`, `url`)");
                SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `search_history` (`creation_date` INTEGER, `service_id` INTEGER NOT NULL, `search` TEXT, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL)");
                SQLite.execSQL(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_search_history_search` ON `search_history` (`search`)");
                SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `streams` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `service_id` INTEGER NOT NULL, `url` TEXT NOT NULL, `title` TEXT NOT NULL, `stream_type` TEXT NOT NULL, `duration` INTEGER NOT NULL, `uploader` TEXT NOT NULL, `uploader_url` TEXT, `thumbnail_url` TEXT, `view_count` INTEGER, `textual_upload_date` TEXT, `upload_date` INTEGER, `is_upload_date_approximation` INTEGER)");
                SQLite.execSQL(sQLiteConnection, "CREATE UNIQUE INDEX IF NOT EXISTS `index_streams_service_id_url` ON `streams` (`service_id`, `url`)");
                SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `stream_history` (`stream_id` INTEGER NOT NULL, `access_date` INTEGER NOT NULL, `repeat_count` INTEGER NOT NULL, PRIMARY KEY(`stream_id`, `access_date`), FOREIGN KEY(`stream_id`) REFERENCES `streams`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.execSQL(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_stream_history_stream_id` ON `stream_history` (`stream_id`)");
                SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `stream_state` (`stream_id` INTEGER NOT NULL, `progress_time` INTEGER NOT NULL, PRIMARY KEY(`stream_id`), FOREIGN KEY(`stream_id`) REFERENCES `streams`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE )");
                SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `playlists` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT, `is_thumbnail_permanent` INTEGER NOT NULL, `thumbnail_stream_id` INTEGER NOT NULL, `display_index` INTEGER NOT NULL)");
                SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `playlist_stream_join` (`playlist_id` INTEGER NOT NULL, `stream_id` INTEGER NOT NULL, `join_index` INTEGER NOT NULL, PRIMARY KEY(`playlist_id`, `join_index`), FOREIGN KEY(`playlist_id`) REFERENCES `playlists`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED, FOREIGN KEY(`stream_id`) REFERENCES `streams`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED)");
                SQLite.execSQL(sQLiteConnection, "CREATE UNIQUE INDEX IF NOT EXISTS `index_playlist_stream_join_playlist_id_join_index` ON `playlist_stream_join` (`playlist_id`, `join_index`)");
                SQLite.execSQL(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_playlist_stream_join_stream_id` ON `playlist_stream_join` (`stream_id`)");
                SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `remote_playlists` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `service_id` INTEGER NOT NULL, `name` TEXT, `url` TEXT, `thumbnail_url` TEXT, `uploader` TEXT, `display_index` INTEGER NOT NULL, `stream_count` INTEGER)");
                SQLite.execSQL(sQLiteConnection, "CREATE UNIQUE INDEX IF NOT EXISTS `index_remote_playlists_service_id_url` ON `remote_playlists` (`service_id`, `url`)");
                SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `feed` (`stream_id` INTEGER NOT NULL, `subscription_id` INTEGER NOT NULL, PRIMARY KEY(`stream_id`, `subscription_id`), FOREIGN KEY(`stream_id`) REFERENCES `streams`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED, FOREIGN KEY(`subscription_id`) REFERENCES `subscriptions`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED)");
                SQLite.execSQL(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_feed_subscription_id` ON `feed` (`subscription_id`)");
                SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `feed_group` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `icon_id` INTEGER NOT NULL, `sort_order` INTEGER NOT NULL)");
                SQLite.execSQL(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_feed_group_sort_order` ON `feed_group` (`sort_order`)");
                SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `feed_group_subscription_join` (`group_id` INTEGER NOT NULL, `subscription_id` INTEGER NOT NULL, PRIMARY KEY(`group_id`, `subscription_id`), FOREIGN KEY(`group_id`) REFERENCES `feed_group`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED, FOREIGN KEY(`subscription_id`) REFERENCES `subscriptions`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED)");
                SQLite.execSQL(sQLiteConnection, "CREATE INDEX IF NOT EXISTS `index_feed_group_subscription_join_subscription_id` ON `feed_group_subscription_join` (`subscription_id`)");
                SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS `feed_last_updated` (`subscription_id` INTEGER NOT NULL, `last_updated` INTEGER, PRIMARY KEY(`subscription_id`), FOREIGN KEY(`subscription_id`) REFERENCES `subscriptions`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED)");
                SQLite.execSQL(sQLiteConnection, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                SQLite.execSQL(sQLiteConnection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '7591e8039faa74d8c0517dc867af9d3e')");
                break;
        }
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void dropAllTables(SQLiteConnection sQLiteConnection) {
        int i = this.$r8$classId;
        sQLiteConnection.getClass();
        switch (i) {
            case 0:
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `Dependency`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `WorkSpec`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `WorkTag`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `SystemIdInfo`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `WorkName`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `WorkProgress`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `Preference`");
                break;
            default:
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `subscriptions`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `search_history`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `streams`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `stream_history`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `stream_state`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `playlists`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `playlist_stream_join`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `remote_playlists`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `feed`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `feed_group`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `feed_group_subscription_join`");
                SQLite.execSQL(sQLiteConnection, "DROP TABLE IF EXISTS `feed_last_updated`");
                break;
        }
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void onCreate(SQLiteConnection sQLiteConnection) {
        int i = this.$r8$classId;
        sQLiteConnection.getClass();
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void onOpen(SQLiteConnection sQLiteConnection) {
        int i = this.$r8$classId;
        RoomDatabase roomDatabase = this.this$0;
        sQLiteConnection.getClass();
        switch (i) {
            case 0:
                SQLite.execSQL(sQLiteConnection, "PRAGMA foreign_keys = ON");
                ((WorkDatabase_Impl) roomDatabase).internalInitInvalidationTracker(sQLiteConnection);
                break;
            default:
                SQLite.execSQL(sQLiteConnection, "PRAGMA foreign_keys = ON");
                ((AppDatabase_Impl) roomDatabase).internalInitInvalidationTracker(sQLiteConnection);
                break;
        }
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void onPostMigrate(SQLiteConnection sQLiteConnection) {
        int i = this.$r8$classId;
        sQLiteConnection.getClass();
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void onPreMigrate(SQLiteConnection sQLiteConnection) {
        int i = this.$r8$classId;
        sQLiteConnection.getClass();
        switch (i) {
            case 0:
                DBUtil.dropFtsSyncTriggers(sQLiteConnection);
                break;
            default:
                DBUtil.dropFtsSyncTriggers(sQLiteConnection);
                break;
        }
    }

    @Override // androidx.room.RoomOpenDelegate
    public final Composer onValidateSchema(SQLiteConnection sQLiteConnection) {
        switch (this.$r8$classId) {
            case 0:
                return onValidateSchema$androidx$work$impl$WorkDatabase_Impl$createOpenDelegate$_openDelegate$1(sQLiteConnection);
            default:
                sQLiteConnection.getClass();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("uid", new TableInfo.Column(1, "uid", "INTEGER", null, true, 1));
                linkedHashMap.put("service_id", new TableInfo.Column(0, "service_id", "INTEGER", null, true, 1));
                linkedHashMap.put("url", new TableInfo.Column(0, "url", "TEXT", null, false, 1));
                linkedHashMap.put("name", new TableInfo.Column(0, "name", "TEXT", null, false, 1));
                linkedHashMap.put("avatar_url", new TableInfo.Column(0, "avatar_url", "TEXT", null, false, 1));
                linkedHashMap.put("subscriber_count", new TableInfo.Column(0, "subscriber_count", "INTEGER", null, false, 1));
                linkedHashMap.put("description", new TableInfo.Column(0, "description", "TEXT", null, false, 1));
                linkedHashMap.put("notification_mode", new TableInfo.Column(0, "notification_mode", "INTEGER", null, true, 1));
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                linkedHashSet2.add(new TableInfo.Index("index_subscriptions_service_id_url", true, Jsoup.listOf((Object[]) new String[]{"service_id", "url"}), Jsoup.listOf((Object[]) new String[]{"ASC", "ASC"})));
                TableInfo tableInfo = new TableInfo("subscriptions", linkedHashMap, linkedHashSet, linkedHashSet2);
                TableInfo read = DBUtil.read(sQLiteConnection, "subscriptions");
                if (!tableInfo.equals(read)) {
                    return new Composer(false, "subscriptions(org.schabi.newpipe.database.subscription.SubscriptionEntity).\n Expected:\n" + tableInfo + "\n Found:\n" + read);
                }
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                linkedHashMap2.put("creation_date", new TableInfo.Column(0, "creation_date", "INTEGER", null, false, 1));
                linkedHashMap2.put("service_id", new TableInfo.Column(0, "service_id", "INTEGER", null, true, 1));
                linkedHashMap2.put("search", new TableInfo.Column(0, "search", "TEXT", null, false, 1));
                linkedHashMap2.put(TtmlNode.ATTR_ID, new TableInfo.Column(1, TtmlNode.ATTR_ID, "INTEGER", null, true, 1));
                LinkedHashSet linkedHashSet3 = new LinkedHashSet();
                LinkedHashSet linkedHashSet4 = new LinkedHashSet();
                linkedHashSet4.add(new TableInfo.Index("index_search_history_search", false, Jsoup.listOf("search"), Jsoup.listOf("ASC")));
                TableInfo tableInfo2 = new TableInfo("search_history", linkedHashMap2, linkedHashSet3, linkedHashSet4);
                TableInfo read2 = DBUtil.read(sQLiteConnection, "search_history");
                if (!tableInfo2.equals(read2)) {
                    return new Composer(false, "search_history(org.schabi.newpipe.database.history.model.SearchHistoryEntry).\n Expected:\n" + tableInfo2 + "\n Found:\n" + read2);
                }
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                linkedHashMap3.put("uid", new TableInfo.Column(1, "uid", "INTEGER", null, true, 1));
                linkedHashMap3.put("service_id", new TableInfo.Column(0, "service_id", "INTEGER", null, true, 1));
                linkedHashMap3.put("url", new TableInfo.Column(0, "url", "TEXT", null, true, 1));
                linkedHashMap3.put("title", new TableInfo.Column(0, "title", "TEXT", null, true, 1));
                linkedHashMap3.put("stream_type", new TableInfo.Column(0, "stream_type", "TEXT", null, true, 1));
                linkedHashMap3.put("duration", new TableInfo.Column(0, "duration", "INTEGER", null, true, 1));
                linkedHashMap3.put("uploader", new TableInfo.Column(0, "uploader", "TEXT", null, true, 1));
                linkedHashMap3.put("uploader_url", new TableInfo.Column(0, "uploader_url", "TEXT", null, false, 1));
                linkedHashMap3.put("thumbnail_url", new TableInfo.Column(0, "thumbnail_url", "TEXT", null, false, 1));
                linkedHashMap3.put("view_count", new TableInfo.Column(0, "view_count", "INTEGER", null, false, 1));
                linkedHashMap3.put("textual_upload_date", new TableInfo.Column(0, "textual_upload_date", "TEXT", null, false, 1));
                linkedHashMap3.put("upload_date", new TableInfo.Column(0, "upload_date", "INTEGER", null, false, 1));
                linkedHashMap3.put("is_upload_date_approximation", new TableInfo.Column(0, "is_upload_date_approximation", "INTEGER", null, false, 1));
                LinkedHashSet linkedHashSet5 = new LinkedHashSet();
                LinkedHashSet linkedHashSet6 = new LinkedHashSet();
                linkedHashSet6.add(new TableInfo.Index("index_streams_service_id_url", true, Jsoup.listOf((Object[]) new String[]{"service_id", "url"}), Jsoup.listOf((Object[]) new String[]{"ASC", "ASC"})));
                TableInfo tableInfo3 = new TableInfo("streams", linkedHashMap3, linkedHashSet5, linkedHashSet6);
                TableInfo read3 = DBUtil.read(sQLiteConnection, "streams");
                if (!tableInfo3.equals(read3)) {
                    return new Composer(false, "streams(org.schabi.newpipe.database.stream.model.StreamEntity).\n Expected:\n" + tableInfo3 + "\n Found:\n" + read3);
                }
                LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                linkedHashMap4.put("stream_id", new TableInfo.Column(1, "stream_id", "INTEGER", null, true, 1));
                linkedHashMap4.put("access_date", new TableInfo.Column(2, "access_date", "INTEGER", null, true, 1));
                linkedHashMap4.put("repeat_count", new TableInfo.Column(0, "repeat_count", "INTEGER", null, true, 1));
                LinkedHashSet linkedHashSet7 = new LinkedHashSet();
                linkedHashSet7.add(new TableInfo.ForeignKey("streams", "CASCADE", "CASCADE", Jsoup.listOf("stream_id"), Jsoup.listOf("uid")));
                LinkedHashSet linkedHashSet8 = new LinkedHashSet();
                linkedHashSet8.add(new TableInfo.Index("index_stream_history_stream_id", false, Jsoup.listOf("stream_id"), Jsoup.listOf("ASC")));
                TableInfo tableInfo4 = new TableInfo("stream_history", linkedHashMap4, linkedHashSet7, linkedHashSet8);
                TableInfo read4 = DBUtil.read(sQLiteConnection, "stream_history");
                if (!tableInfo4.equals(read4)) {
                    return new Composer(false, "stream_history(org.schabi.newpipe.database.history.model.StreamHistoryEntity).\n Expected:\n" + tableInfo4 + "\n Found:\n" + read4);
                }
                LinkedHashMap linkedHashMap5 = new LinkedHashMap();
                linkedHashMap5.put("stream_id", new TableInfo.Column(1, "stream_id", "INTEGER", null, true, 1));
                linkedHashMap5.put("progress_time", new TableInfo.Column(0, "progress_time", "INTEGER", null, true, 1));
                LinkedHashSet linkedHashSet9 = new LinkedHashSet();
                linkedHashSet9.add(new TableInfo.ForeignKey("streams", "CASCADE", "CASCADE", Jsoup.listOf("stream_id"), Jsoup.listOf("uid")));
                TableInfo tableInfo5 = new TableInfo("stream_state", linkedHashMap5, linkedHashSet9, new LinkedHashSet());
                TableInfo read5 = DBUtil.read(sQLiteConnection, "stream_state");
                if (!tableInfo5.equals(read5)) {
                    return new Composer(false, "stream_state(org.schabi.newpipe.database.stream.model.StreamStateEntity).\n Expected:\n" + tableInfo5 + "\n Found:\n" + read5);
                }
                LinkedHashMap linkedHashMap6 = new LinkedHashMap();
                linkedHashMap6.put("uid", new TableInfo.Column(1, "uid", "INTEGER", null, true, 1));
                linkedHashMap6.put("name", new TableInfo.Column(0, "name", "TEXT", null, false, 1));
                linkedHashMap6.put("is_thumbnail_permanent", new TableInfo.Column(0, "is_thumbnail_permanent", "INTEGER", null, true, 1));
                linkedHashMap6.put("thumbnail_stream_id", new TableInfo.Column(0, "thumbnail_stream_id", "INTEGER", null, true, 1));
                linkedHashMap6.put("display_index", new TableInfo.Column(0, "display_index", "INTEGER", null, true, 1));
                TableInfo tableInfo6 = new TableInfo("playlists", linkedHashMap6, new LinkedHashSet(), new LinkedHashSet());
                TableInfo read6 = DBUtil.read(sQLiteConnection, "playlists");
                if (!tableInfo6.equals(read6)) {
                    return new Composer(false, "playlists(org.schabi.newpipe.database.playlist.model.PlaylistEntity).\n Expected:\n" + tableInfo6 + "\n Found:\n" + read6);
                }
                LinkedHashMap linkedHashMap7 = new LinkedHashMap();
                linkedHashMap7.put("playlist_id", new TableInfo.Column(1, "playlist_id", "INTEGER", null, true, 1));
                linkedHashMap7.put("stream_id", new TableInfo.Column(0, "stream_id", "INTEGER", null, true, 1));
                linkedHashMap7.put("join_index", new TableInfo.Column(2, "join_index", "INTEGER", null, true, 1));
                LinkedHashSet linkedHashSet10 = new LinkedHashSet();
                linkedHashSet10.add(new TableInfo.ForeignKey("playlists", "CASCADE", "CASCADE", Jsoup.listOf("playlist_id"), Jsoup.listOf("uid")));
                linkedHashSet10.add(new TableInfo.ForeignKey("streams", "CASCADE", "CASCADE", Jsoup.listOf("stream_id"), Jsoup.listOf("uid")));
                LinkedHashSet linkedHashSet11 = new LinkedHashSet();
                linkedHashSet11.add(new TableInfo.Index("index_playlist_stream_join_playlist_id_join_index", true, Jsoup.listOf((Object[]) new String[]{"playlist_id", "join_index"}), Jsoup.listOf((Object[]) new String[]{"ASC", "ASC"})));
                linkedHashSet11.add(new TableInfo.Index("index_playlist_stream_join_stream_id", false, Jsoup.listOf("stream_id"), Jsoup.listOf("ASC")));
                TableInfo tableInfo7 = new TableInfo("playlist_stream_join", linkedHashMap7, linkedHashSet10, linkedHashSet11);
                TableInfo read7 = DBUtil.read(sQLiteConnection, "playlist_stream_join");
                if (!tableInfo7.equals(read7)) {
                    return new Composer(false, "playlist_stream_join(org.schabi.newpipe.database.playlist.model.PlaylistStreamEntity).\n Expected:\n" + tableInfo7 + "\n Found:\n" + read7);
                }
                LinkedHashMap linkedHashMap8 = new LinkedHashMap();
                linkedHashMap8.put("uid", new TableInfo.Column(1, "uid", "INTEGER", null, true, 1));
                linkedHashMap8.put("service_id", new TableInfo.Column(0, "service_id", "INTEGER", null, true, 1));
                linkedHashMap8.put("name", new TableInfo.Column(0, "name", "TEXT", null, false, 1));
                linkedHashMap8.put("url", new TableInfo.Column(0, "url", "TEXT", null, false, 1));
                linkedHashMap8.put("thumbnail_url", new TableInfo.Column(0, "thumbnail_url", "TEXT", null, false, 1));
                linkedHashMap8.put("uploader", new TableInfo.Column(0, "uploader", "TEXT", null, false, 1));
                linkedHashMap8.put("display_index", new TableInfo.Column(0, "display_index", "INTEGER", null, true, 1));
                linkedHashMap8.put("stream_count", new TableInfo.Column(0, "stream_count", "INTEGER", null, false, 1));
                LinkedHashSet linkedHashSet12 = new LinkedHashSet();
                LinkedHashSet linkedHashSet13 = new LinkedHashSet();
                linkedHashSet13.add(new TableInfo.Index("index_remote_playlists_service_id_url", true, Jsoup.listOf((Object[]) new String[]{"service_id", "url"}), Jsoup.listOf((Object[]) new String[]{"ASC", "ASC"})));
                TableInfo tableInfo8 = new TableInfo("remote_playlists", linkedHashMap8, linkedHashSet12, linkedHashSet13);
                TableInfo read8 = DBUtil.read(sQLiteConnection, "remote_playlists");
                if (!tableInfo8.equals(read8)) {
                    return new Composer(false, "remote_playlists(org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity).\n Expected:\n" + tableInfo8 + "\n Found:\n" + read8);
                }
                LinkedHashMap linkedHashMap9 = new LinkedHashMap();
                linkedHashMap9.put("stream_id", new TableInfo.Column(1, "stream_id", "INTEGER", null, true, 1));
                linkedHashMap9.put("subscription_id", new TableInfo.Column(2, "subscription_id", "INTEGER", null, true, 1));
                LinkedHashSet linkedHashSet14 = new LinkedHashSet();
                linkedHashSet14.add(new TableInfo.ForeignKey("streams", "CASCADE", "CASCADE", Jsoup.listOf("stream_id"), Jsoup.listOf("uid")));
                linkedHashSet14.add(new TableInfo.ForeignKey("subscriptions", "CASCADE", "CASCADE", Jsoup.listOf("subscription_id"), Jsoup.listOf("uid")));
                LinkedHashSet linkedHashSet15 = new LinkedHashSet();
                linkedHashSet15.add(new TableInfo.Index("index_feed_subscription_id", false, Jsoup.listOf("subscription_id"), Jsoup.listOf("ASC")));
                TableInfo tableInfo9 = new TableInfo("feed", linkedHashMap9, linkedHashSet14, linkedHashSet15);
                TableInfo read9 = DBUtil.read(sQLiteConnection, "feed");
                if (!tableInfo9.equals(read9)) {
                    return new Composer(false, "feed(org.schabi.newpipe.database.feed.model.FeedEntity).\n Expected:\n" + tableInfo9 + "\n Found:\n" + read9);
                }
                LinkedHashMap linkedHashMap10 = new LinkedHashMap();
                linkedHashMap10.put("uid", new TableInfo.Column(1, "uid", "INTEGER", null, true, 1));
                linkedHashMap10.put("name", new TableInfo.Column(0, "name", "TEXT", null, true, 1));
                linkedHashMap10.put("icon_id", new TableInfo.Column(0, "icon_id", "INTEGER", null, true, 1));
                linkedHashMap10.put("sort_order", new TableInfo.Column(0, "sort_order", "INTEGER", null, true, 1));
                LinkedHashSet linkedHashSet16 = new LinkedHashSet();
                LinkedHashSet linkedHashSet17 = new LinkedHashSet();
                linkedHashSet17.add(new TableInfo.Index("index_feed_group_sort_order", false, Jsoup.listOf("sort_order"), Jsoup.listOf("ASC")));
                TableInfo tableInfo10 = new TableInfo("feed_group", linkedHashMap10, linkedHashSet16, linkedHashSet17);
                TableInfo read10 = DBUtil.read(sQLiteConnection, "feed_group");
                if (!tableInfo10.equals(read10)) {
                    return new Composer(false, "feed_group(org.schabi.newpipe.database.feed.model.FeedGroupEntity).\n Expected:\n" + tableInfo10 + "\n Found:\n" + read10);
                }
                LinkedHashMap linkedHashMap11 = new LinkedHashMap();
                linkedHashMap11.put("group_id", new TableInfo.Column(1, "group_id", "INTEGER", null, true, 1));
                linkedHashMap11.put("subscription_id", new TableInfo.Column(2, "subscription_id", "INTEGER", null, true, 1));
                LinkedHashSet linkedHashSet18 = new LinkedHashSet();
                linkedHashSet18.add(new TableInfo.ForeignKey("feed_group", "CASCADE", "CASCADE", Jsoup.listOf("group_id"), Jsoup.listOf("uid")));
                linkedHashSet18.add(new TableInfo.ForeignKey("subscriptions", "CASCADE", "CASCADE", Jsoup.listOf("subscription_id"), Jsoup.listOf("uid")));
                LinkedHashSet linkedHashSet19 = new LinkedHashSet();
                linkedHashSet19.add(new TableInfo.Index("index_feed_group_subscription_join_subscription_id", false, Jsoup.listOf("subscription_id"), Jsoup.listOf("ASC")));
                TableInfo tableInfo11 = new TableInfo("feed_group_subscription_join", linkedHashMap11, linkedHashSet18, linkedHashSet19);
                TableInfo read11 = DBUtil.read(sQLiteConnection, "feed_group_subscription_join");
                if (!tableInfo11.equals(read11)) {
                    return new Composer(false, "feed_group_subscription_join(org.schabi.newpipe.database.feed.model.FeedGroupSubscriptionEntity).\n Expected:\n" + tableInfo11 + "\n Found:\n" + read11);
                }
                LinkedHashMap linkedHashMap12 = new LinkedHashMap();
                linkedHashMap12.put("subscription_id", new TableInfo.Column(1, "subscription_id", "INTEGER", null, true, 1));
                linkedHashMap12.put("last_updated", new TableInfo.Column(0, "last_updated", "INTEGER", null, false, 1));
                LinkedHashSet linkedHashSet20 = new LinkedHashSet();
                linkedHashSet20.add(new TableInfo.ForeignKey("subscriptions", "CASCADE", "CASCADE", Jsoup.listOf("subscription_id"), Jsoup.listOf("uid")));
                TableInfo tableInfo12 = new TableInfo("feed_last_updated", linkedHashMap12, linkedHashSet20, new LinkedHashSet());
                TableInfo read12 = DBUtil.read(sQLiteConnection, "feed_last_updated");
                if (tableInfo12.equals(read12)) {
                    return new Composer(true, (String) null);
                }
                return new Composer(false, "feed_last_updated(org.schabi.newpipe.database.feed.model.FeedLastUpdatedEntity).\n Expected:\n" + tableInfo12 + "\n Found:\n" + read12);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkDatabase_Impl$createOpenDelegate$_openDelegate$1(AppDatabase_Impl appDatabase_Impl) {
        super("7591e8039faa74d8c0517dc867af9d3e", 9, "d3fe862898d1b6d0c97c76386b82dd78");
        this.this$0 = appDatabase_Impl;
    }
}
