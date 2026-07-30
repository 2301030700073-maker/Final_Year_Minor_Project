package com.facebook.ads.redexgen.core;

import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.il, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2244il implements InterfaceC10217l {
    public static byte[] A03;
    public static String[] A04 = {"mqH0C", "P", "Prv4rgxv4XvjDltPpSeqnrL7fWipLvZ8", "wRAQVkTW0Fdys8", "msKGEa7u", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "70lhKNnmmmhMBIKZ0qoNvOWwjw91iHAS", "ylnG6cBHFe0YAiTdKU1DLGP7G6QidCUo"};
    public final /* synthetic */ C2496mv A00;
    public final /* synthetic */ C2238ie A01;
    public final /* synthetic */ boolean A02;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 103);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{28, 55, 63, 66, 59, 58, -10, 74, 69, -10, 58, 69, 77, 68, 66, 69, 55, 58, -10, 55, -10, 67, 59, 58, 63, 55, 4};
    }

    static {
        A01();
    }

    public C2244il(C2238ie c2238ie, C2496mv c2496mv, boolean z) {
        this.A01 = c2238ie;
        this.A00 = c2496mv;
        this.A02 = z;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC10217l
    public final void ACa() {
        C2322k1 c2322k1;
        long j;
        InterfaceC2237id interfaceC2237id;
        InterfaceC2237id interfaceC2237id2;
        if (this.A01.A0a != null) {
            this.A01.A0a.A0J();
            this.A01.A0a = null;
        }
        AdErrorType adErrorType = AdErrorType.CACHE_FAILURE_ERROR;
        String A00 = A00(0, 27, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION);
        c2322k1 = this.A01.A0c;
        InterfaceC08621f A0F = c2322k1.A0F();
        j = this.A01.A00;
        A0F.A3D(C1140Cu.A01(j), adErrorType.getErrorCode(), A00);
        interfaceC2237id = this.A01.A0G;
        if (interfaceC2237id != null) {
            interfaceC2237id2 = this.A01.A0G;
            interfaceC2237id2.AD4(C1091Ag.A01(adErrorType, A00));
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC10217l
    public final void ACj() {
        InterfaceC2237id interfaceC2237id;
        AQ aq;
        C2322k1 c2322k1;
        InterfaceC2237id interfaceC2237id2;
        C2322k1 c2322k12;
        boolean A0r;
        InterfaceC2237id interfaceC2237id3;
        C1386Mj c1386Mj;
        C1386Mj c1386Mj2;
        this.A01.A0a = this.A00;
        if (this.A02) {
            c1386Mj = this.A01.A0A;
            if (c1386Mj != null) {
                c1386Mj2 = this.A01.A0A;
                c1386Mj2.A0L();
            }
        }
        interfaceC2237id = this.A01.A0G;
        if (interfaceC2237id != null) {
            aq = this.A01.A0E;
            if (aq.equals(AQ.A04)) {
                A0r = this.A01.A0r();
                if (!A0r) {
                    interfaceC2237id3 = this.A01.A0G;
                    interfaceC2237id3.AE5();
                }
            }
            if (this.A02) {
                C2238ie c2238ie = this.A01;
                String[] strArr = A04;
                if (strArr[4].length() != strArr[0].length()) {
                    String[] strArr2 = A04;
                    strArr2[4] = "lirdd0Qr";
                    strArr2[0] = "muvxx";
                    c2322k1 = c2238ie.A0c;
                    if (C10729m.A1l(c2322k1) && this.A01.A10() != null && this.A01.A10().A1F()) {
                        C2238ie c2238ie2 = this.A01;
                        c2322k12 = this.A01.A0c;
                        c2238ie2.A0M = AbstractC1242Gs.A01(c2322k12, this.A01.A10(), 4, new C2245im(this));
                        return;
                    } else {
                        C2238ie c2238ie3 = this.A01;
                        if (A04[3].length() != 28) {
                            A04[6] = "Y1qaffLCA6OgZ6gO9VGOLjOrervRHVYN";
                            interfaceC2237id2 = c2238ie3.A0G;
                            interfaceC2237id2.ACA();
                            return;
                        }
                    }
                }
                throw new RuntimeException();
            }
        }
    }
}
