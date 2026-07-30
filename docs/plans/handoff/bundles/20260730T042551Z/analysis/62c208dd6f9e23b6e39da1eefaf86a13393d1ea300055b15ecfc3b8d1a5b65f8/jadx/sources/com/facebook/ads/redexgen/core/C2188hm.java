package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.hm, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2188hm implements DP {
    public static String[] A02 = {"YUGwJzzikBNzfLIllCMdkir2Jyj8DuFq", "ntVfVONdyCctXWp", "AonpNDk7AlTTh7WnvPqW51ITIbVwFUJp", "NJZ9S98WzFijxyBcJxql7T6JOIFmEfw7", "8QFO", "nOxceDp", "zcnAPzBVA2CXXQsDQKs94da1Vf1b77Qu", "s6TvhQwfXdUE9Ss2QaqLkXkKVbAwWXrL"};
    public final /* synthetic */ C09886e A00;
    public final /* synthetic */ AbstractC2184hh A01;

    public C2188hm(AbstractC2184hh abstractC2184hh, C09886e c09886e) {
        this.A01 = abstractC2184hh;
        this.A00 = c09886e;
    }

    @Override // com.facebook.ads.redexgen.core.DP
    public final void AC5(DQ dq) {
        if (dq.getToolbarActionMode() == 8) {
            this.A01.A0W();
            return;
        }
        this.A01.A0D.A04(AE.A07, null);
        if (this.A01.A0e()) {
            return;
        }
        AbstractC2184hh abstractC2184hh = this.A01;
        if (A02[3].charAt(29) != 'f') {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[0] = "pLKL5MIsKfCUMWoMxvxDNCAoAO8BGlnS";
        strArr[7] = "7PsgTAKpTeXTqL7VuWAjeXRdKL6HZN4L";
        if (abstractC2184hh.A0b()) {
            this.A01.A0a(this.A00);
        } else {
            this.A00.finish(1);
        }
    }
}
