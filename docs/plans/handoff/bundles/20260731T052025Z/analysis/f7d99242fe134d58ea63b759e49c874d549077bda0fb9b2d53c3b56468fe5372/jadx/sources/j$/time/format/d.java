package j$.time.format;

import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class d implements e {
    public final e[] a;
    public final boolean b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public d(java.util.List r2, boolean r3) {
        /*
            r1 = this;
            java.util.ArrayList r2 = (java.util.ArrayList) r2
            int r0 = r2.size()
            j$.time.format.e[] r0 = new j$.time.format.e[r0]
            java.lang.Object[] r2 = r2.toArray(r0)
            j$.time.format.e[] r2 = (j$.time.format.e[]) r2
            r1.<init>(r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.d.<init>(java.util.List, boolean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0026, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002c, code lost:
    
        if (r2 != false) goto L11;
     */
    @Override // j$.time.format.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean k(j$.time.format.r r7, java.lang.StringBuilder r8) {
        /*
            r6 = this;
            int r0 = r8.length()
            r1 = 1
            boolean r2 = r6.b
            if (r2 == 0) goto Le
            int r3 = r7.c
            int r3 = r3 + r1
            r7.c = r3
        Le:
            j$.time.format.e[] r6 = r6.a     // Catch: java.lang.Throwable -> L27
            int r3 = r6.length     // Catch: java.lang.Throwable -> L27
            r4 = 0
        L12:
            if (r4 >= r3) goto L2c
            r5 = r6[r4]     // Catch: java.lang.Throwable -> L27
            boolean r5 = r5.k(r7, r8)     // Catch: java.lang.Throwable -> L27
            if (r5 != 0) goto L29
            r8.setLength(r0)     // Catch: java.lang.Throwable -> L27
            if (r2 == 0) goto L2f
        L21:
            int r6 = r7.c
            int r6 = r6 - r1
            r7.c = r6
            return r1
        L27:
            r6 = move-exception
            goto L30
        L29:
            int r4 = r4 + 1
            goto L12
        L2c:
            if (r2 == 0) goto L2f
            goto L21
        L2f:
            return r1
        L30:
            if (r2 == 0) goto L37
            int r8 = r7.c
            int r8 = r8 - r1
            r7.c = r8
        L37:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.d.k(j$.time.format.r, java.lang.StringBuilder):boolean");
    }

    @Override // j$.time.format.e
    public final int m(p pVar, CharSequence charSequence, int i) {
        boolean z = this.b;
        e[] eVarArr = this.a;
        int i2 = 0;
        if (!z) {
            int length = eVarArr.length;
            while (i2 < length) {
                i = eVarArr[i2].m(pVar, charSequence, i);
                if (i < 0) {
                    return i;
                }
                i2++;
            }
            return i;
        }
        ArrayList arrayList = pVar.d;
        u c = pVar.c();
        c.getClass();
        u uVar = new u();
        ((HashMap) uVar.a).putAll(c.a);
        uVar.b = c.b;
        uVar.c = c.c;
        uVar.d = c.d;
        arrayList.add(uVar);
        int length2 = eVarArr.length;
        int i3 = i;
        while (i2 < length2) {
            i3 = eVarArr[i2].m(pVar, charSequence, i3);
            if (i3 < 0) {
                pVar.d.remove(r6.size() - 1);
                return i;
            }
            i2++;
        }
        pVar.d.remove(r6.size() - 2);
        return i3;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        e[] eVarArr = this.a;
        if (eVarArr != null) {
            boolean z = this.b;
            sb.append(z ? "[" : "(");
            for (e eVar : eVarArr) {
                sb.append(eVar);
            }
            sb.append(z ? "]" : ")");
        }
        return sb.toString();
    }

    public d(e[] eVarArr, boolean z) {
        this.a = eVarArr;
        this.b = z;
    }
}
