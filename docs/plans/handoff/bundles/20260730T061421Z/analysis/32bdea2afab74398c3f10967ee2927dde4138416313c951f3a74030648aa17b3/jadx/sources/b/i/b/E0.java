package b.i.b;

import android.util.Log;
import java.io.Writer;

/* loaded from: classes.dex */
public final class E0 extends Writer {

    /* renamed from: a, reason: collision with root package name */
    public final String f842a;

    /* renamed from: b, reason: collision with root package name */
    public StringBuilder f843b = new StringBuilder(128);

    public E0(String str) {
        this.f842a = str;
    }

    public final void a() {
        if (this.f843b.length() > 0) {
            Log.d(this.f842a, this.f843b.toString());
            StringBuilder sb = this.f843b;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        a();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c2 = cArr[i + i3];
            if (c2 == '\n') {
                a();
            } else {
                this.f843b.append(c2);
            }
        }
    }
}
