package j$.time.format;

import java.util.Locale;

/* loaded from: classes2.dex */
final class r {
    private j$.time.temporal.n a;
    private DateTimeFormatter b;
    private int c;

    /* JADX WARN: Removed duplicated region for block: B:40:0x00b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    r(j$.time.temporal.n r10, j$.time.format.DateTimeFormatter r11) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.r.<init>(j$.time.temporal.n, j$.time.format.DateTimeFormatter):void");
    }

    final void a() {
        this.c--;
    }

    final u b() {
        return this.b.c();
    }

    final Locale c() {
        return this.b.d();
    }

    final j$.time.temporal.n d() {
        return this.a;
    }

    final Long e(j$.time.temporal.r rVar) {
        if (this.c <= 0 || this.a.e(rVar)) {
            return Long.valueOf(this.a.v(rVar));
        }
        return null;
    }

    final Object f(j$.time.temporal.t tVar) {
        Object y = this.a.y(tVar);
        if (y != null || this.c != 0) {
            return y;
        }
        throw new j$.time.d("Unable to extract " + tVar + " from temporal " + this.a);
    }

    final void g() {
        this.c++;
    }

    public final String toString() {
        return this.a.toString();
    }
}
