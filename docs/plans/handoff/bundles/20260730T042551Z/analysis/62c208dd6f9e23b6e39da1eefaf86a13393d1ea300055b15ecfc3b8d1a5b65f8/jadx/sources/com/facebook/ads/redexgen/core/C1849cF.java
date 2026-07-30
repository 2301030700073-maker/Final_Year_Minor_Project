package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.cF, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1849cF extends C9K<KX> {
    public static String[] A01 = {"Etf6rxr38TN0vQCp7eNtUvsDOmNclbJq", "tsAjjvZCMDWdS", "8hGTWRVePtIxVw2NOXuq9knVHvw3DPvW", "EWxkCjZIostDvyF", "5rZAWcCWfjjM2", "LrhlSMt3F2A2PPkpDiBfjHpLA", "jQk7ZNmPb7V9ueUuvUfiKmSE", "mvg7pIDRu6IgLugvRarlC3XDTGoYv5EO"};
    public final /* synthetic */ C1329Kb A00;

    public C1849cF(C1329Kb c1329Kb) {
        this.A00 = c1329Kb;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(KX kx) {
        C1855cL c1855cL;
        C1855cL c1855cL2;
        int A00 = kx.A00();
        int currentPositionMS = this.A00.A00;
        if (currentPositionMS > 0) {
            c1855cL = this.A00.A0C;
            int currentPositionMS2 = c1855cL.getDuration();
            if (A00 == currentPositionMS2) {
                c1855cL2 = this.A00.A0C;
                int duration = c1855cL2.getDuration();
                int currentPositionMS3 = this.A00.A00;
                if (duration > currentPositionMS3) {
                    return;
                }
            }
        }
        C1329Kb c1329Kb = this.A00;
        if (A01[5].length() == 7) {
            throw new RuntimeException();
        }
        A01[5] = "7AA42mFgyTVlZSuOszNfTs49";
        c1329Kb.A0k(A00);
    }

    @Override // com.facebook.ads.redexgen.core.C9K
    public final Class<KX> A01() {
        return KX.class;
    }
}
