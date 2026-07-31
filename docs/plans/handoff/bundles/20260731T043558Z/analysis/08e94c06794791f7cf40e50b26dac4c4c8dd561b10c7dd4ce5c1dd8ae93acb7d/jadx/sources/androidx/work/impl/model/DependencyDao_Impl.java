package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import io.sentry.ISpan;
import io.sentry.Sentry;
import io.sentry.SpanStatus;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class DependencyDao_Impl implements DependencyDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<Dependency> __insertionAdapterOfDependency;

    public DependencyDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfDependency = new EntityInsertionAdapter<Dependency>(__db) { // from class: androidx.work.impl.model.DependencyDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, Dependency value) {
                if (value.workSpecId == null) {
                    stmt.bindNull(1);
                } else {
                    stmt.bindString(1, value.workSpecId);
                }
                if (value.prerequisiteId == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.prerequisiteId);
                }
            }
        };
    }

    @Override // androidx.work.impl.model.DependencyDao
    public void insertDependency(final Dependency dependency) {
        ISpan span = Sentry.getSpan();
        ISpan startChild = span != null ? span.startChild("db.sql.room", "androidx.work.impl.model.DependencyDao") : null;
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfDependency.insert((EntityInsertionAdapter<Dependency>) dependency);
            this.__db.setTransactionSuccessful();
            if (startChild != null) {
                startChild.setStatus(SpanStatus.OK);
            }
        } finally {
            this.__db.endTransaction();
            if (startChild != null) {
                startChild.finish();
            }
        }
    }

    @Override // androidx.work.impl.model.DependencyDao
    public boolean hasCompletedAllPrerequisites(final String id) {
        ISpan span = Sentry.getSpan();
        ISpan startChild = span != null ? span.startChild("db.sql.room", "androidx.work.impl.model.DependencyDao") : null;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", 1);
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.__db.assertNotSuspendingTransaction();
        boolean z = false;
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            if (query.moveToFirst()) {
                z = query.getInt(0) != 0;
            }
            return z;
        } finally {
            query.close();
            if (startChild != null) {
                startChild.finish();
            }
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.DependencyDao
    public List<String> getPrerequisites(final String id) {
        ISpan span = Sentry.getSpan();
        ISpan startChild = span != null ? span.startChild("db.sql.room", "androidx.work.impl.model.DependencyDao") : null;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT prerequisite_id FROM dependency WHERE work_spec_id=?", 1);
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.getString(0));
            }
            return arrayList;
        } finally {
            query.close();
            if (startChild != null) {
                startChild.finish();
            }
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.DependencyDao
    public List<String> getDependentWorkIds(final String id) {
        ISpan span = Sentry.getSpan();
        ISpan startChild = span != null ? span.startChild("db.sql.room", "androidx.work.impl.model.DependencyDao") : null;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", 1);
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.getString(0));
            }
            return arrayList;
        } finally {
            query.close();
            if (startChild != null) {
                startChild.finish();
            }
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.DependencyDao
    public boolean hasDependents(final String id) {
        ISpan span = Sentry.getSpan();
        ISpan startChild = span != null ? span.startChild("db.sql.room", "androidx.work.impl.model.DependencyDao") : null;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?", 1);
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.__db.assertNotSuspendingTransaction();
        boolean z = false;
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            if (query.moveToFirst()) {
                z = query.getInt(0) != 0;
            }
            return z;
        } finally {
            query.close();
            if (startChild != null) {
                startChild.finish();
            }
            acquire.release();
        }
    }
}
