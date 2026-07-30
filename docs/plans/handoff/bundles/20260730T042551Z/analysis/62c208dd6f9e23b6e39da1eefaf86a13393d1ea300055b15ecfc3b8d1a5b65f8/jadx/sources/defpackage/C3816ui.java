package defpackage;

import java.util.Iterator;

/* renamed from: ui, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3816ui extends Gw {

    /* renamed from: do, reason: not valid java name */
    public static final Q0 f15944do = Q0.m1818new();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2684eI f15945do;

    public C3816ui(C2684eI c2684eI) {
        this.f15945do = c2684eI;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x004c A[SYNTHETIC] */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m8395new(defpackage.C2684eI r7, int r8) {
        /*
            r0 = 0
            if (r7 != 0) goto L4
            return r0
        L4:
            r1 = 1
            Q0 r2 = defpackage.C3816ui.f15944do
            if (r8 <= r1) goto Ld
            r2.m1819case()
            return r0
        Ld:
            java.util.Map r3 = r7.d()
            java.util.Set r3 = r3.entrySet()
            java.util.Iterator r3 = r3.iterator()
        L19:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L6e
            java.lang.Object r4 = r3.next()
            java.util.Map$Entry r4 = (java.util.Map.Entry) r4
            java.lang.Object r5 = r4.getKey()
            java.lang.String r5 = (java.lang.String) r5
            if (r5 != 0) goto L2e
            goto L47
        L2e:
            java.lang.String r5 = r5.trim()
            boolean r6 = r5.isEmpty()
            if (r6 == 0) goto L3c
            r2.m1819case()
            goto L47
        L3c:
            int r5 = r5.length()
            r6 = 100
            if (r5 <= r6) goto L49
            r2.m1819case()
        L47:
            r5 = 0
            goto L4a
        L49:
            r5 = 1
        L4a:
            if (r5 != 0) goto L56
            java.lang.Object r7 = r4.getKey()
            java.lang.String r7 = (java.lang.String) r7
            r2.m1819case()
            return r0
        L56:
            java.lang.Object r5 = r4.getValue()
            java.lang.Long r5 = (java.lang.Long) r5
            if (r5 == 0) goto L60
            r5 = 1
            goto L61
        L60:
            r5 = 0
        L61:
            if (r5 != 0) goto L19
            java.lang.Object r7 = r4.getValue()
            j$.util.Objects.toString(r7)
            r2.m1819case()
            return r0
        L6e:
            com.google.protobuf.catch$for r7 = r7.j()
            java.util.Iterator r7 = r7.iterator()
        L76:
            boolean r2 = r7.hasNext()
            if (r2 == 0) goto L8b
            java.lang.Object r2 = r7.next()
            eI r2 = (defpackage.C2684eI) r2
            int r3 = r8 + 1
            boolean r2 = m8395new(r2, r3)
            if (r2 != 0) goto L76
            return r0
        L8b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3816ui.m8395new(eI, int):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0032  */
    /* renamed from: try, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m8396try(defpackage.C2684eI r8, int r9) {
        /*
            Q0 r0 = defpackage.C3816ui.f15944do
            r1 = 0
            if (r8 != 0) goto L9
            r0.m1819case()
            return r1
        L9:
            r2 = 1
            if (r9 <= r2) goto L10
            r0.m1819case()
            return r1
        L10:
            java.lang.String r3 = r8.h()
            if (r3 != 0) goto L17
            goto L2b
        L17:
            java.lang.String r3 = r3.trim()
            boolean r4 = r3.isEmpty()
            if (r4 != 0) goto L2b
            int r3 = r3.length()
            r4 = 100
            if (r3 > r4) goto L2b
            r3 = 1
            goto L2c
        L2b:
            r3 = 0
        L2c:
            if (r3 != 0) goto L32
            r0.m1819case()
            return r1
        L32:
            long r3 = r8.g()
            r5 = 0
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 <= 0) goto L3e
            r3 = 1
            goto L3f
        L3e:
            r3 = 0
        L3f:
            if (r3 != 0) goto L45
            r0.m1819case()
            return r1
        L45:
            boolean r3 = r8.k()
            if (r3 != 0) goto L4f
            r0.m1819case()
            return r1
        L4f:
            java.lang.String r3 = r8.h()
            java.lang.String r4 = "_st_"
            boolean r3 = r3.startsWith(r4)
            if (r3 == 0) goto L7c
            java.util.Map r3 = r8.d()
            java.lang.String r4 = "_fr_tot"
            java.lang.Object r3 = r3.get(r4)
            java.lang.Long r3 = (java.lang.Long) r3
            if (r3 == 0) goto L75
            java.lang.Long r4 = java.lang.Long.valueOf(r5)
            int r3 = r3.compareTo(r4)
            if (r3 <= 0) goto L75
            r3 = 1
            goto L76
        L75:
            r3 = 0
        L76:
            if (r3 != 0) goto L7c
            r0.m1819case()
            return r1
        L7c:
            com.google.protobuf.catch$for r3 = r8.j()
            java.util.Iterator r3 = r3.iterator()
        L84:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L99
            java.lang.Object r4 = r3.next()
            eI r4 = (defpackage.C2684eI) r4
            int r5 = r9 + 1
            boolean r4 = m8396try(r4, r5)
            if (r4 != 0) goto L84
            return r1
        L99:
            java.util.Map r8 = r8.e()
            java.util.Set r8 = r8.entrySet()
            java.util.Iterator r8 = r8.iterator()
        La5:
            boolean r9 = r8.hasNext()
            if (r9 == 0) goto Lca
            java.lang.Object r9 = r8.next()
            java.util.Map$Entry r9 = (java.util.Map.Entry) r9
            java.lang.Object r3 = r9.getKey()     // Catch: java.lang.IllegalArgumentException -> Lc1
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.IllegalArgumentException -> Lc1
            java.lang.Object r9 = r9.getValue()     // Catch: java.lang.IllegalArgumentException -> Lc1
            java.lang.String r9 = (java.lang.String) r9     // Catch: java.lang.IllegalArgumentException -> Lc1
            defpackage.Gw.m773if(r3, r9)     // Catch: java.lang.IllegalArgumentException -> Lc1
            goto La5
        Lc1:
            r8 = move-exception
            r8.getLocalizedMessage()
            r0.m1819case()
            r8 = 0
            goto Lcb
        Lca:
            r8 = 1
        Lcb:
            if (r8 != 0) goto Lce
            return r1
        Lce:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3816ui.m8396try(eI, int):boolean");
    }

    @Override // defpackage.Gw
    /* renamed from: do */
    public final boolean mo774do() {
        boolean z;
        C2684eI c2684eI = this.f15945do;
        boolean m8396try = m8396try(c2684eI, 0);
        Q0 q0 = f15944do;
        if (!m8396try) {
            c2684eI.h();
            q0.m1819case();
            return false;
        }
        if (!(c2684eI.c() > 0)) {
            Iterator<E> it = c2684eI.j().iterator();
            while (it.hasNext()) {
                if (((C2684eI) it.next()).c() > 0) {
                }
            }
            z = false;
            if (z || m8395new(c2684eI, 0)) {
                return true;
            }
            q0.m1819case();
            return false;
        }
        z = true;
        if (z) {
        }
        return true;
    }
}
