package defpackage;

import android.graphics.Typeface;
import java.util.EnumMap;
import java.util.List;

/* renamed from: j6, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC3134j6 implements InterfaceC3328mN {
    /* renamed from: do, reason: not valid java name */
    public static int m7035do(boolean[] zArr, int i, int[] iArr, boolean z) {
        int i2 = 0;
        for (int i3 : iArr) {
            int i4 = 0;
            while (i4 < i3) {
                zArr[i] = z;
                i4++;
                i++;
            }
            i2 += i3;
            z = !z;
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0011  */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.Cz m7036for(defpackage.C0155Cs r12, java.lang.String r13) {
        /*
            java.nio.charset.Charset r0 = defpackage.SJ.f3491do
            if (r12 == 0) goto L2a
            r1 = 0
            java.lang.String r2 = r12.f441if     // Catch: java.lang.IllegalArgumentException -> Le
            if (r2 == 0) goto Le
            java.nio.charset.Charset r2 = java.nio.charset.Charset.forName(r2)     // Catch: java.lang.IllegalArgumentException -> Le
            goto Lf
        Le:
            r2 = r1
        Lf:
            if (r2 != 0) goto L29
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r12)
            java.lang.String r12 = "; charset=utf-8"
            r2.append(r12)
            java.lang.String r12 = r2.toString()
            Cs r12 = defpackage.C0155Cs.m307do(r12)     // Catch: java.lang.IllegalArgumentException -> L27
            goto L2a
        L27:
            r12 = r1
            goto L2a
        L29:
            r0 = r2
        L2a:
            byte[] r13 = r13.getBytes(r0)
            int r0 = r13.length
            int r1 = r13.length
            long r1 = (long) r1
            r3 = 0
            long r3 = (long) r3
            long r5 = (long) r0
            byte[] r7 = defpackage.SJ.f3495do
            long r7 = r3 | r5
            r9 = 0
            int r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r11 < 0) goto L4d
            int r7 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r7 > 0) goto L4d
            long r1 = r1 - r3
            int r3 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r3 < 0) goto L4d
            Cz r1 = new Cz
            r1.<init>(r0, r12, r13)
            return r1
        L4d:
            java.lang.ArrayIndexOutOfBoundsException r12 = new java.lang.ArrayIndexOutOfBoundsException
            r12.<init>()
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractC3134j6.m7036for(Cs, java.lang.String):Cz");
    }

    /* renamed from: break */
    public abstract Object mo2371break(C0630Yk c0630Yk, InterfaceC0576Wa interfaceC0576Wa);

    /* renamed from: case */
    public int mo2912case() {
        return 10;
    }

    /* renamed from: catch */
    public abstract float mo4915catch(Object obj);

    /* renamed from: class */
    public abstract void mo1840class(int i);

    /* renamed from: const */
    public abstract void mo1841const(Typeface typeface, boolean z);

    /* renamed from: else */
    public String mo2116else() {
        return null;
    }

    /* renamed from: final */
    public abstract void mo4916final(Object obj, float f);

    /* renamed from: goto */
    public String mo2016goto() {
        return null;
    }

    /* renamed from: if */
    public abstract List mo2081if(String str, List list);

    @Override // defpackage.InterfaceC3328mN
    /* renamed from: new */
    public C3899w5 mo270new(String str, K4 k4, EnumMap enumMap) {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        int mo2912case = mo2912case();
        EnumC0537Uf enumC0537Uf = EnumC0537Uf.MARGIN;
        if (enumMap.containsKey(enumC0537Uf)) {
            mo2912case = Integer.parseInt(enumMap.get(enumC0537Uf).toString());
        }
        boolean[] mo2288try = mo2288try(str);
        int length = mo2288try.length;
        int i = mo2912case + length;
        int max = Math.max(200, i);
        int max2 = Math.max(1, 200);
        int i2 = max / i;
        int i3 = (max - (length * i2)) / 2;
        C3899w5 c3899w5 = new C3899w5(max, max2);
        int i4 = 0;
        while (i4 < length) {
            if (mo2288try[i4]) {
                c3899w5.m8538for(i3, 0, i2, max2);
            }
            i4++;
            i3 += i2;
        }
        return c3899w5;
    }

    /* renamed from: super, reason: not valid java name */
    public abstract void mo7037super(byte[] bArr, int i, int i2);

    /* renamed from: this */
    public String mo2222this() {
        return null;
    }

    /* renamed from: try */
    public abstract boolean[] mo2288try(String str);
}
