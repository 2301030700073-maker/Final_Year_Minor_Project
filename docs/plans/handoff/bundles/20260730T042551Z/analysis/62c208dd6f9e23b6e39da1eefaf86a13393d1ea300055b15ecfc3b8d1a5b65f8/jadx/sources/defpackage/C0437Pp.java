package defpackage;

/* renamed from: Pp, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0437Pp implements Comparable<C0437Pp> {

    /* renamed from: do, reason: not valid java name */
    public static final C0437Pp f2829do = new C0437Pp();

    /* renamed from: case, reason: not valid java name */
    public final int f2830case;

    /* renamed from: for, reason: not valid java name */
    public final int f2831for = 1;

    /* renamed from: new, reason: not valid java name */
    public final int f2832new = 8;

    /* renamed from: try, reason: not valid java name */
    public final int f2833try = 22;

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
    
        if ((22 <= new defpackage.C3881vo(0, 255).f15769new) != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0437Pp() {
        /*
            r6 = this;
            r6.<init>()
            r0 = 1
            r6.f2831for = r0
            r1 = 8
            r6.f2832new = r1
            r2 = 22
            r6.f2833try = r2
            vo r3 = new vo
            r4 = 0
            r5 = 255(0xff, float:3.57E-43)
            r3.<init>(r4, r5)
            int r3 = r3.f15769new
            if (r0 > r3) goto L1c
            r3 = 1
            goto L1d
        L1c:
            r3 = 0
        L1d:
            if (r3 == 0) goto L3c
            vo r3 = new vo
            r3.<init>(r4, r5)
            int r3 = r3.f15769new
            if (r1 > r3) goto L2a
            r1 = 1
            goto L2b
        L2a:
            r1 = 0
        L2b:
            if (r1 == 0) goto L3c
            vo r1 = new vo
            r1.<init>(r4, r5)
            int r1 = r1.f15769new
            if (r2 > r1) goto L38
            r1 = 1
            goto L39
        L38:
            r1 = 0
        L39:
            if (r1 == 0) goto L3c
            goto L3d
        L3c:
            r0 = 0
        L3d:
            if (r0 == 0) goto L45
            r0 = 67606(0x10816, float:9.4736E-41)
            r6.f2830case = r0
            return
        L45:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "Version components are out of range: 1.8.22"
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0437Pp.<init>():void");
    }

    @Override // java.lang.Comparable
    public final int compareTo(C0437Pp c0437Pp) {
        C0437Pp c0437Pp2 = c0437Pp;
        C0173Do.m401try(c0437Pp2, "other");
        return this.f2830case - c0437Pp2.f2830case;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        C0437Pp c0437Pp = obj instanceof C0437Pp ? (C0437Pp) obj : null;
        return c0437Pp != null && this.f2830case == c0437Pp.f2830case;
    }

    public final int hashCode() {
        return this.f2830case;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2831for);
        sb.append('.');
        sb.append(this.f2832new);
        sb.append('.');
        sb.append(this.f2833try);
        return sb.toString();
    }
}
