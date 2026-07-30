package androidx.work.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import defpackage.AbstractC3179jt;
import defpackage.C0519Tj;

/* renamed from: androidx.work.impl.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C0049do f8201do = new C0049do();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cif f8204do = new Cif();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cfor f8203do = new Cfor();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cnew f8205do = new Cnew();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Ctry f8206do = new Ctry();

    /* renamed from: do, reason: not valid java name */
    public static final Ccase f8200do = new Ccase();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Celse f8202do = new Celse();

    /* renamed from: androidx.work.impl.do$case, reason: invalid class name */
    public class Ccase extends AbstractC3179jt {
        public Ccase() {
            super(8, 9);
        }

        @Override // defpackage.AbstractC3179jt
        /* renamed from: do, reason: not valid java name */
        public final void mo4751do(C0519Tj c0519Tj) {
            c0519Tj.m2282for("ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0");
        }
    }

    /* renamed from: androidx.work.impl.do$do, reason: invalid class name and collision with other inner class name */
    public class C0049do extends AbstractC3179jt {
        public C0049do() {
            super(1, 2);
        }

        @Override // defpackage.AbstractC3179jt
        /* renamed from: do */
        public final void mo4751do(C0519Tj c0519Tj) {
            c0519Tj.m2282for("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            c0519Tj.m2282for("INSERT INTO SystemIdInfo(work_spec_id, system_id) SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo");
            c0519Tj.m2282for("DROP TABLE IF EXISTS alarmInfo");
            c0519Tj.m2282for("INSERT OR IGNORE INTO worktag(tag, work_spec_id) SELECT worker_class_name AS tag, id AS work_spec_id FROM workspec");
        }
    }

    /* renamed from: androidx.work.impl.do$else, reason: invalid class name */
    public class Celse extends AbstractC3179jt {
        public Celse() {
            super(11, 12);
        }

        @Override // defpackage.AbstractC3179jt
        /* renamed from: do */
        public final void mo4751do(C0519Tj c0519Tj) {
            c0519Tj.m2282for("ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0");
        }
    }

    /* renamed from: androidx.work.impl.do$for, reason: invalid class name */
    public class Cfor extends AbstractC3179jt {
        public Cfor() {
            super(4, 5);
        }

        @Override // defpackage.AbstractC3179jt
        /* renamed from: do */
        public final void mo4751do(C0519Tj c0519Tj) {
            c0519Tj.m2282for("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
            c0519Tj.m2282for("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
        }
    }

    /* renamed from: androidx.work.impl.do$goto, reason: invalid class name */
    public static class Cgoto extends AbstractC3179jt {

        /* renamed from: do, reason: not valid java name */
        public final Context f8207do;

        public Cgoto(Context context, int i, int i2) {
            super(i, i2);
            this.f8207do = context;
        }

        @Override // defpackage.AbstractC3179jt
        /* renamed from: do */
        public final void mo4751do(C0519Tj c0519Tj) {
            if (this.f13814if >= 10) {
                c0519Tj.f3741do.execSQL("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", 1});
            } else {
                this.f8207do.getSharedPreferences("androidx.work.util.preferences", 0).edit().putBoolean("reschedule_needed", true).apply();
            }
        }
    }

    /* renamed from: androidx.work.impl.do$if, reason: invalid class name */
    public class Cif extends AbstractC3179jt {
        public Cif() {
            super(3, 4);
        }

        @Override // defpackage.AbstractC3179jt
        /* renamed from: do */
        public final void mo4751do(C0519Tj c0519Tj) {
            if (Build.VERSION.SDK_INT >= 23) {
                c0519Tj.m2282for("UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0");
            }
        }
    }

    /* renamed from: androidx.work.impl.do$new, reason: invalid class name */
    public class Cnew extends AbstractC3179jt {
        public Cnew() {
            super(6, 7);
        }

        @Override // defpackage.AbstractC3179jt
        /* renamed from: do */
        public final void mo4751do(C0519Tj c0519Tj) {
            c0519Tj.m2282for("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        }
    }

    /* renamed from: androidx.work.impl.do$this, reason: invalid class name */
    public static class Cthis extends AbstractC3179jt {

        /* renamed from: do, reason: not valid java name */
        public final Context f8208do;

        public Cthis(Context context) {
            super(9, 10);
            this.f8208do = context;
        }

        @Override // defpackage.AbstractC3179jt
        /* renamed from: do */
        public final void mo4751do(C0519Tj c0519Tj) {
            c0519Tj.m2282for("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
            Context context = this.f8208do;
            SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.preferences", 0);
            boolean contains = sharedPreferences.contains("reschedule_needed");
            SQLiteDatabase sQLiteDatabase = c0519Tj.f3741do;
            if (contains || sharedPreferences.contains("last_cancel_all_time_ms")) {
                long j = sharedPreferences.getLong("last_cancel_all_time_ms", 0L);
                long j2 = sharedPreferences.getBoolean("reschedule_needed", false) ? 1L : 0L;
                c0519Tj.m2281do();
                try {
                    sQLiteDatabase.execSQL("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"last_cancel_all_time_ms", Long.valueOf(j)});
                    sQLiteDatabase.execSQL("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", Long.valueOf(j2)});
                    sharedPreferences.edit().clear().apply();
                    c0519Tj.m2283goto();
                } finally {
                }
            }
            SharedPreferences sharedPreferences2 = context.getSharedPreferences("androidx.work.util.id", 0);
            if (sharedPreferences2.contains("next_job_scheduler_id") || sharedPreferences2.contains("next_job_scheduler_id")) {
                int i = sharedPreferences2.getInt("next_job_scheduler_id", 0);
                int i2 = sharedPreferences2.getInt("next_alarm_manager_id", 0);
                c0519Tj.m2281do();
                try {
                    sQLiteDatabase.execSQL("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_job_scheduler_id", Integer.valueOf(i)});
                    sQLiteDatabase.execSQL("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_alarm_manager_id", Integer.valueOf(i2)});
                    sharedPreferences2.edit().clear().apply();
                    c0519Tj.m2283goto();
                } finally {
                }
            }
        }
    }

    /* renamed from: androidx.work.impl.do$try, reason: invalid class name */
    public class Ctry extends AbstractC3179jt {
        public Ctry() {
            super(7, 8);
        }

        @Override // defpackage.AbstractC3179jt
        /* renamed from: do */
        public final void mo4751do(C0519Tj c0519Tj) {
            c0519Tj.m2282for("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec` (`period_start_time`)");
        }
    }
}
