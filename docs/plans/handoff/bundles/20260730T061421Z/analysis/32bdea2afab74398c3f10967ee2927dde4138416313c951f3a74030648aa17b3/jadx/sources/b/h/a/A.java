package b.h.a;

/* loaded from: classes.dex */
public final class A extends y {
    public final z s;

    public A(Object obj, C c2) {
        super(obj, c2);
        z zVar = new z();
        this.s = zVar;
        zVar.f825b = this.j * 0.75f * 62.5f;
    }

    @Override // b.h.a.y
    public void h(float f) {
        this.s.f825b = f * 62.5f;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0086 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0087 A[RETURN] */
    @Override // b.h.a.y
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean j(long r9) {
        /*
            r8 = this;
            b.h.a.z r0 = r8.s
            float r1 = r8.f821b
            float r2 = r8.f820a
            b.h.a.u r3 = r0.f826c
            double r4 = (double) r2
            float r9 = (float) r9
            r10 = 1148846080(0x447a0000, float:1000.0)
            float r6 = r9 / r10
            float r7 = r0.f824a
            float r6 = r6 * r7
            double r6 = (double) r6
            double r6 = java.lang.Math.exp(r6)
            double r6 = r6 * r4
            float r4 = (float) r6
            r3.f819b = r4
            b.h.a.u r3 = r0.f826c
            float r4 = r0.f824a
            float r2 = r2 / r4
            float r1 = r1 - r2
            double r5 = (double) r1
            double r1 = (double) r2
            float r4 = r4 * r9
            float r4 = r4 / r10
            double r9 = (double) r4
            double r9 = java.lang.Math.exp(r9)
            double r9 = r9 * r1
            double r9 = r9 + r5
            float r9 = (float) r9
            r3.f818a = r9
            b.h.a.u r9 = r0.f826c
            float r9 = r9.f819b
            float r9 = java.lang.Math.abs(r9)
            float r10 = r0.f825b
            int r9 = (r9 > r10 ? 1 : (r9 == r10 ? 0 : -1))
            r10 = 0
            r1 = 1
            if (r9 >= 0) goto L40
            r9 = r1
            goto L41
        L40:
            r9 = r10
        L41:
            if (r9 == 0) goto L48
            b.h.a.u r9 = r0.f826c
            r2 = 0
            r9.f819b = r2
        L48:
            b.h.a.u r9 = r0.f826c
            float r0 = r9.f818a
            r8.f821b = r0
            float r9 = r9.f819b
            r8.f820a = r9
            float r2 = r8.h
            int r3 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r3 >= 0) goto L5b
            r8.f821b = r2
            return r1
        L5b:
            float r3 = r8.g
            int r4 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r4 <= 0) goto L64
            r8.f821b = r3
            return r1
        L64:
            int r3 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r3 >= 0) goto L83
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 <= 0) goto L83
            b.h.a.z r8 = r8.s
            java.util.Objects.requireNonNull(r8)
            float r9 = java.lang.Math.abs(r9)
            float r8 = r8.f825b
            int r8 = (r9 > r8 ? 1 : (r9 == r8 ? 0 : -1))
            if (r8 >= 0) goto L7d
            r8 = r1
            goto L7e
        L7d:
            r8 = r10
        L7e:
            if (r8 == 0) goto L81
            goto L83
        L81:
            r8 = r10
            goto L84
        L83:
            r8 = r1
        L84:
            if (r8 == 0) goto L87
            return r1
        L87:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: b.h.a.A.j(long):boolean");
    }
}
