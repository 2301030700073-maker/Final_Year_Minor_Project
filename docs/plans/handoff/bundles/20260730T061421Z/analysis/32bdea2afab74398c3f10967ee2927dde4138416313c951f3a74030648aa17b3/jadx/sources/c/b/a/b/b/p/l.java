package c.b.a.b.b.p;

/* loaded from: classes.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public h f2815a = null;

    /* renamed from: b, reason: collision with root package name */
    public h f2816b = null;

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a() {
        /*
            r9 = this;
            boolean r0 = r9.c()
            r1 = 0
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L23
            c.b.a.b.b.p.h r0 = r9.f2815a
            java.util.Objects.requireNonNull(r0)
            long r4 = java.lang.System.currentTimeMillis()
            long r6 = r0.b()
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 <= 0) goto L1c
            r0 = r3
            goto L1d
        L1c:
            r0 = r2
        L1d:
            if (r0 == 0) goto L23
            r9.f2815a = r1
            r0 = r3
            goto L24
        L23:
            r0 = r2
        L24:
            boolean r4 = r9.b()
            if (r4 == 0) goto L41
            c.b.a.b.b.p.h r4 = r9.f2816b
            java.util.Objects.requireNonNull(r4)
            long r5 = java.lang.System.currentTimeMillis()
            long r7 = r4.b()
            int r4 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r4 <= 0) goto L3c
            r2 = r3
        L3c:
            if (r2 == 0) goto L41
            r9.f2816b = r1
            goto L42
        L41:
            r3 = r0
        L42:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.b.b.p.l.a():boolean");
    }

    public boolean b() {
        return this.f2816b != null;
    }

    public boolean c() {
        return this.f2815a != null;
    }

    public String toString() {
        StringBuilder f = c.a.c.a.a.f("{");
        f.append(this.f2816b);
        f.append(",");
        f.append(this.f2815a);
        f.append("}");
        return f.toString();
    }
}
