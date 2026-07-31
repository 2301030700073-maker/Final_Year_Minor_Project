package androidx.sqlite.db;

import java.io.Closeable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SupportSQLiteProgram extends Closeable {
    void bindBlob(int i, byte[] bArr);

    void bindDouble(double d, int i);

    void bindLong(int i, long j);

    void bindNull(int i);

    void bindString(String str, int i);
}
