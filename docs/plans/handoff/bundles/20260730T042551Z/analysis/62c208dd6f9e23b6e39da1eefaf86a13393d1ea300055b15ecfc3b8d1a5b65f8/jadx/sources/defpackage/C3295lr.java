package defpackage;

/* renamed from: lr, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3295lr extends C3177jr {
    static {
        new C3295lr(1L, 0L);
    }

    public C3295lr(long j, long j2) {
        super(j, j2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
    
        if ((r6.f13809do > r6.f13811if) == false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r12) {
        /*
            r11 = this;
            boolean r0 = r12 instanceof defpackage.C3295lr
            r1 = 0
            if (r0 == 0) goto L32
            r0 = 1
            long r2 = r11.f13809do
            long r4 = r11.f13811if
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 <= 0) goto L10
            r6 = 1
            goto L11
        L10:
            r6 = 0
        L11:
            if (r6 == 0) goto L23
            r6 = r12
            lr r6 = (defpackage.C3295lr) r6
            long r7 = r6.f13809do
            long r9 = r6.f13811if
            int r6 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r6 <= 0) goto L20
            r6 = 1
            goto L21
        L20:
            r6 = 0
        L21:
            if (r6 != 0) goto L31
        L23:
            lr r12 = (defpackage.C3295lr) r12
            long r6 = r12.f13809do
            int r8 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r8 != 0) goto L32
            long r2 = r12.f13811if
            int r12 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r12 != 0) goto L32
        L31:
            r1 = 1
        L32:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3295lr.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        long j = this.f13809do;
        long j2 = this.f13811if;
        if (j > j2) {
            return -1;
        }
        return (int) ((31 * (j ^ (j >>> 32))) + ((j2 >>> 32) ^ j2));
    }

    public final String toString() {
        return this.f13809do + ".." + this.f13811if;
    }
}
