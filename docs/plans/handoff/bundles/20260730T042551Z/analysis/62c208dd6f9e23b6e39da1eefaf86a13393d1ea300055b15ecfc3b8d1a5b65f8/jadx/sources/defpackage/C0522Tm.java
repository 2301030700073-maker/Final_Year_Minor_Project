package defpackage;

import java.util.EnumMap;

/* renamed from: Tm, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0522Tm extends AbstractC3134j6 {

    /* renamed from: do, reason: not valid java name */
    public static final int[] f3744do = {1, 1, 1, 1};

    /* renamed from: if, reason: not valid java name */
    public static final int[] f3746if = {3, 1, 1};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[][] f3745do = {new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    @Override // defpackage.AbstractC3134j6, defpackage.InterfaceC3328mN
    /* renamed from: new */
    public final C3899w5 mo270new(String str, K4 k4, EnumMap enumMap) {
        if (k4 == K4.ITF) {
            return super.mo270new(str, k4, enumMap);
        }
        throw new IllegalArgumentException("Can only encode ITF, but got ".concat(String.valueOf(k4)));
    }

    @Override // defpackage.AbstractC3134j6
    /* renamed from: try, reason: not valid java name */
    public final boolean[] mo2288try(String str) {
        int length = str.length();
        if (length % 2 != 0) {
            throw new IllegalArgumentException("The length of the input should be even");
        }
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
        }
        boolean[] zArr = new boolean[(length * 9) + 9];
        int m7035do = AbstractC3134j6.m7035do(zArr, 0, f3744do, true);
        for (int i = 0; i < length; i += 2) {
            int digit = Character.digit(str.charAt(i), 10);
            int digit2 = Character.digit(str.charAt(i + 1), 10);
            int[] iArr = new int[10];
            for (int i2 = 0; i2 < 5; i2++) {
                int i3 = i2 * 2;
                int[][] iArr2 = f3745do;
                iArr[i3] = iArr2[digit][i2];
                iArr[i3 + 1] = iArr2[digit2][i2];
            }
            m7035do += AbstractC3134j6.m7035do(zArr, m7035do, iArr, true);
        }
        AbstractC3134j6.m7035do(zArr, m7035do, f3746if, true);
        return zArr;
    }
}
