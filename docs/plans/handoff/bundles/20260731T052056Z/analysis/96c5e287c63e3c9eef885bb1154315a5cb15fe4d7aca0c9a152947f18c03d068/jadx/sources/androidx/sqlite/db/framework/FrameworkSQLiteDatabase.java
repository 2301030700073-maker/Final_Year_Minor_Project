package androidx.sqlite.db.framework;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.database.sqlite.SQLiteStatement;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.work.Worker$$ExternalSyntheticLambda1;
import coil3.util.ContextsKt;
import java.io.Closeable;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FrameworkSQLiteDatabase implements Closeable {
    public static final String[] CONFLICT_VALUES = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};
    public static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final Lazy beginTransactionMethod$delegate;
    public static final Lazy getThreadSessionMethod$delegate;
    public final SQLiteDatabase delegate;

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        getThreadSessionMethod$delegate = ContextsKt.lazy(lazyThreadSafetyMode, new Worker$$ExternalSyntheticLambda1(25));
        beginTransactionMethod$delegate = ContextsKt.lazy(lazyThreadSafetyMode, new Worker$$ExternalSyntheticLambda1(26));
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
        final FrameworkSQLiteDatabase$$ExternalSyntheticLambda0 frameworkSQLiteDatabase$$ExternalSyntheticLambda0 = new FrameworkSQLiteDatabase$$ExternalSyntheticLambda0(0, supportSQLiteQuery);
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

    public final Cursor query(String str) {
        return query(new Symbol(2, str));
    }
}
