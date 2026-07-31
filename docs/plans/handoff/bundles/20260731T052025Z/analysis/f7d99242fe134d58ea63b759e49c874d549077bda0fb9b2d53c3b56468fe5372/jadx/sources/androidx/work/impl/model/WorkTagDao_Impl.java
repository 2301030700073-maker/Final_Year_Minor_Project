package androidx.work.impl.model;

import androidx.room.PooledConnection;
import androidx.room.RoomDatabase;
import androidx.room.RoomDatabase$$ExternalSyntheticLambda0;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import okhttp3.Cookie;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WorkTagDao_Impl {
    public final RoomDatabase __db;
    public final AnonymousClass1 __insertAdapterOfWorkTag = new AnonymousClass1(0);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.work.impl.model.WorkTagDao_Impl$1, reason: invalid class name */
    public final class AnonymousClass1 {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass1(int i) {
            this.$r8$classId = i;
        }

        public static final Object execSQL(PooledConnection pooledConnection, String str, ContinuationImpl continuationImpl) {
            Object usePrepared = pooledConnection.usePrepared(str, new RoomDatabase$$ExternalSyntheticLambda0(29), continuationImpl);
            return usePrepared == CoroutineSingletons.COROUTINE_SUSPENDED ? usePrepared : Unit.INSTANCE;
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x0149  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0225  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0228  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x014d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void bind(androidx.sqlite.SQLiteStatement r12, java.lang.Object r13) {
            /*
                Method dump skipped, instructions count: 858
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.model.WorkTagDao_Impl.AnonymousClass1.bind(androidx.sqlite.SQLiteStatement, java.lang.Object):void");
        }

        public void insert(SQLiteConnection sQLiteConnection, Object obj) {
            String str;
            sQLiteConnection.getClass();
            if (obj == null) {
                return;
            }
            switch (this.$r8$classId) {
                case 0:
                    str = "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
                    break;
                case 1:
                    str = "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
                    break;
                case 2:
                    str = "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
                    break;
                case 3:
                    str = "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)";
                    break;
                case 4:
                    str = "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
                    break;
                default:
                    str = "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`backoff_on_system_interruptions`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                    break;
            }
            SQLiteStatement prepare = sQLiteConnection.prepare(str);
            try {
                bind(prepare, obj);
                prepare.step();
                Cookie.Companion.closeFinally(prepare, null);
            } finally {
            }
        }
    }

    public WorkTagDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }
}
