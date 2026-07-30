package com.facebook.ads.redexgen.core;

import com.google.android.gms.ads.RequestConfiguration;

/* renamed from: com.facebook.ads.redexgen.X.cE, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1848cE extends C9K<C1328Ka> {
    public static String[] A01 = {"Xm4oO1fgaoMOjj45N8r00LATVp4gHrYG", "MO5WiyOQHdAIBAUWSCIdsXDipyRYP8jB", "8ZD7midsUGLLHTawsvmUwyHXKE63ocNK", "eXsxAyUW", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "KTVY2IhXiCn688zdyYvQYy9fTV", "AuZpLEz4ubgydEKdqdaVeIvdhtRZUWrW", "O3ESmZOEeO27LGblO6LyKeoijHa02l1o"};
    public final /* synthetic */ C1329Kb A00;

    public C1848cE(C1329Kb c1329Kb) {
        this.A00 = c1329Kb;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(C1328Ka c1328Ka) {
        int A00 = c1328Ka.A00();
        int duration = c1328Ka.A01();
        int currentPosition = this.A00.A00;
        if (currentPosition > 0 && A00 == duration) {
            int currentPosition2 = this.A00.A00;
            if (duration > currentPosition2) {
                return;
            }
        }
        int currentPosition3 = A00 + 500;
        if (duration < currentPosition3) {
            if (duration == 0) {
                C1329Kb c1329Kb = this.A00;
                int currentPosition4 = this.A00.A00;
                c1329Kb.A0j(currentPosition4);
                return;
            }
            this.A00.A0j(duration);
            return;
        }
        C1329Kb c1329Kb2 = this.A00;
        String[] strArr = A01;
        String str = strArr[7];
        String str2 = strArr[0];
        int duration2 = str.charAt(6);
        int currentPosition5 = str2.charAt(6);
        if (duration2 == currentPosition5) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[5] = "eYEuq0G9XeIp1YNIhTPdTiyuyz";
        strArr2[3] = "ZD2QUH1g";
        c1329Kb2.A0j(A00);
    }

    @Override // com.facebook.ads.redexgen.core.C9K
    public final Class<C1328Ka> A01() {
        return C1328Ka.class;
    }
}
