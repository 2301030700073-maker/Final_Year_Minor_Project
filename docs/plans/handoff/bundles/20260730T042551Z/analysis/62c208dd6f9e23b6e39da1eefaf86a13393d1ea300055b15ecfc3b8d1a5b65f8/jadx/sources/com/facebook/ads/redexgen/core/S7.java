package com.facebook.ads.redexgen.core;

import android.util.SparseArray;
import android.util.SparseIntArray;
import com.google.android.exoplayer2.extractor.ts.TsPayloadReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: assets/audience_network.dex */
public class S7 implements YK {
    public static String[] A05 = {"vfQptEavCBaQ4shb4qTQ2Im4Va5BuDnO", "JiQZW7nhM5jecL1Ppc", "hnwXp9bv64zC75tT", "dWpaD8T4ZQJ5Q0FNk1Z", "lRetC72ZWUiGcWxiU67VotPfpeJyuSHi", "OzCNbEqBWRgV3Rv1ObtqMLQClM1AAi", "9ecBBYmeQ8JsEZV55k", "KMfWSLnEN9JR6reOC5HqOSDCR3KuqNUo"};
    public final int A00;
    public final /* synthetic */ S6 A04;
    public final C2069fp A03 = new C2069fp(new byte[5]);
    public final SparseArray<YT> A01 = new SparseArray<>();
    public final SparseIntArray A02 = new SparseIntArray();

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0057  */
    @Override // com.facebook.ads.redexgen.core.YK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A50(com.facebook.ads.redexgen.core.C2070fq r13) {
        /*
            Method dump skipped, instructions count: 580
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.S7.A50(com.facebook.ads.redexgen.X.fq):void");
    }

    public S7(S6 s6, int i) {
        this.A04 = s6;
        this.A00 = i;
    }

    private YP A00(C2070fq c2070fq, int i) {
        int positionOfNextDescriptor = c2070fq.A09();
        int i2 = positionOfNextDescriptor + i;
        int descriptorLength = -1;
        String str = null;
        List<TsPayloadReader.DvbSubtitleInfo> dvbSubtitleInfos = null;
        while (c2070fq.A09() < i2) {
            int descriptorsStartPosition = c2070fq.A0I();
            int descriptorTag = c2070fq.A09() + c2070fq.A0I();
            if (descriptorTag > i2) {
                break;
            }
            if (descriptorsStartPosition == 5) {
                long A0Q = c2070fq.A0Q();
                if (A0Q == 1094921523) {
                    descriptorLength = 129;
                } else if (A0Q == 1161904947) {
                    descriptorLength = 135;
                } else if (A0Q == 1094921524) {
                    descriptorLength = 172;
                } else if (A0Q == 1212503619) {
                    descriptorLength = 36;
                }
            } else if (descriptorsStartPosition == 106) {
                descriptorLength = 129;
            } else if (descriptorsStartPosition == 122) {
                descriptorLength = 135;
            } else if (descriptorsStartPosition == 127) {
                if (c2070fq.A0I() == 21) {
                    descriptorLength = 172;
                }
            } else if (descriptorsStartPosition == 123) {
                descriptorLength = 138;
            } else if (descriptorsStartPosition == 10) {
                str = c2070fq.A0W(3).trim();
            } else if (descriptorsStartPosition == 89) {
                descriptorLength = 89;
                dvbSubtitleInfos = new ArrayList<>();
                while (c2070fq.A09() < descriptorTag) {
                    String language = c2070fq.A0W(3).trim();
                    int streamType = c2070fq.A0I();
                    byte[] bArr = new byte[4];
                    c2070fq.A0k(bArr, 0, 4);
                    dvbSubtitleInfos.add(new YO(language, streamType, bArr));
                }
            } else if (descriptorsStartPosition == 111) {
                descriptorLength = 257;
            }
            c2070fq.A0g(descriptorTag - c2070fq.A09());
        }
        c2070fq.A0f(i2);
        return new YP(descriptorLength, str, dvbSubtitleInfos, Arrays.copyOfRange(c2070fq.A0l(), positionOfNextDescriptor, i2));
    }

    @Override // com.facebook.ads.redexgen.core.YK
    public final void AA3(C2084g4 c2084g4, UL ul, YS ys) {
    }
}
