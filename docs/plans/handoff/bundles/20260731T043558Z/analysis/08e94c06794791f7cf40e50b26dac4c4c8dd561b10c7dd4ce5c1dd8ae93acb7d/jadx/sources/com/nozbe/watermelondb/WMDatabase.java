package com.nozbe.watermelondb;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import io.sentry.protocol.MetricSummary;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
public class WMDatabase {
    public static Map<String, WMDatabase> INSTANCES = new HashMap();
    private final SQLiteDatabase db;

    interface TransactionFunction {
        void applyTransactionFunction();
    }

    private WMDatabase(SQLiteDatabase sQLiteDatabase) {
        this.db = sQLiteDatabase;
    }

    public static WMDatabase getInstance(String str, Context context) {
        return getInstance(str, context, 805306368);
    }

    public static WMDatabase getInstance(String str, Context context, int i) {
        synchronized (WMDatabase.class) {
            WMDatabase orDefault = INSTANCES.getOrDefault(str, null);
            if (orDefault != null && orDefault.isOpen().booleanValue()) {
                return orDefault;
            }
            WMDatabase buildDatabase = buildDatabase(str, context, i);
            INSTANCES.put(str, buildDatabase);
            return buildDatabase;
        }
    }

    public static WMDatabase buildDatabase(String str, Context context, int i) {
        return new WMDatabase(createSQLiteDatabase(str, context, i));
    }

    private static SQLiteDatabase createSQLiteDatabase(String str, Context context, int i) {
        String path;
        if (str.equals(":memory:") || str.contains("mode=memory")) {
            context.getCacheDir().delete();
            path = new File(context.getCacheDir(), str).getPath();
        } else {
            path = context.getDatabasePath("" + str + ".db").getPath().replace("/databases", "");
        }
        return SQLiteDatabase.openDatabase(path, null, i);
    }

    public void setUserVersion(int i) {
        this.db.setVersion(i);
    }

    public int getUserVersion() {
        return this.db.getVersion();
    }

    public void unsafeExecuteStatements(final String str) {
        transaction(new TransactionFunction() { // from class: com.nozbe.watermelondb.WMDatabase$$ExternalSyntheticLambda2
            @Override // com.nozbe.watermelondb.WMDatabase.TransactionFunction
            public final void applyTransactionFunction() {
                WMDatabase.this.lambda$unsafeExecuteStatements$0(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$unsafeExecuteStatements$0(String str) {
        for (String str2 : str.split(";")) {
            if (!str2.trim().isEmpty()) {
                execute(str2);
            }
        }
    }

    public void execute(String str, Object[] objArr) {
        this.db.execSQL(str, objArr);
    }

    public void execute(String str) {
        this.db.execSQL(str);
    }

    public void delete(String str, Object[] objArr) {
        this.db.execSQL(str, objArr);
    }

    public Cursor rawQuery(String str, final Object[] objArr) {
        String[] strArr = new String[objArr.length];
        Arrays.fill(strArr, "");
        return this.db.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: com.nozbe.watermelondb.WMDatabase$$ExternalSyntheticLambda0
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str2, SQLiteQuery sQLiteQuery) {
                return WMDatabase.lambda$rawQuery$1(objArr, sQLiteDatabase, sQLiteCursorDriver, str2, sQLiteQuery);
            }
        }, str, strArr, null, null);
    }

    static /* synthetic */ Cursor lambda$rawQuery$1(Object[] objArr, SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            if (obj instanceof String) {
                sQLiteQuery.bindString(i + 1, (String) obj);
            } else if (obj instanceof Boolean) {
                sQLiteQuery.bindLong(i + 1, ((Boolean) obj).booleanValue() ? 1L : 0L);
            } else if (obj instanceof Double) {
                sQLiteQuery.bindDouble(i + 1, ((Double) obj).doubleValue());
            } else if (obj == null) {
                sQLiteQuery.bindNull(i + 1);
            } else {
                throw new IllegalArgumentException("Bad query arg type: " + obj.getClass().getCanonicalName());
            }
        }
        return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
    }

    public Cursor rawQuery(String str) {
        return rawQuery(str, new Object[0]);
    }

    public int count(String str, Object[] objArr) {
        Cursor rawQuery = rawQuery(str, objArr);
        try {
            rawQuery.moveToFirst();
            int columnIndex = rawQuery.getColumnIndex(MetricSummary.JsonKeys.COUNT);
            if (rawQuery.getCount() > 0) {
                int i = rawQuery.getInt(columnIndex);
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return i;
            }
            if (rawQuery == null) {
                return 0;
            }
            rawQuery.close();
            return 0;
        } catch (Throwable th) {
            if (rawQuery != null) {
                try {
                    rawQuery.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public int count(String str) {
        return count(str, new Object[0]);
    }

    public String getFromLocalStorage(String str) {
        Cursor rawQuery = rawQuery(Queries.select_local_storage, new Object[]{str});
        try {
            rawQuery.moveToFirst();
            if (rawQuery.getCount() > 0) {
                String string = rawQuery.getString(0);
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return string;
            }
            if (rawQuery == null) {
                return null;
            }
            rawQuery.close();
            return null;
        } catch (Throwable th) {
            if (rawQuery != null) {
                try {
                    rawQuery.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private ArrayList<String> getAllTables() {
        ArrayList<String> arrayList = new ArrayList<>();
        Cursor rawQuery = rawQuery(Queries.select_tables);
        try {
            rawQuery.moveToFirst();
            int columnIndex = rawQuery.getColumnIndex("name");
            if (columnIndex > -1) {
                do {
                    arrayList.add(rawQuery.getString(columnIndex));
                } while (rawQuery.moveToNext());
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
            return arrayList;
        } catch (Throwable th) {
            if (rawQuery != null) {
                try {
                    rawQuery.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public void unsafeDestroyEverything() {
        transaction(new TransactionFunction() { // from class: com.nozbe.watermelondb.WMDatabase$$ExternalSyntheticLambda1
            @Override // com.nozbe.watermelondb.WMDatabase.TransactionFunction
            public final void applyTransactionFunction() {
                WMDatabase.this.lambda$unsafeDestroyEverything$2();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$unsafeDestroyEverything$2() {
        Iterator<String> it = getAllTables().iterator();
        while (it.hasNext()) {
            execute(Queries.dropTable(it.next()));
        }
        execute("pragma writable_schema=1");
        execute("delete from sqlite_master where type in ('table', 'index', 'trigger')");
        execute("pragma user_version=0");
        execute("pragma writable_schema=0");
    }

    public void transaction(TransactionFunction transactionFunction) {
        this.db.beginTransaction();
        try {
            transactionFunction.applyTransactionFunction();
            this.db.setTransactionSuccessful();
        } finally {
            this.db.endTransaction();
        }
    }

    public Boolean isOpen() {
        return Boolean.valueOf(this.db.isOpen());
    }

    public void close() {
        this.db.close();
    }
}
