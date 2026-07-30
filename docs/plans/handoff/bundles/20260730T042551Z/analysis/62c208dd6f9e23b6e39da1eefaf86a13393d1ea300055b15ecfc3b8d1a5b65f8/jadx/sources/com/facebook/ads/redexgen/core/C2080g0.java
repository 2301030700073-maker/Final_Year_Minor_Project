package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.g0, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2080g0 extends BY {
    public static String[] A02 = {"LRx", "usnMdIZ0FvkqiUZevNTWLktoEg5pLAC7", "DXfpDntuFVUaB3iAC9xpEYaXMcysh68b", "KPagnGwIHNxRQqHn90bhIF", "OiThbZ96vqk0YqBrWrlbCPGqj", "zO4ylzajSSdkzzLOGvXbKRrkPLlgkkF6", "2QDKj7W9IPpyibsxcOZVzQQBEZY6mcrJ", "j8cJ2BFMipeHC45SmF0VkU4zcd"};
    public final /* synthetic */ C2074fu A00;
    public final /* synthetic */ boolean A01;

    public C2080g0(C2074fu c2074fu, boolean z) {
        this.A00 = c2074fu;
        this.A01 = z;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        C1221Fx c1221Fx;
        boolean z;
        c1221Fx = this.A00.A0M;
        DQ A0B = c1221Fx.A0B();
        if (A0B != null) {
            if (!this.A01) {
                boolean A0B2 = A0B.A0B();
                if (A02[4].length() != 25) {
                    throw new RuntimeException();
                }
                A02[4] = "GjOMFYo3T7nhomgErVvGRCVPy";
                if (!A0B2) {
                    z = true;
                    A0B.setPageDetailsVisible(z);
                    A0B.setToolbarActionMode(this.A00.getCloseButtonStyle());
                }
            }
            z = false;
            A0B.setPageDetailsVisible(z);
            A0B.setToolbarActionMode(this.A00.getCloseButtonStyle());
        }
    }
}
