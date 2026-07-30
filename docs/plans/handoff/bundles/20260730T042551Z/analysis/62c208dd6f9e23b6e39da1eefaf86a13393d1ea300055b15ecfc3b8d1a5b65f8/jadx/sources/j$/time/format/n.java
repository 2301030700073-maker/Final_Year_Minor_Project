package j$.time.format;

/* loaded from: classes2.dex */
final class n implements g {
    private final j$.time.temporal.r a;
    private final x b;
    private final t c;
    private volatile j d;

    n(j$.time.temporal.a aVar, x xVar, b bVar) {
        this.a = aVar;
        this.b = xVar;
        this.c = bVar;
    }

    @Override // j$.time.format.g
    public final boolean i(r rVar, StringBuilder sb) {
        Long e = rVar.e(this.a);
        if (e == null) {
            return false;
        }
        j$.time.chrono.n nVar = (j$.time.chrono.n) rVar.d().y(j$.time.temporal.q.e());
        String c = (nVar == null || nVar == j$.time.chrono.u.d) ? this.c.c(this.a, e.longValue(), this.b, rVar.c()) : this.c.b(nVar, this.a, e.longValue(), this.b, rVar.c());
        if (c != null) {
            sb.append(c);
            return true;
        }
        if (this.d == null) {
            this.d = new j(this.a, 1, 19, w.NORMAL);
        }
        return this.d.i(rVar, sb);
    }

    public final String toString() {
        x xVar = x.FULL;
        j$.time.temporal.r rVar = this.a;
        x xVar2 = this.b;
        if (xVar2 == xVar) {
            return "Text(" + rVar + ")";
        }
        return "Text(" + rVar + "," + xVar2 + ")";
    }
}
