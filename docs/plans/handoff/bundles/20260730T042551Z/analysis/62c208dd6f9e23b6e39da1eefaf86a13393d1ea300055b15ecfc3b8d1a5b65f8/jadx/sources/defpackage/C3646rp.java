package defpackage;

import java.io.Closeable;
import java.io.Flushable;

/* renamed from: rp, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3646rp implements Closeable, Flushable {

    /* renamed from: do, reason: not valid java name */
    public static final String[] f15329do = new String[128];

    static {
        for (int i = 0; i <= 31; i++) {
            f15329do[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = f15329do;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw null;
    }

    @Override // java.io.Flushable
    public final void flush() {
        throw new IllegalStateException("JsonWriter is closed.");
    }
}
