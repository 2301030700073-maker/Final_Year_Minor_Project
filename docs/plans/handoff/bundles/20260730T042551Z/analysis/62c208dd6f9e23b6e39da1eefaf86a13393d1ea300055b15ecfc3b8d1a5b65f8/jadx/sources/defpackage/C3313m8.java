package defpackage;

import java.util.EnumMap;

/* renamed from: m8, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3313m8 extends AbstractC3134j6 {
    /* renamed from: throw, reason: not valid java name */
    public static int m7446throw(int i, CharSequence charSequence) {
        int length = charSequence.length();
        int i2 = 1;
        if (i >= length) {
            return 1;
        }
        char charAt = charSequence.charAt(i);
        if (charAt == 241) {
            return 4;
        }
        if (charAt >= '0' && charAt <= '9') {
            int i3 = i + 1;
            i2 = 2;
            if (i3 >= length) {
                return 2;
            }
            char charAt2 = charSequence.charAt(i3);
            if (charAt2 >= '0' && charAt2 <= '9') {
                return 3;
            }
        }
        return i2;
    }

    @Override // defpackage.AbstractC3134j6, defpackage.InterfaceC3328mN
    /* renamed from: new */
    public final C3899w5 mo270new(String str, K4 k4, EnumMap enumMap) {
        if (k4 == K4.CODE_128) {
            return super.mo270new(str, k4, enumMap);
        }
        throw new IllegalArgumentException("Can only encode CODE_128, but got ".concat(String.valueOf(k4)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x0081, code lost:
    
        if (m7446throw(r5 + 3, r17) == 3) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x009c, code lost:
    
        r2 = 99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x008f, code lost:
    
        if (r14 == 2) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x009a, code lost:
    
        if (r11 == 3) goto L53;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00fc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0037 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e3  */
    @Override // defpackage.AbstractC3134j6
    /* renamed from: try */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean[] mo2288try(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3313m8.mo2288try(java.lang.String):boolean[]");
    }
}
