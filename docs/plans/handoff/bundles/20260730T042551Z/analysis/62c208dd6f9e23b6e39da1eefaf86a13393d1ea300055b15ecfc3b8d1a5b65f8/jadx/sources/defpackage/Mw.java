package defpackage;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public final class Mw {

    /* renamed from: do, reason: not valid java name */
    public final Object f2274do;

    /* renamed from: if, reason: not valid java name */
    public final Object f2275if;

    public /* synthetic */ Mw(C0476Rk c0476Rk) {
        this.f2274do = c0476Rk;
        ArrayList arrayList = new ArrayList();
        this.f2275if = arrayList;
        arrayList.add(new C0498Sk(c0476Rk, new int[]{1}));
    }

    /* renamed from: do, reason: not valid java name */
    public final void m1468do(int i, int[] iArr) {
        int[] iArr2;
        C0498Sk c0498Sk;
        C0498Sk c0498Sk2;
        if (i == 0) {
            throw new IllegalArgumentException("No error correction bytes");
        }
        int length = iArr.length - i;
        if (length <= 0) {
            throw new IllegalArgumentException("No data bytes provided");
        }
        List list = (List) this.f2275if;
        int size = list.size();
        char c = 0;
        int i2 = 1;
        Object obj = this.f2274do;
        if (i >= size) {
            C0498Sk c0498Sk3 = (C0498Sk) list.get(list.size() - 1);
            int size2 = list.size();
            while (size2 <= i) {
                C0476Rk c0476Rk = (C0476Rk) obj;
                int[] iArr3 = new int[2];
                iArr3[c] = i2;
                iArr3[i2] = c0476Rk.f3232do[(size2 - 1) + c0476Rk.f3233for];
                C0498Sk c0498Sk4 = new C0498Sk(c0476Rk, iArr3);
                c0498Sk3.getClass();
                C0476Rk c0476Rk2 = c0498Sk3.f3549do;
                if (!c0476Rk2.equals(c0476Rk)) {
                    throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
                }
                if (c0498Sk3.m2188if() || c0498Sk4.m2188if()) {
                    c0498Sk2 = c0476Rk2.f3231do;
                } else {
                    int[] iArr4 = c0498Sk3.f3550do;
                    int length2 = iArr4.length;
                    int[] iArr5 = c0498Sk4.f3550do;
                    int length3 = iArr5.length;
                    int[] iArr6 = new int[(length2 + length3) - 1];
                    for (int i3 = 0; i3 < length2; i3++) {
                        int i4 = iArr4[i3];
                        int i5 = 0;
                        while (i5 < length3) {
                            int i6 = i3 + i5;
                            iArr6[i6] = iArr6[i6] ^ c0476Rk2.m2069do(i4, iArr5[i5]);
                            i5++;
                            iArr4 = iArr4;
                        }
                    }
                    c0498Sk2 = new C0498Sk(c0476Rk2, iArr6);
                }
                c0498Sk3 = c0498Sk2;
                list.add(c0498Sk3);
                size2++;
                c = 0;
                i2 = 1;
            }
        }
        C0498Sk c0498Sk5 = (C0498Sk) list.get(i);
        int[] iArr7 = new int[length];
        System.arraycopy(iArr, 0, iArr7, 0, length);
        C0498Sk m2187for = new C0498Sk((C0476Rk) obj, iArr7).m2187for(i, 1);
        m2187for.getClass();
        C0476Rk c0476Rk3 = c0498Sk5.f3549do;
        C0476Rk c0476Rk4 = m2187for.f3549do;
        if (!c0476Rk4.equals(c0476Rk3)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (c0498Sk5.m2188if()) {
            throw new IllegalArgumentException("Divide by 0");
        }
        if (c0498Sk5.f3550do[(r5.length - 1) - (r5.length - 1)] == 0) {
            throw new ArithmeticException();
        }
        int i7 = c0476Rk4.f3232do[(c0476Rk4.f3230do - c0476Rk4.f3235if[r7]) - 1];
        C0498Sk c0498Sk6 = c0476Rk4.f3231do;
        C0498Sk c0498Sk7 = c0498Sk6;
        while (true) {
            iArr2 = m2187for.f3550do;
            if (iArr2.length - 1 < r5.length - 1 || m2187for.m2188if()) {
                break;
            }
            int length4 = (iArr2.length - 1) - (r5.length - 1);
            int length5 = iArr2.length - 1;
            int m2069do = c0476Rk4.m2069do(m2187for.f3550do[(r12.length - 1) - length5], i7);
            C0498Sk m2187for2 = c0498Sk5.m2187for(length4, m2069do);
            if (length4 < 0) {
                throw new IllegalArgumentException();
            }
            if (m2069do == 0) {
                c0498Sk = c0498Sk6;
            } else {
                int[] iArr8 = new int[length4 + 1];
                iArr8[0] = m2069do;
                c0498Sk = new C0498Sk(c0476Rk4, iArr8);
            }
            c0498Sk7 = c0498Sk7.m2186do(c0498Sk);
            m2187for = m2187for.m2186do(m2187for2);
        }
        int length6 = i - iArr2.length;
        for (int i8 = 0; i8 < length6; i8++) {
            iArr[length + i8] = 0;
        }
        System.arraycopy(iArr2, 0, iArr, length + length6, iArr2.length);
    }

    public /* synthetic */ Mw(InterfaceC3655ry interfaceC3655ry) {
        this.f2275if = DesugarCollections.synchronizedMap(new HashMap());
        this.f2274do = interfaceC3655ry;
    }
}
