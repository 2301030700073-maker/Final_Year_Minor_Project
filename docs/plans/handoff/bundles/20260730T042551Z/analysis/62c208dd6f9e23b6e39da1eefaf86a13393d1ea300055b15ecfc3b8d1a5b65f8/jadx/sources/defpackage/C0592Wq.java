package defpackage;

import java.io.Writer;

/* renamed from: Wq, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0592Wq extends Writer {

    /* renamed from: do, reason: not valid java name */
    public final StringBuilder f4404do = new StringBuilder(128);

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        m2774do();
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2774do() {
        StringBuilder sb = this.f4404do;
        if (sb.length() > 0) {
            sb.toString();
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        m2774do();
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                m2774do();
            } else {
                this.f4404do.append(c);
            }
        }
    }
}
