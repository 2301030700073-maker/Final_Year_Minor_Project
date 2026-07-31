package androidx.sqlite;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SQLiteStatement extends AutoCloseable {
    void bindBlob(int i, byte[] bArr);

    void bindLong(int i, long j);

    void bindNull(int i);

    void bindText(String str, int i);

    byte[] getBlob(int i);

    boolean getBoolean();

    int getColumnCount();

    String getColumnName(int i);

    long getLong(int i);

    String getText(int i);

    boolean isNull(int i);

    void reset();

    boolean step();
}
