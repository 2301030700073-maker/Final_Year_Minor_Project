package defpackage;

import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public final class TJ {

    /* renamed from: do, reason: not valid java name */
    public static final Charset f3645do = Charset.forName("UTF-8");

    /* renamed from: do, reason: not valid java name */
    public static void m2240do(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException(String.format("size=%s offset=%s byteCount=%s", Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j3)));
        }
    }
}
