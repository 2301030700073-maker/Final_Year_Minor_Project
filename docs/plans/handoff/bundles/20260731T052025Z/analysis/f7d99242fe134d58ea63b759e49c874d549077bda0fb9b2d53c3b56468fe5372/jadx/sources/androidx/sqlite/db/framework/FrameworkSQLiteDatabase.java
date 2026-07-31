package androidx.sqlite.db.framework;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import java.io.Closeable;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FrameworkSQLiteDatabase implements Closeable {
    public static final String[] CONFLICT_VALUES = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};
    public static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final Lazy beginTransactionMethod$delegate;
    public static final Lazy getThreadSessionMethod$delegate;
    public final SQLiteDatabase delegate;

    static {
        UtilsKt$$ExternalSyntheticLambda0 utilsKt$$ExternalSyntheticLambda0 = new UtilsKt$$ExternalSyntheticLambda0(1);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        getThreadSessionMethod$delegate = ResultKt.lazy(lazyThreadSafetyMode, utilsKt$$ExternalSyntheticLambda0);
        beginTransactionMethod$delegate = ResultKt.lazy(lazyThreadSafetyMode, new UtilsKt$$ExternalSyntheticLambda0(2));
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

    public final void setTransactionSuccessful() {
        this.delegate.setTransactionSuccessful();
    }

    public final void execSQL(String str) {
        this.delegate.execSQL(str);
    }
}
