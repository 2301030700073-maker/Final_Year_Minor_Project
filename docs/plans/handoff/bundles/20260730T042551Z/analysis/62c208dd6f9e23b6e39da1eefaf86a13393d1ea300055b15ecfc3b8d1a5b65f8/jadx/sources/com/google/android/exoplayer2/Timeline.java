package com.google.android.exoplayer2;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Pair;
import com.facebook.ads.redexgen.core.AbstractC2011es;
import com.facebook.ads.redexgen.core.AbstractC2016ex;
import com.facebook.ads.redexgen.core.AbstractC2094gE;
import com.facebook.ads.redexgen.core.C1167Dv;
import com.facebook.ads.redexgen.core.C1671Yf;
import com.facebook.ads.redexgen.core.C1673Yh;
import com.facebook.ads.redexgen.core.C4T;
import com.facebook.ads.redexgen.core.D9;
import com.facebook.ads.redexgen.core.InterfaceC1397Na;
import com.facebook.ads.redexgen.core.InterfaceC1398Nb;
import com.facebook.ads.redexgen.core.NZ;
import com.facebook.ads.redexgen.core.OI;
import com.google.android.exoplayer2.Timeline;

/* loaded from: assets/audience_network.dex */
public abstract class Timeline implements InterfaceC1398Nb {
    public static String[] A00 = {"WkVexZ4Kygk3uKicUY1OXfODb", "GIiS2UJhm7eNWc1RNsVtI188MaIWXiP1", "mvb2ZOpLQSukRu8SaaR11ChJ6YlWeg17", "GpqGNDRh5SNWW3ILzx0b4GigB2QZ", "l3gcwBnDpUyGEIuzCOMvj8Zkex2sIVDq", "5vqwZr1Euu5eHU7", "X2iFApCkixWr4HhP0VYktwd8lnJlTLsj", "DmEaLbFXoo0zDFQ2cF3ATofiD0Mpaqc2"};
    public static final Timeline A02 = new C1167Dv();
    public static final String A05 = AbstractC2094gE.A0h(0);
    public static final String A03 = AbstractC2094gE.A0h(1);
    public static final String A04 = AbstractC2094gE.A0h(2);
    public static final InterfaceC1397Na<Timeline> A01 = new InterfaceC1397Na() { // from class: com.facebook.ads.redexgen.X.Yj
        @Override // com.facebook.ads.redexgen.core.InterfaceC1397Na
        public final InterfaceC1398Nb A6V(Bundle bundle) {
            Timeline A022;
            A022 = Timeline.A02(bundle);
            return A022;
        }
    };

    public abstract int A06();

    public abstract int A07();

    public abstract int A0A(Object obj);

    public abstract C1673Yh A0I(int i, C1673Yh c1673Yh, boolean z);

    public abstract C1671Yf A0L(int i, C1671Yf c1671Yf, long j);

    public abstract Object A0M(int i);

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.OI != com.google.common.collect.ImmutableList<com.google.android.exoplayer2.Timeline$Period> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.OI != com.google.common.collect.ImmutableList<com.google.android.exoplayer2.Timeline$Window> */
    public static D9 A02(Bundle bundle) {
        OI A042 = A04(C1671Yf.A0J, AbstractC2016ex.A00(bundle, A05));
        OI A043 = A04(C1673Yh.A08, AbstractC2016ex.A00(bundle, A03));
        int[] intArray = bundle.getIntArray(A04);
        if (intArray == null) {
            intArray = A05(A042.size());
        }
        return new D9(A042, A043, intArray);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4T != com.google.common.collect.ImmutableList$Builder<T extends com.facebook.ads.redexgen.X.Nb> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Na != com.google.android.exoplayer2.Bundleable$Creator<T extends com.facebook.ads.redexgen.X.Nb> */
    public static <T extends InterfaceC1398Nb> OI<T> A04(InterfaceC1397Na<T> interfaceC1397Na, IBinder iBinder) {
        if (iBinder == null) {
            return OI.A03();
        }
        C4T c4t = new C4T();
        OI<Bundle> A002 = NZ.A00(iBinder);
        for (int i = 0; i < A002.size(); i++) {
            c4t.A04(interfaceC1397Na.A6V(A002.get(i)));
        }
        return c4t.A05();
    }

    public static int[] A05(int i) {
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = i2;
        }
        return iArr;
    }

    public int A08(int i, int i2, boolean z) {
        switch (i2) {
            case 0:
                if (i == A0C(z)) {
                    return -1;
                }
                return i + 1;
            case 1:
                return i;
            case 2:
                if (i == A0C(z)) {
                    return A0B(z);
                }
                return i + 1;
            default:
                throw new IllegalStateException();
        }
    }

    public final int A09(int i, C1673Yh c1673Yh, C1671Yf c1671Yf, int i2, boolean z) {
        int i3 = A0H(i, c1673Yh).A00;
        int windowIndex = A0K(i3, c1671Yf).A01;
        if (windowIndex == i) {
            int A08 = A08(i3, i2, z);
            String[] strArr = A00;
            String str = strArr[3];
            String str2 = strArr[0];
            int length = str.length();
            int windowIndex2 = str2.length();
            if (length == windowIndex2) {
                throw new RuntimeException();
            }
            A00[4] = "IqWzMtwlvGQ3uqJzMIx5j0VAke1rLFLr";
            if (A08 == -1) {
                return -1;
            }
            int windowIndex3 = A0K(A08, c1671Yf).A00;
            return windowIndex3;
        }
        int windowIndex4 = i + 1;
        return windowIndex4;
    }

    public int A0B(boolean z) {
        return A0N() ? -1 : 0;
    }

    public int A0C(boolean z) {
        if (A0N()) {
            return -1;
        }
        return A07() - 1;
    }

    @Deprecated
    public final Pair<Object, Long> A0D(C1671Yf c1671Yf, C1673Yh c1673Yh, int i, long j) {
        return A0E(c1671Yf, c1673Yh, i, j);
    }

    public final Pair<Object, Long> A0E(C1671Yf c1671Yf, C1673Yh c1673Yh, int i, long j) {
        return (Pair) AbstractC2011es.A01(A0G(c1671Yf, c1673Yh, i, j, 0L));
    }

    @Deprecated
    public final Pair<Object, Long> A0F(C1671Yf c1671Yf, C1673Yh c1673Yh, int i, long j, long j2) {
        return A0G(c1671Yf, c1673Yh, i, j, j2);
    }

    public final Pair<Object, Long> A0G(C1671Yf c1671Yf, C1673Yh c1673Yh, int i, long j, long j2) {
        AbstractC2011es.A00(i, 0, A07());
        A0L(i, c1671Yf, j2);
        if (j == -9223372036854775807L) {
            j = c1671Yf.A05();
            if (j == -9223372036854775807L) {
                return null;
            }
        }
        int i2 = c1671Yf.A00;
        A0H(i2, c1673Yh);
        while (i2 < c1671Yf.A01 && c1673Yh.A02 != j && A0H(i2 + 1, c1673Yh).A02 <= j) {
            i2++;
        }
        A0I(i2, c1673Yh, true);
        long j3 = c1673Yh.A02;
        if (A00[7].charAt(7) != 'm') {
            A00[1] = "3ZieKL5X1T768JW4phYrzNkptEzy1ocP";
            long j4 = j - j3;
            if (c1673Yh.A01 != -9223372036854775807L) {
                long j5 = c1673Yh.A01;
                if (A00[1].charAt(2) == 'i') {
                    A00[2] = "LahSWw1T0AjdVvbLLNcvYZLp9vt0kwQB";
                    j4 = Math.min(j4, j5 - 1);
                }
            }
            return Pair.create(AbstractC2011es.A01(c1673Yh.A04), Long.valueOf(Math.max(0L, j4)));
        }
        throw new RuntimeException();
    }

    public final C1673Yh A0H(int i, C1673Yh c1673Yh) {
        return A0I(i, c1673Yh, false);
    }

    public C1673Yh A0J(Object obj, C1673Yh c1673Yh) {
        return A0I(A0A(obj), c1673Yh, true);
    }

    public final C1671Yf A0K(int i, C1671Yf c1671Yf) {
        return A0L(i, c1671Yf, 0L);
    }

    public final boolean A0N() {
        return A07() == 0;
    }

    public final boolean A0O(int i, C1673Yh c1673Yh, C1671Yf c1671Yf, int i2, boolean z) {
        return A09(i, c1673Yh, c1671Yf, i2, z) == -1;
    }

    public final boolean equals(Object obj) {
        int A0C;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Timeline)) {
            return false;
        }
        Timeline timeline = (Timeline) obj;
        if (timeline.A07() != A07() || timeline.A06() != A06()) {
            return false;
        }
        C1671Yf c1671Yf = new C1671Yf();
        C1673Yh otherPeriod = new C1673Yh();
        C1671Yf c1671Yf2 = new C1671Yf();
        C1673Yh c1673Yh = new C1673Yh();
        int i = 0;
        while (true) {
            int A07 = A07();
            if (A00[2].charAt(20) == 'v') {
                throw new RuntimeException();
            }
            A00[4] = "PMvZEUC2BBAfRxUz3Ht2Mf4aXvWRW3I0";
            if (i < A07) {
                if (!A0K(i, c1671Yf).equals(timeline.A0K(i, c1671Yf2))) {
                    return false;
                }
                i++;
            } else {
                for (int i2 = 0; i2 < A06(); i2++) {
                    if (!A0I(i2, otherPeriod, true).equals(timeline.A0I(i2, c1673Yh, true))) {
                        return false;
                    }
                }
                int A0B = A0B(true);
                if (A0B != timeline.A0B(true) || (A0C = A0C(true)) != timeline.A0C(true)) {
                    return false;
                }
                while (A0B != A0C) {
                    int A08 = A08(A0B, 0, true);
                    if (A08 != timeline.A08(A0B, 0, true)) {
                        return false;
                    }
                    A0B = A08;
                }
                return true;
            }
        }
    }

    public final int hashCode() {
        C1671Yf c1671Yf = new C1671Yf();
        C1673Yh c1673Yh = new C1673Yh();
        int result = 7 * 31;
        int i = result + A07();
        for (int i2 = 0; i2 < A07(); i2++) {
            C1671Yf window = A0K(i2, c1671Yf);
            i = (i * 31) + window.hashCode();
        }
        int result2 = i * 31;
        int i3 = result2 + A06();
        for (int i4 = 0; i4 < A06(); i4++) {
            i3 = (i3 * 31) + A0I(i4, c1673Yh, true).hashCode();
        }
        int A0B = A0B(true);
        while (A0B != -1) {
            int windowIndex = i3 * 31;
            i3 = windowIndex + A0B;
            A0B = A08(A0B, 0, true);
        }
        return i3;
    }
}
