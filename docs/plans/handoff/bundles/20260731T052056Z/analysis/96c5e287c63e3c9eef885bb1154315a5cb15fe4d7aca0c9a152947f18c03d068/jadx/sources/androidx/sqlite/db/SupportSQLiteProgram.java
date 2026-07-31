package androidx.sqlite.db;

import java.io.Closeable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface SupportSQLiteProgram extends Closeable {
    void bindBlob(int i, byte[] bArr);

    void bindDouble(double d, int i);

    void bindLong(long j, int i);

    void bindNull(int i);

    void bindString(int i, String str);

    void clearBindings();
}
