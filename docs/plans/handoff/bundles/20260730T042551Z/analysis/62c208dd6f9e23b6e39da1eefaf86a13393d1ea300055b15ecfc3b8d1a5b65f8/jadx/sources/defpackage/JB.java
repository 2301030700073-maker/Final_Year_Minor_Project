package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class JB extends SQLiteOpenHelper {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f1612do;

    /* renamed from: for, reason: not valid java name */
    public final int f1613for;

    /* renamed from: break, reason: not valid java name */
    public static final String f1609break = "INSERT INTO global_log_event_state VALUES (" + System.currentTimeMillis() + ")";

    /* renamed from: new, reason: not valid java name */
    public static final int f1611new = 7;

    /* renamed from: do, reason: not valid java name */
    public static final List<Cdo> f1610do = Arrays.asList(new Cdo() { // from class: CB
        @Override // defpackage.JB.Cdo
        /* renamed from: do, reason: not valid java name */
        public final void mo252do(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)");
            sQLiteDatabase.execSQL("CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)");
            sQLiteDatabase.execSQL("CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)");
            sQLiteDatabase.execSQL("CREATE INDEX events_backend_id on events(context_id)");
            sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)");
        }
    }, new Cdo() { // from class: DB
        @Override // defpackage.JB.Cdo
        /* renamed from: do */
        public final void mo252do(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("ALTER TABLE transport_contexts ADD COLUMN extras BLOB");
            sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)");
            sQLiteDatabase.execSQL("DROP INDEX contexts_backend_priority");
        }
    }, new Cdo() { // from class: EB
        @Override // defpackage.JB.Cdo
        /* renamed from: do */
        public final void mo252do(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN payload_encoding TEXT");
        }
    }, new Cdo() { // from class: FB
        @Override // defpackage.JB.Cdo
        /* renamed from: do */
        public final void mo252do(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
            sQLiteDatabase.execSQL("CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))");
        }
    }, new Cdo() { // from class: GB
        @Override // defpackage.JB.Cdo
        /* renamed from: do */
        public final void mo252do(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS log_event_dropped");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS global_log_event_state");
            sQLiteDatabase.execSQL("CREATE TABLE log_event_dropped (log_source VARCHAR(45) NOT NULL,reason INTEGER NOT NULL,events_dropped_count BIGINT NOT NULL,PRIMARY KEY(log_source, reason))");
            sQLiteDatabase.execSQL("CREATE TABLE global_log_event_state (last_metrics_upload_ms BIGINT PRIMARY KEY)");
            sQLiteDatabase.execSQL(JB.f1609break);
        }
    }, new Cdo() { // from class: HB
        @Override // defpackage.JB.Cdo
        /* renamed from: do */
        public final void mo252do(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN product_id INTEGER");
        }
    }, new Cdo() { // from class: IB
        @Override // defpackage.JB.Cdo
        /* renamed from: do */
        public final void mo252do(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN pseudonymous_id TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN experiment_ids_clear_blob BLOB");
            sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN experiment_ids_encrypted_blob BLOB");
        }
    });

    /* renamed from: JB$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: do */
        void mo252do(SQLiteDatabase sQLiteDatabase);
    }

    public JB(Context context, String str, int i) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i);
        this.f1612do = false;
        this.f1613for = i;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m1029do(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        List<Cdo> list = f1610do;
        if (i2 <= list.size()) {
            while (i < i2) {
                list.get(i).mo252do(sQLiteDatabase);
                i++;
            }
            return;
        }
        throw new IllegalArgumentException("Migration from " + i + " to " + i2 + " was requested, but cannot be performed. Only " + list.size() + " migrations are provided");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
        this.f1612do = true;
        sQLiteDatabase.rawQuery("PRAGMA busy_timeout=0;", new String[0]).close();
        sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        if (!this.f1612do) {
            onConfigure(sQLiteDatabase);
        }
        m1029do(sQLiteDatabase, 0, this.f1613for);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE events");
        sQLiteDatabase.execSQL("DROP TABLE event_metadata");
        sQLiteDatabase.execSQL("DROP TABLE transport_contexts");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS log_event_dropped");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS global_log_event_state");
        if (!this.f1612do) {
            onConfigure(sQLiteDatabase);
        }
        m1029do(sQLiteDatabase, 0, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        if (this.f1612do) {
            return;
        }
        onConfigure(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (!this.f1612do) {
            onConfigure(sQLiteDatabase);
        }
        m1029do(sQLiteDatabase, i, i2);
    }
}
