package androidx.room.driver;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import androidx.fragment.app.Fragment;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteStatement;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import androidx.sqlite.db.framework.FrameworkSQLiteStatement;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda11;
import java.util.Arrays;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SupportSQLiteStatement implements SQLiteStatement {
    public final FrameworkSQLiteDatabase db;
    public boolean isClosed;
    public final String sql;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SupportAndroidSQLiteStatement extends SupportSQLiteStatement {
        public int[] bindingTypes;
        public byte[][] blobBindings;
        public Cursor cursor;
        public double[] doubleBindings;
        public long[] longBindings;
        public String[] stringBindings;

        public static void throwIfInvalidColumn(Cursor cursor, int i) {
            if (i < 0 || i >= cursor.getColumnCount()) {
                SQLite.throwSQLiteException("column index out of range", 25);
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindBlob(int i, byte[] bArr) {
            throwIfClosed();
            ensureCapacity(4, i);
            this.bindingTypes[i] = 4;
            this.blobBindings[i] = bArr;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindLong(int i, long j) {
            throwIfClosed();
            ensureCapacity(1, i);
            this.bindingTypes[i] = 1;
            this.longBindings[i] = j;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindNull(int i) {
            throwIfClosed();
            ensureCapacity(5, i);
            this.bindingTypes[i] = 5;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindText(String str, int i) {
            str.getClass();
            throwIfClosed();
            ensureCapacity(3, i);
            this.bindingTypes[i] = 3;
            this.stringBindings[i] = str;
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            if (!this.isClosed) {
                throwIfClosed();
                this.bindingTypes = new int[0];
                this.longBindings = new long[0];
                this.doubleBindings = new double[0];
                this.stringBindings = new String[0];
                this.blobBindings = new byte[0][];
                reset();
            }
            this.isClosed = true;
        }

        public final void ensureCapacity(int i, int i2) {
            int i3 = i2 + 1;
            int[] iArr = this.bindingTypes;
            if (iArr.length < i3) {
                this.bindingTypes = Arrays.copyOf(iArr, i3);
            }
            if (i == 1) {
                long[] jArr = this.longBindings;
                if (jArr.length < i3) {
                    this.longBindings = Arrays.copyOf(jArr, i3);
                    return;
                }
                return;
            }
            if (i == 2) {
                double[] dArr = this.doubleBindings;
                if (dArr.length < i3) {
                    this.doubleBindings = Arrays.copyOf(dArr, i3);
                    return;
                }
                return;
            }
            if (i == 3) {
                String[] strArr = this.stringBindings;
                if (strArr.length < i3) {
                    this.stringBindings = (String[]) Arrays.copyOf(strArr, i3);
                    return;
                }
                return;
            }
            if (i != 4) {
                return;
            }
            byte[][] bArr = this.blobBindings;
            if (bArr.length < i3) {
                this.blobBindings = (byte[][]) Arrays.copyOf(bArr, i3);
            }
        }

        public final void ensureCursor() {
            if (this.cursor == null) {
                Fragment.AnonymousClass7 anonymousClass7 = new Fragment.AnonymousClass7(this);
                FrameworkSQLiteDatabase frameworkSQLiteDatabase = this.db;
                frameworkSQLiteDatabase.getClass();
                final CoilImageKt$$ExternalSyntheticLambda11 coilImageKt$$ExternalSyntheticLambda11 = new CoilImageKt$$ExternalSyntheticLambda11(3, anonymousClass7);
                Cursor rawQueryWithFactory = frameworkSQLiteDatabase.delegate.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: androidx.sqlite.db.framework.FrameworkSQLiteDatabase$$ExternalSyntheticLambda1
                    @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
                    public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                        return (Cursor) CoilImageKt$$ExternalSyntheticLambda11.this.invoke(sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
                    }
                }, ((SupportAndroidSQLiteStatement) anonymousClass7.this$0).sql, FrameworkSQLiteDatabase.EMPTY_STRING_ARRAY, null);
                rawQueryWithFactory.getClass();
                this.cursor = rawQueryWithFactory;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final byte[] getBlob(int i) {
            throwIfClosed();
            Cursor throwIfNoRow = throwIfNoRow();
            throwIfInvalidColumn(throwIfNoRow, i);
            byte[] blob = throwIfNoRow.getBlob(i);
            blob.getClass();
            return blob;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final int getColumnCount() {
            throwIfClosed();
            ensureCursor();
            Cursor cursor = this.cursor;
            if (cursor != null) {
                return cursor.getColumnCount();
            }
            return 0;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String getColumnName(int i) {
            throwIfClosed();
            ensureCursor();
            Cursor cursor = this.cursor;
            if (cursor == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
                return null;
            }
            throwIfInvalidColumn(cursor, i);
            String columnName = cursor.getColumnName(i);
            columnName.getClass();
            return columnName;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final long getLong(int i) {
            throwIfClosed();
            Cursor throwIfNoRow = throwIfNoRow();
            throwIfInvalidColumn(throwIfNoRow, i);
            return throwIfNoRow.getLong(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String getText(int i) {
            throwIfClosed();
            Cursor throwIfNoRow = throwIfNoRow();
            throwIfInvalidColumn(throwIfNoRow, i);
            String string = throwIfNoRow.getString(i);
            string.getClass();
            return string;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean isNull(int i) {
            throwIfClosed();
            Cursor throwIfNoRow = throwIfNoRow();
            throwIfInvalidColumn(throwIfNoRow, i);
            return throwIfNoRow.isNull(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void reset() {
            throwIfClosed();
            Cursor cursor = this.cursor;
            if (cursor != null) {
                cursor.close();
            }
            this.cursor = null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean step() {
            throwIfClosed();
            ensureCursor();
            Cursor cursor = this.cursor;
            if (cursor != null) {
                return cursor.moveToNext();
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
            return false;
        }

        public final Cursor throwIfNoRow() {
            Cursor cursor = this.cursor;
            if (cursor != null) {
                return cursor;
            }
            SQLite.throwSQLiteException("no row", 21);
            throw null;
        }
    }

    public SupportSQLiteStatement(FrameworkSQLiteDatabase frameworkSQLiteDatabase, String str) {
        this.db = frameworkSQLiteDatabase;
        this.sql = str;
    }

    @Override // androidx.sqlite.SQLiteStatement
    public final boolean getBoolean() {
        return getLong(0) != 0;
    }

    public final void throwIfClosed() {
        if (this.isClosed) {
            SQLite.throwSQLiteException("statement is closed", 21);
            throw null;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SupportOtherAndroidSQLiteStatement extends SupportSQLiteStatement {
        public final FrameworkSQLiteStatement delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SupportOtherAndroidSQLiteStatement(FrameworkSQLiteDatabase frameworkSQLiteDatabase, String str) {
            super(frameworkSQLiteDatabase, str);
            frameworkSQLiteDatabase.getClass();
            str.getClass();
            this.delegate = frameworkSQLiteDatabase.compileStatement(str);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindBlob(int i, byte[] bArr) {
            throwIfClosed();
            this.delegate.bindBlob(i, bArr);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindLong(int i, long j) {
            throwIfClosed();
            this.delegate.bindLong(i, j);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindNull(int i) {
            throwIfClosed();
            this.delegate.bindNull(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void bindText(String str, int i) {
            str.getClass();
            throwIfClosed();
            this.delegate.bindString(str, i);
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            this.delegate.close();
            this.isClosed = true;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final byte[] getBlob(int i) {
            throwIfClosed();
            SQLite.throwSQLiteException("no row", 21);
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final int getColumnCount() {
            throwIfClosed();
            return 0;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String getColumnName(int i) {
            throwIfClosed();
            SQLite.throwSQLiteException("no row", 21);
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final long getLong(int i) {
            throwIfClosed();
            SQLite.throwSQLiteException("no row", 21);
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String getText(int i) {
            throwIfClosed();
            SQLite.throwSQLiteException("no row", 21);
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean isNull(int i) {
            throwIfClosed();
            SQLite.throwSQLiteException("no row", 21);
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean step() {
            throwIfClosed();
            this.delegate.delegate.execute();
            return false;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void reset() {
        }
    }
}
