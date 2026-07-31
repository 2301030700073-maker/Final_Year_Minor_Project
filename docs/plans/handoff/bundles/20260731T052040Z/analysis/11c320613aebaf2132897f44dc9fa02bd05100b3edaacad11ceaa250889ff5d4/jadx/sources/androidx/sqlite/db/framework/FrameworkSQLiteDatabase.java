package androidx.sqlite.db.framework;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.database.sqlite.SQLiteStatement;
import androidx.sqlite.db.SupportSQLiteQuery;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import java.io.Closeable;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FrameworkSQLiteDatabase implements Closeable {
    public static final String[] CONFLICT_VALUES = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};
    public static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final Lazy beginTransactionMethod$delegate;
    public static final Lazy getThreadSessionMethod$delegate;
    public final SQLiteDatabase delegate;

    static {
        UtilsKt$$ExternalSyntheticLambda0 utilsKt$$ExternalSyntheticLambda0 = new UtilsKt$$ExternalSyntheticLambda0(13);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        getThreadSessionMethod$delegate = ResultKt.lazy(lazyThreadSafetyMode, utilsKt$$ExternalSyntheticLambda0);
        beginTransactionMethod$delegate = ResultKt.lazy(lazyThreadSafetyMode, new UtilsKt$$ExternalSyntheticLambda0(14));
    }

    public FrameworkSQLiteDatabase(SQLiteDatabase sQLiteDatabase) {
        this.delegate = sQLiteDatabase;
    }

    public final void beginTransaction() {
        this.delegate.beginTransaction();
    }

    public final void beginTransactionNonExclusive() {
        this.delegate.beginTransactionNonExclusive();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.delegate.close();
    }

    public final FrameworkSQLiteStatement compileStatement(String str) {
        str.getClass();
        SQLiteStatement compileStatement = this.delegate.compileStatement(str);
        compileStatement.getClass();
        return new FrameworkSQLiteStatement(compileStatement);
    }

    public final void endTransaction() {
        this.delegate.endTransaction();
    }

    public final void execSQL(Object[] objArr) {
        this.delegate.execSQL("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", objArr);
    }

    public final boolean inTransaction() {
        return this.delegate.inTransaction();
    }

    public final boolean isOpen() {
        return this.delegate.isOpen();
    }

    public final Cursor query(SupportSQLiteQuery supportSQLiteQuery) {
        final FrameworkSQLiteDatabase$$ExternalSyntheticLambda0 frameworkSQLiteDatabase$$ExternalSyntheticLambda0 = new FrameworkSQLiteDatabase$$ExternalSyntheticLambda0(supportSQLiteQuery, 0);
        Cursor rawQueryWithFactory = this.delegate.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: androidx.sqlite.db.framework.FrameworkSQLiteDatabase$$ExternalSyntheticLambda1
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                return (Cursor) FrameworkSQLiteDatabase$$ExternalSyntheticLambda0.this.invoke(sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, supportSQLiteQuery.getSql(), EMPTY_STRING_ARRAY, null);
        rawQueryWithFactory.getClass();
        return rawQueryWithFactory;
    }

    public final void setTransactionSuccessful() {
        this.delegate.setTransactionSuccessful();
    }

    public final void execSQL(String str) {
        this.delegate.execSQL(str);
    }
}
