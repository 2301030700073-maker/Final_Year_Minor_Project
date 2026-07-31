package androidx.sqlite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface SQLiteStatement extends AutoCloseable {
    void bindBlob(int i, byte[] bArr);

    void bindDouble(double d, int i);

    void bindLong(long j, int i);

    void bindNull(int i);

    void bindText(int i, String str);

    void clearBindings();

    byte[] getBlob(int i);

    boolean getBoolean();

    int getColumnCount();

    String getColumnName(int i);

    double getDouble(int i);

    long getLong(int i);

    String getText(int i);

    boolean isNull(int i);

    void reset();

    boolean step();
}
