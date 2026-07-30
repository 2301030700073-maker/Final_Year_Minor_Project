package com.facebook.ads.redexgen.core;

import android.util.Pair;
import com.google.android.exoplayer2.Timeline;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: assets/audience_network.dex */
public abstract class QB extends AbstractC1912dG {
    public static String[] A01 = {"gHe6Ggz9iQvLoeqfI7z0Fxxa2bOPFJVC", "mRaRFCBn69tPfujuPAjRFPYxHQXp9RZc", "CSSFDgS5gh03TQ1AYsGOm7d", "zjwBQPent3AQFjnpPPQBXvHN2Tq8EaDX", "cDNJWjlLvsmdd9mkRSbb8bT", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "QEHUtPc9dofNZwowDCRZe3wvjD0c8w3x"};
    public C1904d8 A00;

    public abstract Pair<C1480Ql[], QD[]> A0d(C1904d8 c1904d8, int[][][] iArr, int[] iArr2, R5 r5, Timeline timeline) throws EK;

    /* JADX WARN: Incorrect condition in loop: B:3:0x0005 */
    /* JADX WARN: Incorrect condition in loop: B:6:0x000d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int A0Y(com.facebook.ads.redexgen.core.InterfaceC1477Qi[] r8, com.facebook.ads.redexgen.core.C1669Yc r9, int[] r10, boolean r11) throws com.facebook.ads.redexgen.core.EK {
        /*
            int r6 = r8.length
            r5 = 0
            r7 = 1
            r4 = 0
        L4:
            int r0 = r8.length
            if (r4 >= r0) goto L39
            r3 = r8[r4]
            r2 = 0
            r1 = 0
        Lb:
            int r0 = r9.A01
            if (r1 >= r0) goto L22
            com.facebook.ads.redexgen.X.ZM r0 = r9.A08(r1)
            int r0 = r3.AJR(r0)
            int r0 = com.facebook.ads.redexgen.core.AbstractC1470Qb.A03(r0)
            int r2 = java.lang.Math.max(r2, r0)
            int r1 = r1 + 1
            goto Lb
        L22:
            r0 = r10[r4]
            if (r0 != 0) goto L37
            r0 = 1
        L27:
            if (r2 > r5) goto L31
            if (r2 != r5) goto L34
            if (r11 == 0) goto L34
            if (r7 != 0) goto L34
            if (r0 == 0) goto L34
        L31:
            r6 = r4
            r5 = r2
            r7 = r0
        L34:
            int r4 = r4 + 1
            goto L4
        L37:
            r0 = 0
            goto L27
        L39:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.QB.A0Y(com.facebook.ads.redexgen.X.Qi[], com.facebook.ads.redexgen.X.Yc, int[], boolean):int");
    }

    public static int[] A0Z(InterfaceC1477Qi interfaceC1477Qi, C1669Yc c1669Yc) throws EK {
        int[] iArr = new int[c1669Yc.A01];
        for (int i = 0; i < c1669Yc.A01; i++) {
            iArr[i] = interfaceC1477Qi.AJR(c1669Yc.A08(i));
        }
        return iArr;
    }

    public static int[] A0a(InterfaceC1477Qi[] interfaceC1477QiArr) throws EK {
        int[] iArr = new int[interfaceC1477QiArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = interfaceC1477QiArr[i].AJT();
        }
        return iArr;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1912dG
    public final C1913dH A0b(InterfaceC1477Qi[] interfaceC1477QiArr, C1486Qs c1486Qs, R5 r5, Timeline timeline) throws EK {
        int[] rendererTrackGroupCounts;
        int[] iArr = new int[interfaceC1477QiArr.length + 1];
        C1669Yc[][] c1669YcArr = new C1669Yc[interfaceC1477QiArr.length + 1][];
        int[][][] iArr2 = new int[interfaceC1477QiArr.length + 1][][];
        for (int i = 0; i < c1669YcArr.length; i++) {
            c1669YcArr[i] = new C1669Yc[c1486Qs.A01];
            iArr2[i] = new int[c1486Qs.A01][];
        }
        int[] A0a = A0a(interfaceC1477QiArr);
        int groupIndex = 0;
        while (true) {
            int i2 = c1486Qs.A01;
            if (A01[7].charAt(15) != 'w') {
                throw new RuntimeException();
            }
            A01[7] = "nXGM96RwffhgFmQwkLMDI9egGDlSsBJ3";
            if (groupIndex < i2) {
                C1669Yc A05 = c1486Qs.A05(groupIndex);
                int A0Y = A0Y(interfaceC1477QiArr, A05, iArr, A05.A02 == 5);
                if (A0Y == interfaceC1477QiArr.length) {
                    rendererTrackGroupCounts = new int[A05.A01];
                } else {
                    rendererTrackGroupCounts = A0Z(interfaceC1477QiArr[A0Y], A05);
                }
                int i3 = iArr[A0Y];
                c1669YcArr[A0Y][i3] = A05;
                iArr2[A0Y][i3] = rendererTrackGroupCounts;
                iArr[A0Y] = iArr[A0Y] + 1;
                groupIndex++;
            } else {
                C1486Qs[] c1486QsArr = new C1486Qs[interfaceC1477QiArr.length];
                String[] strArr = new String[interfaceC1477QiArr.length];
                int[] iArr3 = new int[interfaceC1477QiArr.length];
                for (int i4 = 0; i4 < interfaceC1477QiArr.length; i4++) {
                    int i5 = iArr[i4];
                    c1486QsArr[i4] = new C1486Qs((C1669Yc[]) AbstractC2094gE.A1I(c1669YcArr[i4], i5));
                    iArr2[i4] = (int[][]) AbstractC2094gE.A1I(iArr2[i4], i5);
                    strArr[i4] = interfaceC1477QiArr[i4].getName();
                    iArr3[i4] = interfaceC1477QiArr[i4].A9D();
                }
                C1904d8 c1904d8 = new C1904d8(strArr, iArr3, c1486QsArr, A0a, iArr2, new C1486Qs((C1669Yc[]) AbstractC2094gE.A1I(c1669YcArr[interfaceC1477QiArr.length], iArr[interfaceC1477QiArr.length])));
                Pair<C1480Ql[], QD[]> A0d = A0d(c1904d8, iArr2, A0a, r5, timeline);
                return new C1913dH((C1480Ql[]) A0d.first, (QD[]) A0d.second, AbstractC1909dD.A00(c1904d8, (InterfaceC1906dA[]) A0d.second), c1904d8);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1912dG
    public final void A0c(Object obj) {
        this.A00 = (C1904d8) obj;
    }
}
